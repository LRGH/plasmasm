# Copyright (C) 2011-2020 Airbus, Louis.Granboulan@airbus.com
try:
    import pytest
except:
    from run_tests import pytest
import sys, os.path
basedir = os.path.dirname(os.path.dirname(__file__))
sys.path.append(basedir)
from plasmasm.analyze_file import File
# To be able to import elfesteem in the parent directory, with python3
sys.path.append(os.path.dirname(basedir)+'/elfesteem')

pool = File()
i_list = []

from plasmasm.arch import I386_MIASM
def i_x86_miasm(s):
    I386_MIASM.Instruction.set_asm_format('intel_syntax noprefix')
    return I386_MIASM.Instruction(pool).from_txt(s, asm_format='att_syntax')
def i_x86_amoco(s):
    I386_AMOCO.Instruction.set_asm_format('intel_syntax noprefix')
    return I386_AMOCO.Instruction(pool).from_txt(s)
def i_x64_amoco(s):
    return X64_AMOCO.Instruction(pool).from_txt(s)
i_list.append(i_x86_miasm)
if not (sys.version_info[0] == 2 and sys.version_info[1] <= 6):
    from plasmasm.arch import I386_AMOCO, X64_AMOCO
    i_list.append(i_x86_amoco)
    i_list.append(i_x64_amoco)
fmt_a = {'asm_format':'att_syntax'}
fmt_i = {'asm_format':'intel_syntax noprefix'}

def test_api_is_address(instruction):
    l = instruction("movl %eax, %ebx")
    assert l.txt(**fmt_i) == 'mov       ebx, eax'
    assert l.txt(**fmt_a) == 'movl      %eax, %ebx'
    assert l.api_is_address(0) == False
    assert l.api_is_address(1) == False
    l = instruction("movl (%eax), %ebx")
    assert l.txt(**fmt_i) == 'mov       ebx, DWORD PTR [eax]'
    assert l.txt(**fmt_a) == 'movl      (%eax), %ebx'
    assert l.api_is_address(0) == False
    if instruction is i_x86_miasm:
        assert l.api_is_address(1) == 'u32'
    else:
        assert l.api_is_address(1) == True
    if instruction is i_x64_amoco:
        l = instruction("movl (%rip), %ebx")
        assert l.txt() == 'movl      (%rip), %ebx'
        assert l.api_is_address(0) == False
        assert l.api_is_address(1) == True
test_api_is_address = pytest.mark.parametrize("instruction", i_list)(test_api_is_address)

def test_api_is_arg_size(instruction):
    l = instruction("movb %ah, %bh")
    assert l.api_is_arg_size(0, 8)  == True
    assert l.api_is_arg_size(0, 16) == False
    assert l.api_is_arg_size(0, 32) == False
    assert l.api_is_arg_size(0, 64) == False
    l = instruction("movw %ax, %bx")
    assert l.api_is_arg_size(0, 8)  == False
    assert l.api_is_arg_size(0, 16) == True
    assert l.api_is_arg_size(0, 32) == False
    assert l.api_is_arg_size(0, 64) == False
    l = instruction("movl %eax, %ebx")
    assert l.api_is_arg_size(0, 8)  == False
    assert l.api_is_arg_size(0, 16) == False
    assert l.api_is_arg_size(0, 32) == True
    assert l.api_is_arg_size(0, 64) == False
    l = instruction("movl (%eax), %ebx")
    assert l.api_is_arg_size(0, 32) == True
    assert l.api_is_reg_size(0, 32) == True
    assert l.api_is_reg_size(1, 32) == False
    if instruction is i_x64_amoco:
        l = instruction("movq %rax, %rbx")
        assert l.api_is_arg_size(0, 8)  == False
        assert l.api_is_arg_size(0, 16) == False
        assert l.api_is_arg_size(0, 32) == False
        assert l.api_is_arg_size(0, 64) == True
test_api_is_arg_size = pytest.mark.parametrize("instruction", i_list)(test_api_is_arg_size)

# NB: we can use str.format, which is only available since python2.6,
# because pytest needs python2.6 too.
def test_api_same_base_reg(instruction):
    if instruction is i_x64_amoco: p = 'r'
    else:                          p = 'e'
    l = instruction("movl (%{0}ax), %{0}bx".format(p))
    m = instruction("movl (%{0}ax), %{0}ax".format(p))
    assert l.api_same_base_reg(1, m) == True
    m = instruction("movl (%{0}cx), %{0}dx".format(p))
    assert l.api_same_base_reg(1, m) == False
    if instruction is i_x64_amoco:
        m = instruction("movl (%eax), %rax")
        assert l.api_same_base_reg(1, m) == False
test_api_same_base_reg = pytest.mark.parametrize("instruction", i_list)(test_api_same_base_reg)

def test_api_is_reg_in_arg(instruction):
    if instruction is i_x64_amoco: p = { 'a': 'rax', 'b': 'rbx' }
    else:                          p = { 'a': 'eax', 'b': 'ebx' }
    l = instruction("movl (%{a}), %{b}".format(**p))
    assert l.api_is_reg_in_arg(0, '{b}'.format(**p)) == True
    assert l.api_is_reg_in_arg(1, '{a}'.format(**p)) == True
    assert l.api_is_reg_in_arg(1, '{b}'.format(**p)) == False
    assert l.api_is_reg_in_arg(1, '0') == False
    assert l.api_is_reg_in_arg(0, 'mm1') == False
test_api_is_reg_in_arg = pytest.mark.parametrize("instruction", i_list)(test_api_is_reg_in_arg)

def test_api_get_label(instruction):
    if instruction is i_x64_amoco: p = 'r'
    else:                          p = 'e'
    if instruction is i_x86_miasm:
        toto = pool.find_symbol(name = 'toto')
        tata = pool.find_symbol(name = 'tata')
    else:
        toto = 'toto'
        tata = 'tata'
    l = instruction("movl (%{0}ax), %ebx".format(p))
    assert l.api_get_label(1) == (None, None)
    l = instruction("movl toto(%{0}ax), %ebx".format(p))
    assert l.api_get_label(1) == (toto, None)
    l = instruction("movl toto-tata(%{0}ax), %ebx".format(p))
    assert l.api_get_label(1) == (toto, tata)
test_api_get_label = pytest.mark.parametrize("instruction", i_list)(test_api_get_label)

def test__api_add_reg(instruction):
    if instruction is i_x64_amoco: p = { 'a': 'rax', 'b': 'rbx' }
    else:                          p = { 'a': 'eax', 'b': 'ebx' }
    l = instruction("movl %eax, (%{b})".format(**p))
    l.api_add_reg(0, p['a'])
    assert l.txt(**fmt_i) == 'mov       DWORD PTR [{a}+{b}], eax'.format(**p)
    assert l.txt(**fmt_a) == 'movl      %eax, (%{a},%{b})'.format(**p)
    l = instruction("movl %eax, (%{b})".format(**p))
    l.api_add_reg(0, p['a'], last=True)
    assert l.txt(**fmt_i) == 'mov       DWORD PTR [{b}+{a}], eax'.format(**p)
    assert l.txt(**fmt_a) == 'movl      %eax, (%{b},%{a})'.format(**p)
    if instruction is not i_x64_amoco:
       l = instruction("movl %eax, (%esp)")
       l.api_add_reg(0, p['a'])
       assert l.txt(**fmt_i) == 'mov       DWORD PTR [esp+eax], eax'.format(**p)
    l = instruction("movl %eax, toto")
    l.api_add_reg(0, p['a'])
    assert l.txt(**fmt_i) == 'mov       DWORD PTR toto[{a}], eax'.format(**p)
    assert l.txt(**fmt_a) == 'movl      %eax, toto(%{a})'.format(**p)
    l = instruction("movl %eax, 0x20")
    l.api_add_reg(0, p['a'])
    assert l.txt(**fmt_i) == 'mov       DWORD PTR [{a}+32], eax'.format(**p)
    assert l.txt(**fmt_a) == 'movl      %eax, 32(%{a})'.format(**p)
    l = instruction("movl %eax, toto+1")
    l.api_add_reg(0, p['a'])
    assert l.txt(**fmt_i) == 'mov       DWORD PTR toto[{a}+1], eax'.format(**p)
    assert l.txt(**fmt_a) == 'movl      %eax, toto+1(%{a})'.format(**p)
    l = instruction("movl %eax, (%{a})".format(**p))
    l.api_add_reg(0, p['a'])
    if instruction is i_x86_miasm:
        assert l.txt(**fmt_i) == 'mov       DWORD PTR [0+{a}*2], eax'.format(**p)
        assert l.txt(**fmt_a) == 'movl      %eax, 0(,%{a},2)'.format(**p)
    else:
        assert l.txt(**fmt_i) == 'mov       DWORD PTR [{a}+{a}], eax'.format(**p)
        assert l.txt(**fmt_a) == 'movl      %eax, (%{a},%{a})'.format(**p)
    l = instruction("movl %eax, (%{a},%{a})".format(**p))
    l.api_add_reg(0, p['a'])
    assert l.txt(**fmt_i) == 'mov       DWORD PTR [{a}+{a}*2], eax'.format(**p)
    assert l.txt(**fmt_a) == 'movl      %eax, (%{a},%{a},2)'.format(**p)
test__api_add_reg = pytest.mark.parametrize("instruction", i_list)(test__api_add_reg)

def test_api_replace_reg(instruction):
    if instruction is i_x64_amoco: p = {'a':'rax','b':'rbx','c':'rcx','d':'rdx'}
    else:                          p = {'a':'eax','b':'ebx','c':'ecx','d':'edx'}
    l = instruction("movl %eax, (%{b})".format(**p))
    l.api_replace_reg('eax', 'edx')
    assert l.txt(**fmt_i) == 'mov       DWORD PTR [{b}], edx'.format(**p)
    assert l.txt(**fmt_a) == 'movl      %edx, (%{b})'.format(**p)
    l.api_replace_reg(p['b'], p['c'])
    assert l.txt(**fmt_i) == 'mov       DWORD PTR [{c}], edx'.format(**p)
    assert l.txt(**fmt_a) == 'movl      %edx, (%{c})'.format(**p)
    if instruction is i_x64_amoco:
        l = instruction("movl %eax, (%{a})".format(**p))
        l.api_replace_reg(p['a'], p['d'])
        assert l.txt(**fmt_i) == 'mov       DWORD PTR [{d}], eax'.format(**p)
        assert l.txt(**fmt_a) == 'movl      %eax, (%{d})'.format(**p)
    l = instruction("movl %{a}, (%{a})".format(**p))
    l.api_replace_reg(p['a'], p['d'])
    assert l.txt(**fmt_i) == 'mov       DWORD PTR [{d}], {d}'.format(**p)
    assert l.txt(**fmt_a) == 'movl      %{d}, (%{d})'.format(**p)
    l = instruction("movl %ebx, (,%{a},2)".format(**p))
    l.api_replace_reg(p['a'], p['d'])
    assert l.txt(**fmt_i) == 'mov       DWORD PTR [0+{d}*2], ebx'.format(**p)
    l = instruction("movl %ebx, (%{c},%{a})".format(**p))
    l.api_replace_reg(p['a'], p['d'])
    assert l.txt(**fmt_i) == 'mov       DWORD PTR [{c}+{d}], ebx'.format(**p)
    l = instruction("movl %ebx, (%{c},%{a},2)".format(**p))
    l.api_replace_reg(p['a'], p['d'])
    assert l.txt(**fmt_i) == 'mov       DWORD PTR [{c}+{d}*2], ebx'.format(**p)
    assert l.txt(**fmt_a) == 'movl      %ebx, (%{c},%{d},2)'.format(**p)
test_api_replace_reg = pytest.mark.parametrize("instruction", i_list)(test_api_replace_reg)

def test_api_set_imm_label(instruction):
    if instruction is i_x64_amoco: p = { 'b': 'rbx' }
    else:                          p = { 'b': 'ebx' }
    toto = pool.find_symbol(name = 'toto')
    tata = pool.find_symbol(name = 'tata')
    l = instruction("movl %eax, (%{b})".format(**p))
    l.api_set_imm_label(0, 10)
    assert l.txt(**fmt_i) == 'mov       DWORD PTR [{b}-10], eax'.format(**p)
    assert l.txt(**fmt_a) == 'movl      %eax, -10(%{b})'.format(**p)
    l = instruction("movl %eax, (%{b})".format(**p))
    l.api_set_imm_label(0, 10, label=toto)
    assert l.txt(**fmt_i) == 'mov       DWORD PTR toto[{b}-10], eax'.format(**p)
    assert l.txt(**fmt_a) == 'movl      %eax, toto-10(%{b})'.format(**p)
    l.api_set_imm_label(0, 10, label=False)
    assert l.txt(**fmt_i) == 'mov       DWORD PTR [{b}-20], eax'.format(**p)
    assert l.txt(**fmt_a) == 'movl      %eax, -20(%{b})'.format(**p)
    l.api_set_imm_label(0, -20)
    assert l.txt(**fmt_i) == 'mov       DWORD PTR [{b}], eax'.format(**p)
    assert l.txt(**fmt_a) == 'movl      %eax, (%{b})'.format(**p)
    l = instruction("movl %eax, (%{b})".format(**p))
    l.api_set_imm_label(0, 10, label=toto, label_dif=tata)
    if instruction is i_x86_miasm:
        # Needed to be accepted by clang-900
        assert l.txt(**fmt_i) == 'mov       DWORD PTR [{b} + toto-tata-10], eax'.format(**p)
    else:
        # TODO: patch amoco
        assert l.txt(**fmt_i) == 'mov       DWORD PTR toto-tata[{b}-10], eax'.format(**p)
    assert l.txt(**fmt_a) == 'movl      %eax, toto-tata-10(%{b})'.format(**p)
    l = instruction("movl %eax, %ds:20")
    assert l.txt(**fmt_i) == 'mov       DWORD PTR ds:20, eax'
    assert l.txt(**fmt_a) == 'movl      %eax, %ds:20'
    l.api_set_imm_label(0, 10, label=False)
    assert l.txt(**fmt_i) == 'mov       DWORD PTR ds:10, eax'
    assert l.txt(**fmt_a) == 'movl      %eax, %ds:10'
    l = instruction("movl %eax, 20")
    assert l.txt(**fmt_i) == 'mov       DWORD PTR 20, eax'
    assert l.txt(**fmt_a) == 'movl      %eax, 20'
    l.api_set_imm_label(0, 10, label=False)
    assert l.txt(**fmt_i) == 'mov       DWORD PTR 10, eax'
    assert l.txt(**fmt_a) == 'movl      %eax, 10'
    l = instruction("movl %eax, toto")
    l.api_set_imm_label(0, 10, label=False)
    assert l.txt(**fmt_i) == 'mov       DWORD PTR -10, eax'
    assert l.txt(**fmt_a) == 'movl      %eax, -10'
    l = instruction("movl %eax, toto(%{b})".format(**p))
    l.api_set_imm_label(0, 10, label=False)
    assert l.txt(**fmt_i) == 'mov       DWORD PTR [{b}-10], eax'.format(**p)
    assert l.txt(**fmt_a) == 'movl      %eax, -10(%{b})'.format(**p)
    l = instruction("movl $20, %eax")
    assert l.txt(**fmt_i) == 'mov       eax, 20'
    l.api_set_imm_label(1, 10, label=toto)
    assert l.txt(**fmt_i) == 'mov       eax, OFFSET FLAT:toto+10'
    assert l.txt(**fmt_a) == 'movl      $toto+10, %eax'
test_api_set_imm_label = pytest.mark.parametrize("instruction", i_list)(test_api_set_imm_label)

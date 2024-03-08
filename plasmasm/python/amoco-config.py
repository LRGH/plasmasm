class Conf(object):
    pass

conf = Conf()
conf.Cas = Conf()
conf.Cas.complexity = float("inf")
conf.Cas.unicode = False
conf.Cas.noaliasing = True
conf.Cas.memtrace = True
conf.Log = Conf()
conf.Log.level = 'WARNING'
conf.Log.tempfile = False
conf.Log.filename = False
conf.Log.observe = lambda level, names: None
conf.UI = Conf()
conf.UI.formatter = 'Null'
conf.UI.unicode = False
conf.Arch = Conf()
conf.Arch.format_x86 = None
conf.Arch.format_x64 = None

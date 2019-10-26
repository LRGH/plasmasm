# Copyright (C) 2011-2020 Airbus, Louis.Granboulan@airbus.com
def hexbytes(data):
    if type(data) == str: return [_.encode('hex') for _ in data]
    return ["%02x"%_ for _ in data]

import sys
if sys.version_info[0] == 2 and sys.version_info[1] <= 3:
    # Python 2.3 does not have the builtin 'set'
    class set(list):
        # Implementation of sets, based on lists. Slow
        def __init__(self, init=[]):
            self.update(init)
        def copy(self):
            return set(self)
        def add(self, item):
            if not item in self:
                self.append(item)
        def discard(self, item):
            if item in self:
                self.remove(item)
        def update(self, other):
            for item in other:
                self.add(item)
        def intersection_update(self, other):
            for item in self[:]:
                if not item in other:
                    self.remove(item)
        def difference_update(self, other):
            for item in other:
                self.discard(item)
        def union(self, other):
            result = set()
            for item in self:
                result.append(item)
            for item in other:
                result.add(item)
            return result
        def intersection(self, other):
            result = set()
            for item in self:
                if item in other:
                    result.append(item)
            return result
        def difference(self, other):
            result = set()
            for item in self:
                if not item in other:
                    result.append(item)
            return result
    class set(dict):
        # Implementation of sets, based on dictionaries. Fast
        def __init__(self, init=[]):
            self.update(init)
        def copy(self):
            return set(self.keys())
        def pop(self):
            return self.popitem()[0]
        def add(self, item):
            self[item] = True
        def remove(self, item):
            del self[item]
        def discard(self, item):
            if item in self:
                del self[item]
        def update(self, other):
            for item in other:
                self.add(item)
        def intersection_update(self, other):
            keys = self.keys()
            for item in keys:
                if not item in other:
                    del self[item]
        def difference_update(self, other):
            for item in other:
                self.discard(item)
        def union(self, other):
            result = set(self.keys())
            result.update(other)
            return result
        def intersection(self, other):
            result = set()
            for item in self:
                if item in other:
                    result.add(item)
            return result
        def difference(self, other):
            result = set()
            for item in self:
                if not item in other:
                    result.add(item)
            return result
    # Python 2.3 does not upgrade automatically to long integers
    # Python 3.x does not accept the syntax 1L
    one = eval("1L")
    # Python 2.3 does not know 'sorted' nor 'reversed'
    def sorted(l, key=None, reverse=False):
        l = [_ for _ in l]
        if key is None:
            if reverse: l.sort(lambda x,y: cmp(y,x))
            else:       l.sort()
        else:
            if reverse: l.sort(lambda x,y: cmp(key(y),key(x)))
            else:       l.sort(lambda x,y: cmp(key(x),key(y)))
        return l
    def reversed(l):
        length = len(l)
        return [ l[length-idx] for idx in range(1,length+1) ]
    import warnings
    warnings.simplefilter("ignore", FutureWarning)

def fun(*_args):
    for i in _args:
        print(f"{i,bool(i)}")
    _args[0][_args[1]] = _args[2]
    return _args[0]

dict = {}
print(f"Ergebis: {fun(dict,'1','v')}")
import cmath

print(int(1.0)) #将x转换为一个整数  
print(float(1)) #将x转换到一个浮点数  
print(complex(1))   #创建一个复数  
print(str(1))   #将对象 x 转换为字符串  
print(repr(1))  #将对象 x 转换为表达式字符串  
print(eval('1+1'))  #用来计算在字符串中的有效Python表达式,并返回一个对象  
print(tuple(range(1,5))) #将序列 s 转换为一个元组  
print(list(range(1,5)))  #将序列 s 转换为一个列表
print(set(range(1,5)))  #转换为可变集合
print(dict(a='a'))  #创建一个字典。d 必须是一个序列 (key,value)元组
print(frozenset(range(1,5)))    #转换为不可变集合
print(chr(99))   #将一个整数转换为一个字符  
print(ord("c")) #将一个字符转换为它的整数值  
print(hex(99)) #将一个整数转换为一个十六进制字符串  
print(oct(99)) #将一个整数转换为一个八进制字符串
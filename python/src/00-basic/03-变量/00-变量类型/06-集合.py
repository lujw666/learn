# 创建集合

basket = {'apple', 'orange', 'apple', 'pear', 'orange', 'banana'}
print(basket)

# 下面展示两个集合间的运算.
a = set('abracadabra')
b = set('alacazam')
a - b                              # 集合a中包含而集合b中不包含的元素
a | b                              # 集合a或b中包含的所有元素
a & b                              # 集合a和b中都包含了的元素
a ^ b                              # 不同时包含于a和b的元素

a = {x for x in 'abracadabra' if x not in 'abc'} # 类似列表推导式，同样集合支持集合推导式
# 创建列表
list1 = ['Google', 'Runoob', 1997, 2000]
list2 = [1, 2, 3, 4, 5 ]
list3 = ["a", "b", "c", "d"]
list4 = ['red', 'green', 'blue', 'yellow', 'white', 'black']

# 下标索引 
list = ['red', 'green', 'blue', 'yellow', 'white', 'black']
print( list[0] )
print( list[1] )
print( list[2] )
print( list[-1] )
print( list[-2] )
print( list[-3] )

# 方括号截取
nums = [10, 20, 30, 40, 50, 60, 70, 80, 90]
print(nums[0:4])
list = ['Google', 'Runoob', "Zhihu", "Taobao", "Wiki"]
print ("list[1]: ", list[1]) # 读取第二位
print ("list[1:-2]: ", list[1:-2]) # 从第二位开始（包含）截取到倒数第二位（不包含）

# 更新列表
list = ['Google', 'Runoob', 1997, 2000]

print ("第三个元素为 : ", list[2])
list[2] = 2001
print ("更新后的第三个元素为 : ", list[2])

list = ['Google', 'Runoob', 1997, 2000]

# 删除列表
print ("原始列表 : ", list)
del list[2]
print ("删除第三个元素 : ", list)

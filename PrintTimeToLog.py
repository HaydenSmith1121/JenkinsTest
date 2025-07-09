# 打印当前时间到log文件中，指定文件的存放位置是d盘下的log.txt
import time
with open('d:/log.txt', 'a') as f:
    f.write(time.strftime('%Y-%m-%d %H:%M:%S', time.localtime()) + '\n')



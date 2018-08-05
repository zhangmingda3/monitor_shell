#!/usr/bin/env python
# -*- coding: utf8 -*-
import  random
cwin = 0
pwin = 0
while cwin < 2 and pwin < 2:
    all_choice = ['石头','剪刀','布']
    computer = random.choice(all_choice)
    prompt = '''    0 石头
    1 剪刀
    2 布
    3 退出
    请选择：'''
    try:
        index = int(raw_input(prompt))
        human = all_choice[index]
    except (KeyboardInterrupt,EOFError):
        print
        break
    except (ValueError,IndexError):
        print '输入有误，请重试！'
        continue
    win_list = ['剪刀石头','石头布','布剪刀']
    #win_list = [["剪刀","石头"],["石头","布"],["布","剪刀"]]
#######################################

    print "computer choice: %s, you choice %s" % (computer,human)
    if  computer == human:
        print '\033[31;1m平局===\033[0m'
    elif computer + human in win_list:
        cwin += 1
        #[computer,human] in win_list:
        print '\033[32;1myou win !!!\033[0m'
    else:
        pwin += 1
        print  '\033[31;1myou lose!!!!!!!!!!\033[0m'
if cwin == 2:
    print 'fanily \033[32;1myou win !!!\033[0m'
else:
    print   'fanily \033[31;1myou lose!!!!!!!!!!\033[0m'
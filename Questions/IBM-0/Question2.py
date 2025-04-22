#!/bin/python3

import math
import os
import random
import re
import sys



#
# Complete the 'getSubstringCount' function below.
#
# The function is expected to return an INTEGER.
# The function accepts STRING s as parameter.
#
from collections import deque
from regex import search

DEBUG = "\n\n----------\nCurrent Number : {}, Zero Stack : {}, One Stack : {}"

def getSubstringCount(s):
    one_stack = deque([])
    zero_stack = deque([])
    prev_number = None
    substring_count = 0
    for d in s:
        
        if d == "0":
            zero_stack.append("X")
        elif d == "1":
            one_stack.append("X") 
        
        if prev_number == None:
            prev_number = d
            continue
        
        if prev_number == "1" and d == "0":
            zero_stack = deque(["X"])
        elif prev_number == "0" and d == "1":
            one_stack = deque(["X"])
        
        prev_number = d
        
        if d == "0" and len(one_stack) != 0:
            one_stack.pop()
            substring_count += 1
        elif d == "1" and len(zero_stack) != 0:
            zero_stack.pop()
            substring_count += 1

        
        
        print(DEBUG.format(d, zero_stack, one_stack))
        
        
    return substring_count
        
            
    
    # Write your code here

if __name__ == '__main__':
    # fptr = open(os.environ['OUTPUT_PATH'], 'w')

    # s = input()

    # result = getSubstringCount(s)

    # fptr.write(str(result) + '\n')

    # fptr.close()
    # result = getSubstringCount("1111110000110000")
    result = getSubstringCount("11100100")
    print(result)

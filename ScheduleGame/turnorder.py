# -*- coding: utf-8 -*-
"""
Created on Sun Nov 20 13:27:09 2022

@author: tomke
"""
import numpy.random as rm
students = ["Andrew","Sophia","Sasha","Eason","Trevor","Schuyler"]
order = list(rm.permutation([1,2,3,4,5,6]))
Turns = {order[i]: students[i] for i in range(len(order))}
print(dict(sorted(Turns.items())))
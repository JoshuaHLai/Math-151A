# -*- coding: utf-8 -*-

import scipy as sp
import ast
import operator

def get_points():
    points = raw_input("Please enter the points in the format (0,0), (1,1), (2,2): ")
    
    while True:
        try:
            return list(ast.literal_eval(points))
        except SyntaxError:
            print "Enter coordinates in the correct format"

def interpolate(x, xList, yList):
    
    def _basis(j):
        p = [(x - xList[m])/(xList[j] - xList[m]) for m in xrange(k) if m != j]
        return reduce(operator.mul, p)
    
    assert len(xList) != 0 and (len(xList) == len(yList))
    
    k = len(xList)
    return sum(_basis(j) * yList[j] for j in xrange(k))

def main():
    points = get_points()
    
    value = raw_input("Please input a value used to calculate the polynomial: ")
    value = float(value)
    
    xList = []
    yList = []
    for i in xrange(len(points)):
        xList.append(points[i][0])
        yList.append(points[i][1])
    
    P = sp.interpolate.lagrange(xList, yList)
    print P
    
    print '\n'
    
    result = interpolate(value, xList, yList)
    print result
    
    
if __name__ == '__main__':
    main()
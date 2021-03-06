//
//  FirstMissingPositive.m
//  LLYAlgorithmDemo
//
//  Created by lly on 2018/6/5.
//  Copyright © 2018年 lly. All rights reserved.
//


//Given an unsorted integer array, find the smallest missing positive integer.
//
//Example 1:
//
//Input: [1,2,0]
//Output: 3
//Example 2:
//
//Input: [3,4,-1,1]
//Output: 2
//Example 3:
//
//Input: [7,8,9,11,12]
//Output: 1

#import "FirstMissingPositive.h"

@implementation FirstMissingPositive


- (instancetype)init{
    
    self = [super init];
    if (self) {
        
        int samllNum = [self firstMissingPositive:@[@6,@5,@4,@3,@2,@1]];
        NSLog(@"samllNum = %d",samllNum);
        
    }
    return self;
}
//假设最小的miss正数是1 遍历列表 如果当前列表中已经有了1 则将最小正数+1 然后从头来过

- (int)firstMissingPositive:(NSArray *)array{
    
    int intRet = 1;
    int index = 0;
    while (index < array.count) {
        if ([array[index] intValue] <= 0) {
            index++;
        }
        else{
            if ([array[index] intValue] == intRet) {
                intRet++;
                index = 0;
            }
            else{
                index++;
            }
        }
    }
    return intRet;
}

@end

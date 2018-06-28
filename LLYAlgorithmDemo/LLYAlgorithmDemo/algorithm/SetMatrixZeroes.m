//
//  SetMatrixZeroes.m
//  LLYAlgorithmDemo
//
//  Created by lly on 2018/6/28.
//  Copyright © 2018年 lly. All rights reserved.
//

#import "SetMatrixZeroes.h"

@implementation SetMatrixZeroes{
    NSMutableArray *_array;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _array = [NSMutableArray arrayWithObjects:[NSMutableArray arrayWithArray:@[@0,@1,@1,@0]],[NSMutableArray arrayWithArray:@[@1,@1,@1,@1]],[NSMutableArray arrayWithArray:@[@1,@1,@1,@1]], nil];
        NSMutableArray *tmpArray = [NSMutableArray arrayWithObjects:[NSMutableArray arrayWithArray:@[@0,@1,@1,@0]],[NSMutableArray arrayWithArray:@[@1,@1,@1,@1]],[NSMutableArray arrayWithArray:@[@1,@1,@1,@1]], nil];
        [self setMatrixZeroes:tmpArray];
        NSLog(@"_array = %@",_array);
    }
    return self;
}

- (void)setMatrixZeroes:(NSMutableArray *)array{
    
    NSMutableArray *cloArray = [NSMutableArray array];
    NSMutableArray *rowArray = [NSMutableArray array];
    
    for (int i = 0; i < array.count; i++) {
        NSMutableArray *tmpArray = array[i];
        for (int j = 0; j < tmpArray.count; j++) {
            if ([tmpArray[j] intValue] == 0) {
                
                if (![rowArray containsObject:@(i)]) {
                    [self setRowToZero:_array row:i];
                    [rowArray addObject:@(i)];
                }
                
                if (![cloArray containsObject:@(j)]) {
                    [self setCloToZero:_array clo:j];
                    [cloArray addObject:@(j)];
                }
    
            }
        }
    }
}

- (void)setRowToZero:(NSMutableArray *)array row:(int)row{
    
    NSMutableArray *tmpArray = array[row];
    for (int i = 0; i < tmpArray.count; i++) {
        tmpArray[i] = @0;
    }
}

- (void)setCloToZero:(NSMutableArray *)array clo:(int)clo{
    
    for (int i = 0; i < array.count; i++) {
        NSMutableArray *tmpArray = array[i];
        tmpArray[clo] = @0;
    }
}

@end
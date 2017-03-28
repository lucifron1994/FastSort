//
//  Sorter.m
//  FastSort
//
//  Created by wanghong on 2017/3/28.
//  Copyright © 2017年 wanghong. All rights reserved.
//

#import "Sorter.h"

@implementation Sorter

+ (NSArray *)fastSortWithArray:(NSArray *)array{
    NSMutableArray *arrayM = array.mutableCopy;
    [self quickSort:arrayM left:0 right:array.count-1];
    
    return arrayM;
}


+ (void)quickSort:(NSMutableArray *)array left:(NSInteger)left right:(NSInteger)right{
    if (right > left) {
        NSInteger i = left;
        NSInteger j = right + 1;
        while (true) {
            while ((i+1 < array.count) && array[++i] < array[left] );
            while ((j-1) > -1 && (array[--j] > array[left]));
            
            if (i >= j) {
                break;
            }
            [self swapArray:array i1:i i2:j];
        }
        [self swapArray:array i1:left i2:j];
        [self quickSort:array left:left right:j-1];
        [self quickSort:array left:j+1 right:right];
    }
}

+ (void)swapArray:(NSMutableArray *)array i1:(NSInteger)i1 i2:(NSInteger)i2{
    [array exchangeObjectAtIndex:i1 withObjectAtIndex:i2];
}


#pragma mark - 

+ (NSArray *)popSortWithArray:(NSArray *)array{
    NSMutableArray *arrayM = array.mutableCopy;
    
    NSInteger count = 0;
    
    BOOL flag = NO;
    
    for (int i = 0; i < arrayM.count ; i++) {
        
        for (NSInteger j = (arrayM.count-1); j>i; j--) {
            count ++;
            if (arrayM[j] < arrayM[j-1]) {
                flag = YES;
                [arrayM exchangeObjectAtIndex:j withObjectAtIndex:j-1];
            }
            
        }
        
        if (!flag) {
            break;
        }
    }
    NSLog(@"Count %ld",(long)count);
    return arrayM;
}


@end

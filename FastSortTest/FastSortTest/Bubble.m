//
//  Bubble.m
//  FastSortTest
//
//  Created by WangHong on 2017/7/11.
//  Copyright © 2017年 wanghong. All rights reserved.
//

#import "Bubble.h"

@implementation Bubble

+ (void)sort{
    NSArray *toSort = @[@5,@3,@2,@4,@1];
    
    NSMutableArray *am = toSort.mutableCopy;
    NSLog(@"Bubble Before %@",am);
    [self sortWithArray:am];
    NSLog(@"Bubble After %@",am);
}

+ (void)sortWithArray:(NSMutableArray *)array{
    
    BOOL flag = YES;
    NSUInteger i, j;
    
    for (i = 1; i < array.count  && flag; i++) {
        
        flag = NO;
        
        for (j = (array.count - 1); j >= i; j--) {
            if (array[j-1] > array[j]) {
                [array exchangeObjectAtIndex:j-1 withObjectAtIndex:j];
                flag = YES;
            }
        }
    }
}


@end

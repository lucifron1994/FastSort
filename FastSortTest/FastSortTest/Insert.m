//
//  Insert.m
//  FastSortTest
//
//  Created by WangHong on 2017/7/11.
//  Copyright © 2017年 wanghong. All rights reserved.
//

#import "Insert.h"

@implementation Insert

+ (void)sort{
    NSArray *toSort = @[@5,@3,@2,@4,@1];

    NSMutableArray *am = toSort.mutableCopy;
    NSLog(@"Bubble Before %@",am);
    [self sortWithArray:am];
    NSLog(@"Bubble After %@",am);
}

+ (void)sortWithArray:(NSMutableArray *)array{
    int i,j,k;
    
    for (i = 2; i <= array.count; i++) {
        if (array[i-1] < array[i-1-1]) {
            
            k = [array[i-1] intValue];
            for (j = i-1; [array[j-1] intValue] > k ;j--) {
                array[j] = array[j-1];
            }
            array[j] = @(k);
        }
    }
}

@end

//
//  Sorter.m
//  FastSortTest
//
//  Created by WangHong on 2017/6/25.
//  Copyright © 2017年 wanghong. All rights reserved.
//

#import "Sorter.h"

@implementation Sorter

+ (void)sort{
    NSArray *toSort = @[@3,@5,@2,@4,@1];
    
    NSMutableArray *am = toSort.mutableCopy;

    NSLog(@"Fast Before %@",am);
    [self q_sort:am low:0 high:(int)am.count-1];
    NSLog(@"Fast After %@",am);

    
}

+ (void)q_sort:(NSMutableArray *)array low:(int)low high:(int)high{
    int middle;
    
    if (low < high) {
        middle = [self partition:array low:low high:high];
        
        [self q_sort:array low:low high:middle-1];
        [self q_sort:array low:middle+1 high:high];
        
    }
}

+ (int)partition:(NSMutableArray *)array low:(int)low high:(int)high{
    int pivotkey = [array[low] intValue];
    
    while (low < high) {
        while (low < high && [array[high] intValue] >= pivotkey){
            high--;
        }
        [array exchangeObjectAtIndex:low withObjectAtIndex:high];
        
        while (low<high && [array[low] intValue] <= pivotkey){
            low ++;
        }
        [array exchangeObjectAtIndex:low withObjectAtIndex:high];
        
    }
    
    return low;
}


@end

//
//  main.m
//  FastSort
//
//  Created by wanghong on 2017/3/28.
//  Copyright © 2017年 wanghong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Sorter.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        

//        NSArray *array = @[@10,@6,@4,@88,@666,@7,@9,@0,@1];
        NSArray *array = @[@1,@2,@3,@4,@5,@6,@7,@8,@9];

//        NSArray *sortedArray = [Sorter fastSortWithArray:array];
        NSArray *sortedArray2 = [Sorter popSortWithArray:array];
        NSLog(@"Pop: %@",sortedArray2);
        
    }
    return 0;
}



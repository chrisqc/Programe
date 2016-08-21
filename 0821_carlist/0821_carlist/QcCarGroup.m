//
//  QcCarGroup.m
//  0821_carlist
//
//  Created by QChris on 16/8/21.
//  Copyright © 2016年 Chrisqc. All rights reserved.
//

#import "QcCarGroup.h"
#import "QcCar.h"

@implementation QcCarGroup

+ (instancetype)QcCargroupWithDcit:(NSDictionary *)dict {
    return [[self alloc] initWithDict:dict];
}
- (instancetype)initWithDict:(NSDictionary *)dict {
    if (self = [super init]) {
        self.title = dict[@"title"];
        
        NSArray *dictArray = dict[@"cars"];
        NSMutableArray *array = [NSMutableArray array];
        for (NSDictionary *dict in dictArray) {
            QcCar *car = [QcCar QcCarWithDict:dict];
            [array addObject:car];
        }
        self.cars = array;
    }
    return self;
}

@end

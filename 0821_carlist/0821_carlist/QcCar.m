//
//  QcCar.m
//  0821_carlist
//
//  Created by QChris on 16/8/21.
//  Copyright © 2016年 Chrisqc. All rights reserved.
//

#import "QcCar.h"

@implementation QcCar

+ (instancetype)QcCarWithDict:(NSDictionary *)dict {
    return [[self alloc] initWithDict:dict];
}
- (instancetype)initWithDict:(NSDictionary *)dict {
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}

@end

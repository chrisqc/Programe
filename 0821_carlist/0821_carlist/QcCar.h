//
//  QcCar.h
//  0821_carlist
//
//  Created by QChris on 16/8/21.
//  Copyright © 2016年 Chrisqc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QcCar : NSObject

@property (nonatomic,copy) NSString *icon;
@property (nonatomic,copy) NSString *name;

+ (instancetype)QcCarWithDict:(NSDictionary *)dict;
- (instancetype)initWithDict:(NSDictionary *)dict;

@end

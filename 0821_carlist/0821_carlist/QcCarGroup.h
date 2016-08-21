//
//  QcCarGroup.h
//  0821_carlist
//
//  Created by QChris on 16/8/21.
//  Copyright © 2016年 Chrisqc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QcCarGroup : NSObject

@property (nonatomic,strong) NSArray *cars;
@property (nonatomic,copy) NSString *title;

+ (instancetype)QcCargroupWithDcit:(NSDictionary *)dict;
- (instancetype)initWithDict:(NSDictionary *)dict;

@end

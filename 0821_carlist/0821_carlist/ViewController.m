//
//  ViewController.m
//  0821_carlist
//
//  Created by QChris on 16/8/21.
//  Copyright © 2016年 Chrisqc. All rights reserved.
//

#import "ViewController.h"
#import "QcCar.h"
#import "QcCarGroup.h"

@interface ViewController ()<UITableViewDataSource>

@property (nonatomic,strong) NSArray *CarsArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (NSArray *)CarsArray {
    if (_CarsArray == nil) {
        NSString *path = [[NSBundle mainBundle] pathForResource:@"cars_total.plist" ofType:nil];
        NSArray *dictArray = [NSArray arrayWithContentsOfFile:path];
        
        NSMutableArray *array = [NSMutableArray array];
        for (NSDictionary *dict in dictArray) {
            QcCarGroup *CarsGroup = [QcCarGroup QcCargroupWithDcit:dict];
            [array addObject:CarsGroup];
        }
        _CarsArray = array;
    }
    return _CarsArray;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.CarsArray.count;

}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    QcCarGroup *car = self.CarsArray[section];
    return car.cars.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *ID = @"id";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    QcCarGroup *carGroup = self.CarsArray[indexPath.section];
    QcCar *car = carGroup.cars[indexPath.row];
    cell.textLabel.text = car.name;
    return cell;
}

@end

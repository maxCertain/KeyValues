//
//  ViewController.m
//  KeyValues
//
//  Created by liicon on 2017/6/12.
//  Copyright © 2017年 max. All rights reserved.
//

#import "ViewController.h"
#import "NSObject+keyValues.h"
#import "PersonModel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSDictionary *infoDict = @{@"name":@"小明",@"age":@(18),@"height":@(170.5)};
    
    PersonModel *model = [[PersonModel  alloc] init];
    [model setValuesForKeysWithDictionary:infoDict];
    
    NSDictionary *info = [model dictionaryWithValuesForKeys:[model getPropertys]];
    NSLog(@"%@",info);
    
    NSLog(@"%@",model.name);
    NSLog(@"%@",model.age);
    NSLog(@"%@",model.height);
    NSLog(@"%@",model.idCard);
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

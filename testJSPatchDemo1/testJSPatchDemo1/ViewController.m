//
//  ViewController.m
//  testJSPatchDemo1
//
//  Created by speedx on 16/5/11.
//  Copyright © 2016年 speedx. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UIButton *testButton;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
    testButton = [UIButton buttonWithType:UIButtonTypeCustom];
    testButton.frame = CGRectMake(0, 100, 100, 50);
    testButton.backgroundColor =[UIColor redColor];
    [testButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [testButton setTitle:@"点我" forState:UIControlStateNormal];
    [testButton addTarget:self action:@selector(clickAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:testButton];
    
}

-(void)clickAction:(UIButton *)button{
    if ([testButton.currentTitle isEqualToString:@"点我"]) {
        [testButton setTitle:@"点了我" forState:UIControlStateNormal];
    }else{
        [testButton setTitle:@"点我" forState:UIControlStateNormal];
    }

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

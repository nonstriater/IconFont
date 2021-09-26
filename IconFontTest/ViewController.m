//
//  ViewController.m
//  IconFontTest
//
//  Created by ranwenjie on 16/10/26.
//  Copyright © 2016年 ranwenjie. All rights reserved.
//

#import "ViewController.h"
#import "ONEHomeFontImage.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self testImageView];
   // [self testButton];
    
}

- (void)testButton{
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(100, 200, 40, 40);
    btn.backgroundColor = [UIColor grayColor];
    [btn setImage:[ONEHomeFontImage imageNamed:@"one_topbar_menu" fontSize:40] forState:UIControlStateNormal];
    [self.view addSubview:btn];
    
    
    UIButton *btn2 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn2.frame = CGRectMake(100, 260, 100, 100);
    btn2.backgroundColor = [UIColor grayColor];
    [btn2 setImage:[ONEHomeFontImage imageNamed:@"one_topbar_menu" fontSize:200 color:[UIColor redColor]] forState:UIControlStateNormal];
    [self.view addSubview:btn2];
    
    
}

- (void)testImageView{
    
    UIImageView *iv = [[UIImageView alloc] initWithFrame:CGRectMake(100, 10, 40, 40)];
    iv.backgroundColor = [UIColor grayColor];
    iv.image = [ONEHomeFontImage imageNamed:@"one_topbar_menu" fontSize:40];
    [self.view  addSubview:iv];
    
    UIImageView *iv2 = [[UIImageView alloc] initWithFrame:CGRectMake(100, 80, 100, 100)];
    iv2.backgroundColor = [UIColor grayColor];
    iv2.image = [ONEHomeFontImage imageNamed:@"one_topbar_menu" fontSize:100 color:[UIColor greenColor] insets:UIEdgeInsetsZero backgroundColor:[UIColor redColor]];
    [self.view addSubview:iv2];
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

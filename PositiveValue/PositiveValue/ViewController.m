//
//  ViewController.m
//  PositiveValue
//
//  Created by ybb on 2017/2/6.
//  Copyright © 2017年 ybb. All rights reserved.
//

#import "ViewController.h"
#import "nextValueViewController.h"

@interface ViewController ()

@property (nonatomic, strong) UITextField *textField;

@property (nonatomic, strong) UIButton *nextBtn;

@end

@implementation ViewController

- (UITextField *)textField
{
    if (_textField == nil) {
        _textField = [[UITextField alloc] initWithFrame:CGRectMake(100, 100, 100, 50)];
        _textField.borderStyle = UITextBorderStyleRoundedRect;
    }
    return _textField;
}

- (UIButton *)nextBtn
{
    if (_nextBtn == nil) {
        _nextBtn = [[UIButton alloc] initWithFrame:CGRectMake(100, 200, 100, 50)];
        [_nextBtn setTitle:@"Next" forState:UIControlStateNormal];
        _nextBtn.backgroundColor = [UIColor greenColor];
    }
    return _nextBtn;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.title = @"正向传值";
    
    [self.view addSubview:self.textField];
    
    [self.nextBtn addTarget:self action:@selector(nextClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.nextBtn];
    
}

- (void)nextClick
{
    nextValueViewController *nextVC = [[nextValueViewController alloc] init];
    //通过引用，给要推出的控制器公开的那个属性赋值
    nextVC.msg = self.textField.text;
    [self.navigationController pushViewController:nextVC animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

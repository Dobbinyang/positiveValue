//
//  nextValueViewController.m
//  PositiveValue
//
//  Created by ybb on 2017/2/6.
//  Copyright © 2017年 ybb. All rights reserved.
//

#import "nextValueViewController.h"

@interface nextValueViewController ()

@property (nonatomic, strong) UILabel *textLAabel;

@end

@implementation nextValueViewController

- (UILabel *)textLAabel
{
    if (_textLAabel == nil) {
        _textLAabel = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 100, 50)];
        _textLAabel.backgroundColor = [UIColor grayColor];
    }
    return _textLAabel;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.title = @"值";
    
    self.textLAabel.text = self.msg;
    [self.view addSubview:self.textLAabel];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

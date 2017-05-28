//
//  ViewController.m
//  IconFont_Demo
//
//  Created by geek on 2017/5/26.
//  Copyright © 2017年 Liubp. All rights reserved.
//

#import "ViewController.h"
#import "LBPIconFont.h"
#import "UIImage+LBPIconFont.h"

#define BoundWidth  [[UIScreen mainScreen]bounds].size.width
#define BoundHeight [[UIScreen mainScreen]bounds].size.height

@interface ViewController ()

@property (nonatomic, strong) UILabel *labelUsageLabel;  /**<文本形式使用iconfont标题*/
@property (nonatomic, strong) UILabel *imageUsageLabel; /**<图片形式使用iconfont标题*/

@property (nonatomic, strong) UILabel *label;  /**<文字形式使用iconfont*/
@property (nonatomic, strong) UIImageView *imageView;  /**<图片方式使用iconfont*/
@property (nonatomic, strong) UILabel *labelUsageButtonTitleLabel;
/**<作为button的titlelabel使用*/
@property (nonatomic, strong) UIButton *button;     /**<button的titlelabel方式使用iconfont*/

@property (nonatomic, strong) UILabel *usageLabel;       /**<封装过的用法*/
@property (nonatomic, strong) UIImageView *latestImageView;     /**<使用新封装的UIImageView*/
@end

@implementation ViewController


#pragma mark - life cycle
-(void)viewDidLoad{
    [super viewDidLoad];
    [self setupUI];
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
   
}

-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    
}

#pragma mark - UITableViewDataSource


#pragma mark - LocationManagerDelegate


#pragma mark - event response
-(void)clickButton:(UIButton *)button{
    NSLog(@"哎呀，你用力太大了，人家好痛");
}

#pragma mark - private method
-(void)setupUI{
    
    NSMutableAttributedString *attributedStr = [[NSMutableAttributedString alloc] initWithString:@"\U0000e696  \U0000e6ab  \U0000e6ac  \U0000e6ae"];
    [attributedStr addAttribute:NSForegroundColorAttributeName value:[UIColor redColor] range:NSMakeRange(0, 1)];
    [attributedStr addAttribute:NSForegroundColorAttributeName value:[UIColor orangeColor] range:NSMakeRange(3, 1)];
    [attributedStr addAttribute:NSForegroundColorAttributeName value:[UIColor blackColor] range:NSMakeRange(9, 1)];
    self.label.attributedText = attributedStr;
    
    NSLog(@"scale:%f",[UIScreen mainScreen].scale);
    
    self.labelUsageLabel.text = @"1、以label的形式使用";
    [self.view addSubview:self.labelUsageLabel];
    [self.view addSubview:self.label];
    
    self.imageUsageLabel.text = @"2、以图片的形式使用";
    [self.view addSubview:self.imageUsageLabel];
    [self.view addSubview:self.imageView];
    
    [self.button setTitle:@"\U0000e6ab" forState:UIControlStateNormal];
    [self.button setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    self.labelUsageButtonTitleLabel.text = @"3、作为button的titleLabel文字使用";
    [self.view addSubview:self.labelUsageButtonTitleLabel];
    [self.view addSubview:self.button];
    
    self.usageLabel.text = @"4、使用封装过的iconfont";
    self.latestImageView.image = [UIImage iconWithInfo:LBPIconFontmake(@"\U0000e6ac", 60, @"000066") ];
    [self.view addSubview:self.usageLabel];
    [self.view addSubview:self.latestImageView];
}

#pragma mark - getter and setter
-(UILabel *)label{
    if (!_label) {
        _label = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, BoundWidth-200, 40)];
        _label.font = [UIFont fontWithName:@"iconfont" size:24];
        _label.textColor = [UIColor purpleColor];
    }
    return _label;
}

-(UIImageView *)imageView{
    if (!_imageView) {
        _imageView = [[UIImageView alloc] initWithFrame:CGRectMake(100, 250, 100, 100)];
        CGSize imageSize = CGSizeMake(100, 100);
        UIGraphicsBeginImageContextWithOptions(imageSize, NO, [UIScreen mainScreen].scale);
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
        label.textColor = [UIColor redColor];
        label.text = @"\U0000e696";
        label.font = [UIFont fontWithName:@"iconfont" size:100];
        [label.layer renderInContext:UIGraphicsGetCurrentContext()];
        UIImage *retImage = UIGraphicsGetImageFromCurrentImageContext();
        _imageView.image = retImage;
    }
    return _imageView;
}

-(UILabel *)labelUsageLabel{
    if (!_labelUsageLabel) {
        _labelUsageLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 50, BoundWidth - 20, 20)];
        _labelUsageLabel.textColor = [UIColor grayColor];
        _labelUsageLabel.font = [UIFont systemFontOfSize:16];
        _labelUsageLabel.textAlignment = NSTextAlignmentLeft;
    }
    return _labelUsageLabel;
}

-(UILabel *)imageUsageLabel{
    if (!_imageUsageLabel) {
        _imageUsageLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 160, BoundWidth - 20, 20)];
        _imageUsageLabel.textColor = [UIColor grayColor];
        _imageUsageLabel.font = [UIFont systemFontOfSize:16];
        _imageUsageLabel.textAlignment = NSTextAlignmentLeft;
    }
    return _imageUsageLabel;
}


-(UILabel *)labelUsageButtonTitleLabel{
    if (!_labelUsageButtonTitleLabel) {
        _labelUsageButtonTitleLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 380, BoundWidth -20, 21)];
        _labelUsageButtonTitleLabel.textColor = [UIColor grayColor];
        _labelUsageButtonTitleLabel.font = [UIFont systemFontOfSize:16];
        _labelUsageButtonTitleLabel.textAlignment = NSTextAlignmentLeft;
    }
    return _labelUsageButtonTitleLabel;
}


-(UIButton *)button{
    if (!_button) {
        _button = [UIButton buttonWithType:UIButtonTypeCustom];
        _button.frame = CGRectMake(30, 420, 30, 30);
        _button.titleLabel.font = [UIFont fontWithName:@"iconfont" size:30];
        _button.backgroundColor = [UIColor grayColor];
        [_button addTarget:self action:@selector(clickButton:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _button;
}

-(UILabel *)usageLabel{
    if (!_usageLabel) {
        _usageLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 470, BoundWidth - 20, 20)];
        _usageLabel.textColor = [UIColor grayColor];
        _usageLabel.font = [UIFont systemFontOfSize:16];
        _usageLabel.textAlignment = NSTextAlignmentLeft;
    }
    return _usageLabel;
}

-(UIImageView *)latestImageView{
    if (!_latestImageView) {
        _latestImageView = [[UIImageView alloc] initWithFrame:CGRectMake(100, 510, 100, 100)];
    }
    return _latestImageView;
}
@end

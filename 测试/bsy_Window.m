//
//  bsy_Window.m
//  测试
//
//  Created by chenchen on 15/11/2.
//  Copyright © 2015年 BSY. All rights reserved.
//

#import "bsy_Window.h"

@implementation bsy_Window


#define bsy_width [UIScreen mainScreen].bounds.size.width
#define bsy_height [UIScreen mainScreen].bounds.size.height
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.3];
        self.windowLevel = UIWindowLevelAlert;

        self.bsy_superView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, bsy_width-60, 200)];
        self.bsy_superView.backgroundColor = [UIColor whiteColor];
        self.bsy_superView.center = CGPointMake(bsy_width/2.0,0);
            [UIView animateWithDuration:1 delay:0.0 usingSpringWithDamping:0.5 initialSpringVelocity:0 options:UIViewAnimationOptionAllowUserInteraction animations:^{
                self.bsy_superView.center = CGPointMake(bsy_width/2.0,bsy_height/2.0);
            } completion:^(BOOL finished) {
            }];
        self.bsy_superView.layer.borderWidth = 1;
        self.bsy_superView.layer.borderColor = [UIColor clearColor].CGColor;
        self.bsy_superView.layer.cornerRadius = 10;
        self.bsy_superView.clipsToBounds = YES;
        [self addSubview:self.bsy_superView];
        
        [self makeKeyAndVisible];
    }
    
    return self;
}


-(void)addBsy_quitBtnMessage:(NSString *)quitmessage sureMessage:(NSString *)sureMessage message:(NSString *)message cueMessage:(NSString *)cueMessage
{
    self.bsy_quitBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.bsy_quitBtn setTitle:quitmessage forState:UIControlStateNormal];
    [self.bsy_quitBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    self.bsy_quitBtn.frame = CGRectMake(0, self.bsy_superView.frame.size.height-50, self.bsy_superView.frame.size.width/2, 40);
    self.bsy_quitBtn.layer.borderColor = [UIColor clearColor].CGColor;
    self.bsy_quitBtn.layer.borderWidth = 1;
    self.bsy_quitBtn.layer.cornerRadius = 5;
    self.bsy_quitBtn.clipsToBounds = YES;
    [self.bsy_superView addSubview:self.bsy_quitBtn];
    [self.bsy_quitBtn addTarget:self action:@selector(bsy_Windowclose) forControlEvents:UIControlEventTouchUpInside];
    
    
    self.bsy_sureBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.bsy_sureBtn setTitle:sureMessage forState:UIControlStateNormal];
    [self.bsy_sureBtn setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    self.bsy_sureBtn.frame = CGRectMake(self.bsy_superView.frame.size.width/2, self.bsy_superView.frame.size.height-50, self.bsy_superView.frame.size.width/2, 40);
    self.bsy_sureBtn.layer.borderColor = [UIColor clearColor].CGColor;
    self.bsy_sureBtn.layer.borderWidth = 1;
    self.bsy_sureBtn.layer.cornerRadius = 5;
    self.bsy_sureBtn.clipsToBounds = YES;
    [self.bsy_superView addSubview:self.bsy_sureBtn];
   
    
    
    self.bsy_messageLab = [[UILabel alloc]initWithFrame:CGRectMake(20, 50, self.bsy_superView.frame.size.width-40, self.bsy_superView.frame.size.height-100)];
    self.bsy_messageLab.text = message;
    self.bsy_messageLab.textColor = [UIColor lightGrayColor];
    self.bsy_messageLab.numberOfLines = 0;
    self.bsy_messageLab.textAlignment  =NSTextAlignmentCenter;
    self.bsy_messageLab.lineBreakMode = NSLineBreakByWordWrapping;
    self.bsy_messageLab.font = [UIFont systemFontOfSize:13];
    [self.bsy_superView addSubview:self.bsy_messageLab];
    
    self.bsy_cueLab = [[UILabel alloc]initWithFrame:CGRectMake(0, 10, self.bsy_superView.frame.size.width, 30)];
    self.bsy_cueLab.text = cueMessage;
    self.bsy_cueLab.textAlignment = NSTextAlignmentCenter;
    self.bsy_cueLab.textColor = [UIColor colorWithRed:74/255.0 green:183/255.0 blue:138/255.0 alpha:1.0];
    self.bsy_cueLab.font = [UIFont systemFontOfSize:17];
    [self.bsy_superView addSubview:self.bsy_cueLab];
}

- (void)bsy_Windowclose {
    [UIView animateWithDuration:0.5 delay:0.0 usingSpringWithDamping:0.5 initialSpringVelocity:0 options:UIViewAnimationOptionAllowUserInteraction animations:^{
        self.bsy_superView.center = CGPointMake(bsy_width/2.0,bsy_height+300);
       
    } completion:^(BOOL finished) {
         self.hidden = YES;
    }];
}
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    // 点击消失
    [self bsy_Windowclose];
}
@end

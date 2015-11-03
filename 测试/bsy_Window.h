//
//  bsy_Window.h
//  测试
//
//  Created by chenchen on 15/11/2.
//  Copyright © 2015年 BSY. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface bsy_Window : UIWindow
-(void)bsy_Windowclose;
@property (nonatomic ,strong)UIView *bsy_superView;
@property (nonatomic ,strong)UIButton *bsy_quitBtn;
@property (nonatomic ,strong)UIButton *bsy_sureBtn;
@property (nonatomic ,strong)UILabel *bsy_messageLab;
@property (nonatomic ,strong)UILabel *bsy_cueLab;
-(void)addBsy_quitBtnMessage:(NSString *)quitmessage sureMessage:(NSString *)sureMessage message:(NSString *)message cueMessage:(NSString *)cueMessage;

@end

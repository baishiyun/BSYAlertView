//
//  UITableView+bsy.m
//  测试
//
//  Created by chenchen on 15/11/2.
//  Copyright © 2015年 BSY. All rights reserved.
//

#import "UITableView+bsy.h"

@implementation UITableView (bsy)
-(void)tableViewDisplayWithMeg:(NSString *)message count:(NSUInteger)RowCount
{
    if (RowCount==0) {
        UILabel *messageLab = [UILabel new];
        messageLab.font = [UIFont systemFontOfSize:13];
        messageLab.text = message;
        messageLab.textColor = [UIColor lightGrayColor];
        messageLab.textAlignment = NSTextAlignmentCenter;
        [messageLab sizeToFit];
        self.backgroundView = messageLab;
        self.separatorStyle = UITableViewCellSeparatorStyleNone;
    }else{
        self.backgroundView = nil;
        self.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
    }

}
@end

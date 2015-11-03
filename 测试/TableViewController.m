//
//  TableViewController.m
//  测试
//
//  Created by chenchen on 15/11/2.
//  Copyright © 2015年 BSY. All rights reserved.
//

#import "TableViewController.h"
#import "UITableView+bsy.h"
@interface TableViewController ()

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"UITableView+bsy 演示";
    
    
    UIButton*rightButton = [[UIButton alloc]initWithFrame:CGRectMake(0,0,50,50)];
    [rightButton addTarget:self action:@selector(searchprogram) forControlEvents:UIControlEventTouchUpInside];
    [rightButton setTitle:@"Add" forState:UIControlStateNormal];
    [rightButton setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    UIBarButtonItem*rightItem = [[UIBarButtonItem alloc]initWithCustomView:rightButton];
    self.navigationItem.rightBarButtonItem= rightItem;
    
    self.tableView.tableFooterView = [[UIView alloc]init];

}
-(void)searchprogram
{
    NSDate *  senddate=[NSDate date];
    NSDateFormatter  *dateformatter=[[NSDateFormatter alloc] init];
    [dateformatter setDateFormat:@"YYYY-MM-dd:HH:mm:ss"];
    NSString *  locationString=[dateformatter stringFromDate:senddate];

    [self.arr addObject:locationString];
    [self.tableView reloadData];

}
-(NSMutableArray *)arr
{
    if (!_arr) {
        _arr = [NSMutableArray array];
    }
    return _arr;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    [tableView tableViewDisplayWithMeg:@"没有商品数据" count:self.arr.count];
    return [self.arr count];
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *ID = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    cell.textLabel.text = [self.arr objectAtIndex:indexPath.row];
    
    return cell;
}


@end

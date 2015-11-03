 一个自定义的UIAlertView，可以在修改样式的UIAlertView，其中还有一个分类，在list无数据的时候提示使用，非常方便

一个自定义的UIAlertView，可以在修改样式的UIAlertView，其中还有一个分类，在list无数据的时候提示使用，非常方便。



1.bsy_Window的用法：导入#import "bsy_Window.h"
- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @" bsy_Window 演示";
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setFrame:CGRectMake([UIScreen
mainScreen].bounds.size.width/3, [UIScreen
mainScreen].bounds.size.height/2-30, [UIScreen
mainScreen].bounds.size.width/3, 60)];
    [button setTitle:@"点击" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor lightGrayColor]
forState:UIControlStateNormal];
    [button.titleLabel setFont:[UIFont boldSystemFontOfSize:20]];
    button.backgroundColor = [UIColor brownColor];
    [self.view addSubview:button];
    [button addTarget:self action:@selector(buttonClick)
forControlEvents:UIControlEventTouchUpInside];
    // Do any additional setup after loading the view, typically from a
nib.
}

- (void)buttonClick {

    bsy = [[bsy_Window alloc]initWithFrame:[UIScreen
mainScreen].bounds];
    [bsy addBsy_quitBtnMessage:@"取消" sureMessage:@"确定" message:@"Do any
additional setup after loading the view, typically from a nib. Do any
additional setup after loading the view, typically from a nib. Do any
additional setup after loading the view, typically from a nib."
cueMessage:@"温馨提示"];
    [self.view addSubview:bsy];
    [bsy.bsy_sureBtn addTarget:self action:@selector(bsy_Windowshow)
forControlEvents:UIControlEventTouchUpInside];
}
-(void)bsy_Windowshow
{
    bsy.hidden = YES;
    [self.navigationController pushViewController:[[TableViewController
alloc]init] animated:NO];
}

2.UITableView+bsy的用法：导入#import "UITableView+bsy.h"

- (NSInteger)tableView:(UITableView *)tableView
numberOfRowsInSection:(NSInteger)section {
    [tableView tableViewDisplayWithMeg:@"没有商品数据" count:self.arr.count];
    return [self.arr count];
}

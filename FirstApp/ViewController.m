//
//  ViewController.m
//  FirstApp
//
//  Created by 李伟发 on 2021/2/7.
//

#import "ViewController.h"

//#import <pop/POP.h>

@interface ViewController()<UITableViewDataSource> 

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    UIView *view=[[UIView alloc] init];
//    self.view.backgroundColor=[UIColor whiteColor];
//    view.backgroundColor=[UIColor redColor];
//    view.frame=CGRectMake(150, 150, 100, 100);
//    [self.view addSubview:view];
    
    UITableView *tableView=[[UITableView alloc] initWithFrame:self.view.bounds];
    tableView.dataSource=self;
    [self.view addSubview:tableView];
    
    // Do any additional setup after loading the view.
//    [self.view addSubview:({
//        UILabel  *label=[[UILabel alloc]init];
//        label.text=@"hello world";
//        [label  sizeToFit];
//        label.center=CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
//        label;})];
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 20;
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    

    UITableViewCell *tableViewCell=[tableView dequeueReusableCellWithIdentifier:@"id"];
    if(!tableViewCell){
        tableViewCell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"id"];
    }
//    tableViewCell.textLabel.text=[[NSString alloc]initWithFormat:@"主标题%ld",indexPath.row];
    tableViewCell.textLabel.text=[NSString stringWithFormat:@"主标题%ld",indexPath.row];
    tableViewCell.detailTextLabel.text=@"副标题";
    return tableViewCell;
    
}


@end

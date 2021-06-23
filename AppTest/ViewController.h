//
//  ViewController.h
//  AppTest
//
//  Created by asuswang on 2021/6/16.
//
#define PADDINHG 30
#define LOGIN_BOTTOM_PADDING 20
#define TEXT_BOTTOM_PADDING 50
#define BOTTOM_LEFT_PADDING 20

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
{
//    UITableView *myTableView;
}
@property (nonatomic, retain) NSArray *dataList;
@property (nonatomic, retain, strong) UITableView *tableView;
@end

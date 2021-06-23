//
//  ViewController.m
//  AppTest
//
//  Created by asuswang on 2021/6/16.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    // create UIView("Tencent")
//    [self creatView];
    
    // 手机屏幕的大小
    float width = UIScreen.mainScreen.bounds.size.width;
    float height = UIScreen.mainScreen.bounds.size.height;
    
    NSArray* list = [NSArray arrayWithObjects:@"Wuhan", @"Shanghai", @"Beijing", nil];
    self.dataList = list;
    self.tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
    
    _tableView.backgroundColor = [UIColor whiteColor];
    _tableView.dataSource = self;
    _tableView.delegate = self;
    [self.view addSubview:self.tableView];
//    CGPoint
    // username 应该占据的位置
    // width: 10% 80% 10%
    // height: 10%
//    UITextField* text = [self creatText:0.1*width :0.25*height :0.75*width :0.05*height];
//    text.tag = 1;
//    UITextField* pass = [self creatPwd:0.1*width :0.345*height :0.75*width :0.05*height];
//    pass.tag = 2;
//    CGRect cg = CGRectMake(0.35*width, 0.4*height, 0.3*width, 0.3*width);
//    [self creatLogin:cg];
//    // 轻扫空白处键盘回收
//    // UISwipeGestureRecognizer -> 滑动手势识别器
//    UISwipeGestureRecognizer * gr = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(gr:)];
//    // 点击空白处键盘回收
//    // UITapGestureRecognizer -> 轻击手势识别器
//
//    UITapGestureRecognizer* tgr = [[UITapGestureRecognizer alloc] init];
//    [tgr addTarget:self action:@selector(Register:)];
//
//    [self.view addGestureRecognizer:tgr];
//
//    [self.view addGestureRecognizer:gr];
//    cg = CGRectMake(width*0.1, height-height*0.1, width*0.25, height*0.05);
//    [self creatbottom:cg :@"手机号登陆"];
//    cg.origin.x = cg.origin.x + cg.size.width;
//    [self creatbottom:cg :@"找回密码"];
//    cg.origin.x = cg.origin.x + cg.size.width;
//    [self creatbottom:cg :@"新用户注册"];
    // create Label
//    UatLable:@"password:" :60 :525 :100 :50];
    
    // create textfield
    
    
//    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
//    UIButton *btnimg = [[UIButton alloc] initWithFrame:CGRectMake(50, 300, 200, 400)];
    
//    //P1:字符串
//    //P2:设置文字的现实状态，UIControlStateNormal->正常状态
//    [button setTitle:@"Click" forState:UIControlStateNormal];
//    [button setTitle:@"free" forState:UIControlStateHighlighted];
//    //Color setting
//    button.backgroundColor = UIColor.whiteColor;
//    //P2:UIControlStateHighlighted 按下状态
//    [button addTarget:self action:@selector(onButton) forControlEvents:UIControlEventTouchDown];
//    //设置按钮显示的颜色
//    //P1:颜色
//    //P2:状态
//    [button setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
//    [button setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];
//
//    UIImage* icon01=[UIImage imageNamed:@"1.jpg"];
//    UIImage* icon02=[UIImage imageNamed:@"2.jpg"];
//    [btnimg setImage:icon01 forState:UIControlStateNormal];
//    [btnimg setImage:icon02 forState:UIControlStateHighlighted];
//
//    [self.view addSubview:button];
//    [self.view addSubview:btnimg];
}
// 下面将使用函数创建视图控件
// 居中未设置
-(NSInteger) tableView:(UITableView*)tableView numberOfRowsInSection:(NSInteger) section{
    return self.dataList.count;
}
-(UITableViewCell*)tableView:(UITableView*)tableView cellForRowAtIndexPath:(NSIndexPath*)indexPath{
    static NSString* cellID = @"cellID";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    if(indexPath.row<self.dataList.count){
        cell.textLabel.text = self.dataList[indexPath.row];
    }
    return cell;
}
-(void) creatView{
    UIImageView* imgview = [[UIImageView alloc] initWithFrame:CGRectMake(60, 100, 300, 50)];
    UIImage* img = [UIImage imageNamed:@"tencent_logo.png"];
    imgview.image = img;
    [self.view addSubview:imgview];
}
-(UILabel*) creatLable:(NSString*)l_name :(int)x :(int)y :(int)width :(int)height{
    UILabel* lab = [[UILabel alloc] initWithFrame:CGRectMake(x, y, width, height)];
    lab.text = l_name;
    [self.view addSubview:lab];
    return lab;
}
-(UITextField*) creatText:(float)x :(float)y :(float)w :(float)h{
    UITextField* text = [[UITextField alloc] initWithFrame:CGRectMake(x, y, w, h)];
    text.borderStyle = UITextBorderStyleLine;
    text.placeholder = @"QQ账号";
    text.font = [UIFont fontWithName:@"Arial" size:20.0f];
    text.keyboardType = UIKeyboardTypeNumberPad;
    text.textColor = [UIColor blueColor];
    text.clearButtonMode = UITextFieldViewModeAlways;
    [text.layer setMasksToBounds:YES];
    [text.layer setCornerRadius:20];
    text.layer.borderColor = [[UIColor blackColor] CGColor];
    text.layer.borderWidth = 1.0;
    
    text.leftView = [[UIView alloc] initWithFrame:CGRectMake(x, y, w*0.05, h)];
    text.leftViewMode = UITextFieldViewModeAlways;
    [self.view addSubview:text];
    return text;
}
-(UITextField*) creatPwd:(float)x :(float)y :(float)w :(float)h{
    UITextField* text = [[UITextField alloc] initWithFrame:CGRectMake(x, y, w, h)];
    text.borderStyle = UITextBorderStyleLine;
    text.font = [UIFont fontWithName:@"TimesNewRoma" size:30.0f];
    text.secureTextEntry = YES;
    text.autocorrectionType = UITextAutocorrectionTypeNo;
    [text.layer setMasksToBounds:YES];
    [text.layer setCornerRadius:20];
    [self.view addSubview:text];
    text.layer.borderColor = [[UIColor blackColor] CGColor];
    text.layer.borderWidth = 1.0;
    text.leftView = [[UIView alloc] initWithFrame:CGRectMake(x, y, w*0.05, h)];
    text.leftViewMode = UITextFieldViewModeAlways;
    return text;
}
-(void) creatLogin:(CGRect)cg{
    UIButton* btn = [[UIButton alloc] initWithFrame:CGRectMake(cg.origin.x, cg.origin.y+PADDINHG, cg.size.width, cg.size.height)];
    UIImage* img = [UIImage imageNamed:@"arrow.jpg"];
    [btn setBackgroundImage:img forState:UIControlStateNormal];
    [btn setTitle:@"登陆" forState:UIControlStateHighlighted];
    [btn.layer setMasksToBounds:YES];
    [btn.layer setCornerRadius:cg.size.width*0.5]; //set radiu
    
    //颜色渐变
    CAGradientLayer *gradientLayer = [CAGradientLayer layer];
    gradientLayer.frame = CGRectMake(0, 0, cg.size.width, cg.size.width);
    //startPoint是绘制阶级颜色的起始点，对应的endPoint为绘制阶级颜色的终点
    gradientLayer.startPoint = CGPointMake(0, 1);
    gradientLayer.endPoint = CGPointMake(1, 0);
    gradientLayer.colors = @[(id)[UIColor whiteColor].CGColor, (id)[UIColor systemBlueColor].CGColor];
    [btn.layer addSublayer:gradientLayer];
    
//      [lab setShadowOffset:CGSizeMake(0.2, 0.2)];
//    [lab setBackgroundColor:UIColor.blueColor];
    [self.view addSubview:btn];
}
-(void) creatbottom:(CGRect) gc :(NSString*)name{
    UIButton* btn = [[UIButton alloc] initWithFrame:CGRectMake(gc.origin.x, gc.origin.y, gc.size.width, gc.size.height)];
    [btn setTitle:name forState:UIControlStateNormal];
    [btn setTitleColor:UIColor.grayColor forState:UIControlStateHighlighted];
//    [btn setShadowOffset:CGSizeMake(0.2, 0.2)];
    [btn setTitleColor:UIColor.blackColor forState:UIControlStateNormal];
    
    [self.view addSubview:btn];
}
-(UITextView*) creattableview:(CGRect) gc :(NSString*)name{
    UITextView* tv = [[UITextView alloc] initWithFrame:CGRectMake(gc.origin.x, gc.origin.y, gc.size.width, gc.size.height)];
    [tv setText:name];
    [self.view addSubview:tv];
    return tv;
}
-(UITableViewCell*) creatcell: (NSIndexPath*)indexPath{
    static NSString* cellIdentifier = @"cell";
    UITableViewCell* cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:cellIdentifier];
    if(!cell){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:cellIdentifier];
    }
    if(indexPath.section==1){
        cell.imageView.image=[UIImage imageNamed:@"arrow.jpg"];
    }else{
        cell.imageView.image=[UIImage imageNamed:@"logo.jpg"];
    }
    if(indexPath.row==1){
        cell.textLabel.text = @"ASUS";
    }else{
        cell.textLabel.text = @"Wang";
    }
    
    return cell;
}
- (void)gr:(UISwipeGestureRecognizer*)gr{
    // 根据Tag值，获取textField
    UITextField *textField = (UITextField *)[self.view viewWithTag:1];
    [textField resignFirstResponder];
}

-(void)Register:(UITapGestureRecognizer*)tgr{
    UITextField *textField2 = (UITextField *)[self.view viewWithTag:2];
    UITextField *textField1 = (UITextField *)[self.view viewWithTag:1];
    [textField1 resignFirstResponder];
    [textField2 resignFirstResponder];
}

@end

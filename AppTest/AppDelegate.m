//
//  AppDelegate.m
//  AppTest
//
//  Created by asuswang on 2021/6/16.
//

#import "AppDelegate.h"
#import "MyViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
//    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
//    // 添加启动代码
//    MyViewController *my = [[MyViewController alloc] init];
//    self.window.rootViewController = my;
//    self.window.backgroundColor = [UIColor whiteColor];
//    [self.window makeKeyAndVisible];
    return YES;
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}

-(void)applicationWillResignActive:(UIApplication *)application
{
    //应用即将从活动状态切换到不活动状态时会触发这个方法，在出现某种临时中断（比如有来电或短信）或用户退出应用程序时都会出发这个方法
    //应用将转为后台运行
    //可以在这份方法中暂停正在进行的任务，禁用定时器，降低OpenGL帧率。
    //如果是游戏则暂停
}
-(void)applicationWillEnterForeground:(UIApplication *)application
{
    //在该方法中释放共享资源，保护用户数据，清楚定时器，并存储足够的应用程序状态信息，目的是当应用程序终止时，将它恢复到当前状态；
    //如果程序支持后台运行，那么当用户退出时调用此方法而不是applicationWillTerminate
}
-(void)applicationDidBecomeActive:(UIApplication *)application
{
    //当应用程序处于非活动状态时重新启动暂停（或尚未启动的任务）。
    //如果程序之前在后台运行，那么可以选择刷新用户界面
}
-(void)applicationWillTerminate:(UIApplication *)application
{
    //程序终止时调用。
    //如果有必要，那么保存数据，参见applicationDidEnter
}
- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}
@end

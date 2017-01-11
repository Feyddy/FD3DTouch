//
//  AppDelegate.m
//  FD3DTouch
//
//  Created by 徐忠林 on 10/01/2017.
//  Copyright © 2017 Feyddy. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "OneViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [self setup3DTouch:application];

    return YES;
}
- (void)setup3DTouch:(UIApplication *)application{
    
    /**
     
     type 该item 唯一标识符
     
     localizedTitle ：标题
     
     localizedSubtitle：副标题
     
     icon：icon图标 可以使用系统类型 也可以使用自定义的图片
     
     userInfo：用户信息字典 自定义参数，完成具体功能需求
     
     */
    
    //这是使用自定义的图片，坑就在这里了，图片只能黑白的颜色，就算你弄了彩色的上去，显示的也是黑白色
    //UIApplicationShortcutIcon *icon1 = [UIApplicationShortcutIcon iconWithTemplateImageName:@"图片名字.png"];
    
    //这是使用系统图片
    UIApplicationShortcutIcon * icon1 = [UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypeShare];
    
    UIApplicationShortcutIcon *icon2 = [UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypePlay];
    
    UIApplicationShortcutIcon *icon3 = [UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypeContact];
    
    UIApplicationShortcutIcon *icon4 = [UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypeMessage];
    
    
    
    UIApplicationShortcutItem *collectionItem = [[UIApplicationShortcutItem alloc] initWithType:@"ONE" localizedTitle:@"分享" localizedSubtitle:@"点击分享" icon:icon1 userInfo:nil];
    
    UIApplicationShortcutItem *withdrawalItem = [[UIApplicationShortcutItem alloc] initWithType:@"TWO" localizedTitle:@"Two" localizedSubtitle:@"跳转页面二" icon:icon2 userInfo:nil];
    
    UIApplicationShortcutItem *scanningItem = [[UIApplicationShortcutItem alloc] initWithType:@"THREE" localizedTitle:@"Three" localizedSubtitle:@"跳转页面三" icon:icon3 userInfo:nil];
    
    UIApplicationShortcutItem *customerlItem = [[UIApplicationShortcutItem alloc] initWithType:@"FOUR" localizedTitle:@"Four" localizedSubtitle:@"跳转页面四" icon:icon4 userInfo:nil];
    
    /** 将items 添加到app图标 */
    
    application.shortcutItems = @[collectionItem,withdrawalItem,scanningItem,customerlItem];
    
}

//手动发送通知
-(void)application:(UIApplication *)application performActionForShortcutItem:(UIApplicationShortcutItem *)shortcutItem completionHandler:(void (^)(BOOL))completionHandler{
    
    
    if([shortcutItem.type isEqualToString:@"ONE"]){
        
        NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
        
        [userDefaults setObject:shortcutItem.type forKey:@"ONE"];
        
        [userDefaults synchronize];
        
        //发送通知
        [[NSNotificationCenter defaultCenter]postNotificationName:@"ONES" object:@"ONES"];
        
        
    }else if ([shortcutItem.type isEqualToString:@"TWO"]){
        
        NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
        
        [userDefaults setObject:shortcutItem.type forKey:@"TWO"];
        
        [userDefaults synchronize];
        
        //发送通知
        
        [[NSNotificationCenter defaultCenter]postNotificationName:@"TWOS" object:@"TWOS"];
        
    }else if ([shortcutItem.type isEqualToString:@"THREE"]){
        
        NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
        
        [userDefaults setObject:shortcutItem.type forKey:@"THREE"];
        
        [userDefaults synchronize];
        
        //发送通知
        
        [[NSNotificationCenter defaultCenter]postNotificationName:@"THREES" object:@"THREES"];
        
    }else if ([shortcutItem.type isEqualToString:@"FOUR"]){
        
        NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
        
        [userDefaults setObject:shortcutItem.type forKey:@"FOUR"];
        
        [userDefaults synchronize];
        
        //发送通知
        
        [[NSNotificationCenter defaultCenter]postNotificationName:@"FOURS" object:@"FOURS"];
        
    }
    
}




- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    NSUserDefaults *userDefaultes = [NSUserDefaults standardUserDefaults];
    
    NSString *strSale = [userDefaultes stringForKey:@"ONE"];
    
    NSString *strDoPayment = [userDefaultes stringForKey:@"TWO"];
    
    NSString *strCustomer = [userDefaultes stringForKey:@"THREE"];
    
    NSString *strScan = [userDefaultes stringForKey:@"FOUR"];
    
    
    [[NSUserDefaults standardUserDefaults] removeObjectForKey:strSale];
    
    [[NSUserDefaults standardUserDefaults] removeObjectForKey:strDoPayment];
    
    [[NSUserDefaults standardUserDefaults] removeObjectForKey:strCustomer];
    
    [[NSUserDefaults standardUserDefaults] removeObjectForKey:strScan];
    
    [[NSUserDefaults standardUserDefaults] synchronize];
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


//再次运行 程序进入前台 ! 程序重新进入前台，重新调用3d touch功能
- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    [self setup3DTouch:application];
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}
@end

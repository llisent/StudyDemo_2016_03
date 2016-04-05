//
//  AppDelegate.m
//  StudyDemo_0301
//
//  Created by Mrr on 16/3/29.
//  Copyright © 2016年 lnzsbks. All rights reserved.
//

#import "AppDelegate.h"
#import "SD_CALayer_1.h"
#import "SD_Notification_VC1.h"
#import "SDByValViewControllerFirst.h"
#import "SDCopyWithStrong.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
//    [self calayerDemo];
//    [self notificationDemo];
//    [self byvalBlock];
//    [self copyWithStrong];
    [self useStoryBoard];
    return YES;
}

- (void)calayerDemo{
    SD_CALayer_1 *layer = [[SD_CALayer_1 alloc]init];
    [self makeWindowWithViewController:layer];
}

- (void)notificationDemo{
    SD_Notification_VC1 *vc = [[SD_Notification_VC1 alloc]init];
    UINavigationController *navi = [[UINavigationController alloc]initWithRootViewController:vc];
    [self makeWindowWithViewController:navi];
}

- (void)byvalBlock{
    SDByValViewControllerFirst *vc = [[SDByValViewControllerFirst alloc]init];
    [self makeWindowWithNavigationController:vc];
}

- (void)copyWithStrong{
    SDCopyWithStrong *vc = [[SDCopyWithStrong alloc]init];
    [self makeWindowWithViewController:vc];
}

- (void)useStoryBoard{
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"BigBean" bundle:[NSBundle mainBundle]];
    [self makeWindowWithViewController:[sb instantiateInitialViewController]];
    
}



- (void)makeWindowWithViewController:(id)vc{
    self.window = [[UIWindow alloc]initWithFrame:ScreenBonds];
    self.window.rootViewController = vc;
    [self.window makeKeyAndVisible];
}

- (void)makeWindowWithNavigationController:(id)vc{
    UINavigationController *navi   = [[UINavigationController alloc]initWithRootViewController:vc];
    self.window                    = [[UIWindow alloc]initWithFrame:ScreenBonds];
    self.window.rootViewController = navi;
    [self.window makeKeyAndVisible];
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end

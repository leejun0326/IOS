//
//  AppDelegate.m
//  UIView
//
//  Created by LEEJUN on 14-8-17.
//  Copyright (c) 2014年 FirstFloor. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(10, 20, 300, 100)];
    
    view.backgroundColor = [UIColor redColor];
    view.alpha = 0.5;
    
    view.tag = 1000;
    [view setBackgroundColor:[UIColor blueColor]];
    
    view.clipsToBounds = YES; // 所有超出父视图的UIView都会被裁掉
    
    [self.window addSubview:view];
    
    NSArray *array = [self.window subviews];
    
    NSLog(@"array count %d", array.count);
    
    for (UIView *viewOne in array) {
        
        NSLog(@"%@", NSStringFromCGRect(viewOne.bounds));
    }
    
    for (int i = 0; i < array.count; i++) {
        UIView *tmpView = [array objectAtIndex:i];
        NSLog(@"%@", NSStringFromCGRect(tmpView.bounds));
    }
    

    
    NSString *userString = [NSString stringWithFormat:@"USER"];
    
    NSDictionary *dic = @{userString: @"leejun0326@qq.com"};
    id s = [dic objectForKey:userString];
    NSArray *nsa = [dic allKeys];
    for (NSString *tmpString in nsa) {
        NSLog(@"nsa is %@", tmpString);
    }
    
    BOOL bl = [[dic allKeys] containsObject:@"USER"];
    NSLog(@"%@ | %@", s, bl ? @"YES" : @"NO");
    
    UIView *v = [self.window viewWithTag:1000];
    
    NSLog(@"view is %@", v);
    
    
    [view removeFromSuperview]; // 从父容器移除；
    
    
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end

//
//  AppDelegate.m
//  BasicUILableUIBtn
//
//  Created by LEEJUN on 14-8-17.
//  Copyright (c) 2014年 FirstFloor. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    UILabel *_label = [[UILabel alloc] init];
    _label.frame = CGRectMake(10, 30, 300, 100);
    [_label setText:@"THIS IS A LABELTHIS IS A LABELTHIS IS A LABELTHIS IS A LABELTHIS IS A LABELTHIS IS A LABEL"];
    [self.window addSubview:_label];
    _label.backgroundColor = [UIColor purpleColor];
    _label.textColor = [UIColor redColor];
    _label.textAlignment = NSTextAlignmentCenter;
    _label.font = [UIFont fontWithName:@"Geeza Pro" size:12];
    _label.numberOfLines = 0; //0表示不限换行数
    _label.lineBreakMode = NSLineBreakByWordWrapping;
    NSArray *fonts = [UIFont familyNames];
    for (NSString *fontName in fonts) {
        NSLog(@"%@", fontName);
    }
    
    UITextField *tfield = [[UITextField alloc] init];
    tfield.frame = CGRectMake(10, 180, 300, 50);
    tfield.borderStyle = UITextBorderStyleRoundedRect;
    tfield.keyboardAppearance = UIKeyboardAppearanceDefault;
    tfield.keyboardType = UIKeyboardTypeDefault;
    tfield.secureTextEntry = YES;
    tfield.clearButtonMode = UITextFieldViewModeWhileEditing;
//    NSArray *array = tfield.keyCommands;
//    for (NSString *keyString in array) {
//        NSLog(@"keyString : %@", keyString);
//    }
    tfield.placeholder = @"请输入关键字";
    tfield.backgroundColor = [UIColor whiteColor];
    tfield.delegate = self;
    [self.window addSubview:tfield];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    [btn.layer setMasksToBounds:YES];
    [btn.layer setCornerRadius:5.0]; //设置矩圆角半径
    [btn.layer setBorderWidth:1.0];   //边框宽度
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    CGColorRef colorref = CGColorCreate(colorSpace,(CGFloat[]){ 0.9, 0.9, 0.9, 1 });
    [btn.layer setBorderColor:colorref];//边框颜色
    
    btn.backgroundColor = [UIColor whiteColor];
    [btn setTitle:@"点" forState:UIControlStateNormal];
    btn.frame = CGRectMake(10, 280, 300, 50);
    
    [btn addTarget:self action:@selector(btnClicked:) forControlEvents:UIControlEventTouchUpInside];

    
    [self.window addSubview:btn];
    
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)btnClicked:(id)sender {
    NSLog(@"click");
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder]; // 取消第一响应者
    return YES;
}

- (BOOL)textFieldShouldEndEditing:(UITextField *)textField {
    NSLog(@"J");
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

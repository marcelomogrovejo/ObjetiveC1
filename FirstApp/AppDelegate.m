//
//  AppDelegate.m
//  FirstApp
//
//  Created by Marcelo Mogrovejo on 10/5/16.
//  Copyright © 2016 Marcelo Mogrovejo. All rights reserved.
//

#import "AppDelegate.h"
#import "HomeViewController.h"
#import "ContactViewController.h"
#import "HelpViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    // Add items (controllers) for adding to tab bar
    // Adding home
    HomeViewController *homeViewController = [[HomeViewController alloc] init];
    homeViewController.tabBarItem.title = @"Home";

    // Adding contact
    ContactViewController *contactViewController = [[ContactViewController alloc] init];
    contactViewController.tabBarItem.title = @"Contact";
    
    // Adding help
    HelpViewController *helpViewController = [[HelpViewController alloc] init];
    helpViewController.tabBarItem.title = @"Help";
    
    // Add a tab bar and their items
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    tabBarController.viewControllers = @[homeViewController, contactViewController, helpViewController];

    // Add a general window
    self.window = [[UIWindow alloc] initWithFrame:UIScreen.mainScreen.bounds];
    self.window.backgroundColor = [UIColor grayColor];
    self.window.rootViewController = tabBarController;
    [self.window makeKeyAndVisible];

    return YES;
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

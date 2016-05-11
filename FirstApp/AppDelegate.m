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
#import "MainViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Add a general window
    self.window = [[UIWindow alloc] init /*WithFrame:UIScreen.mainScreen.bounds*/];
    self.window.backgroundColor = [UIColor grayColor];

    // Add a tab bar
    UITabBarController *tabBarController = [[UITabBarController alloc] init];

    // Add tab as initial screen
    self.window.rootViewController = tabBarController;
    
    // Add items (controllers) for adding to the nav bar
    // Adding home page
    HomeViewController *homeViewController = [[HomeViewController alloc] init];
    
    // Add a nav bar for home section
    UINavigationController *homeNavBar = [[UINavigationController alloc] init];
    // It's an array of controller, can be more than one
    homeNavBar.viewControllers = @[homeViewController];
    homeNavBar.tabBarItem.title = @"Home";
    homeNavBar.tabBarItem.image = [UIImage imageNamed:@"home"];

    // Adding contact
    ContactViewController *contactViewController = [[ContactViewController alloc] init];
    contactViewController.tabBarItem.title = @"Contact";
    contactViewController.tabBarItem.image = [UIImage imageNamed:@"contact"];
    
    // Adding help
    HelpViewController *helpViewController = [[HelpViewController alloc] init];
    helpViewController.tabBarItem.title = @"Help";
    helpViewController.tabBarItem.image = [UIImage imageNamed:@"help"];
    
    // Add the tab bar items
    tabBarController.viewControllers = @[homeNavBar, contactViewController, helpViewController];

    // Make windows visible
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

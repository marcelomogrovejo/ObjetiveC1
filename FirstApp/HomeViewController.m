//
//  HomeViewController.m
//  FirstApp
//
//  Created by Marcelo Mogrovejo on 10/5/16.
//  Copyright © 2016 Marcelo Mogrovejo. All rights reserved.
//

#import "HomeViewController.h"
#import "MainViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

// 2.
- (void)viewDidLoad {
    [super viewDidLoad];

    // Because of nav bar starts here
    self.navigationItem.title = @"Home";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// 1.
-(void)loadView {
    // Add a view
    UIView *view = [[UIView alloc] init];
    view.backgroundColor = [UIColor orangeColor];

    // Add a button
    UIButton *button = [[UIButton alloc] init];
    button.frame = CGRectMake(100, 100, 100, 100);
    
    // Define the normal state and text
    [button setTitle:@"Press Me" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    
    // Define the pressing state and text
    [button setTitle:@"Pressed" forState:UIControlStateHighlighted];
    [button setTitleColor:[UIColor yellowColor] forState:UIControlStateHighlighted];
    
    // Add an action to the button
    [button addTarget:self action:@selector(goToMain) forControlEvents:UIControlEventTouchUpInside];
    
    [view addSubview:button];
    
    self.view = view;
}

- (void)goToMain {
    // Adding main application page
    MainViewController *mainViewController = [[MainViewController alloc] init];
    
    [self.navigationController pushViewController:mainViewController animated:YES];
}


@end

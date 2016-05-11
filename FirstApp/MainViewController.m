//
//  MainViewController.m
//  FirstApp
//
//  Created by Marcelo Mogrovejo on 5/11/16.
//  Copyright © 2016 Marcelo Mogrovejo. All rights reserved.
//

#import "MainViewController.h"
#import "BodyViewController.h"

@interface MainViewController ()

@property(strong, nonatomic) UIButton *buttonA;
@property(strong, nonatomic) UIButton *buttonB;

@end

@implementation MainViewController

// 2.
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"Main";
    self.view.backgroundColor = [UIColor grayColor];
}

// 1.
-(void)loadView {
    // Add a view
    UIView *view = [[UIView alloc] init];
    view.backgroundColor = [UIColor orangeColor];
    
    // Add a button
    self.buttonA = [[UIButton alloc] init];
    self.buttonA.frame = CGRectMake(100, 100, 100, 100);
    
    // Define the normal state and text
    [self.buttonA setTitle:@"Send A" forState:UIControlStateNormal];
    [self.buttonA setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    
    // Define the pressing state and text
    [self.buttonA setTitle:@"Sending..." forState:UIControlStateHighlighted];
    [self.buttonA setTitleColor:[UIColor yellowColor] forState:UIControlStateHighlighted];
    
    // Add an action to the button
    [self.buttonA addTarget:self action:@selector(goToBody:) forControlEvents:UIControlEventTouchUpInside];
    
    [view addSubview:self.buttonA];
    
    // Add a button
    self.buttonB = [[UIButton alloc] init];
    self.buttonB.frame = CGRectMake(100, 200, 100, 100);
    
    // Define the normal state and text
    [self.buttonB setTitle:@"Send B" forState:UIControlStateNormal];
    [self.buttonB setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    
    // Define the pressing state and text
    [self.buttonB setTitle:@"Sending..." forState:UIControlStateHighlighted];
    [self.buttonB setTitleColor:[UIColor yellowColor] forState:UIControlStateHighlighted];
    
    // Add an action to the button
    [self.buttonB addTarget:self action:@selector(goToBody:) forControlEvents:UIControlEventTouchUpInside];
    
    [view addSubview:self.buttonB];
    
    self.view = view;
}

- (void)goToBody:(UIButton *)sender {
    // Adding main application page
    BodyViewController *bodyViewController = [[BodyViewController alloc] init];
    
    if(sender == self.buttonA) {
        bodyViewController.message = @"From button A";
    } else if(sender == self.buttonB) {
        bodyViewController.message = @"From button B";
    }
    
    [self.navigationController pushViewController:bodyViewController animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

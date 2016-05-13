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

@property(strong, nonatomic) UIActivityIndicatorView *spinner;
@property(strong, nonatomic) UILabel *textToIncrease;

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
    button.frame = CGRectMake(100, 100, 100, 30);
    
    // Define the normal state and text
    [button setTitle:@"Press Me" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    
    // Define the pressing state and text
    [button setTitle:@"Pressed" forState:UIControlStateHighlighted];
    [button setTitleColor:[UIColor yellowColor] forState:UIControlStateHighlighted];
    
    // Add an action to the button
    [button addTarget:self action:@selector(goToMain) forControlEvents:UIControlEventTouchUpInside];
    
    [view addSubview:button];
    
    // Activity indicator (spinner)
    self.spinner = [[UIActivityIndicatorView alloc] init];
    self.spinner.frame = CGRectMake(110, 200, 50, 50);
    self.spinner.hidden = YES;
    [view addSubview:self.spinner];
    
    // Segmented control
    UISegmentedControl *segmented = [[UISegmentedControl alloc] initWithItems:@[@"Play", @"Stop"]];
    segmented.frame = CGRectMake(10, 270, 300, 50);
    [segmented addTarget:self action:@selector(startSpinner:) forControlEvents:UIControlEventValueChanged];
    [view addSubview:segmented];
    
    // Stepper
    self.textToIncrease = [[UILabel alloc] init];
    self.textToIncrease.frame = CGRectMake(20, 340, 300, 50);
    self.textToIncrease.text = @"Hola Mundo !!";
    self.textToIncrease.font = [self.textToIncrease.font fontWithSize:8];
    [view addSubview:self.textToIncrease];
    
    UIStepper *stepper = [[UIStepper alloc] init];
    stepper.frame = CGRectMake(100, 400, 100, 50);
    stepper.minimumValue = 0;
    stepper.maximumValue = 5;
    stepper.stepValue = 1;
    [stepper addTarget:self action:@selector(increaseFontSize:) forControlEvents:UIControlEventValueChanged];
    [view addSubview:stepper];
    
    self.view = view;
}

- (void)goToMain {
    // Adding main application page
    MainViewController *mainViewController = [[MainViewController alloc] init];
    
    [self.navigationController pushViewController:mainViewController animated:YES];
}

- (void)startSpinner:(UISegmentedControl *)sender {
    if([[sender titleForSegmentAtIndex:sender.selectedSegmentIndex]  isEqual: @"Play"]) {
        [self.spinner startAnimating];
    } else {
        [self.spinner stopAnimating];
        self.spinner.hidesWhenStopped = YES;
    }
}

- (void)increaseFontSize:(UIStepper *)sender {
    NSArray *fontSizes = @[@8, @12, @14, @18, @25, @36];
    double index = sender.value;
    self.textToIncrease.font = [self.textToIncrease.font fontWithSize:[fontSizes[(int)index] floatValue]];
}

@end

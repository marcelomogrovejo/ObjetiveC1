//
//  BodyViewController.m
//  FirstApp
//
//  Created by Marcelo Mogrovejo on 5/11/16.
//  Copyright © 2016 Marcelo Mogrovejo. All rights reserved.
//

#import "BodyViewController.h"
#import "ExampleViewController.h"

@interface BodyViewController ()

@property(strong, nonatomic) UILabel *messageLabel;
@property(strong, nonatomic) UIButton *buttonC;

@end

@implementation BodyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"Body";
    self.view.backgroundColor = [UIColor magentaColor];
    
    self.messageLabel.text = self.message;
}

- (void)loadView {
    UIView *view = [[UIView alloc] init];
    
    self.messageLabel = [[UILabel alloc] init];
    self.messageLabel.frame = CGRectMake(100, 100, 200, 100);
    self.messageLabel.text = @"Message here";
    [view addSubview:self.messageLabel];
    
    // Add an extra button for showing examples
    self.buttonC = [[UIButton alloc] init];
    self.buttonC.frame = CGRectMake(100, 300, 100, 50);
    
    [self.buttonC setTitle:@"Send C" forState:UIControlStateNormal];
    [self.buttonC setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    
    [self.buttonC setTitle:@"Sending..." forState:UIControlStateHighlighted];
    [self.buttonC setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];
    
    [self.buttonC addTarget:self action:@selector(goToExamples:) forControlEvents:UIControlEventTouchUpInside];
    
    [view addSubview:self.buttonC];

    
    self.view = view;
}

- (void)goToExamples:(UIButton *)sender {
    ExampleViewController *examplesViewController = [[ExampleViewController alloc] init];
    
    [self.navigationController pushViewController:examplesViewController animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

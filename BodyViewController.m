//
//  BodyViewController.m
//  FirstApp
//
//  Created by Marcelo Mogrovejo on 5/11/16.
//  Copyright © 2016 Marcelo Mogrovejo. All rights reserved.
//

#import "BodyViewController.h"

@interface BodyViewController ()

@property(strong, nonatomic) UILabel *messageLabel;

@end

@implementation BodyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor magentaColor];
    
    self.messageLabel.text = self.message;
}

- (void)loadView {
    UIView *view = [[UIView alloc] init];
    
    self.messageLabel = [[UILabel alloc] init];
    self.messageLabel.frame = CGRectMake(100, 100, 200, 100);
    self.messageLabel.text = @"Message here";
    [view addSubview:self.messageLabel];
    
    self.view = view;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

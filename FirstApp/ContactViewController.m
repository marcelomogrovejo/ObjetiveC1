//
//  ContactViewController.m
//  FirstApp
//
//  Created by Marcelo Mogrovejo on 10/5/16.
//  Copyright © 2016 Marcelo Mogrovejo. All rights reserved.
//

#import "ContactViewController.h"
#import "CustomTableViewController.h"

@interface ContactViewController ()

@property(strong, nonatomic) UIButton *nextBtn;

@end

@implementation ContactViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"Contact";
    self.view.backgroundColor = [UIColor yellowColor];
}

- (void)loadView {
    self.view = [[UIView alloc] init];
    
    self.nextBtn = [[UIButton alloc] init];
    self.nextBtn.frame = CGRectMake(50, 100, 100, 30);
    [self.nextBtn setTitle:@"Information" forState:UIControlStateNormal];
    [self.nextBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [self.nextBtn addTarget:self action:@selector(goToNext:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:self.nextBtn];
}

- (void)goToNext:(UIButton *)sender {
    CustomTableViewController *customTable =  [[CustomTableViewController alloc] init];
    [self.navigationController pushViewController:customTable animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

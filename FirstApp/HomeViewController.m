//
//  HomeViewController.m
//  FirstApp
//
//  Created by Marcelo Mogrovejo on 10/5/16.
//  Copyright © 2016 Marcelo Mogrovejo. All rights reserved.
//

#import "HomeViewController.h"
#import "HomeView.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Adding a view
    HomeView *homeView = [[HomeView alloc] init];
    homeView.backgroundColor = [UIColor orangeColor];
    
    [self.view addSubview:homeView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

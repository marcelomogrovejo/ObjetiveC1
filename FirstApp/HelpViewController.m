//
//  HelpViewController.m
//  FirstApp
//
//  Created by Marcelo Mogrovejo on 10/5/16.
//  Copyright © 2016 Marcelo Mogrovejo. All rights reserved.
//

#import "HelpViewController.h"

@interface HelpViewController () <UITextViewDelegate>

@property(strong, nonatomic) UITextView *textView;
@property(strong, nonatomic) UIButton *turnLight;

@end

@implementation HelpViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor greenColor];
}

- (void)loadView {
    self.view = [[UIView alloc] init];
    
    self.turnLight = [[UIButton alloc] init];
    self.turnLight.frame = CGRectMake(0, 0, 100, 100);
    [self.turnLight setTitle:@"Button" forState:UIControlStateNormal];
    [self.turnLight setTitle:@"BUTTON" forState:UIControlStateHighlighted];
    [self.view addSubview:self.turnLight];
    
    self.textView = [[UITextView alloc] init];
    self.textView.frame = CGRectMake(100, 100, 100, 100);
    self.textView.delegate = self;
    [self.view addSubview:self.textView];
    
    UITapGestureRecognizer *tapGestureRecognizer = [[UITapGestureRecognizer alloc] init];
    [tapGestureRecognizer addTarget:self action:@selector(tappedMainView)];
    [self.view addGestureRecognizer:tapGestureRecognizer];
}

- (void)tappedMainView {
    [self.textView endEditing:YES];
}

// Implementing delegate method from UITextView class
- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
    if ([text containsString:@"."]) {
        return YES;
    }
    return NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

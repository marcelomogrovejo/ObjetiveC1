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

@end

@implementation HelpViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor greenColor];
}

- (void)loadView {
    self.view = [[UIView alloc] init];
    
    self.textView = [[UITextView alloc] init];
    self.textView.frame = CGRectMake(100, 100, 100, 100);
    self.textView.delegate = self;
    
    [self.view addSubview:self.textView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
    if ([text containsString:@"."]) {
        return YES;
    }
    return NO;
}

@end

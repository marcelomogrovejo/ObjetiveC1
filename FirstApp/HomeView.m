//
//  HomeView.m
//  FirstApp
//
//  Created by Marcelo Mogrovejo on 10/5/16.
//  Copyright © 2016 Marcelo Mogrovejo. All rights reserved.
//

#import "HomeView.h"

@interface HomeView ()

@property(strong, nonatomic) IBOutlet UILabel *title;

@end

@implementation HomeView

- (void)awakeFromNib {
    self.title.text = @"Welcome Home";
}

@end

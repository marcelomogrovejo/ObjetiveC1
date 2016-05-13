//
//  DetailViewCell.m
//  FirstApp
//
//  Created by Marcelo Mogrovejo on 5/13/16.
//  Copyright © 2016 Marcelo Mogrovejo. All rights reserved.
//

#import "DetailViewCell.h"

@implementation DetailViewCell

// Initializes the cell view
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Adding an image
        UIImageView *detailImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 80, 80)];
        self.detailImageView = detailImageView;
        self.detailImageView.backgroundColor = [UIColor redColor];
        self.detailImageView.contentMode = UIViewContentModeScaleAspectFit;
        [self.contentView addSubview:self.detailImageView];
        
        // Adding a title label
        UILabel *title = [[UILabel alloc] initWithFrame:CGRectMake(85, 0, 200, 20)];
        self.mainTitle = title;
        self.mainTitle.backgroundColor = [UIColor redColor];
        [self.contentView addSubview:self.mainTitle];
        
        // Adding a votes
        UILabel *votes = [[UILabel alloc] initWithFrame:CGRectMake(85, 20, 200, 10)];
        self.votes = votes;
        self.votes.backgroundColor = [UIColor greenColor];
        [self.contentView addSubview:self.votes];
        
        // Adding a synopsis summary
        UITextView *summary = [[UITextView alloc] initWithFrame:CGRectMake(85, 30, 200, 50)];
        self.synopsis = summary;
        self.synopsis.backgroundColor = [UIColor orangeColor];
        [self.contentView addSubview:self.synopsis];
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end

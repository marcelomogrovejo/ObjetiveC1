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
        UIImageView *detailImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 80, 120)];
        self.detailImageView = detailImageView;
        self.detailImageView.contentMode = UIViewContentModeScaleAspectFit;
        [self.contentView addSubview:self.detailImageView];
        
        // Adding a title label
        UILabel *title = [[UILabel alloc] initWithFrame:CGRectMake(82, 2, 230, 20)];
        self.mainTitle = title;
        [self.mainTitle setFont:[UIFont boldSystemFontOfSize:18]];
        [self.contentView addSubview:self.mainTitle];
        
        // Adding a votes
#warning how to loop an icon of stars??, could be active ones as yellow and inactive ones as gray
        UILabel *votes = [[UILabel alloc] initWithFrame:CGRectMake(82, 23, 230, 15)];
        self.votes = votes;
        
        [self.contentView addSubview:self.votes];
        
        // Adding a synopsis summary
        UITextView *summary = [[UITextView alloc] initWithFrame:CGRectMake(82, 40, 230, 85)];
        self.synopsis = summary;
        self.synopsis.editable = NO;
        self.synopsis.textAlignment = NSTextAlignmentJustified;
        [self.contentView addSubview:self.synopsis];
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end

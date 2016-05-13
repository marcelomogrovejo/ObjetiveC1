//
//  DetailViewCell.h
//  FirstApp
//
//  Created by Marcelo Mogrovejo on 5/13/16.
//  Copyright © 2016 Marcelo Mogrovejo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewCell : UITableViewCell

@property(nonatomic, weak, readwrite) UIImageView *detailImageView;
@property(nonatomic, weak, readwrite) UILabel *mainTitle;
@property(nonatomic, weak, readwrite) UILabel *votes;
@property(nonatomic, weak, readwrite) UITextView *synopsis;

@end

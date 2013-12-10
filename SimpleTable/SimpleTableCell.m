//
//  SimpleTableCell.m
//  SimpleTable
//
//  Created by Chen on 13-12-9.
//  Copyright (c) 2013年 cocoaObjectclearnning. All rights reserved.
//

#import "SimpleTableCell.h"

@implementation SimpleTableCell

@synthesize nameLabel =_nameLabel;
@synthesize propTimeLabel =_propTimeLabel;
@synthesize thumbnailImageView =_thumbnailImageView;



- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end

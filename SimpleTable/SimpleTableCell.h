//
//  SimpleTableCell.h
//  SimpleTable
//
//  Created by Chen on 13-12-9.
//  Copyright (c) 2013年 cocoaObjectclearnning. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SimpleTableCell : UITableViewCell

@property (nonatomic, weak) IBOutlet UILabel *nameLabel;
@property (nonatomic, weak) IBOutlet UILabel *propTimeLabel;
@property (nonatomic, weak) IBOutlet UIImageView   *thumbnailImageView;
@end

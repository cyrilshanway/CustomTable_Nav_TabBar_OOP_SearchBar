//
//  CustomTableCellTableViewCell.h
//  CustomTable
//
//  Created by Cyrilshanway on 2014/12/24.
//  Copyright (c) 2014年 Cyrilshanway. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableCell : UITableViewCell

@property (nonatomic, weak) IBOutlet UILabel *nameLabel;
@property (nonatomic, weak) IBOutlet UILabel *prepTimeLabel;
@property (nonatomic, weak) IBOutlet UIImageView *thumbnailImageView;
@end

//
//  DetailViewController.h
//  CustomTable
//
//  Created by Cyrilshanway on 2014/12/25.
//  Copyright (c) 2014年 Cyrilshanway. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Brand.h"

@interface DetailViewController : UIViewController
@property (nonatomic, strong) IBOutlet UILabel *nameLabel;
@property (nonatomic, strong) NSString *nameString;

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (nonatomic, strong) Brand *brand;
@end

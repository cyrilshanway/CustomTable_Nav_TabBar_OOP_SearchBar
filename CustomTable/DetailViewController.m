//
//  DetailViewController.m
//  CustomTable
//
//  Created by Cyrilshanway on 2014/12/25.
//  Copyright (c) 2014年 Cyrilshanway. All rights reserved.
//

#import "DetailViewController.h"
#import "CustomTableViewController.h"

@interface DetailViewController ()


@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.nameLabel.text = self.nameString;
    
    self.title = self.brand.name;//導覽條標題
    self.imageView.image = [UIImage imageNamed:self.brand.image];
    
    NSMutableString *memoText = [NSMutableString string];
    for (NSString *memo in self.brand.memoArray) {
        [memoText appendFormat:@"%@\n", memo];
    }
    
    self.textView.text = memoText;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

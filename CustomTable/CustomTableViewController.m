//
//  ViewController.m
//  CustomTable
//
//  Created by Cyrilshanway on 2014/12/24.
//  Copyright (c) 2014年 Cyrilshanway. All rights reserved.
//

#import "CustomTableViewController.h"
#import "CustomTableCell.h"
#import "DetailViewController.h"
#import "Brand.h"

@interface CustomTableViewController ()<UITableViewDataSource,UITableViewDelegate,UISearchDisplayDelegate>

@end

@implementation CustomTableViewController
{
    NSArray *allNames;
    NSArray *allImages;
    BOOL checkMark[16];
    
    NSArray *brandArray;
    NSArray *searchResult;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //table datasource
//    allNames  = [NSArray arrayWithObjects: @"Apple", @"Android", @"Twitter", @"GitHub", @"Snapchat",@"Windows", @"Email", @"Facebook", @"iTunes", @"YouTube", @"Video", @"Dropbox", @"instagram", @"PayPal", @"Amazon",@"Share", nil];
//    allImages = [NSArray arrayWithObjects: @"pic2", @"pic3", @"pic4", @"pic5", @"pic6", @"pic7", @"pic8", @"pic9", @"pic10", @"pic11", @"pic12", @"pic13", @"pic14", @"pic15", @"pic16", @"pic17", nil];
    
    //ios7之後會蓋到狀態欄，增加以下code(上左下右)
    [self.tableView setContentInset:UIEdgeInsetsMake(20,
                                                     self.tableView.contentInset.left,
                                                     self.tableView.contentInset.bottom,
                                                     self.tableView.contentInset.right)];
    Brand *brand1 = [[Brand alloc] init];
    brand1.name = @"Apple";
    brand1.image= @"pic2";
    brand1.memoArray = [NSMutableArray arrayWithObjects:@"CM", @"Eve", nil];
    
    Brand *brand2 = [[Brand alloc] init];
    brand2.name = @"Android";
    brand2.image= @"pic3";
    brand2.memoArray = [NSMutableArray arrayWithObjects:@"NY", @"Holiday", nil];
    
    Brand *brand3 = [[Brand alloc] init];
    brand3.name = @"Twitter";
    brand3.image= @"pic4";
    brand3.memoArray = [NSMutableArray arrayWithObjects:@"NS", @"Going", nil];
    
    Brand *brand4 = [[Brand alloc] init];
    brand4.name = @"GitHub";
    brand4.image= @"pic5";
    
    Brand *brand5 = [[Brand alloc] init];
    brand5.name = @"Snapchat";
    brand5.image= @"pic6";
    
    Brand *brand6 = [[Brand alloc] init];
    brand6.name = @"Windows";
    brand6.image= @"pic7";
    
    Brand *brand7 = [[Brand alloc] init];
    brand7.name = @"Email";
    brand7.image= @"pic8";
    
    Brand *brand8 = [[Brand alloc] init];
    brand8.name = @"Facebook";
    brand8.image= @"pic9";
    
    Brand *brand9 = [[Brand alloc] init];
    brand9.name = @"iTunes";
    brand9.image= @"pic10";
    
    Brand *brand10 = [[Brand alloc] init];
    brand10.name = @"YouTube";
    brand10.image= @"pic11";
    
    Brand *brand11 = [[Brand alloc] init];
    brand11.name = @"Video";
    brand11.image= @"pic12";
    
    Brand *brand12 = [[Brand alloc] init];
    brand12.name = @"Dropbox";
    brand12.image= @"pic13";
    
    Brand *brand13 = [[Brand alloc] init];
    brand13.name = @"instagram";
    brand13.image= @"pic14";
    
    Brand *brand14 = [[Brand alloc] init];
    brand14.name = @"PayPal";
    brand14.image= @"pic15";
    
    Brand *brand15 = [[Brand alloc] init];
    brand15.name = @"Amazon";
    brand15.image= @"pic16";
    
    Brand *brand16 = [[Brand alloc] init];
    brand16.name = @"Share";
    brand16.image= @"pic17";
    
    brandArray = [NSArray arrayWithObjects: brand1, brand2, brand3, brand4, brand5, brand6, brand7, brand8, brand9,brand10, brand11, brand12, brand13, brand14, brand15, brand16, nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark -tableView delegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    //return allNames.count;
    //return brandArray.count;
    
    //新增searchBar後的code
    if (tableView == self.searchDisplayController.searchResultsTableView) {
        return [searchResult count];
    } else {
        return [brandArray count];
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *cellID = @"CustomTableCell";
    
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
//    
//    if (cell == nil) {
//        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
//    }
    
//    cell.textLabel.text = [allNames objectAtIndex:indexPath.row];
//    //cell.imageView.image = [UIImage imageNamed:@"angel_64.png"];
//    cell.imageView.image = [UIImage imageNamed:[allImages objectAtIndex:indexPath.row]];
    
    
    CustomTableCell *cell = (CustomTableCell *)[self.tableView dequeueReusableCellWithIdentifier:cellID];
    
    //設定cell
    if (cell == nil) {
        cell = [[CustomTableCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    
    //在表格cell中顯示食譜
//    cell.nameLabel.text = [allNames objectAtIndex:indexPath.row];
//    cell.thumbnailImageView.image = [UIImage imageNamed:[allImages objectAtIndex:indexPath.row]];
//    cell.thumbnailImageView.contentMode = UIViewContentModeScaleAspectFill;

    //將資料顯示在表格cell上
    Brand *brand = nil;
    if (tableView == self.searchDisplayController.searchResultsTableView) {
        brand = [searchResult objectAtIndex:indexPath.row];
    } else {
        brand = [brandArray objectAtIndex:indexPath.row];
    }
    
    //    Brand *brand = [brandArray objectAtIndex:indexPath.row];
        cell.nameLabel.text = brand.name;
        cell.thumbnailImageView.image = [UIImage imageNamed:brand.image];
    
//    if (checkMark[indexPath.row]) {
//        cell.accessoryType = UITableViewCellAccessoryCheckmark;
//    }else{
//        cell.accessoryType = UITableViewCellAccessoryNone;
//    }
    
    return cell;
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    cell.accessoryType = UITableViewCellAccessoryCheckmark;
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    checkMark[indexPath.row] = YES;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if ([segue.identifier isEqualToString:@"showDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        
        //新增searchBar後的code
        Brand *brand = nil;
        if (self.searchDisplayController.active) {
            indexPath = [self.searchDisplayController.searchResultsTableView indexPathForSelectedRow];
            brand = [searchResult objectAtIndex:indexPath.row];
        } else {
            indexPath = [self.tableView indexPathForSelectedRow];
            brand = [brandArray objectAtIndex:indexPath.row];
        }
        
        DetailViewController *destVC = segue.destinationViewController;
        //destVC.nameString = [allNames objectAtIndex:indexPath.row];
        
        //Brand *brand = [brandArray objectAtIndex:indexPath.row];
        //destVC.nameString = brand.name;
        destVC.brand = brand;
    }
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 71;
}

#pragma mark - Predicate，述詞
-(void)filterContentForSearchText:(NSString*)searchText scope:(NSString*)scope{
    //name-Brand的name屬性，c- 不區分大小寫
    NSPredicate *resultPredicate = [NSPredicate predicateWithFormat:@"name contains[c] %@", searchText];
    searchResult = [brandArray filteredArrayUsingPredicate:resultPredicate];
}

#pragma mark -UISearchDisplayDelegate delegate
- (BOOL)searchDisplayController:(UISearchDisplayController *)controller shouldReloadTableForSearchString:(NSString *)searchString{
    
    [self filterContentForSearchText:searchString
                               scope:[[self.searchDisplayController.searchBar scopeButtonTitles]
                                      objectAtIndex:[self.searchDisplayController.searchBar selectedScopeButtonIndex]]];
    
    return YES;
}
@end

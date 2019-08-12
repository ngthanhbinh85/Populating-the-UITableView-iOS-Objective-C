//
//  ViewController.m
//  Populating the UITableView iOS Objective-C
//
//  Created by Nguyễn Bình on 8/12/19.
//  Copyright © 2019 Bình Nguyễn. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITableViewDataSource> {
    NSMutableArray *myData;
    __weak IBOutlet UITableView *myTableView;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    myData = MyData.getStudentList;
    
    myTableView.dataSource = self;
    
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    
    // Get student name
    NSString *studentName = [[myData objectAtIndex:indexPath.row] studentName];
    
    // Get student ID and address, and concatenate string as ID - Address
    NSMutableString *studentIDAndAddress = [[NSMutableString alloc] initWithString:[[myData objectAtIndex:indexPath.row] studentID]];
    [studentIDAndAddress appendString:@" - "];
    [studentIDAndAddress appendString:[[myData objectAtIndex:indexPath.row] studentAddress]];
    
    NSString *myCellID = @"myCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:myCellID];
    
    // we don't need to check if cell is nil or not
    // because we have already defined prototype cell in the storyboard
    cell.textLabel.text = studentName;
    
    cell.detailTextLabel.text = studentIDAndAddress;
    
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [myData count];
}

@end

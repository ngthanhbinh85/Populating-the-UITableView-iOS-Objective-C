//
//  AppDelegate.h
//  Populating the UITableView iOS Objective-C
//
//  Created by Nguyễn Bình on 8/12/19.
//  Copyright © 2019 Bình Nguyễn. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end


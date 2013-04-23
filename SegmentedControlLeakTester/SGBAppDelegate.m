//
//  SGBAppDelegate.m
//  SegmentedControlLeakTester
//
//  Created by Simon Booth on 23/04/2013.
//  Copyright (c) 2013 Simon Booth. All rights reserved.
//

#import "SGBAppDelegate.h"
#import "SGBSegmentedControlTestViewController.h"

@implementation SGBAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController = [[SGBSegmentedControlTestViewController alloc] init];
    [self.window makeKeyAndVisible];
    return YES;
}

@end

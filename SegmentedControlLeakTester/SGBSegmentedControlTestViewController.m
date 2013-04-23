//
//  SGBSegmentedControlTestViewController.m
//  SegmentedControlLeakTester
//
//  Created by Simon Booth on 23/04/2013.
//  Copyright (c) 2013 Simon Booth. All rights reserved.
//

#import "SGBSegmentedControlTestViewController.h"

@interface SGBSegmentedControlTestViewController ()

@property (nonatomic, strong) UISegmentedControl *segmentedControl;

@end

@implementation SGBSegmentedControlTestViewController

- (void)loadView
{
    self.view = [[UIView alloc] init];
    
    self.segmentedControl = [[UISegmentedControl alloc] init];
    self.segmentedControl.segmentedControlStyle = UISegmentedControlStyleBar;
    self.segmentedControl.tintColor = [UIColor purpleColor];
    [self.view addSubview:self.segmentedControl];
}

- (void)viewDidAppear:(BOOL)animated
{
    [self performSelector:@selector(updateSegments) withObject:nil afterDelay:1];
}

- (void)updateSegments
{
    for (int i = 0; i < 100; i++)
    {
        [self.segmentedControl removeAllSegments];
        [self.segmentedControl insertSegmentWithTitle:@"Test 1" atIndex:0 animated:NO];
        [self.segmentedControl insertSegmentWithTitle:@"Test 2" atIndex:1 animated:NO];
        [self.segmentedControl sizeToFit];
    }
    
    [self performSelector:@selector(updateSegments) withObject:nil afterDelay:1];
}

@end

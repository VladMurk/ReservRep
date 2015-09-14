//
//  ViewController.m
//  CatPX
//
//  Created by Владислав on 14.09.15.
//  Copyright (c) 2015 CatPX. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)Segment:(id)sender {
    UISegmentedControl *seg = (UISegmentedControl *)sender;
    NSInteger select = seg.selectedSegmentIndex;
    
    if(select ==0){
        [_regView setHidden:YES];
    }
}
@end

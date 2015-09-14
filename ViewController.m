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
    [_regView setHidden:YES];
    NSUserDefaults *user = [NSUserDefaults standardUserDefaults];
    
    if([user objectForKey:@"login"] !=nil & [user objectForKey:@"pass"] !=nil){
        [self performSegueWithIdentifier:@"CloseZone" sender:self];
    }
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
    else {
        [_regView setHidden:NO];
    }
}
- (IBAction)ButEnter:(id)sender {
    if(![_LoginL.text isEqualToString:@""] & ![_PassL.text isEqualToString:@""]){
    NSUserDefaults *user = [NSUserDefaults standardUserDefaults];
    [user setObject:_LoginL.text forKey:@"login"];
    [user setObject:_PassL.text forKey:@"pass"];
    [self performSegueWithIdentifier:@"CloseZone" sender:self];
    }
    else{
        UIAlertView *alert = [[UIAlertView alloc]init];
        [alert setTitle:@"Ошибка"];
        [alert setMessage:@"Неверные логин или пароль"];
        [alert setDelegate:nil];
        [alert addButtonWithTitle:@"ОК"];
        [alert show];
    }
    
}
@end

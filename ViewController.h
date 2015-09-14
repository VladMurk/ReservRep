//
//  ViewController.h
//  CatPX
//
//  Created by Владислав on 14.09.15.
//  Copyright (c) 2015 CatPX. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
- (IBAction)Segment:(id)sender;
@property (weak, nonatomic) IBOutlet UIView *regView;
@property (weak, nonatomic) IBOutlet UITextField *LoginL;
@property (weak, nonatomic) IBOutlet UITextField *PassL;
@property (weak, nonatomic) IBOutlet UIButton *ButEnter;
@property (weak, nonatomic) IBOutlet UITextField *LoginR;
@property (weak, nonatomic) IBOutlet UITextField *EmailR;
@property (weak, nonatomic) IBOutlet UITextField *PassR;
@property (weak, nonatomic) IBOutlet UITextField *rePassR;
@property (weak, nonatomic) IBOutlet UIButton *ButReg;



@end


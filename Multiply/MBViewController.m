//
//  MBViewController.m
//  Multiply
//
//  Created by Matt Brax on 3/10/14.
//  Copyright (c) 2014 MattBrax. All rights reserved.
//

#import "MBViewController.h"

@interface MBViewController ()

@property (weak, nonatomic) IBOutlet UITextField *myNumber;
@property (weak, nonatomic) IBOutlet UILabel *myMultiplier;
@property (weak, nonatomic) IBOutlet UILabel *myAnswer;

@end

@implementation MBViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.myMultiplier.text = @"10";
    
    
}

- (IBAction)onCalculateButtonPressed:(id)sender
{
    
    NSInteger number = [self.myNumber.text integerValue];
    NSInteger secondNumber = [self.myMultiplier.text integerValue];
    NSInteger answer = number * secondNumber;
 
    
//    int answer = self.myAnswer.text;
    self.myAnswer.text = [NSString stringWithFormat:@"%ld",(long)answer];
 
    
if ( answer > 20) {
    
self.view.backgroundColor = [UIColor redColor];
}

else {

self.view.backgroundColor =  [UIColor whiteColor];
}

}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

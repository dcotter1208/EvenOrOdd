//
//  ViewController.m
//  EvenOrOdd
//
//  Created by DetroitLabs on 5/23/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)evaluateNumber:(id)sender {
    
    [self validateTextInput];
    
    _userNumber = [numberTextField.text intValue];
    NSLog(@"%i", _userNumber);
    if ([numberTextField.text containsString:@"."] || [numberTextField.text containsString:@"-"]) {
        [self displayAlert:@"Please enter a whole number"];
    } else if ([numberTextField.text isEqualToString:@""]) {
        [self displayAlert:@"Textfield is empty."];
    } else if (_userNumber == 0) {
        [self displayAlert:@"Only numbers!"];
    } else {
        [self evaluateNum:_userNumber];
    }

    
}

-(void)evaluateNum:(int)num {

    if (num % 2 == 0) {
        NSLog(@"Even Number");
    } else {
        NSLog(@"Odd Number");
    }
}

-(void)displayAlert:(NSString *)alertMessage {
    
    UIAlertController *alertViewController = [UIAlertController alertControllerWithTitle:@"Whoops!" message:alertMessage preferredStyle:UIAlertControllerStyleAlert];
    [self presentViewController:alertViewController animated:TRUE completion:nil];
    
    UIAlertAction *action = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        [self dismissViewControllerAnimated:TRUE completion:nil];
    }];
    
    [alertViewController addAction:action];
    
}


-(void)validateTextInput{
    
    NSString *pattern = @"[a-ZA-Z\n]";
    
    NSRegularExpression *regEx = [NSRegularExpression regularExpressionWithPattern:pattern options:0 error:0];
    
    int matches = (int)[regEx numberOfMatchesInString:numberTextField.text options:0 range:NSMakeRange(0,1)];
    
    NSLog(@"Matches: %i", matches);
    
}


@end

//
//  ViewController.h
//  EvenOrOdd
//
//  Created by DetroitLabs on 5/23/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    IBOutlet UITextField *numberTextField;
}

@property(nonatomic) int userNumber;

-(IBAction)evaluateNumber:(id)sender;



@end


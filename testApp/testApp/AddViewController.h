//
//  AddViewController.h
//  testApp
//
//  Created by Aaron Burke on 5/21/13.
//  Copyright (c) 2013 Aaron Burke. All rights reserved.
//

#import "ViewController.h"

@interface AddViewController : ViewController <UITextFieldDelegate>
{
    IBOutlet UIButton *saveBtn;
    IBOutlet UIButton *closeKeybrd;
    IBOutlet UITextField *addEventText;
}

-(IBAction)onClick:(id)sender;

@end

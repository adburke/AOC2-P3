//
//  AddViewController.h
//  testApp
//
//  Created by Aaron Burke on 5/21/13.
//  Copyright (c) 2013 Aaron Burke. All rights reserved.
//

#import "ViewController.h"

@protocol SaveEventDelegate <NSObject>

@required
-(void)DidSave:(NSString*)eventName date:(NSString*)date;

@end

@interface AddViewController : ViewController <UITextFieldDelegate>
{
    id<SaveEventDelegate> delegate;
    
    IBOutlet UIButton *saveBtn;
    IBOutlet UIButton *closeKeybrd;
    IBOutlet UITextField *addEventText;
    IBOutlet UIDatePicker *datePicker;
}

-(IBAction)onClick:(id)sender;
-(IBAction)onChange:(id)sender;

@property (strong) id<SaveEventDelegate> delegate;

@end

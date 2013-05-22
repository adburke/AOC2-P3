//
//  AddViewController.h
//  testApp
//
//  Created by Aaron Burke on 5/21/13.
//  Copyright (c) 2013 Aaron Burke. All rights reserved.
//

#import "ViewController.h"

// Event delegate that passes data from second to first view
@protocol SaveEventDelegate <NSObject>

@required
// Required method to implement delegate
-(void)DidSave:(NSString*)eventName date:(NSString*)date;

@end

@interface AddViewController : UIViewController <UITextFieldDelegate>
{
    id<SaveEventDelegate> delegate;
    
    IBOutlet UIButton *saveBtn;
    IBOutlet UIButton *closeKeybrd;
    IBOutlet UITextField *addEventText;
    IBOutlet UIDatePicker *datePicker;
}

// Controls both save and close keyboard buttons
-(IBAction)onClick:(id)sender;

@property (strong) id<SaveEventDelegate> delegate;

@end

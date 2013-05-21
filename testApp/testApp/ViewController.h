//
//  ViewController.h
//  testApp
//
//  Created by Aaron Burke on 5/20/13.
//  Copyright (c) 2013 Aaron Burke. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddViewController.h"

@interface ViewController : UIViewController <SaveEventDelegate>
{
    IBOutlet UITextView *eventTextView;
    IBOutlet UIButton *addEvent;
}

-(IBAction)onClick:(id)sender;

@end

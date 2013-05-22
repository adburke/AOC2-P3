//
//  ViewController.m
//  testApp
//
//  Created by Aaron Burke on 5/20/13.
//  Copyright (c) 2013 Aaron Burke. All rights reserved.
//

#import "ViewController.h"
#import "AddViewController.h"

@interface ViewController ()

@end

@implementation ViewController

// Implementation of SaveEventDelegate method DidSave located in AddViewController
-(void)DidSave:(NSString *)eventName date:(NSString *)date
{
    // Checks for text that is already in the text view
    // Appends text and creates a new line if needed
    NSString *oldString = eventTextView.text;
    if ([oldString isEqual: @""]) {
        NSString *newString = [oldString stringByAppendingFormat:@"%@ -- %@", eventName, date];
        eventTextView.text = newString;
    } else {
        NSString *newString = [oldString stringByAppendingFormat:@"\n%@ -- %@", eventName, date];
        eventTextView.text = newString;
    }
}

// Add Event button
// Initializes and launches the AddViewController view
// Defines itself as the target of the SaveEventDelegate
-(IBAction)onClick:(id)sender
{
    UIButton *button = (UIButton*)sender;
    if (button) {
        if (button.tag == 0) {
            AddViewController *addView = [[AddViewController alloc] initWithNibName:@"AddViewController" bundle:nil];
            if (addView) {
                // video showed xxx.delegate = self; which gives a warning found it needs to be (id)self
                addView.delegate = (id)self;
                [self presentViewController:addView animated:TRUE completion:nil];
            }
        }
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

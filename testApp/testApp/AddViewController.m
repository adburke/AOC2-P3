//
//  AddViewController.m
//  testApp
//
//  Created by Aaron Burke on 5/21/13.
//  Copyright (c) 2013 Aaron Burke. All rights reserved.
//

#import "AddViewController.h"

@interface AddViewController ()

@end

@implementation AddViewController
@synthesize delegate;


-(IBAction)onChange:(id)sender
{

}

-(IBAction)onClick:(id)sender
{
    UIButton *button = (UIButton*)sender;
    if (button) {
        if (button.tag == 0) {
            NSLog(@"Save Event Pressed");
            if (delegate) {
                if ([addEventText.text isEqual:@""]) {
                    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Invalid" message:@"Please input an event name!" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
                    if (alertView)
                    {
                        [alertView show];
                    }
                } else {
                    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
                    [dateFormat setDateFormat:@"MM.d.yyyy HH:mm a zz"];
                    NSString *dateString = [[NSString alloc] initWithString:[dateFormat stringFromDate:datePicker.date]];
                    [delegate DidSave:addEventText.text date:dateString];
                    [self dismissViewControllerAnimated:TRUE completion:nil];
                }
            }
        } else if (button.tag == 1) {
            NSLog(@"Close Keyboard Pressed");
            [addEventText resignFirstResponder];
        }
    }
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        delegate = nil;
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

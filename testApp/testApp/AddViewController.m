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
                NSDate *date = datePicker.date;
                [delegate DidSave:addEventText.text date:[date description]];
            }
            [self dismissViewControllerAnimated:TRUE completion:nil];
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

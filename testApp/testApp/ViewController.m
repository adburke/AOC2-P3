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

-(void)DidSave:(NSString *)eventName date:(NSString *)date
{
    NSString *oldString = eventTextView.text;
    NSString *newString = [oldString stringByAppendingFormat:@"/n%@", eventName];
    
    eventTextView.text = newString;
}

-(IBAction)onClick:(id)sender
{
    UIButton *button = (UIButton*)sender;
    if (button) {
        if (button.tag == 0) {
            AddViewController *addView = [[AddViewController alloc] initWithNibName:@"AddViewController" bundle:nil];
            if (addView) {
                addView.delegate = self;
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

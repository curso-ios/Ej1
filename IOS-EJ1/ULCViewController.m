//
//  ULCViewController.m
//  IOS-EJ1
//
//  Created by Endika Salas on 7/2/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ULCViewController.h"

@interface ULCViewController ()

@end

@implementation ULCViewController

@synthesize messageField;
@synthesize contentView;

- (IBAction)sendTap:(id)sender
{
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, -25, self.contentView.frame.size.width, 20)];
    
    label.text = messageField.text;
    label.backgroundColor = [UIColor clearColor];
    label.textAlignment = UITextAlignmentCenter;
    label.textColor = [UIColor whiteColor];
    
    [_messagesViews addObject:label];
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration: 1.0];
    
    for (UILabel *label in _messagesViews) {
        CGRect frame = label.frame;
        frame.origin.y += 25;
        label.frame = frame;
    }
    
    [UIView commitAnimations];
    
    [self.contentView addSubview:label];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    _messagesViews = [NSMutableArray arrayWithCapacity:10];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end

//
//  ULCViewController.h
//  IOS-EJ1
//
//  Created by Endika Salas on 7/2/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ULCViewController : UIViewController {
    NSMutableArray *_messagesViews;
}

@property (nonatomic, assign) IBOutlet UITextField *messageField;
@property (nonatomic, assign) IBOutlet UIView *contentView;

- (IBAction)sendTap:(id)sender;

@end

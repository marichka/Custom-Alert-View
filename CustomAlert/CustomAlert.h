//
//  CustomAlert.h
//  CustomAlert
//
//  Created by Mariya Kholod on 4/23/13.
//  Copyright (c) 2013 Mariya Kholod. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface CustomAlert : UIView
{
    id delegate;
    UIView *AlertView;
}
@property id delegate;

- (id)initWithTitle:(NSString *)title message:(NSString *)message delegate:(id)AlertDelegate cancelButtonTitle:(NSString *)cancelButtonTitle otherButtonTitle:(NSString *)otherButtonTitle;
- (void)showInView:(UIView*)view;
@end

@protocol CustomAlertDelegate
- (void)customAlertView:(CustomAlert*)alertView clickedButtonAtIndex:(NSInteger)buttonIndex;
@end

//
//  CSPickerTextFieldDelegate.h
//  CSPickerTextFieldDemo
//
//  Created by Sean on 10/25/15.
//  Copyright © 2015 Sean. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol CSPickerTextFieldDelegate <NSObject>

- (NSInteger)numberOfPickerRowInTextField:(UITextField *)textField;
- (NSMutableArray *)titlesForPickerRowInTextField:(UITextField *)textField;

@end

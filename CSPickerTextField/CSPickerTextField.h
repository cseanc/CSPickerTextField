//
//  CSPickerTextField.h
//  CSPickerTextFieldDemo
//
//  Created by Sean on 10/25/15.
//  Copyright © 2015 Sean. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CSPickerTextFieldDelegate.h"

@interface CSPickerTextField : UITextField <UIPickerViewDelegate, UIPickerViewDataSource> {
    __weak id <CSPickerTextFieldDelegate> pickerDelegate;
}

@property (nonatomic, weak) id <CSPickerTextFieldDelegate> pickerDelegate;

@end

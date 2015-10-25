//
//  CSPickerTextField.m
//  CSPickerTextFieldDemo
//
//  Created by Sean on 10/25/15.
//  Copyright © 2015 Sean. All rights reserved.
//

#import "CSPickerTextField.h"

@interface CSPickerTextField()
{
    UITextField *_textField;
    UIPickerView *_pickerView;
}

@end

@implementation CSPickerTextField

@synthesize pickerDelegate;

- (void)awakeFromNib {
    [super awakeFromNib];
    [self initialize];
}

- (void)initialize {
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textFieldDidBeginEditing:) name:UITextFieldTextDidBeginEditingNotification object:self];
    _pickerView = [[UIPickerView alloc] init];
    _pickerView.delegate = self;
}

- (void)textFieldDidBeginEditing:(NSNotification *)notification {
    _textField = (UITextField *)[notification object];
    _textField.inputView = _pickerView;
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return [pickerDelegate numberOfPickerRowInTextField:_textField];
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    return [pickerDelegate titlesForPickerRowInTextField:_textField][row];
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    _textField.text = [pickerDelegate titlesForPickerRowInTextField:_textField][row];
}

@end
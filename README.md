# CSPickerTextField
A simple UITextField extension that creates a single-component UIPickerView as input.


![alt tag](https://raw.github.com/newcseanc/CSPickerTextField/master/Assets/Demo_scaled.gif)




#### How to Use
_1. Copy and paste CSPickerTextField.h, CSPickerTextField.m, and CSPickerTextFieldDelegate.h from the CSPickerTextField folder into your project.

For Swift, add these in the bridging-header too:
![alt tag](https://raw.github.com/newcseanc/CSPickerTextField/master/Assets/Swift-1.png)


_2. Create a UITextField in storyboard and make its class CSPickerTextField, or you can create it programmatically too.


_3. Make your view controller confirms to CSPickerViewDelegate, set your_text_field.pickerDelegate = self, and implements the delegate methods.



##### Objective-C
###### ViewController.h
![alt tag](https://raw.github.com/newcseanc/CSPickerTextField/master/Assets/ObjC-1.png)




###### ViewController.m
![alt tag](https://raw.github.com/newcseanc/CSPickerTextField/master/Assets/ObjC-2.png)




##### Swift
###### ViewController.swift
![alt tag](https://raw.github.com/newcseanc/CSPickerTextField/master/Assets/Swift-2.png)

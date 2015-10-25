# CSPickerTextField
A simple UITextField extension that creates a single-component UIPickerView as input.

![alt tag](https://raw.github.com/newcseanc/CSPickerTextField/master/Assets/Demo_scaled.gif)


#### How to Use
First, copy and paste CSPickerTextField.h, CSPickerTextField.m, and CSPickerTextFieldDelegate.h into your project.

For Swift, add these in the bridging-header:
![alt tag](https://raw.github.com/newcseanc/CSPickerTextField/master/Assets/Swift-1.png)

Then, create a UITextField in storyboard and make its class CSPickerTextField, or you can create it programmatically too.

Lastly, make your view controller confirms to CSPickerViewDelegate, set your_text_field.pickerDelegate = self, and implements the delegate methods.

##### Objective-C
![alt tag](https://raw.github.com/newcseanc/CSPickerTextField/master/Assets/ObjC-1.png)

![alt tag](https://raw.github.com/newcseanc/CSPickerTextField/master/Assets/ObjC-2.png)

##### Swift
![alt tag](https://raw.github.com/newcseanc/CSPickerTextField/master/Assets/Swift-2.png)

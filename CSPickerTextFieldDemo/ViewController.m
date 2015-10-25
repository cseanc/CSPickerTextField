//
//  ViewController.m
//  CSPickerTextFieldDemo
//
//  Created by Sean on 10/25/15.
//  Copyright © 2015 Sean. All rights reserved.
//
#import "CSPickerTextField.h"
#import "ViewController.h"

@interface ViewController () {
    NSMutableArray *fruits;
    NSMutableArray *colors;
}

@property (weak, nonatomic) IBOutlet CSPickerTextField *demoTextField;
@property (weak, nonatomic) IBOutlet CSPickerTextField *demoTextField2;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    fruits = [[NSMutableArray alloc] initWithObjects: @"Peach", @"Apple", @"Lemon", @"Guava", @"Dragon Fruit", nil];
    colors = [[NSMutableArray alloc] initWithObjects: @"White", @"Red", @"Yellow", @"Green", @"Black", nil];
    _demoTextField.pickerDelegate = self;
    _demoTextField2.pickerDelegate = self;
}

- (NSInteger)numberOfPickerRowInTextField:(UITextField *)textField {
    if (textField == _demoTextField) {
        return fruits.count;
    } else {
        return colors.count;
    }
}

- (NSMutableArray *)titlesForPickerRowInTextField:(UITextField *)textField {
    if (textField == _demoTextField) {
        return fruits;
    } else {
        return colors;
    }
}

@end

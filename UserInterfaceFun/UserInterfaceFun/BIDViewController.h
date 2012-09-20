//
//  BIDViewController.h
//  UserInterfaceFun
//
//  Created by Laïla Atrmouh on 18/09/12.
//  Copyright (c) 2012 URI. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BIDViewController : UIViewController

// Reference to the name field
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;

// Reference to the number field
@property (weak, nonatomic) IBOutlet UITextField *numberTextField;

// Reference to the slider label
@property (weak, nonatomic) IBOutlet UILabel *sliderLabel;

// Handler on the "Do Something" Button
- (IBAction)buttonPressed:(id)sender;

// Reference to the Do something Button
@property (weak, nonatomic) IBOutlet UIButton *doSomethingButton;

// Reference to the left switch
@property (weak, nonatomic) IBOutlet UISwitch *leftSwitch;

// Reference to the right switch
@property (weak, nonatomic) IBOutlet UISwitch *rightSwitch;

// Handler to close the keyboard
- (IBAction)textFieldDoneEditing:(id)sender;

// Handler to close the number keyboard
- (IBAction)backgroundTap:(id)sender;

// Handler triggered when the switchs are changed
- (IBAction)switchChanged:(id)sender;

// Handler for the segmented controls 
- (IBAction)toggleControls:(id)sender;

// Handler triggered when the slider has a different value
- (IBAction)sliderChanged:(id)sender;
@end

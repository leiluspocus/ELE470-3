//
//  BIDViewController.m
//  UserInterfaceFun
//
//  Created by Laïla Atrmouh on 18/09/12.
//  Copyright (c) 2012 URI. All rights reserved.
//

#import "BIDViewController.h"

@interface BIDViewController ()

@end

@implementation BIDViewController
@synthesize sliderLabel;
@synthesize doSomethingButton;
@synthesize leftSwitch;
@synthesize rightSwitch;
@synthesize nameTextField;
@synthesize numberTextField;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setNameTextField:nil];
    [self setNumberTextField:nil];
    [self setSliderLabel:nil];
    [self setLeftSwitch:nil];
    [self setRightSwitch:nil];
    [self setDoSomethingButton:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

// Handler to close the keyboard
- (IBAction)textFieldDoneEditing:(id)sender {
    [sender resignFirstResponder];
} 

// Handler to close the number keyboard
- (IBAction)backgroundTap:(id)sender {
    [nameTextField resignFirstResponder];
    [numberTextField resignFirstResponder];
}

- (IBAction)switchChanged:(id)sender {
    UISwitch *whichSwitch = (UISwitch *)sender;
    BOOL setting = whichSwitch.isOn;
    [leftSwitch setOn:setting animated:YES];
    [rightSwitch setOn:setting animated:YES];
}

// Handler on the segmented control
- (IBAction)toggleControls:(id)sender {
    // 0 == switches index
    if ([sender selectedSegmentIndex] == 0) {
        leftSwitch.hidden = NO;
        rightSwitch.hidden = NO;
        doSomethingButton.hidden = YES;
    }
    else {
        leftSwitch.hidden = YES;
        rightSwitch.hidden = YES;
        doSomethingButton.hidden = NO;
    }
}

// Handler for the change of slider value
- (IBAction)sliderChanged:(id)sender {
    UISlider *slider = (UISlider *)sender;
    int progressAsInt = (int)roundf(slider.value);
    sliderLabel.text = [NSString stringWithFormat:@"%d", progressAsInt];
}

// Handler on the "Do Something" Button
- (IBAction)buttonPressed:(id)sender {
}
@end

//
//  ViewController.m
//  BasicUI
//
//  Created by Kanittha Inbumrung on 8/26/2557 BE.
//  Copyright (c) 2557 Bambilitaz. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, weak) IBOutlet UITextField * nameField;
@property (nonatomic, weak) IBOutlet UITextField * numberField;
@property (nonatomic, weak) IBOutlet UISlider * theSlider;
@property (nonatomic, weak) IBOutlet UILabel * sliderLabel;
@end

@implementation ViewController
            
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(IBAction)backgroundClick
{
    [self.nameField resignFirstResponder];
    [self.numberField resignFirstResponder];
}

-(IBAction) sliderKnobChanged:(id)sender
{
    // Method 1 - use theSlider pointer to access value from slider
    int progressAsInt = (int)(self.theSlider.value + 0.5);
    NSString *newText = [[NSString alloc] initWithFormat:@"%d", progressAsInt];
    self.sliderLabel.text = newText;
    
    // Method 2 - use input parameter (sender)
    UISlider *slider = (UISlider*)sender;
    int progAsInt = (int)(slider.value + 0.5);
    NSString *newTxt = [[NSString alloc] initWithFormat:@"%d", progAsInt];
    self.sliderLabel.text = newTxt;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

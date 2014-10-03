//
//  FilterPlayerViewController.m
//  FormationM2i
//
//  Created by admin on 01/10/2014.
//  Copyright (c) 2014 fr.proxiad.com. All rights reserved.
//

#import "FilterPlayerViewController.h"

@interface FilterPlayerViewController () <UIPickerViewDelegate,UIPickerViewDataSource>

@property (strong, nonatomic) IBOutlet UIButton *validateButton;

@property (strong, nonatomic) IBOutlet UIPickerView *positionPicker;
@property (nonatomic) enum positionEnum positionSelected;
@end

@implementation FilterPlayerViewController
@synthesize positionSelected,position;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

// UIPickerView
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return 11;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    return [NFLUtil positionWithEnum:DL];
}

- (IBAction)filterPlayers:(id)sender {
    if (self.delegate != nil) {
        [self.delegate validateFilter:positionSelected];
        [self dismissViewControllerAnimated:YES completion:nil];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self.positionPicker selectRow:position inComponent:0 animated:YES];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    positionSelected = row;
}

@end

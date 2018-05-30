//
//  ViewController.m
//  Using_UIPickerViews
//
//  Created by Илья Юхновский on 31/05/2018.
//  Copyright © 2018 Илья Юхновский. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    pickerData = [[NSArray alloc] initWithObjects:@"Row 1",@"Row 2",@"Row 3",@"Row 4", nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}

-(NSInteger) pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return [pickerData count];
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return [pickerData objectAtIndex:row];
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    int select = (int)row;
    if(select == 0){
        self.label.text =@"Row 1 was selected";
    }
    if(select == 1){
        self.label.text =@"Row 2 was selected";
    }
    if(select == 2){
        self.label.text =@"Row 3 was selected";
    }
    if(select == 3){
        self.label.text =@"Row 4 was selected";
    }
}
@end

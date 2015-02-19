//
//  ViewController.m
//  horiPicker
//
//  Created by Robin Malhotra on 03/02/15.
//  Copyright (c) 2015 teamOSC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(nonatomic,strong) NSMutableArray *strings;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    self.strings=[[NSMutableArray alloc]init];
    for (int i=0; i<10; i++)
    {
        [self.strings addObject:[NSString stringWithFormat:@" asdkhbk%d",i]];
    }
    
    
    V8HorizontalPickerView *picker=[[V8HorizontalPickerView alloc]initWithFrame:CGRectMake(0, 0, 300, 300)];
    [picker setDataSource:self];
    [picker setDelegate:self];
    [self.view addSubview:picker];
    picker.backgroundColor   = [UIColor darkGrayColor];
    picker.selectedTextColor = [UIColor whiteColor];
    picker.textColor   = [UIColor grayColor];
    picker.selectionPoint = CGPointMake(picker.frame.origin.x, 0);
    picker.elementFont = [UIFont boldSystemFontOfSize:14.0f];

    // Do any additional setup after loading the view, typically from a nib.
}


- (NSString *)horizontalPickerView:(V8HorizontalPickerView *)picker titleForElementAtIndex:(NSInteger)index
{
    return [self.strings objectAtIndex:index];
}

- (NSInteger)numberOfElementsInHorizontalPickerView:(V8HorizontalPickerView *)picker {
    return [self.strings count];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger) horizontalPickerView:(V8HorizontalPickerView *)picker widthForElementAtIndex:(NSInteger)index
    {
        return 40;
    }

- (void)horizontalPickerView:(V8HorizontalPickerView *)picker didSelectElementAtIndex:(NSInteger)index;

{
    NSLog(@"%d",index);
}
@end

//
//  ViewController.m
//  Bean Counter
//
//  Created by Trevor McKendrick on 1/21/13.
//  Copyright (c) 2013 La Biblia Reina Valera LLC. All rights reserved.
//

#import "ViewController.h"
#import "Data.h"

@interface ViewController ()

@property (nonatomic, strong) IBOutlet UILabel *countDisplay;
@property (nonatomic, strong) IBOutlet UISwitch *toggleSwitch;


@end



@implementation ViewController

@synthesize count;

- (void)viewDidLoad
{
	self.countDisplay.text = @"0";
	
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction) increaseCount {
	NSLog(@"Count is %i before addition", count);
	self.count ++;
	NSLog(@"Count is %i after addition", count);
	NSString* displayString = [NSString stringWithFormat:@"%i", count];
	self.countDisplay.text = displayString;
}

- (IBAction) decreaseCount {
	NSLog(@"Count is %i before subtraction", count);
	self.count --;
	NSLog(@"Count is %i after subtraction", count);
	NSString* displayString = [NSString stringWithFormat:@"%i", count];
	self.countDisplay.text = displayString;
}

- (IBAction)toggleSwitch:(id)sender {
	if (self.toggleSwitch.on) {
		self.decreaseButton.hidden = NO;
		self.increaseButton.hidden = NO;
	}
	
	else {
		self.decreaseButton.hidden = YES;
		self.increaseButton.hidden = YES;
	}
}

@end

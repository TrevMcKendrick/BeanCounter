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
@synthesize dateLabel;

- (void)viewDidLoad
{
	self.countDisplay.text = @"0";
	[self changeDateLabel];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)changeDateLabel {
	NSDate *today = [NSDate date];
	NSLog(@"%@",today);
	NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
	[dateFormatter setDateFormat:@"dd MMM yyyy"];
	dateLabel.text = [dateFormatter stringFromDate:today];
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
		self.dateLabel.hidden = NO;
	}
	
	else {
		self.decreaseButton.hidden = YES;
		self.increaseButton.hidden = YES;
		self.dateLabel.hidden = YES;
	}
}

@end

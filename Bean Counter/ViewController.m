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

@end

@implementation ViewController


@synthesize dateLabel;

- (void)viewDidLoad
{
	count = [[NSUserDefaults standardUserDefaults] integerForKey:@"Counter"];
	
	if ( [[NSUserDefaults standardUserDefaults] objectForKey:@"Date"] == nil )
	{
		[self setDateToToday];
	}
	else
	{
		date  = [[NSUserDefaults standardUserDefaults] objectForKey:@"Date"];
		NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
		[dateFormatter setDateFormat:@"dd MMM yyyy"];
		dateLabel.text = [dateFormatter stringFromDate:date];
	}
	
	
	[self displayCounterLabelText];
	
	self.decreaseButton.hidden = YES;
	self.increaseButton.hidden = YES;
	self.dateLabel.hidden = YES;
	self.zeroButton.hidden = YES;
	[editButton setSelected:NO];
	[editButton setTitle:@"Edit" forState:UIControlStateNormal];
	[editButton setTitle:@"Done" forState:UIControlStateSelected];
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
		
	
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)setDateToToday {
	NSDate *todaysDate = [NSDate date];
	NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
	[dateFormatter setDateFormat:@"dd MMM yyyy"];
	dateLabel.text = [dateFormatter stringFromDate:todaysDate];
}

- (void)saveData {
	NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
	[defaults setInteger:count forKey:@"Counter"];
	[defaults setObject:date forKey:@"Date"];
}

- (void) displayCounterLabelText {
	NSString* displayString = [NSString stringWithFormat:@"%i", count];
	self->countDisplay.text = displayString;
}

- (IBAction) increaseCount {
	NSLog(@"Count is %i before addition", count);
	self->count ++;
	NSLog(@"Count is %i after addition", count);
	[self displayCounterLabelText];
	[self saveData];
}

- (IBAction) decreaseCount {
	NSLog(@"Count is %i before subtraction", count);
	self->count --;
	NSLog(@"Count is %i after subtraction", count);
	[self displayCounterLabelText];
	[self saveData];
}


- (void)zero {
	[self setDateToToday];
	count = 0;
	[self displayCounterLabelText];

}

- (IBAction)zeroMessage:(UIButton *)sender {
	UIAlertView *message = [[UIAlertView alloc] initWithTitle:@"Reset to Zero?" message:@"This counter will be rest to zero and the date will be reset to today." delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"Zero", nil];
	[message show];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
	
	NSString *title = [alertView buttonTitleAtIndex:buttonIndex];
	if ([title isEqualToString:@"Zero"]) {
		[self zero];
	}

}

- (IBAction)editView:(UIButton *)sender {
	
	if ([sender isSelected])	{
		self.decreaseButton.hidden = YES;
		self.increaseButton.hidden = YES;
		self.dateLabel.hidden = YES;
		self.zeroButton.hidden = YES;
		[sender setSelected:NO];

	} else {
		self.decreaseButton.hidden = NO;
		self.increaseButton.hidden = NO;
		self.dateLabel.hidden = NO;
		self.zeroButton.hidden = NO;
		[sender setSelected:YES];
		
		
	}
}



@end

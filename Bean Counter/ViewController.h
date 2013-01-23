//
//  ViewController.h
//  Bean Counter
//
//  Created by Trevor McKendrick on 1/21/13.
//  Copyright (c) 2013 La Biblia Reina Valera LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
	IBOutlet UILabel *countDisplay;
	int count;
	NSDate *date;
}



- (IBAction)increaseCount;
- (IBAction)decreaseCount;
- (IBAction)zeroOut:(UIButton *)sender;


@property (strong, nonatomic) IBOutlet UIButton *increaseButton;
@property (strong, nonatomic) IBOutlet UIButton *decreaseButton;
@property (strong, nonatomic) IBOutlet UILabel *dateLabel;
@property (strong, nonatomic) IBOutlet UIButton *zeroButton;



@end

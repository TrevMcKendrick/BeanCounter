//
//  ViewController.h
//  Bean Counter
//
//  Created by Trevor McKendrick on 1/21/13.
//  Copyright (c) 2013 La Biblia Reina Valera LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController



- (IBAction)increaseCount;
- (IBAction)decreaseCount;


@property (strong, nonatomic) IBOutlet UIButton *increaseButton;
@property (strong, nonatomic) IBOutlet UIButton *decreaseButton;
@property (strong, nonatomic) IBOutlet UILabel *dateLabel;
@property int count;

@end

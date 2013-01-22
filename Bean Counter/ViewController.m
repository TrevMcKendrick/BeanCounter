//
//  ViewController.m
//  Bean Counter
//
//  Created by Trevor McKendrick on 1/21/13.
//  Copyright (c) 2013 La Biblia Reina Valera LLC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) IBOutlet UILabel *countNumber;

@end

@implementation ViewController

- (void)viewDidLoad
{
	self.countNumber.text = @"0";
	
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

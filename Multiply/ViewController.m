//
//  ViewController.m
//  Multiply
//
//  Created by Chris Snyder on 7/21/14.
//  Copyright (c) 2014 Chris Snyder. All rights reserved.
//

#import "ViewController.h"

int number;
int number1;
int answer;


@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *myMultiplier;

@property (weak, nonatomic) IBOutlet UITextField *myNumber;
@property (weak, nonatomic) IBOutlet UILabel *myAnswer;

@end

@implementation ViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    self.myAnswer.text = @"????";

}
- (IBAction)onCalculateButtonPressed:(id)sender {
    number = [[self.myNumber text] intValue];
    number1 = [[self.myMultiplier text] intValue];
    answer = (number * number1);
    self.myAnswer.text= [NSString stringWithFormat:@"%d", answer];

    if (answer> 20){
        self.view.backgroundColor = [UIColor greenColor];
    }

    if (!(answer % 3)) {
    if (!(answer % 5))
    { self.myAnswer.text=@"fizzbuzz"; return; };}

        if (!(answer % 3)) { self.myAnswer.text=@"fizz"; return; };
        if (!(answer % 5)) { self.myAnswer.text=@"buzz"; return; };


}


- (void)didReceiveMemoryWarning

{
    [super didReceiveMemoryWarning];

}

@end

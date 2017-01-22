//
//  JKQuizResultViewController.m
//  Quiz
//
//  Created by Jason Kuan on 2017-01-20.
//  Copyright © 2017 jsonkuan. All rights reserved.
//

#import "JKQuizResultViewController.h"
#import "JKQuiz.h"

@interface JKQuizResultViewController ()

@end


@implementation JKQuizResultViewController

- (void) viewDidLoad {
    [super viewDidLoad];
    
    NSString *result = [NSString stringWithFormat: @"You got %d/5 correct!", self.finalResult];
    self.resultLabel.text = result;
}

@end

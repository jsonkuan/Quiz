//
//  JKQuizViewController.m
//  Quiz
//
//  Created by Jason Kuan on 2017-01-17.
//  Copyright © 2017 jsonkuan. All rights reserved.
//

#import "JKQuizViewController.h"
#import "JKQuestion.h"

@interface JKQuizViewController ()

@end

@implementation JKQuizViewController

- (IBAction)guessAlternativeAnswer:(id)sender {

    [self.answerOne   setEnabled:NO];
    [self.answerTwo   setEnabled:NO];
    [self.answerThree setEnabled:NO];
    [self.answerFour  setEnabled:NO];
    
    BOOL answer;
    if (answer) {
        _isAnswerCorrectLabel.text = @"👍🏼";
        answer = NO;
    } else {
        _isAnswerCorrectLabel.text = @"👎🏼";
        answer = YES;
    }
}

- (IBAction)showQuestion:(id)sender {
    [_playGameButton setTitle: @"Next" forState: UIControlStateNormal];
    
    self.questionLabel.text = @"How old am I?";
    self.isAnswerCorrectLabel.text = @"?";
    
    [self.answerOne setEnabled:YES];
    [self.answerTwo setEnabled:YES];
    [self.answerThree setEnabled:YES];
    [self.answerFour setEnabled:YES];
    
    [_answerOne setTitle: @"20" forState: UIControlStateNormal];
    [_answerTwo setTitle: @"25" forState: UIControlStateNormal];
    [_answerThree setTitle: @"28" forState: UIControlStateNormal];
    [_answerFour setTitle: @"29" forState: UIControlStateNormal];
}

@end

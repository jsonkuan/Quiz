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

- (void)toggleButtonEnabled: (BOOL) toggle;

@end

@implementation JKQuizViewController

- (void) viewDidLoad {
    [super viewDidLoad];
    
//    JKQuestion *question = [[JKQuestion alloc] init];
}

- (IBAction)guessOneOfFourAlternativeAnswers:(id)sender {

    [self toggleButtonEnabled: NO];
    
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
    [self.playGameButton setTitle: @"Next" forState: UIControlStateNormal];
    [self toggleButtonEnabled: YES];
    
    self.isAnswerCorrectLabel.text = @"?";
    //self.questionLabel.text = //  DICTIONARY OR ARRAY
}

- (void)toggleButtonEnabled: (BOOL)toggle{
    [self.answerOne   setEnabled:toggle];
    [self.answerTwo   setEnabled:toggle];
    [self.answerThree setEnabled:toggle];
    [self.answerFour  setEnabled:toggle];
}

- (void)setButtonTitleToAnswers {
    [_answerOne setTitle: @"20" forState: UIControlStateNormal];
    [_answerTwo setTitle: @"25" forState: UIControlStateNormal];
    [_answerThree setTitle: @"28" forState: UIControlStateNormal];
    [_answerFour setTitle: @"29" forState: UIControlStateNormal];
}

@end

//
//  JKQuizViewController.m
//  Quiz
//
//  Created by Jason Kuan on 2017-01-17.
//  Copyright © 2017 jsonkuan. All rights reserved.
//

#import "JKQuizViewController.h"
#import "JKQuiz.h"

@interface JKQuizViewController ()

- (void)enableButtons: (BOOL) toggle;
- (void)setButtonTitleToAnswers;

@property (nonatomic) JKQuiz *quiz;

@end


@implementation JKQuizViewController

- (void) viewDidLoad {
    [super viewDidLoad];
    
    self.quiz = [[JKQuiz alloc] init];
    self.currentQuestionIndex = 0;
    self.currentAnswerIndex = 0;
}

- (IBAction)guessOneOfFourAlternativeAnswers:(id)sender {

    [self enableButtons: NO];
    
    BOOL answer;  //Eventually change to check if answer is correct; 
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
    [self enableButtons: YES];
    
    self.isAnswerCorrectLabel.text = @"?";
    self.questionLabel.text = _quiz.questionArray[_currentQuestionIndex] ;
    [self setButtonTitleToAnswers];
 
    
    self.currentAnswerIndex += 4;
    self.currentQuestionIndex++;
}

- (void)enableButtons: (BOOL)toggle{
    [self.answerOne   setEnabled:toggle];
    [self.answerTwo   setEnabled:toggle];
    [self.answerThree setEnabled:toggle];
    [self.answerFour  setEnabled:toggle];
    [self.playGameButton setEnabled:!toggle];
}

- (void)setButtonTitleToAnswers {
    [_answerOne setTitle: _quiz.answerArray[_currentAnswerIndex] forState: UIControlStateNormal];
    [_answerTwo setTitle: _quiz.answerArray[_currentAnswerIndex+1] forState: UIControlStateNormal];
    [_answerThree setTitle: _quiz.answerArray[_currentAnswerIndex+2] forState: UIControlStateNormal];
    [_answerFour setTitle: _quiz.answerArray[_currentAnswerIndex+3] forState: UIControlStateNormal];
}

@end

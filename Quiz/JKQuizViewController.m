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

@property (nonatomic, weak) NSString *testString;
@property (nonatomic, copy) NSDictionary *dictionary;

- (void)toggleButtonEnabled: (BOOL) toggle;
- (void)setButtonTitleToAnswers: (NSArray *) answerArray;

@end


@implementation JKQuizViewController

- (void) viewDidLoad {
    [super viewDidLoad];
    
    JKQuiz *quiz = [[JKQuiz alloc] initWithQuestionAndAnswerArray: quiz.questionArray
                                                              withAnswerArray: quiz.answerArray];
    for (NSString *question in quiz.questionArray) {
        NSLog(@"%@", question);
    }
    
//    self.questions = @[@"question1",
//                       @"question2",
//                       @"question3 "];
    
    self.answers = @[@"a1",
                     @"a2",
                     @"a3",
                     @"a4"];
    
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
    self.questionLabel.text = self.questions[0];
    //[self setButtonTitleToAnswers: [self.dictionary allKeysForObject: @"q1"]];
    [self setButtonTitleToAnswers: _answers];
    
    
    //NSString *questionOne = [dictionary objectForKey:@"q1"];
}

- (void)toggleButtonEnabled: (BOOL)toggle{
    [self.answerOne   setEnabled:toggle];
    [self.answerTwo   setEnabled:toggle];
    [self.answerThree setEnabled:toggle];
    [self.answerFour  setEnabled:toggle];
}

- (void)setButtonTitleToAnswers: (NSArray*) array {
        [_answerOne setTitle: array[0] forState: UIControlStateNormal];
        [_answerTwo setTitle: array[1] forState: UIControlStateNormal];
        [_answerThree setTitle: array[2] forState: UIControlStateNormal];
        [_answerFour setTitle: array[3] forState: UIControlStateNormal];
}

@end

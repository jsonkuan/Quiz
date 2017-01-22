//
//  JKQuizViewController.m
//  Quiz
//
//  Created by Jason Kuan on 2017-01-17.
//  Copyright © 2017 jsonkuan. All rights reserved.
//

#import "JKQuizViewController.h"
#import "JKQuizResultViewController.h"
#import "JKQuiz.h"

@interface JKQuizViewController ()

- (void)enableButtons: (BOOL) toggle;
- (void)setButtonTitleToAnswers: (NSArray*) questionArray;

@property (nonatomic) JKQuiz *quiz;

@end


@implementation JKQuizViewController

- (void) viewDidLoad {
    [super viewDidLoad];
    
    self.quiz = [[JKQuiz alloc] init]; //Generates Random array [0] = @"q8" : @"[1,2,3,4,5]

}

- (IBAction)showQuestion:(id)sender {
    NSArray *questionsArray  = [self.quiz.questionDictionary allValues];
    NSString *question = [questionsArray[self.quiz.currentQuestionIndex] objectAtIndex:0];
    self.questionLabel.text = question;
    
    [self setButtonTitleToAnswers: questionsArray];
    [self enableButtons: YES];
    [self.playGameButton setTitle: @"Next" forState: UIControlStateNormal];
    
    self.isAnswerCorrectLabel.text = @"?";
    self.quiz.currentQuestionIndex++;
}

- (IBAction)guessOneOfFourAlternativeAnswers:(UIButton*)sender {
    
    [self enableButtons: NO];
    if (sender.tag == 1) {
        self.isAnswerCorrectLabel.text = @"👍🏼";
        self.quiz.result++;
        
    } else {
        self.isAnswerCorrectLabel.text = @"👎🏼";
    }
   
    if(self.quiz.currentQuestionIndex == 5) {
        [self performSegueWithIdentifier:@"PushToResultSegue" sender:sender];
    }
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqualToString:@"PushToResultSegue"]){
        JKQuizResultViewController *controller = (JKQuizResultViewController *)segue.destinationViewController;
        controller.finalResult = self.quiz.result;
    }
}

- (void)enableButtons: (BOOL)toggle{
    [self.answerOne   setEnabled:toggle];
    [self.answerTwo   setEnabled:toggle];
    [self.answerThree setEnabled:toggle];
    [self.answerFour  setEnabled:toggle];
    [self.playGameButton setEnabled:!toggle];
}

// TODO: Shuffle object index
- (void)setButtonTitleToAnswers: (NSArray*) questionArray {
        [_answerOne setTitle:[questionArray[self.quiz.currentQuestionIndex] objectAtIndex: 1] forState: UIControlStateNormal];
        [_answerTwo setTitle:[questionArray[self.quiz.currentQuestionIndex] objectAtIndex: 2] forState: UIControlStateNormal];
        [_answerThree setTitle:[questionArray[self.quiz.currentQuestionIndex] objectAtIndex: 3] forState: UIControlStateNormal];
        [_answerFour setTitle:[questionArray[self.quiz.currentQuestionIndex] objectAtIndex: 4] forState: UIControlStateNormal];
}

@end

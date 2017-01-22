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
- (void)setButtonTitleToAnswers: (NSMutableArray*) questionArray;

@property (nonatomic) NSMutableArray *questionAnswerArray;
@property (nonatomic) JKQuiz *quiz;

@end

@implementation JKQuizViewController

- (void) viewDidLoad {
    [super viewDidLoad];
    self.quiz = [[JKQuiz alloc] init];
}

- (IBAction)showQuestion:(id)sender {
    self.questionAnswerArray  = [[self.quiz.questionDictionary allValues] mutableCopy];
    NSString *question = [self.questionAnswerArray[self.quiz.currentQuestionIndex] objectAtIndex:0];
    self.questionLabel.text = question;
    
    self.quiz.correctAnswer = [self.questionAnswerArray[self.quiz.currentQuestionIndex] objectAtIndex:1];
    [self setButtonTitleToAnswers: self.questionAnswerArray];
    
    [self enableButtons: YES];
    [self.playGameButton setTitle: @"Next" forState: UIControlStateNormal];
    
    self.isAnswerCorrectLabel.text = @"?";
    self.quiz.currentQuestionIndex++;
}

- (IBAction)guessOneOfFourAlternativeAnswers:(UIButton*)sender {
    
    [self enableButtons: NO];
    if ([sender.titleLabel.text isEqualToString:self.quiz.correctAnswer]) {
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

- (void)setButtonTitleToAnswers: (NSMutableArray*) questionArray {
   
    NSMutableArray *numbers = [NSMutableArray arrayWithObjects: @1, @2, @3, @4, nil] ;
    for(int i = 0; i < numbers.count; i++){
        [numbers exchangeObjectAtIndex:i withObjectAtIndex:arc4random() % numbers.count];
    }
    int one = [numbers[0] intValue];
    int two = [numbers[1] intValue];
    int three = [numbers[2] intValue];
    int four = [numbers[3] intValue];
    
    [_answerOne setTitle:[questionArray[self.quiz.currentQuestionIndex] objectAtIndex: one] forState: UIControlStateNormal];
    [_answerTwo setTitle:[questionArray[self.quiz.currentQuestionIndex] objectAtIndex: two]  forState: UIControlStateNormal];
    [_answerThree setTitle:[questionArray[self.quiz.currentQuestionIndex] objectAtIndex:three] forState: UIControlStateNormal];
    [_answerFour setTitle:[questionArray[self.quiz.currentQuestionIndex] objectAtIndex: four] forState: UIControlStateNormal];
}

@end

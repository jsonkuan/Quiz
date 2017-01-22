//
//  JKQuiz.m
//  Quiz
//
//  Created by Jason Kuan on 2017-01-17.
//  Copyright © 2017 jsonkuan. All rights reserved.
//

#import "JKQuiz.h"

@interface JKQuiz ()

//- (NSMutableArray*) shuffleQuestions: (NSMutableArray*) questions andShuffleAnswers: (NSMutableArray*) answers;

@end

@implementation JKQuiz

- (instancetype) init {
    self = [super init];
    if (self) {
        
        self.currentQuestionIndex = 0;
//        self.currentAnswerIndex = 0;
//        self.correctAnswerIndex = 0;
        self.result = 0;
        
        [self createDictionary];
        [self reduceDictionaryToFive: _questionDictionary];
    }
    return self;
}

- (void) reduceDictionaryToFive: (NSMutableDictionary*) questions {
    for (NSUInteger i = questions.count; i >= 5; i--) {
        int randomInt = arc4random() % [questions count];
        
        NSMutableString* key = [NSMutableString stringWithFormat:@"q%d", randomInt];
        [self.questionDictionary removeObjectForKey:key];
    }
    
    
}

- (void) createDictionary {
        self.questionDictionary = [@{
                @"q1" : @[@"How old am I?",
                          @"29", @"27", @"28", @"30"],

                @"q2" : @[@"What is a flock of unicorns called?",
                          @"Pretty", @"Blessing", @"Horses", @"Pony"],

                @"q3" : @[@"What caused the silence of the lamms?",
                          @"Chuck Norris", @"Big Bad Wolf", @"Steve Jobs", @"2Pac"],

                @"q4" : @[@"What color is coca-cola without coloring?",
                          @"Green", @"Brown", @"Clear", @"Black"],

                @"q5" : @[@"What is the average heartrate of a hedgehog?",
                          @"300bpm", @"50bpm", @"75bpm", @"220bpm"],

                @"q6" : @[@"How much faster to fingernails grow than toe nails?",
                          @"5x", @"3x", @"4x", @"2x"],

                @"q7" : @[@"Whom of the following was vegetarian and had one testicle?",
                          @"Adolf Hitler", @"Pablo Escobar", @"Che Guevara", @"Joseph Stalin"],

                @"q8" : @[@"How long can a cockroach live with its head cut off?",
                          @"3 weeks", @"24 hours", @"3 months", @"1 month"],

                @"q9" : @[@"How long can a snail sleep for?",
                          @"3yr", @"1yrs", @"6months", @"1month"],

                @"q10": @[@"Which of the following foods is an ingredient in dynamite?",
                          @"Peanuts", @"Liver", @"Corn", @"Noodles"]} mutableCopy];
}
@end

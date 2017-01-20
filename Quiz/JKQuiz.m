//
//  JKQuiz.m
//  Quiz
//
//  Created by Jason Kuan on 2017-01-17.
//  Copyright © 2017 jsonkuan. All rights reserved.
//

#import "JKQuiz.h"

@interface JKQuiz ()


@end

@implementation JKQuiz

//Designated Initializer
- (instancetype) init {
    self = [super init];
    if (self) {
        self.questionArray = @[@"How old am I?",
                          @"What is a flock of unicorns called?",
                          @"What caused the silence of the lamms?",
                          @"What color is coca-cola \n without coloring?",
                          @"What is the average heartrate \n of a hedgehog?",
                          @"How much faster to fingernails \n grow than toe nails?",
                          @"Whom of the following was \nvegetarian and had one testicle?",
                          @"How long can a cockroach live\n with its head cut off?",
                          @"How long can a snail sleep for?",
                          @"Which of the following foods is\n an ingredient in dynamite?"];
        
        self.answerArray =   @[@"26", @"27", @"28", @"29",
                          @"Pretty", @"Blessing", @"Horses", @"Pony",
                          @"Chuck Norris", @"Big Bad Wolf", @"Steve Jobs", @"2Pac",
                          @"Black", @"Brown", @"Clear", @"Green",
                          @"300bpm", @"50bpm", @"75bpm", @"220bpm",
                          @"2x", @"3x", @"4x", @"5x",
                          @"Joseph Stalin", @"Pablo Escobar", @"Che Guevara", @"Adolf Hitler",
                          @"3 weeks", @"24 hours", @"6 months", @"1 month",
                          @"1yr", @"3yrs", @"6months", @"1month",
                          @"Peanuts", @"Liver", @"Corn", @"Noodles"];
    }
    return self;
}

-(int) randomNumber{
    return arc4random() % self.questionArray.count;
}

-(NSString*) returnQuestion {
    NSString *str = [[NSString alloc] init];
    str = self.questionArray[self.randomQuestion];
    return str;
}

@end


//- (instancetype) initWithDictionary:(NSDictionary *)questionDictionary {
//    self = [super init];
//    if (self) {
//        NSDictionary *questionDictionary = [[NSDictionary alloc] init];
//        _questionDictionary = questionDictionary;
//        _questionDictionary = @{
//                @"q1" : @[@"How old am I?",
//                          @"26", @"27", @"28", @"29"],
//
//                @"q2" : @[@"What is a flock of unicorns called?",
//                          @"Pretty", @"Blessing", @"Horses", @"Pony"],
//
//                @"q3" : @[@"What caused the silence of the lamms?",
//                          @"Chuck Norris", @"Big Bad Wolf", @"Steve Jobs", @"2Pac"],
//
//                @"q4" : @[@"What color is coca-cola without coloring?",
//                          @"Black", @"Brown", @"Clear", @"Green"],
//
//                @"q5" : @[@"What is the average heartrate of a hedgehog?",
//                          @"300bpm", @"50bpm", @"75bpm", @"220bpm"],
//
//                @"q6" : @[@"How much faster to fingernails grow than toe nails?",
//                          @"2x", @"3x", @"4x", @"5x"],
//
//                @"q7" : @[@"Whom of the following was vegetarian and had one testicle?",
//                          @"Joseph Stalin", @"Pablo Escobar", @"Che Guevara", @"Adolf Hitler"],
//
//                @"q8" : @[@"How long can a cockroach live with its head cut off?",
//                          @"3 weeks", @"24 hours", @"6 months", @"1 month"],
//
//                @"q9" : @[@"How long can a snail sleep for?",
//                          @"1yr", @"3yrs", @"6months", @"1month"],
//
//                @"q10": @[@"Which of the following foods is an ingredient in dynamite?",
//                          @"Peanuts", @"Liver", @"Corn", @"Noodles"]};
//    }
//    return self;
//}







//-(int) rollDice() {
//    return 1 + arc4random() % 6;
//}

//float randomFloat = (float)arc4random() / (float)UINT_MAX;

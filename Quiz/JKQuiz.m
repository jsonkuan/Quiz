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

- (instancetype) init {
    self = [super init];
    if (self) {
        
        self.currentQuestionIndex = 0;
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

//Format of Array: [question, correctAnswer, incorrect, incorrect, incorrect]
- (void) createDictionary {
        self.questionDictionary = [@{
                @"q1" : [@[@"How old am I?",
                          @"29", @"31", @"28", @"30"] mutableCopy] ,

                @"q2" : [@[@"What is a flock of unicorns called?",
                          @"Pretty", @"Blessing", @"Horses", @"Pony"] mutableCopy],

                @"q3" : [@[@"Who caused the silence of the lamms?",
                          @"Chuck Norris", @"Big Bad Wolf", @"Steve Jobs", @"2Pac"] mutableCopy],

                @"q4" : [@[@"What color is coca-cola without coloring?",
                          @"Green", @"Brown", @"Clear", @"Black"] mutableCopy],

                @"q5" : [@[@"What is the average heartrate of a hedgehog?",
                          @"300 bpm", @"50 bpm", @"75 bpm", @"220 bpm"] mutableCopy],

                @"q6" : [@[@"How much faster to fingernails grow than toe nails?",
                          @"5x", @"3x", @"4x", @"2x"] mutableCopy],

                @"q7" : [@[@"Whom of the following was vegetarian and had one testicle?",
                          @"Adolf Hitler", @"Pablo Escobar", @"Che Guevara", @"Joseph Stalin"] mutableCopy],

                @"q8" : [@[@"How long can a cockroach live with its head cut off?",
                          @"3 weeks", @"1 week", @"3 months", @"1 month"] mutableCopy],

                @"q9" : [@[@"How long can a snail sleep for?",
                         @"3 years", @"1 year", @"3 months", @"1 month"] mutableCopy],

                @"q10": [@[@"Which of the following foods is an ingredient in dynamite?",
                          @"Peanuts", @"Liver", @"Corn", @"Noodles"] mutableCopy],
                
                @"q11" : [@[@"What are American Dollars made of?",
                           @"Cotton", @"Paper", @"Plastic", @"Leaves"] mutableCopy],
                
                @"q12" : [@[@"What do bats always do when leaving a cave?",
                          @"Turn Left", @"Turn Right", @"Poop", @"Pee"] mutableCopy],
                
                @"q13" : [@[@"What is our closet galactic neighbor?",
                          @"Andromeda", @"The Milky Way", @"Mars", @"Starburst"] mutableCopy],
                
                @"q14" : [@[@"How far away is our closest galactic neighbor in light years?",
                          @"2,500,000", @"150,000", @"1,000,000", @"1,500,000"] mutableCopy],
                
                @"q15" : [@[@"In Sagittarius B, there is a giant cloud of ... ",
                          @"Alcohol", @"Ice", @"Glass", @"Diamonds"] mutableCopy],
                
                @"q16" : [@[@"What is the most complicated object in the universe?",
                          @"Human Brain", @"Galaxies", @"Quantum Computer", @"Black Holes"] mutableCopy],
                
                @"q17" : [@[@"In the 1640's, what were fish intestines used as?",
                          @"Condoms", @"Wallets", @"Lotion", @"Socks"] mutableCopy],
                
                @"q18" : [@[@"What do female kangaroos have 3 of?",
                          @"Vaginas", @"Stomachs", @"Hearts", @"Thumbs"] mutableCopy],
                
                @"q19" : [@[@"What is the most powerful sniper rifle in Counter-Strike?",
                          @"AWP", @"50Cal", @"M40", @"T-76"] mutableCopy],
                
                @"q20" : [@[@"What programming language is used to make iOS apps?",
                          @"ObjC", @"C++", @"Java", @"C"] mutableCopy],
                
                @"q21" : [@[@"Which MMA fighter was the first to hold titles in two weight classes?",
                          @"Randy Couture", @"Connor McGregor", @"Anderson Silva", @"BJ Penn"] mutableCopy],
                
                @"q22" : [@[@"Who is the Prime Minister of Canada?",
                          @"Trudeau", @"Harper", @"Cameron", @"Loubet"] mutableCopy],
                
                @"q23" : [@[@"Who is the lead singer of Radiohead?",
                          @"Thom Yorke", @"Paul Banks", @"Win Butler", @"James Hetfield"] mutableCopy],
                
                @"q24" : [@[@"What is the only animal that can get Leprosy?",
                          @"Armadillo", @"Chimpanzee", @"Proghorn", @"Wallaby"] mutableCopy],
                
                @"q25" : [@[@"What flavor of Ben and Jerrys will pigs not eat?",
                          @"Mint Cookie", @"Cheesecake", @"Mango Sorbet", @"Cotton Candy"] mutableCopy]
                } mutableCopy];
}
@end

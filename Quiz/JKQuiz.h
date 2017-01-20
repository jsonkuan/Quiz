//
//  JKQuiz.h
//  Quiz
//
//  Created by Jason Kuan on 2017-01-17.
//  Copyright © 2017 jsonkuan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JKQuiz : NSObject

@property (nonatomic, readonly, copy) NSDictionary *questionDictionary;
@property (nonatomic, copy) NSArray *answerArray;
@property (nonatomic, copy) NSArray *questionArray;
@property (nonatomic) int currentQuestionIndex;

//Designated Initializer
//-(instancetype)initWithQuestionAndAnswerArray: (NSArray *) questionArray
//                              withAnswerArray: (NSArray*) answerArray;
//
//-(instancetype)initWithQuestionArray: (NSArray *) questionArray;
//-(instancetype)initWithAnswerArray: (NSArray *) answerArray;
//-(instancetype)initWithDictionary: (NSDictionary *) questionDictionary;

+(instancetype)randomQuestion;
+(NSString*) returnQuestion;

- (int)randomQuestion;

@end

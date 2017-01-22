//
//  JKQuiz.h
//  Quiz
//
//  Created by Jason Kuan on 2017-01-17.
//  Copyright © 2017 jsonkuan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JKQuiz : NSObject

@property (nonatomic) NSMutableDictionary *questionDictionary;
@property (nonatomic) NSMutableArray *singleQuestion;

@property (nonatomic) int currentQuestionIndex;
@property (nonatomic) int correctAnswer;
@property (nonatomic) int result; 


@end

//
//  JKQuestion.h
//  Quiz
//
//  Created by Jason Kuan on 2017-01-17.
//  Copyright © 2017 jsonkuan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JKQuestion : NSObject

@property (nonatomic, readonly, copy) NSDictionary *questionDictionary;

//Designated Initializer (Currently Only)
-(instancetype)initWithDictionary: (NSDictionary *) questionDictionary;
+(instancetype)randomQuestion;

@end

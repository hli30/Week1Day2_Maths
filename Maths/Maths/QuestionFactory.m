//
//  QuestionFactory.m
//  Maths
//
//  Created by Harry Li on 2017-05-31.
//  Copyright © 2017 Harry. All rights reserved.
//

#import "QuestionFactory.h"
#import "Question.h"

@implementation QuestionFactory

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSArray *questionSubclassNames = @[@"AdditionQuestion", @"SubtractionQuestion", @"MutiplyQuestion", @"DivisionQuestion"];
        _questionSubclassNames = questionSubclassNames;
    }
    return self;
}

-(Question *)generateRandomQuestion{
    
    int index = arc4random_uniform(4);
    Question *question = [[NSClassFromString(self.questionSubclassNames[index])alloc]init];
    return question;
}

@end

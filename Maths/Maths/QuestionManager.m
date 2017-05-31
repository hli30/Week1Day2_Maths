//
//  QuestionManager.m
//  Maths
//
//  Created by Harry Li on 2017-05-31.
//  Copyright © 2017 Harry. All rights reserved.
//

#import "QuestionManager.h"
#import "Question.h"

@implementation QuestionManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSMutableArray *array = [NSMutableArray array];
        _questions = array;
    }
    return self;
}

-(NSString *)timeOutput{
    NSInteger total = 0,
             ave = 0,
             count = 0;

    for (Question *question in self.questions) {
        total = total + question.answerTime;
        count++;
    }
    ave = total / count;
    
    NSString *msg = [NSString stringWithFormat:@"total time: %lis, average time:%lis", total, ave];
    
    return msg;
}


@end

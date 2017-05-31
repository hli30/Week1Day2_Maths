//
//  Question.m
//  Maths
//
//  Created by Harry Li on 2017-05-30.
//  Copyright © 2017 Harry. All rights reserved.
//

#import "Question.h"

@implementation Question

- (instancetype)init
{
    self = [super init];
    if (self) {
        _leftValue = arc4random_uniform(91) + 10;
        _rightValue = arc4random_uniform(91) + 10;
        _startTime = [NSDate date];

    }
    return self;
}

-(void)generateQuestion{
    
}

-(NSInteger)answer{
    _endTime = [NSDate date];
    return _answer;
}

-(NSTimeInterval)answerTime{
    NSTimeInterval ansTime = [self.endTime timeIntervalSinceDate:self.startTime];
    return ansTime;
}


@end

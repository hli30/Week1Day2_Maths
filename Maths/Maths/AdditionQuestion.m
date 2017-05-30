//
//  AdditionQuestion.m
//  Maths
//
//  Created by Harry Li on 2017-05-30.
//  Copyright © 2017 Harry. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSInteger num1 = arc4random_uniform(90) + 10;
        NSInteger num2 = arc4random_uniform(90) + 10;
        NSInteger add = num1 + num2;
        
        _question = [NSString stringWithFormat:@"%li + %li = ?", num1, num2];
        _answer = add;
    }
    return self;
}

@end

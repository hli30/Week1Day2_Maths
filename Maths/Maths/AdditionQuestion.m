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
        int num1 = arc4random_uniform(90) + 10;
        int num2 = arc4random_uniform(90) + 10;
        int add = num1 + num2;
        
        _question = [NSString stringWithFormat:@"%i + %i = ?", num1, num2];
        _answer = add;
    }
    return self;
}

@end

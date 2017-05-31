//
//  DivisionQuestion.m
//  Maths
//
//  Created by Harry Li on 2017-05-31.
//  Copyright © 2017 Harry. All rights reserved.
//

#import "DivisionQuestion.h"

@implementation DivisionQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self generateQuestion];
    }
    return self;
}

-(void)generateQuestion{
    
    
    super.question = [NSString stringWithFormat:@"%li / %li = ?", self.leftValue, self.rightValue];    
    super.answer = self.leftValue / self.rightValue;
}

@end

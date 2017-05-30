//
//  ScoreKeeper.m
//  Maths
//
//  Created by Harry Li on 2017-05-30.
//  Copyright © 2017 Harry. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

-(NSString *)keepScore{
    double total = self.right + self.wrong;
    double average = self.right / total * 100.0f;
    
    NSString *msg = [NSString stringWithFormat:@"Score: %li right, %li wrong, ---%f\%%", self.right, self.wrong, average];
    
    return msg;
}

@end

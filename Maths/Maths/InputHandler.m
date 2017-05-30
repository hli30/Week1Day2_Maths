//
//  InputHandler.m
//  Maths
//
//  Created by Harry Li on 2017-05-30.
//  Copyright © 2017 Harry. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

-(NSString *)readInput{
    char input[255];
    
    fgets(input, 255, stdin);
    
    NSString *inputString = [NSString stringWithCString:input encoding:NSUTF8StringEncoding];
    
    NSString *trimmedString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    return trimmedString;
}

@end

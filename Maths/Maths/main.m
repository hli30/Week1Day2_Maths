//
//  main.m
//  Maths
//
//  Created by Harry Li on 2017-05-30.
//  Copyright © 2017 Harry. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "ScoreKeeper.h"
#import "InputHandler.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        BOOL gameOn = YES;
        ScoreKeeper *keeper = [[ScoreKeeper alloc]init];
        InputHandler *userInput = [[InputHandler alloc]init];

        while(gameOn){
            AdditionQuestion *newQuestion = [[AdditionQuestion alloc]init];
            
            NSLog(@"%@, type 'quit' to exit.", newQuestion.question);
            NSString *input = [userInput readInput];
            
            if ([input isEqualToString:@"quit"]){
                break;
            }else{
                NSInteger userAnswer = input.integerValue;
                if(newQuestion.answer == userAnswer){
                    NSLog(@"Right!");
                    keeper.right++;
                    NSLog(@"%@", [keeper keepScore]);
                }else{
                    NSLog(@"Wrong!");
                    keeper.wrong++;
                    NSLog(@"%@", [keeper keepScore]);
                }
            }
        }
    }
    return 0;
}

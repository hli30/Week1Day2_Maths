//
//  main.m
//  Maths
//
//  Created by Harry Li on 2017-05-30.
//  Copyright © 2017 Harry. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "ScoreKeeper.h"
#import "InputHandler.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        BOOL gameOn = YES;
        ScoreKeeper *keeper = [[ScoreKeeper alloc]init];
        InputHandler *userInput = [[InputHandler alloc]init];
        QuestionManager *questionManager = [[QuestionManager alloc]init];
        QuestionFactory *questionFactory = [[QuestionFactory alloc]init];

        while(gameOn){
            Question *newQuestion = [questionFactory generateRandomQuestion];

            if (newQuestion != nil) {
               [questionManager.questions addObject: newQuestion];
            }
            
            if (newQuestion.question != nil){
            NSLog(@"%@, type 'quit' to exit.", newQuestion.question);
            }
            
            NSString *input = [userInput readInput];
            
            if ([input isEqualToString:@"quit"]){
                break;
            }else{
                NSInteger userAnswer = input.integerValue;
                if(newQuestion.answer == userAnswer){
                    NSLog(@"Right!");
                    keeper.right++;
                    NSLog(@"%@\n", [keeper keepScore]);
                    NSLog(@"%@\n", [questionManager timeOutput]);
                }else{
                    NSLog(@"Wrong!");
                    keeper.wrong++;
                    NSLog(@"%@\n", [keeper keepScore]);
                    NSLog(@"%@\n", [questionManager timeOutput]);
                }
            }
        }
    }
    return 0;
}

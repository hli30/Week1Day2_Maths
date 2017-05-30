//
//  main.m
//  Maths
//
//  Created by Harry Li on 2017-05-30.
//  Copyright © 2017 Harry. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        char answer[255];
        
        while(true){
            AdditionQuestion *newQuestion = [[AdditionQuestion alloc]init];
            
            NSLog(@"%@", newQuestion.question);
            
            fgets(answer, 255, stdin);
            
            NSInteger userAnswer = atoi(answer);
            
            if(newQuestion.answer == userAnswer){
                NSLog(@"Right!");
            }else{
                NSLog(@"Wrong!");
            }
        }
    }
    return 0;
}

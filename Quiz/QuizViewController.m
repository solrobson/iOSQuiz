//
//  QuizViewController.m
//  Quiz
//
//  Created by Sol on 7/4/13.
//  Copyright (c) 2013 Sol. All rights reserved.
//

#import "QuizViewController.h"

@interface QuizViewController ()

@end

@implementation QuizViewController

- (id) initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    //Call the init method implemented by the suberclass
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if(self)
    {
        //Create two arrays and make the pointer point to them
        questions = [[NSMutableArray alloc] init];
        answers = [[NSMutableArray alloc] init];
        
        //add questions and answers to the arrays
        [questions addObject:@"What is 7 + 7?"];
        [answers addObject:@"14"];
        [questions addObject:@"What is the capital of Vermont?"];
        [answers addObject: @"Montpelier"];
        [questions addObject:@"From what is cognac made?"];
        [answers addObject:@"Grapes"];
    }
    //return the address of the new object
    return self;
}

-(IBAction) showQuestion:(id)sender
{
    //Step to the next question
    currentQuestionIndex++;
    
    //am I past the last question?
    if(currentQuestionIndex == [questions count])
    {
        //Go back to the first question;
        currentQuestionIndex = 0;
    }
    //Get the string at the index in the questions array
    NSString *question = [questions objectAtIndex:currentQuestionIndex];
    
    //Log the string to the console
    NSLog(@"Displaying questions: %@", question);
    
    //Display the string in the question feild
    [questionField setText:question];
    
    //clear the answer field
    [answerField setText: @"????"];
}

-(IBAction)showAnswer:(id)sender
{
    //What is the answer to the current question
    NSString *answer = [answers objectAtIndex:currentQuestionIndex];
    
    //Display it in the answer field
    [answerField setText:answer];
}
@end

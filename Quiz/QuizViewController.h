//
//  QuizViewController.h
//  Quiz
//
//  Created by Sol on 7/4/13.
//  Copyright (c) 2013 Sol. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QuizViewController : UIViewController
{
    int currentQuestionIndex;
    
    //The model objects
    NSMutableArray *questions;
    NSMutableArray *answers;
    
    //The view objects
    IBOutlet UILabel *questionField;
    IBOutlet UILabel *answerField;
}

-(IBAction) showQuestion: (id)sender;
-(IBAction) showAnswer: (id)sender;
@end

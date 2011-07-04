//
//  QuestionaireTests.m
//  IQuestionaire
//
//  Created by Peter Friese on 15.06.11.
//  Copyright 2011 Peter Friese. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>
#import <UIKit/UIKit.h>

#import "Questionaire.h"
#import "Page.h"
#import "Question.h"
#import "MultipleChoiceQuestion.h"
#import "Option.h"

@interface QuestionaireTests : SenTestCase
@end

@implementation QuestionaireTests

- (void)testFullQuestionaire {
    Questionaire *questionaire = [[Questionaire alloc] init];

    Page *page1 = [[Page alloc] init];
    Page *page2 = [[Page alloc] init];
    [questionaire setPages:[NSArray arrayWithObjects:page1, page2, nil]];
    
    Question *question1 = [[Question alloc] init];
    [question1 setKey:@"color"];
    [question1 setTitle:@"Color"];
    [question1 setSubtitle:@"Which color do you like?"];
    Option *optionRed = [[Option alloc] init];
    [optionRed setKey:@"red"];
    [optionRed setData:@"Red"];
    Option *optionBlue = [[Option alloc] init];
    [optionBlue setKey:@"blue"];
    [optionBlue setData:@"Blue"];
    [question1 setOptions:[NSArray arrayWithObjects:optionBlue, optionRed, nil]];
    [page1 setQuestions:[NSArray arrayWithObjects:question1, nil]];
    
    Question *question2 = [[Question alloc] init];
    [question2 setKey:@"aircondition"];
    [question2 setTitle:@"Air condition"];
    [question2 setSubtitle:@"Choose the kind of air condition"];
    Option *optionNoAirCondition = [[Option alloc] init];
    [optionNoAirCondition setKey:@"noairco"];
    [optionNoAirCondition setData:@"None"];
    Option *optionAutomaticAirCondition = [[Option alloc] init];
    [optionAutomaticAirCondition setKey:@"automaticairco"];
    [question2 setOptions:[NSArray arrayWithObjects:optionNoAirCondition, optionAutomaticAirCondition, nil]];
    
    Question *question3 = [[Question alloc] init];
    [question3 setKey:@"interior"];
    [question3 setTitle:@"Interior"];
    Option *optionCupholder = [[Option alloc] init];
    [optionCupholder setKey:@"cupholder"];
    [optionCupholder setData:@"Cupholder"];
    Option *optionBoardComputer = [[Option alloc] init];
    [optionBoardComputer setKey:@"boardcomputer"];
    [optionBoardComputer setData:@"Board computer"];
    [question3 setOptions:[NSArray arrayWithObjects:optionCupholder, optionBoardComputer, nil]];

    [page2 setQuestions:[NSArray arrayWithObjects:question2, question3, nil]];
    

}

@end

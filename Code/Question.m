//
//  Question.m
//  IQuestionaire
//
//  Created by Peter Friese on 15.06.11.
//  Copyright 2011 Peter Friese. All rights reserved.
//

#import "Question.h"
#import "Page.h"
#import "IQOption.h"

@implementation Question

@synthesize key;
@synthesize title;
@synthesize subtitle;
@synthesize page;
@synthesize nextQuestion;
@synthesize options;


#pragma mark - Navigation

- (Question *)nextQuestion
{
    return [self.page nextQuestion:self];
}

#pragma mark - Option handling

- (NSArray *)checkedOptions
{
    return [self.options filteredArrayUsingPredicate:[NSPredicate predicateWithFormat:@"checked == YES"]];
}

- (BOOL)toggleOption:(IQOption *)option
{
    option.checked = !option.checked;
    return option.checked;
}

#pragma mark - Validation

- (BOOL)valid 
{
    return YES;
}

@end

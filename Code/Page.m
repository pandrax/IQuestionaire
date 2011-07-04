//
//  Page.m
//  IQuestionaire
//
//  Created by Peter Friese on 15.06.11.
//  Copyright 2011 Peter Friese. All rights reserved.
//

#import "Page.h"

@implementation Page

@synthesize title;
@synthesize questions;

- (id)init {
    self = [super init];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

- (BOOL)valid {
    NSArray *inValidQuestions = [questions filteredArrayUsingPredicate:[NSPredicate predicateWithFormat:@"valid == NO"]];
    return ([inValidQuestions count] == 0);
}

@end

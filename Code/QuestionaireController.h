//
//  QuestionaireController.h
//  SampleQuestionaire
//
//  Created by Peter Friese on 7/6/11.
//  Copyright 2011 Peter Friese. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Questionaire.h"
#import "Page.h"

@class QuestionaireController;

@protocol QuestionaireControllerDelegate <NSObject>
- (NSString *)questionaire:(QuestionaireController *)questionaireController cellIdentifierForTableView:(UITableView *)tableView;
- (UITableViewCell *)questionaire:(QuestionaireController *)questionaireController createCellForTableView:(UITableView *)tableView;
- (void)questionaire:(QuestionaireController *)questionaireController tableView:(UITableView *)tableView customizeCell:(UITableViewCell *)cell withOption:(IQOption *)option forRowAtIndexPath:(NSIndexPath *)indexPath;
@end

@interface QuestionaireController : UIViewController

@property (nonatomic, retain) UINavigationController *navigationController;
@property (nonatomic, retain) Questionaire *questionaire;
@property (nonatomic, readonly) Page *currentPage;
@property (nonatomic) NSInteger currentPageIndex;
@property (nonatomic, assign) id<QuestionaireControllerDelegate> delegate;

- (id)initWithQuestionaire:(Questionaire *)questionaire;
- (void)navigateToNextPage:(Question *)question;

- (NSString *)cellIdentifier;
- (UITableViewCell *)createCell;
- (void)tableView:(UITableView *)tableView customizeCell:(UITableViewCell *)cell withOption:(IQOption *)option forRowAtIndexPath:(NSIndexPath *)indexPath;

@end

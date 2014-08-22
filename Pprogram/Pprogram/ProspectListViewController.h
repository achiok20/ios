//
//  ProspectListViewController.h
//  Pprogram
//
//  Created by teclalabs on 18/08/14.
//  Copyright (c) 2014 teclalabs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "User.h"
#import "Prospect.h"

@interface ProspectListViewController : UIViewController <UITableViewDataSource,UITableViewDelegate>
{
    User *usuario;
    Prospect *prospecto;
    NSDictionary *dictionary;
}
@property (strong, nonatomic) NSMutableArray *list;
@property (strong, nonatomic) NSMutableArray *colorStatus;
-(void)cargarUser:(User *)user;
-(void)cargarProspect:(Prospect *)prospect;

@end

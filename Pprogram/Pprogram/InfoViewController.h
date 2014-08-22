//
//  InfoViewController.h
//  Pprogram
//
//  Created by teclalabs on 14/08/14.
//  Copyright (c) 2014 teclalabs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "User.h"

@interface InfoViewController : UIViewController
{
    User *usuario;
}


-(void)cargarUser:(User *)user;

@end

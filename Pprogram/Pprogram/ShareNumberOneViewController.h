//
//  ShareNumberOneViewController.h
//  Pprogram
//
//  Created by teclalabs on 11/08/14.
//  Copyright (c) 2014 teclalabs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ShareSocial.h"
#import "User.h"

@interface ShareNumberOneViewController : UIViewController
{
    ShareSocial *share;
    User *usuario;
}

-(void)cargarMsg:(ShareSocial *)sharesocial;
-(void)cargarUser:(User *)user;

@end

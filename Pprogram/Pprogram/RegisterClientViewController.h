//
//  RegisterClientViewController.h
//  Pprogram
//
//  Created by teclalabs on 7/08/14.
//  Copyright (c) 2014 teclalabs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "User.h"

@interface RegisterClientViewController : UIViewController <UITextFieldDelegate>
{
    User *usuario;
}

-(void)cargarUser:(User *)user;
@end

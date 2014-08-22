//
//  ShareViewController.h
//  Pprogram
//
//  Created by teclalabs on 11/08/14.
//  Copyright (c) 2014 teclalabs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "User.h"

@interface ShareViewController : UIViewController
{
    User *usuario;
}
@property (weak, nonatomic) IBOutlet UIView *viewNumOne;
@property (weak, nonatomic) IBOutlet UIView *viewNumTwo;
@property (weak, nonatomic) IBOutlet UIView *viewNumThree;
@property (weak, nonatomic) IBOutlet UIView *viewNumFour;
@property (weak, nonatomic) IBOutlet UILabel *primertexto;
@property (weak, nonatomic) IBOutlet UILabel *tercertexto;
@property (weak, nonatomic) IBOutlet UILabel *cuartotexto;
@property (weak, nonatomic) IBOutlet UILabel *segundotexto;

-(void)cargarUser:(User *)user;
@end

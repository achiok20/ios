//
//  DetalleProspectViewController.h
//  Pprogram
//
//  Created by teclalabs on 21/08/14.
//  Copyright (c) 2014 teclalabs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Prospect.h"

@interface DetalleProspectViewController : UIViewController
{
    Prospect *prospecto;
}

-(void)cargarProspect:(Prospect *)prospect;

@end

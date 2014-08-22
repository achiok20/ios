//
//  ShareSocial.h
//  Pprogram
//
//  Created by teclalabs on 14/08/14.
//  Copyright (c) 2014 teclalabs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ShareSocial : NSObject
@property (nonatomic, strong) NSString *msg;


+(ShareSocial *)sharedInstance;
-(void)leerElmsg:(NSString *)msg;
@end

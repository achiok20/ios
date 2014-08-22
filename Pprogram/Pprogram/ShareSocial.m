//
//  ShareSocial.m
//  Pprogram
//
//  Created by teclalabs on 14/08/14.
//  Copyright (c) 2014 teclalabs. All rights reserved.
//

#import "ShareSocial.h"

@implementation ShareSocial

+(ShareSocial *)sharedInstance
{
    static ShareSocial *shareInstance=nil;
    if(shareInstance==nil){
        shareInstance=[[ShareSocial alloc] init];
    }
    return shareInstance;
}



-(void)leerElmsg:(NSString *)msg
{
    _msg=msg;
}
@end

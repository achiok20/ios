//
//  User.m
//  Pprogram
//
//  Created by teclalabs on 8/08/14.
//  Copyright (c) 2014 teclalabs. All rights reserved.
//

#import "User.h"

@implementation User


+(User *)sharedInstance
{
    static User *shareInstance=nil;
    if(shareInstance==nil){
        shareInstance=[[User alloc] init];
    }
    return shareInstance;
}

-(void)leerFromDic:(NSDictionary *)dic
{
    
    _fullname=[dic objectForKey:@"fullname"];
    _photo=[dic objectForKey:@"photo"];
    _identi=[[dic objectForKey:@"id"] intValue];
    _level=[[dic objectForKey:@"level"]intValue];
}

-(void)leerElid:(int)identi
{
    _identi=identi;
}

@end

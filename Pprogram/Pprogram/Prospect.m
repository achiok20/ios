//
//  Prospect.m
//  Pprogram
//
//  Created by teclalabs on 21/08/14.
//  Copyright (c) 2014 teclalabs. All rights reserved.
//

#import "Prospect.h"

@implementation Prospect

+(Prospect *)sharedInstance
{
    static Prospect *shareInstance=nil;
    if(shareInstance==nil){
        shareInstance=[[Prospect alloc] init];
    }
    return shareInstance;
}

-(void)leerFromDic:(NSDictionary *)dic
{
    
    _name=[dic objectForKey:@"nombre"];
    _lastname=[dic objectForKey:@"apellido"];
    _textprogress=[dic objectForKey:@"textprogress"];
    _progress=[[dic objectForKey:@"progress"]intValue];
    _comision=[[dic objectForKey:@"commission"]intValue];
}

@end

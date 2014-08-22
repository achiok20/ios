//
//  Prospect.h
//  Pprogram
//
//  Created by teclalabs on 21/08/14.
//  Copyright (c) 2014 teclalabs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Prospect : NSObject
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *lastname;
@property (nonatomic, strong) NSString *textprogress;
@property (nonatomic) int progress;
@property (nonatomic) int comision;

-(void)leerFromDic:(NSDictionary *)dictio;

@end

//
//  User.h
//  Pprogram
//
//  Created by teclalabs on 8/08/14.
//  Copyright (c) 2014 teclalabs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject

@property (nonatomic, strong) NSString *fullname;
@property (nonatomic, strong) NSString *photo;
@property (nonatomic) int identi;
@property (nonatomic) int level;

+(User *)sharedInstance;
-(void)leerFromDic:(NSDictionary *)dic;
-(void)leerElid:(int)identi;
@end

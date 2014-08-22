//
//  Annotation.h
//  MapaImagenesCamara
//
//  Created by teclalabs on 22/08/14.
//  Copyright (c) 2014 teclalabs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface Annotation : NSObject <MKAnnotation>
@property (nonatomic,assign)CLLocationCoordinate2D coordinate;
@property (nonatomic,copy) NSString *title;
@property (nonatomic,copy) NSString *subtitle;


@end

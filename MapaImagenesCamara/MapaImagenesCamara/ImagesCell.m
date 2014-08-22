//
//  ImagesCell.m
//  MapaImagenesCamara
//
//  Created by teclalabs on 22/08/14.
//  Copyright (c) 2014 teclalabs. All rights reserved.
//

#import "ImagesCell.h"

@implementation ImagesCell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.imageview=[[UIImageView alloc]init];
        self.imageview.image=[UIImage imageNamed:@"green"];
        [self.contentView addSubview:self.imageview];
    }
    return self;
}


-(void)layoutSubviews
{
    self.imageview.frame=self.contentView.bounds;
}


@end

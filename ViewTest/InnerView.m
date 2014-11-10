//
//  InnerView.m
//  ViewTest
//
//  Created by Cliff Spencer on 11/10/14.
//  Copyright (c) 2014 BilCo. All rights reserved.
//

#import "InnerView.h"

@implementation InnerView

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self sharedInit];
    }
    return self;
}

- (id) initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self sharedInit];
    }
    return self;
}

- (void)sharedInit
{
    
    [[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self.class) owner:self options:nil];
    [self addSubview:self.view];
}

@end

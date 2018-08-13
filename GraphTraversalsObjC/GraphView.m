//
//  GraphView.m
//  GraphTraversalsObjC
//
//  Created by Josh Marasigan on 8/12/18.
//  Copyright © 2018 Josh Marasigan. All rights reserved.
//

#import "GraphView.h"

@implementation GraphView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self configUI];
    }
    return self;
}

- (CGSize)intrinsicContentSize {
    return CGSizeMake(UIViewNoIntrinsicMetric, 200);
}

- (void)configUI {
        
    self->didSetConstraints = YES;
    
    [self withBlock:^(void){
        
    }];
}

- (void)updateConstraints {
    if (!self->didSetConstraints) {
        [self configUI];
    }
    // Update Constraints
    [super updateConstraints];
}

#pragma mark - Instrance Methods
- (void)withBlock: (void (^)(void))block {
}

@end

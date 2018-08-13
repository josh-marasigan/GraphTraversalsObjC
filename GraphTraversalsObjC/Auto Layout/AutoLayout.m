//
//  AutoLayout.m
//  GraphTraversalsObjC
//
//  Created by Josh Marasigan on 8/12/18.
//  Copyright © 2018 Josh Marasigan. All rights reserved.
//

#import "AutoLayout.h"

@implementation AutoLayout

+ (NSLayoutConstraint *)makeTopEqual:(UIView *)child to:(UIView *)parent {
    return [NSLayoutConstraint
            constraintWithItem:child
            attribute:NSLayoutAttributeTop
            relatedBy:NSLayoutRelationEqual
            toItem:parent
            attribute:NSLayoutAttributeTop
            multiplier: 1.0f
            constant: 0.f];
}

+ (NSLayoutConstraint *)makeBottomEqual:(UIView *)child to:(UIView *)parent {
    return [NSLayoutConstraint
            constraintWithItem:child
            attribute:NSLayoutAttributeBottom
            relatedBy:NSLayoutRelationEqual
            toItem:parent
            attribute:NSLayoutAttributeBottom
            multiplier: 1.0f
            constant: 0.f];
}

+ (NSLayoutConstraint *)makeLeadingEqual:(UIView *)child to:(UIView *)parent {
    return [NSLayoutConstraint
            constraintWithItem:child
            attribute:NSLayoutAttributeLeading
            relatedBy:NSLayoutRelationEqual
            toItem:parent
            attribute:NSLayoutAttributeLeading
            multiplier: 1.0f
            constant: 0.f];
}

+ (NSLayoutConstraint *)makeTrailingEqual:(UIView *)child to:(UIView *)parent {
    return [NSLayoutConstraint
            constraintWithItem:child
            attribute:NSLayoutAttributeTrailing
            relatedBy:NSLayoutRelationEqual
            toItem:parent
            attribute:NSLayoutAttributeTrailing
            multiplier: 1.0f
            constant: 0.f];
}

+ (NSLayoutConstraint *)makeWidthEqual:(UIView *)child
                                    to:(UIView *)parent
                            multiplier:(float)multiplier {
    return [NSLayoutConstraint
            constraintWithItem:child
            attribute:NSLayoutAttributeWidth
            relatedBy:NSLayoutRelationEqual
            toItem:parent
            attribute:NSLayoutAttributeWidth
            multiplier: multiplier
            constant: 0.f];
}
@end


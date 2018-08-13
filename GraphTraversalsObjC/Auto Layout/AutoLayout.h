//
//  AutoLayout.h
//  GraphTraversalsObjC
//
//  Created by Josh Marasigan on 8/12/18.
//  Copyright © 2018 Josh Marasigan. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface AutoLayout : NSLayoutConstraint
+(NSLayoutConstraint *) makeTopEqual: (UIView *)child to:(UIView *)parent;
+(NSLayoutConstraint *) makeBottomEqual: (UIView *)child to:(UIView *)parent;
+(NSLayoutConstraint *) makeLeadingEqual: (UIView *)child to:(UIView *)parent;
+(NSLayoutConstraint *) makeTrailingEqual: (UIView *)child to:(UIView *)parent;
+(NSLayoutConstraint *) makeWidthEqual: (UIView *)child
                                    to:(UIView *)parent
                            multiplier:(float)multiplier;

@end

NS_ASSUME_NONNULL_END


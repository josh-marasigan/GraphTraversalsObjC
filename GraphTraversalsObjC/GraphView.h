//
//  GraphView.h
//  GraphTraversalsObjC
//
//  Created by Josh Marasigan on 8/12/18.
//  Copyright © 2018 Josh Marasigan. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface GraphView : UIView {
    BOOL didSetConstraints;
}

// ( [returnType] [^nullability] [parameterTypes] ) [blockName]
- (void)withBlock: (void (^) (void))block;

@end

NS_ASSUME_NONNULL_END

//
//  ViewController.h
//  GraphTraversalsObjC
//
//  Created by Josh Marasigan on 8/12/18.
//  Copyright © 2018 Josh Marasigan. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum {
    GraphTypeBinaryTree = 0,
    GraphTypeMatrix,
    GraphTypeUnidirectionalGraph,
    GraphTypeCyclicalGraph
} GraphType;

typedef NS_ENUM(NSInteger, GraphErrorType) {
    ErrorCaseInvalidArgument,
    ErrorCaseInvalidParameters
};

typedef void(^ToggleColorsBlock)(UIColor* color1, UIColor* color2);

@interface ViewController : UIViewController {
    ToggleColorsBlock toggleColors;
}

@property (nonatomic, weak) UIView * randomView;
@property (nonatomic, assign) int randomValue;
@property (nonatomic, copy) ToggleColorsBlock toggleColors;

@end

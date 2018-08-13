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

typedef void(^ToggleColorsBlock)(UIColor*, UIColor*);

@interface ViewController : UIViewController {
    ToggleColorsBlock toggleColors;
}

@property (nonatomic, copy) ToggleColorsBlock toggleColors;

@end

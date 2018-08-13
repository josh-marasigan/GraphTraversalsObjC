//
//  ViewController.m
//  GraphTraversalsObjC
//
//  Created by Josh Marasigan on 8/12/18.
//  Copyright © 2018 Josh Marasigan. All rights reserved.
//

#import "ViewController.h"
#import "AutoLayout.h"

// Category
@interface ViewController () {
    UIView * container;
    UILabel * label;
}

@end

@implementation ViewController
@synthesize toggleColors;

#pragma mark - Lazy Instantiation for instance vars
- (UIView *)setContainer {
    UIView * container = [[UIView alloc] initWithFrame:CGRectZero];
    UITapGestureRecognizer * onTap = [[UITapGestureRecognizer alloc]
                                      initWithTarget:self
                                      action: @selector(onTap)];
    
    UISwipeGestureRecognizer * onSwipe = [[UISwipeGestureRecognizer alloc]
                                            initWithTarget:self
                                            action:@selector(animateBackground)
                                            ];
    
    onSwipe.direction = (UISwipeGestureRecognizerDirectionUp |
                         UISwipeGestureRecognizerDirectionDown |
                         UISwipeGestureRecognizerDirectionLeft |
                         UISwipeGestureRecognizerDirectionRight);
    
    [container addGestureRecognizer : onTap];
    [container addGestureRecognizer : onSwipe];
    
    container.backgroundColor = UIColor.cyanColor;
    container.center = self.view.center;
    return container;
}

- (UILabel *)setLabel {
    UILabel * label = [[UILabel alloc] init];
    label.text = @"Tap to traverse view hierarchy. \n Swipe to change background color.";
    label.lineBreakMode = NSLineBreakByWordWrapping;
    label.numberOfLines = 0;
    label.font = [UIFont systemFontOfSize: 28 weight:UIFontWeightBold];
    label.textColor = UIColor.whiteColor;
    return label;
}

# pragma mark - VC Lifecycle
- (void)viewDidLoad {
    [super viewDidLoad];
    [self initParams];
    [self configUI];
}

- (void) initParams {
    container = [self setContainer];
    label = [self setLabel];
    self.randomValue = 100;
}

- (void) configUI {
    [self setToggleColors:^(UIColor *color1, UIColor *color2) {
        NSLog(@"Color 1");
        NSLog(@"%@",color1.debugDescription);
        NSLog(@"Color 2");
        NSLog(@"%@",color2.debugDescription);
    }];
    [self configParentViews];
    [self configChildViews];
}

#pragma mark - Auto Layout
- (void) configParentViews {
    container.translatesAutoresizingMaskIntoConstraints = NO;
    UIView *subView = container;
    UIView *parent = self.view;
    
    [[self view] addSubview: container];
    NSLayoutConstraint *top = [AutoLayout makeTopEqual:subView to:parent];
    NSLayoutConstraint *leading = [AutoLayout makeLeadingEqual:subView to:parent];
    NSLayoutConstraint *trailing = [AutoLayout makeTrailingEqual:subView to:parent];
    NSLayoutConstraint *bottom = [AutoLayout makeBottomEqual:subView to:parent];
    
    NSArray *constraints = [[NSArray alloc] initWithObjects: top, leading, trailing, bottom, nil];
    [parent addConstraints:constraints];
}

- (void) configChildViews {
    UIView * parent = container;
    label.translatesAutoresizingMaskIntoConstraints = NO;
    [label setTextAlignment: NSTextAlignmentCenter];
    
    [parent addSubview: label];
    NSLayoutConstraint *top = [AutoLayout makeTopEqual:label to:parent];
    NSLayoutConstraint *leading = [AutoLayout makeLeadingEqual:label to:parent];
    NSLayoutConstraint *trailing = [AutoLayout makeTrailingEqual:label to:parent];
    NSLayoutConstraint *bottom = [AutoLayout makeBottomEqual:label to:parent];
    NSArray *constraints = [[NSArray alloc] initWithObjects: top, leading, trailing, bottom, nil];
    [parent addConstraints: constraints];
}

#pragma mark - Actions
- (void) onTap {
    int (^printThis)(void) = ^ int (void) {
        return self.randomValue;
    };
    
    int (^multiplyBlock)(int, int) = ^ int (int firstVal, int secondVal) {
        return firstVal * secondVal;
    };
    
    int result = multiplyBlock(7,7);
    NSLog(@"The result is %d", result);
    
    int this = printThis();
    NSLog(@"This result is %d", this);
    
    NSLog(@"On Tap");
    [self traverse: container count: 0];
}

- (void) traverse: (UIView *)view count:(int)count {
    NSLog(@"Traverse Graph");
}

- (void) animateBackground {
    toggleColors(UIColor.blueColor, UIColor.redColor);
    
    __weak ViewController * weakSelf = self;
    [UIView animateWithDuration: 0.75 animations:^{
        if (weakSelf == nil) { return; }
        ViewController * strongSelf = weakSelf;
        
        BOOL isGray = strongSelf->container.backgroundColor == UIColor.grayColor;
        UIColor * newColor = isGray ? UIColor.cyanColor : UIColor.grayColor;
        [strongSelf->container setBackgroundColor : newColor];
        [strongSelf.view layoutIfNeeded];
    }];
}

@end

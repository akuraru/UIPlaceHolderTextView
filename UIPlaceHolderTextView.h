//
//  UIPlaceHolderTextView.h
//  Matrix
//
//  Created by Justin on 12-9-18.
//  Copyright (c) 2012年 apple.inc. All rights reserved.
//

// Note: code from SSToolKit

#import <UIKit/UIKit.h>

@interface UIPlaceHolderTextView : UITextView

- (NSString *)placeholder;
- (void)setPlaceholder:(NSString *)placeholder;

- (UIColor *)placeholderTextColor;
- (void)setPlaceholderTextColor:(UIColor *)placeholderTextColor;

@end

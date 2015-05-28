//
//  UIPlaceHolderTextView.m
//  Matrix
//
//  Created by Justin on 12-9-18.
//  Copyright (c) 2012年 apple.inc. All rights reserved.
//

#import "UIPlaceHolderTextView.h"
#import "Masonry.h"

@interface UIPlaceHolderTextView ()
@property(weak, nonatomic) UILabel *placeholderLabel;
@end

@implementation UIPlaceHolderTextView

#pragma mark - Accessors

- (void)setText:(NSString *)string {
    [super setText:string];
    [self setNeedsDisplay];
}


- (void)insertText:(NSString *)string {
    [super insertText:string];
    [self setNeedsDisplay];
}


- (void)setAttributedText:(NSAttributedString *)attributedText {
    [super setAttributedText:attributedText];
    [self setNeedsDisplay];
}

- (void)setContentInset:(UIEdgeInsets)contentInset {
    [super setContentInset:contentInset];
    [self setNeedsDisplay];
}


- (void)setFont:(UIFont *)font {
    [super setFont:font];
    [self setNeedsDisplay];
}


- (void)setTextAlignment:(NSTextAlignment)textAlignment {
    [super setTextAlignment:textAlignment];
    [self setNeedsDisplay];
}


#pragma mark - NSObject

- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UITextViewTextDidChangeNotification object:self];
}


#pragma mark - UIView

- (id)initWithCoder:(NSCoder *)aDecoder {
    if ((self = [super initWithCoder:aDecoder])) {
        [self _initialize];
    }
    return self;
}


- (id)initWithFrame:(CGRect)frame {
    if ((self = [super initWithFrame:frame])) {
        [self _initialize];
    }
    return self;
}


- (void)drawRect:(CGRect)rect {
    [super drawRect:rect];

    self.placeholderLabel.hidden = !(self.text.length == 0 && self.placeholder);
}

#pragma mark - Private

- (void)_initialize {
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(_textChanged:) name:UITextViewTextDidChangeNotification object:self];
    UILabel *label = [[UILabel alloc] init];
    [self addSubview:label];

    self.placeholderLabel = label;
    self.placeholderLabel.text = nil;
    self.placeholderLabel.textColor = [UIColor colorWithWhite:0.702f alpha:1.0f];
    __weak typeof(self) this = self;
    [self.placeholderLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(this).with.offset(8.0);
    }];
}

- (void)_textChanged:(NSNotification *)notification {
    [self setNeedsDisplay];
}

- (NSString *)placeholder {
    return self.placeholderLabel.text;
}

- (void)setPlaceholder:(NSString *)placeholder {
    self.placeholderLabel.text = placeholder;
}

- (UIColor *)placeholderTextColor {
    return self.placeholderLabel.textColor;
}

- (void)setPlaceholderTextColor:(UIColor *)placeholderTextColor {
    self.placeholderLabel.textColor = placeholderTextColor;
}

@end

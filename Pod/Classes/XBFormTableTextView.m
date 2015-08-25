//
//  XBFormTableTextView.m
//  Pods
//
//  Created by Binh Nguyen Xuan on 8/25/15.
//
//

#import "XBFormTableTextView.h"
#import "XBForm.h"

@implementation XBFormTableTextView
@synthesize titleLabel = _titleLabel, valueTextView = _valueTextView;
@synthesize title = _title, value = _value, name = _name;
@synthesize preferedHeight = _preferedHeight;

#pragma mark - Protocol Function

- (void)setTitle:(NSString *)title
{
    _title = title;
    self.titleLabel.text = _title;
}

- (void)setValue:(NSString *)value
{
    _value = value;
    self.valueTextView.text = _value;
}

- (NSString *)value
{
    _value = self.valueTextView.text;
    return _value;
}

- (NSArray *)invalidate
{
    return nil;
}

+ (NSString *)identifier
{
    return @"textview";
}

#pragma mark - Default function

- (void)awakeFromNib
{
    _preferedHeight = 150;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
}

@end

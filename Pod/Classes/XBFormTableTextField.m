//
//  XBFormTableTextField.m
//  Pods
//
//  Created by Binh Nguyen Xuan on 8/25/15.
//
//

#import "XBFormTableTextField.h"
#import "XBForm.h"

@implementation XBFormTableTextField
@synthesize titleLabel = _titleLabel, valueTextField = _valueTextField;
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
    self.valueTextField.text = _value;
}

- (NSString *)value
{
    _value = self.valueTextField.text;
    return _value;
}

- (NSArray *)invalidate
{
    return nil;
}

+ (NSString *)identifier
{
    return @"textfield";
}

#pragma mark - Default function

- (void)awakeFromNib
{
    _preferedHeight = 44;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
}


@end

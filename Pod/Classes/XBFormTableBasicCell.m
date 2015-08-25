//
//  XBFormTableBasicCell.m
//  Pods
//
//  Created by Binh Nguyen Xuan on 8/25/15.
//
//

#import "XBFormTableBasicCell.h"
#import "XBForm.h"

@implementation XBFormTableBasicCell

+ (instancetype)cell
{
    NSString *xibName = [XBForm sharedInstance].interfaceConfig[[self identifier]][@"xib"];
    
    NSString *xibPath = [[NSBundle mainBundle] pathForResource:xibName ofType:@"nib"];
    if (xibPath)
    {
        NSArray *elements = [[NSBundle mainBundle] loadNibNamed:xibName owner:nil options:nil];
        return [elements lastObject];
    }
    
    NSString *bundlePath = [[NSBundle mainBundle] pathForResource:@"XBForm" ofType:@"bundle"];
    NSBundle *bundle = [NSBundle bundleWithPath:bundlePath];
    NSArray *elements = [bundle loadNibNamed:xibName owner:nil options:nil];
    return [elements lastObject];
}

+ (NSString *)identifier
{
    return @"basiccell";
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end

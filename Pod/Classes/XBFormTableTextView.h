//
//  XBFormTableTextView.h
//  Pods
//
//  Created by Binh Nguyen Xuan on 8/25/15.
//
//

#import <UIKit/UIKit.h>
#import "XBFormTableBasicCell.h"

@interface XBFormTableTextView : XBFormTableBasicCell
{
    
}

@property (nonatomic, retain) IBOutlet UILabel *titleLabel;
@property (nonatomic, retain) IBOutlet UITextView *valueTextView;

@end

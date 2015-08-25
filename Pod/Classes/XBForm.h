//
//  XBForm.h
//  Pods
//
//  Created by Binh Nguyen Xuan on 8/25/15.
//
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "XBFormCellProtocol.h"

#import "XBFormTableBasicCell.h"
#import "XBFormTableTextField.h"
#import "XBFormTableTextView.h"

#import "XBFormViewProtocol.h"
#import "XBFormTable.h"

@interface XBForm : NSObject
{
    
}

@property (nonatomic, retain) NSMutableDictionary *interfaceConfig;

+ (instancetype)sharedInstance;

@end

//
//  XBFormTable.h
//  Pods
//
//  Created by Binh Nguyen Xuan on 8/25/15.
//
//

#import <UIKit/UIKit.h>
#import "XBFormViewProtocol.h"
#import "TPKeyboardAvoidingTableView.h"

@interface XBFormTable : TPKeyboardAvoidingTableView <XBFormViewProtocol, UITableViewDelegate, UITableViewDataSource>
{
    
}

- (void)loadElements:(NSArray *)elementsForLoad;

@end

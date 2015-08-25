//
//  XBFormCellProtocol.h
//  Pods
//
//  Created by Binh Nguyen Xuan on 8/25/15.
//
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol XBFormCellProtocol <NSObject>

@property (nonatomic, retain) NSString *title;
@property (nonatomic, retain) NSString *value;
@property (nonatomic, retain) NSString *name;
@property (nonatomic, assign) CGFloat preferedHeight;

- (NSArray *)invalidate;
+ (NSString *)identifier;


@end

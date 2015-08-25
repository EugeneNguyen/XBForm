//
//  XBFormViewProtocol.h
//  Pods
//
//  Created by Binh Nguyen Xuan on 8/25/15.
//
//

#import <Foundation/Foundation.h>

@protocol XBFormViewProtocol <NSObject>

@property (nonatomic, retain) NSMutableArray *elements;

- (NSArray *)invalidates;
- (NSDictionary *)values;

@end

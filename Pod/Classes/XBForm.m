//
//  XBForm.m
//  Pods
//
//  Created by Binh Nguyen Xuan on 8/25/15.
//
//

#import "XBForm.h"
#import "XBExtension.h"

static XBForm *__sharedXBForm = nil;

@implementation XBForm
@synthesize interfaceConfig = _interfaceConfig;

+ (instancetype)sharedInstance
{
    if (!__sharedXBForm)
    {
        __sharedXBForm = [[XBForm alloc] init];
        [__sharedXBForm initInterfaceConfig];
    }
    return __sharedXBForm;
}

- (void)initInterfaceConfig
{
    _interfaceConfig = [[NSDictionary dictionaryWithContentsOfPlist:@"XBFormType" bundleName:@"XBForm"] mutableCopy];
}

@end

//
//  XBFormTable.m
//  Pods
//
//  Created by Binh Nguyen Xuan on 8/25/15.
//
//

#import "XBFormTable.h"
#import "XBFormCellProtocol.h"
#import "XBForm.h"
#import "XBExtension.h"

@interface XBFormTable () <UITableViewDelegate, UITableViewDataSource>

@end

@implementation XBFormTable
@synthesize elements;

- (void)loadElements:(NSArray *)elementsForLoad
{
    elements = [@[] mutableCopy];
    for (NSDictionary *element in elementsForLoad) {
        NSString *class = [XBForm sharedInstance].interfaceConfig[element[@"type"]][@"class"];
        
        XBFormTableBasicCell *cell = [NSClassFromString(class) cell];
        cell.title = element[@"title"];
        cell.name = element[@"name"];
        if (element[@"preferedHeight"])
        {
            cell.preferedHeight = [element[@"preferedHeight"] floatValue];
        }
        [elements addObject:cell];
    }
    [self reloadData];
}

#pragma mark - Private Function

- (NSArray *)invalidates
{
    NSMutableArray *invalidates = [@[] mutableCopy];
    for (UITableViewCell <XBFormCellProtocol> *cell in elements)
    {
        [invalidates addObjectsFromArray:[cell invalidate]];
    }
    return invalidates;
}

- (NSDictionary *)values
{
    NSMutableDictionary *values = [@{} mutableCopy];
    for (UITableViewCell <XBFormCellProtocol> *cell in elements)
    {
        [values setObject:cell.value forKey:cell.name];
    }
    return values;
}

#pragma mark - XBFormTableView

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [elements count];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell<XBFormCellProtocol> *cell = elements[indexPath.row];
    return cell.preferedHeight;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return elements[indexPath.row];
}

@end

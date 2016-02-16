//
//  NavViewCell.h
//  paperdiy_oc
//
//  Created by mac373 on 16/2/15.
//  Copyright © 2016年 rexfun. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NavViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *sectionId;
@property (weak, nonatomic) IBOutlet UILabel *sectionName;
@property (weak, nonatomic) IBOutlet UILabel *sectionQty;

- (void)setWithId:(NSString *)_id andName:(NSString *)_name andQty:(NSString *)_qty;
@end

//
//  NavViewCell.m
//  paperdiy_oc
//
//  Created by mac373 on 16/2/15.
//  Copyright © 2016年 rexfun. All rights reserved.
//

#import "NavViewCell.h"

@implementation NavViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setWithId:(NSString *)_id andName:(NSString *)_name andQty:(NSString *)_qty {
    self.sectionId.text = _id;
    self.sectionName.text = _name;
    self.sectionQty.text = _qty;
}
@end

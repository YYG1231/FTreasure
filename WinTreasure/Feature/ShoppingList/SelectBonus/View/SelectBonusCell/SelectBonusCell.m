//
//  SelectBonusCell.m
//  WinTreasure
//
//  Created by Apple on 16/6/21.
//  Copyright © 2016年 linitial. All rights reserved.
//

#import "SelectBonusCell.h"

@interface SelectBonusCell ()

@end

@implementation SelectBonusCell
+ (instancetype)cellWithTableView:(UITableView *)tableview {
    static NSString *cellID = @"SelectBonusCell";
    SelectBonusCell *cell = [tableview dequeueReusableCellWithIdentifier:cellID];
    if (!cell) {
        cell = (SelectBonusCell *)[[[NSBundle mainBundle] loadNibNamed:@"SelectBonusCell" owner:self options:nil] lastObject];
    }
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}

- (void)awakeFromNib {
    [super awakeFromNib];

    if ([self respondsToSelector:@selector(setLayoutMargins:)]) {
        [self setLayoutMargins:UIEdgeInsetsZero];
    }
//    _selectButton.hidden = YES;
}

- (void)setModel:(SelectBonusModel *)model {
    _model = model;
    _selectButton.selected = _model.isSelected;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

+ (CGFloat)height {
    return 125.0;
}

@end

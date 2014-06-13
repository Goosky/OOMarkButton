//
//  OOMarkButton.m
//  OOMarkButton
//
//  Created by BrureZCQ on 5/21/14.
//  Copyright (c) 2014 OpeningO,Inc ( http://openingo.github.io/ http://zhucongqi.cn/ ). All rights reserved.
//

#import "OOMarkButton.h"

@interface OOMarkButton ()
{
    MarkType _type;
}
@end

@implementation OOMarkButton

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self initButton];
    }
    return self;
}

- (id)init
{
    if (self = [super init]) {
        [self initButton];
    }
    return self;
}

- (void)dealloc
{
    [self downNotification];
}

- (void)initButton
{
    self.type = kCheckBoxButton;
    [self upNotification];
}

#pragma mark - Notification Obsever

- (void)upNotification
{
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(updateMarkState:) name:kMarkButtonChangeStateNotification object:nil];
}

- (void)downNotification
{
    [[NSNotificationCenter defaultCenter] removeObserver:self name:kMarkButtonChangeStateNotification object:nil];
}

#pragma mark - Update Style

- (void)setType:(MarkType)type
{
    _type = type;
    NSString *normalImgName = @"";
    NSString *selectImgName = @"";
    switch (type) {
        case kSingleRadioBoxButton:
        case kRadioBoxButton:
        {
            normalImgName = kRadioBoxUnCheckImage;
            selectImgName = kRadicBoxCheckedImage;
        }
            break;
        case kSingleCheckBoxButton:
        case kCheckBoxButton:
        {
            normalImgName = kCheckBoxUnCheckImage;
            selectImgName = kCheckBoxCheckedImage;
        }
            break;
    }
    
    [self setImage:[UIImage imageNamed:normalImgName]
          forState:UIControlStateNormal];
    [self setImage:[UIImage imageNamed:selectImgName]
          forState:UIControlStateSelected];
}

- (MarkType)type
{
    return _type;
}

- (void)updateMarkState:(NSNotification *)noti
{
    OOMarkButton *o = noti.object;
    if (self.type == kRadioBoxButton
        || self.type == kCheckBoxButton) {
        [self sameInstance:o];
        return;
    }
    
    if (o.type == self.type
        && o.groupId == self.groupId
        && ![o isEqual:self]) {
        self.selected = NO;
    }
    
    [self sameInstance:o];
}

- (void)sameInstance:(id)instance
{
    if ([instance isEqual:self]) {
        self.selected = !self.selected;
    }
}

@end

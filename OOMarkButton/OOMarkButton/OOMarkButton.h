//
//  OOMarkButton.h
//  OOMarkButton
//
//  Created by BrureZCQ on 5/21/14.
//  Copyright (c) 2014 OpeningO,Inc ( http://openingo.github.io/ http://zhucongqi.cn/ ). All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum : NSUInteger {
    kSingleRadioBoxButton,
    kSingleCheckBoxButton,
    kRadioBoxButton,
    kCheckBoxButton
} MarkType;

#define kMarkButtonChangeStateNotification  @"MarkButtonChangeStated"

#define kRadioBoxUnCheckImage       @"uncheckradio_icon"
#define kRadicBoxCheckedImage       @"checkradio_icon"
#define kCheckBoxUnCheckImage       @"checkbox_unchecked"
#define kCheckBoxCheckedImage       @"checkbox_checked"


@interface OOMarkButton : UIButton

@property (nonatomic, assign) MarkType type;
@property (nonatomic, assign) NSInteger groupId;

@end

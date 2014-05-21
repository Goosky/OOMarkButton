//
//  OOViewController.m
//  OOMarkButton
//
//  Created by BrureZCQ on 5/21/14.
//  Copyright (c) 2014 OpeningO,Inc ( http://openingo.github.io/ http://zhucongqi.cn/ ). All rights reserved.
//

#import "OOViewController.h"
#import "OOMarkButton/OOMarkButton.h"

@interface OOViewController ()

@end

@implementation OOViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (CGFloat)updateY:(CGFloat)y
{
    return y+20;
}

- (void)addMarkButtonsToGroupView:(UIView *)group index:(NSInteger)index groupId:(NSInteger)groupId
{
    
    CGFloat fontSize = 12;
    
    CGFloat y = 10;
    
    UILabel *grouptitle = [[UILabel alloc] initWithFrame:CGRectMake(5, 1, 160, 30)];
    grouptitle.text = [NSString stringWithFormat:@"Group%d",index];
    [group addSubview:grouptitle];
    
    UILabel *ll = [[UILabel alloc] initWithFrame:CGRectMake(5, y, 300, 50)];
    ll.text = @"kCheckBoxButton";
    ll.font = [UIFont systemFontOfSize:fontSize];
    [group addSubview:ll];
    y += 40;
    OOMarkButton *button0 = [[OOMarkButton alloc] initWithFrame:CGRectMake(5, y, 20, 20)];
    [button0 addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    button0.groupId = groupId;
    [group addSubview:button0];
    y += 20;
    OOMarkButton *button1 = [[OOMarkButton alloc] initWithFrame:CGRectMake(5, y, 20, 20)];
    [button1 addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    button1.groupId = groupId;
    [group addSubview:button1];
    
    y += 20;
    ll = [[UILabel alloc] initWithFrame:CGRectMake(5, y, 300, 50)];
    ll.text = @"kSingleCheckBoxButton";
    ll.font = [UIFont systemFontOfSize:fontSize];
    [group addSubview:ll];
    y += 40;
    OOMarkButton *button2 = [[OOMarkButton alloc] initWithFrame:CGRectMake(5, y, 20, 20)];
    [button2 addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    button2.type = kSingleCheckBoxButton;
    button2.groupId = groupId;
    [group addSubview:button2];
    y += 20;
    OOMarkButton *button3 = [[OOMarkButton alloc] initWithFrame:CGRectMake(5, y, 20, 20)];
    [button3 addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    button3.type = kSingleCheckBoxButton;
    button3.groupId = groupId;
    [group addSubview:button3];
    
    
    
    y += 20;
    ll = [[UILabel alloc] initWithFrame:CGRectMake(5, y, 300, 50)];
    ll.text = @"kRadioBoxButton";
    ll.font = [UIFont systemFontOfSize:fontSize];
    [group addSubview:ll];
    y += 40;
    OOMarkButton *button4 = [[OOMarkButton alloc] initWithFrame:CGRectMake(5, y, 20, 20)];
    [button4 addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    button4.type = kRadioBoxButton;
    button4.groupId = groupId;
    [group addSubview:button4];
    y += 20;
    OOMarkButton *button5 = [[OOMarkButton alloc] initWithFrame:CGRectMake(5, y, 20, 20)];
    [button5 addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    button5.type = kRadioBoxButton;
    button5.groupId = groupId;
    [group addSubview:button5];
    
    
    y += 20;
    ll = [[UILabel alloc] initWithFrame:CGRectMake(5, y, 300, 50)];
    ll.text = @"kSingleRadioBoxButton";
    ll.font = [UIFont systemFontOfSize:fontSize];
    [group addSubview:ll];
    y += 40;
    OOMarkButton *button6 = [[OOMarkButton alloc] initWithFrame:CGRectMake(5, y, 20, 20)];
    [button6 addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    button6.type = kSingleRadioBoxButton;
    button6.groupId = groupId;
    [group addSubview:button6];
    y += 20;
    OOMarkButton *button7 = [[OOMarkButton alloc] initWithFrame:CGRectMake(5, y, 20, 20)];
    [button7 addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    button7.type = kSingleRadioBoxButton;
    button7.groupId = groupId;
    [group addSubview:button7];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSInteger groupId = 100;
    
    UIView *group = [[UIView alloc] initWithFrame:CGRectMake(0, 40, 160, self.view.frame.size.height-100)];
    group.layer.borderColor = [UIColor lightGrayColor].CGColor;
    group.layer.borderWidth = 0.6;
    [self.view addSubview:group];
    
    
    [self addMarkButtonsToGroupView:group index:0 groupId:groupId];
    
    groupId = 101;
    
    group = [[UIView alloc] initWithFrame:CGRectMake(161, 40, 160, self.view.frame.size.height-100)];
    group.layer.borderColor = [UIColor lightGrayColor].CGColor;
    group.layer.borderWidth = 0.6;
    [self.view addSubview:group];
    
    
    [self addMarkButtonsToGroupView:group index:1 groupId:groupId];

    
}

- (void)click:(UIButton *)sender
{
    [[NSNotificationCenter defaultCenter] postNotificationName:kMarkButtonChangeStateNotification object:sender];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

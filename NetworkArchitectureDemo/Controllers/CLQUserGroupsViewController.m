//
//  UserProfileViewController.m
//  NetworkArchitectureDemo
//
//  Created by Alexander on 12/8/15.
//  Copyright © 2015 alexander. All rights reserved.
//

#import "CLQUserGroupsViewController.h"
#import "GroupTableViewCell.h"
#import "CLQGroupServices.h"

static NSString * const kGroupCellIdentifier = @"UserGroupTableViewCell";

@interface CLQUserGroupsViewController ()  <UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic, readonly) CLQGroupServices *service;
@property (strong, nonatomic) UITableView *groupsTableView;


@end

@implementation CLQUserGroupsViewController


- (instancetype)initWithService:(CLQGroupServices * const)service {

    if (self = [super init]) {
    
        _service = service;
    }
    
    return self;
}

- (void)loadView {

    UIView * const view = [UIView new];
    view.backgroundColor = [UIColor greenColor];
    self.view = view;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.groupsTableView = [[UITableView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    [self.view addSubview:self.groupsTableView];

    self.groupsTableView.translatesAutoresizingMaskIntoConstraints = NO;
    self.groupsTableView.rowHeight = UITableViewAutomaticDimension;
    self.groupsTableView.estimatedRowHeight = 170;
    
    //Add layout constraints
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-0-[tableView]-0-|"
                                                                      options:0
                                                                      metrics:nil
                                                                        views:@{@"tableView" : self.groupsTableView }]];
    
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-0-[tableView]-0-|"
                                                                      options:0
                                                                      metrics:nil
                                                                        views:@{@"tableView" : self.groupsTableView }]];
    
    self.groupsTableView.dataSource = self;
    self.groupsTableView.delegate = self;
    
    [self.groupsTableView registerNib:[UINib nibWithNibName:@"GroupTableViewCell"
                                                     bundle:nil]
               forCellReuseIdentifier:kGroupCellIdentifier];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    return 20;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    GroupTableViewCell * const cell = (GroupTableViewCell *)[tableView dequeueReusableCellWithIdentifier:kGroupCellIdentifier];
    //TO DO
    [cell updateForGroup: nil];
    return  cell;
}


@end

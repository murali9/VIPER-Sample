//
//  IOUsersListViewController.m
//  InteractionOneUsers
//
//  Created by Murali on 2/2/16.
//  Copyright © 2016 InteractionOne Solutions Pvt Ltd. All rights reserved.
//

#import "IOUsersListViewController.h"
#import "IOUser.h"

static NSString *UsersListCellIdentifier = @"List Cell";

@interface IOUsersListViewController () {
    NSArray *ioUsers;
}
@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation IOUsersListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    ioUsers = [[NSMutableArray alloc]init];
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:YES];
    [self.eventHandler updateView];
    self.navigationController.navigationBarHidden = YES;
}

- (IBAction)addUserAction:(id)sender {
    
    [self.eventHandler presentAddUserView];
}

- (void)showUsers:(NSArray *)users {
    ioUsers = users;
    [self.tableView reloadData];
}

#pragma mark - UITableViewDelegate and DataSource Methods

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [ioUsers count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    UITableViewCell  *cell = [tableView dequeueReusableCellWithIdentifier:UsersListCellIdentifier];
    
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:UsersListCellIdentifier];
    }
    
    IOUser *user = [ioUsers objectAtIndex:indexPath.row];
    cell.textLabel.text = user.empName;
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end

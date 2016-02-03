//
//  IOUsersListWireframe.m
//  InteractionOneUsers
//
//  Created by Murali on 2/1/16.
//  Copyright © 2016 InteractionOne Solutions Pvt Ltd. All rights reserved.
//

#import "IOUsersListWireframe.h"
#import "IOUsersListViewController.h"

@class IOLoginViewController;

static NSString *UserListViewControllerIdentifier = @"UserListVC";

@interface IOUsersListWireframe()
@property(strong,nonatomic)IOUsersListViewController *userListViewController;

@end

@implementation IOUsersListWireframe


- (void)presentUserListInterfaceFromViewController:(UIViewController *)viewController;
{
    IOUsersListViewController *userListViewController = [self userListViewControllelr];
    userListViewController.eventHandler = self.userListPresenter;
    self.userListPresenter.userListView = userListViewController;
    
    if ([viewController isKindOfClass:[UIViewController class]]) {
        if (viewController.navigationController) {
            [viewController.navigationController pushViewController:userListViewController animated:YES];
        }
        else {
            [viewController presentViewController:userListViewController animated:YES completion:nil];
        }
    }
    self.presentingViewController = userListViewController;
    self.userListViewController = userListViewController;
    
}


- (void)dismissUserListInterface
{
    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}

-(void)presentAddUserView {
    
    [self.addUserWireframe presentAddInterfaceFromViewController:self.userListViewController];
}

- (IOUsersListViewController *)userListViewControllelr
{
    UIStoryboard *storyboard = [self mainStoryboard];
    IOUsersListViewController *userListViewController = [storyboard instantiateViewControllerWithIdentifier:UserListViewControllerIdentifier];
    
    return userListViewController;
}


- (UIStoryboard *)mainStoryboard
{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main"
                                                         bundle:[NSBundle mainBundle]];
    
    return storyboard;
}
@end

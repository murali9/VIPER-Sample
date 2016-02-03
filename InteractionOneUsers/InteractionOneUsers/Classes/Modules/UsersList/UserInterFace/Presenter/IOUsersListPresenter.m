//
//  IOUsersListPresenter.m
//  InteractionOneUsers
//
//  Created by Murali on 2/1/16.
//  Copyright © 2016 InteractionOne Solutions Pvt Ltd. All rights reserved.
//

#import "IOUsersListPresenter.h"

@implementation IOUsersListPresenter

- (void)presentAddUserView {
    [self.userListWireframe presentAddUserView];
}

-(void)updateView {
    
    [self.userListInteractor fetchUsersListFromStore];
}

- (void)fetchedUser:(NSArray *)users {
    [self.userListView showUsers:users];
}

@end

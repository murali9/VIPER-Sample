//
//  IOUsersListInteractor.m
//  InteractionOneUsers
//
//  Created by Murali on 2/1/16.
//  Copyright © 2016 InteractionOne Solutions Pvt Ltd. All rights reserved.
//

#import "IOUsersListInteractor.h"

@implementation IOUsersListInteractor

-(void)fetchUsersListFromStore {
    
    [self.userListDataManager fetchAllUsersList:^(NSArray *items) {
        [self.userListPresenter fetchedUser:items];
    } failure:^(NSError *error) {
        
    }];
}

@end

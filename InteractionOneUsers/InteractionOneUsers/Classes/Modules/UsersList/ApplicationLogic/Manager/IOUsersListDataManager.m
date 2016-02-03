//
//  IOUsersListDataManager.m
//  InteractionOneUsers
//
//  Created by Murali on 2/1/16.
//  Copyright © 2016 InteractionOne Solutions Pvt Ltd. All rights reserved.
//

#import "IOUsersListDataManager.h"
#import "IOCoreDataServices.h"
#import "IOUser.h"
#import "Employee.h"

@implementation IOUsersListDataManager

- (void)fetchAllUsersList:(fetchSuccess)completion failure:(FetchFailure)failure {
    
    [[IOCoreDataServices sharedInstance] fetchRecordsWithPredicate:nil withEntitiyName:@"Employee" completion:^(NSArray *items) {
        completion([self listOfUsersFromStore:items]);
    } failure:^(NSError *error) {
        
    }];
}

- (void)fetchUsersListWithName:(NSString*)name success:(fetchSuccess)completion failure:(fetchSuccess)failure {
    
}

- (NSMutableArray *)listOfUsersFromStore:(NSArray *)items {
    NSMutableArray *usersList = [[NSMutableArray alloc]init];
    
    for (Employee *employee in items) {
        
        IOUser *user = [[IOUser alloc]init];
        user.empName = employee.name;
        user.empId = employee.empId;
        user.designation = employee.designation;
        user.location = employee.location;
        [usersList addObject:user];
    }
    return usersList;
}
@end

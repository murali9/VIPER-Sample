//
//  IOAddUserDataManager.m
//  InteractionOneUsers
//
//  Created by Murali on 2/2/16.
//  Copyright © 2016 InteractionOne Solutions Pvt Ltd. All rights reserved.
//

#import "IOAddUserDataManager.h"
#import "Employee.h"
#import "IOUser.h"
#import "IOCoreDataServices.h"

@implementation IOAddUserDataManager

- (void)addUser:(IOUser*)user {
    
    Employee *employeeEntity = (Employee*)[[IOCoreDataServices sharedInstance] createNewItemWithEntity:NSStringFromClass([Employee class])];
    employeeEntity.name = user.empName;
    employeeEntity.empId = user.empId;
    employeeEntity.designation = user.designation;
    employeeEntity.location = user.location;
    
    [[IOCoreDataServices sharedInstance] saveEntity:^(BOOL status) {
        
    }];
 }

@end

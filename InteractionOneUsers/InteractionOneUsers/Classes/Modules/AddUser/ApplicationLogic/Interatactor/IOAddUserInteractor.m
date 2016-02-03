//
//  IOAddUserInteractor.m
//  InteractionOneUsers
//
//  Created by Murali on 2/2/16.
//  Copyright © 2016 InteractionOne Solutions Pvt Ltd. All rights reserved.
//

#import "IOAddUserInteractor.h"
#import "IOUser.h"

@implementation IOAddUserInteractor

- (void)saveUserRecordWithName:(NSString*)name employeeId:(NSString*)employeeId designation:(NSString*)designation location:(NSString*)location {
    
    IOUser *user = [[IOUser alloc]init];
    user.empName = name;
    user.empId = employeeId;
    user.designation = designation;
    user.location = location;
    
    [self.addDataManager addUser:user];
}

@end

//
//  IOAddUserPresenter.m
//  InteractionOneUsers
//
//  Created by Murali on 2/2/16.
//  Copyright © 2016 InteractionOne Solutions Pvt Ltd. All rights reserved.
//

#import "IOAddUserPresenter.h"

@implementation IOAddUserPresenter

- (void)saveUserDetailsWithName:(NSString*)name employeeId:(NSString*)employeeId designation:(NSString*)designation location:(NSString*)location {
    
    [self.addUserInteracter saveUserRecordWithName:name employeeId:employeeId designation:designation location:location];
    [self.addUserWireframe popViewController];
}

@end

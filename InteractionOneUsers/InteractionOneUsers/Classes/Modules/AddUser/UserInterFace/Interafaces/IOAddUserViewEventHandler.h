//
//  IOAddUserViewEventHandler.h
//  InteractionOneUsers
//
//  Created by Murali on 2/2/16.
//  Copyright © 2016 InteractionOne Solutions Pvt Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol IOAddUserViewEventHandler <NSObject>
-(void)saveUserDetailsWithName:(NSString*)name employeeId:(NSString*)employeeId designation:(NSString*)designation location:(NSString*)location;
@end

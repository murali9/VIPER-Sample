//
//  IOUsersListDataManager.h
//  InteractionOneUsers
//
//  Created by Murali on 2/1/16.
//  Copyright © 2016 InteractionOne Solutions Pvt Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^fetchSuccess)(NSArray *items);
typedef void (^FetchFailure)(NSError *error);

@interface IOUsersListDataManager : NSObject

- (void)fetchAllUsersList:(fetchSuccess)completion failure:(FetchFailure)failure;
- (void)fetchUsersListWithName:(NSString*)name success:(fetchSuccess)completion failure:(fetchSuccess)failure;

@end

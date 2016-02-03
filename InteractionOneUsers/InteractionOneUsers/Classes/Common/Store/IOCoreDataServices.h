//
//  IOCoreDataServices.h
//  InteractionOneUsers
//
//  Created by Murali on 2/3/16.
//  Copyright © 2016 InteractionOne Solutions Pvt Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


typedef void (^SaveSuccessHandler)(BOOL status);

typedef void (^fetchSuccess)(NSArray *items);
typedef void (^FetchFailure)(NSError *error);

typedef void (^DeleteSuccessHandler)(BOOL status);
typedef void (^DeleteErrorHandler)(NSError *error);

@interface IOCoreDataServices : NSObject

+ (IOCoreDataServices*)sharedInstance;

- (void)saveEntity:(SaveSuccessHandler)completion;

-(void)fetchRecordsWithPredicate:(NSPredicate *)predicate  withEntitiyName:(NSString *)entity completion:(fetchSuccess) completion failure:(FetchFailure)failure;

-(void)DeleteRecordsFromCoredata:(NSString *)entityName withPredicate:(NSPredicate *)predicate deleteSuccess:(DeleteSuccessHandler)completion deleteFailure:(DeleteErrorHandler)failure;

- (NSManagedObject *)createNewItemWithEntity:(NSString*)entityName;


@end

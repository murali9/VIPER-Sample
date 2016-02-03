//
//  IOCoreDataServices.m
//  InteractionOneUsers
//
//  Created by Murali on 2/3/16.
//  Copyright © 2016 InteractionOne Solutions Pvt Ltd. All rights reserved.
//

#import "IOCoreDataServices.h"
#import "Employee.h"


@interface IOCoreDataServices()

@property (nonatomic, strong) NSPersistentStoreCoordinator *persistentStoreCoordinator;
@property (nonatomic, strong) NSManagedObjectModel *managedObjectModel;
@property (nonatomic, strong) NSManagedObjectContext *managedObjectContext;

@end

@implementation IOCoreDataServices


+ (IOCoreDataServices*)sharedInstance
{
    static dispatch_once_t predicate = 0;
    __strong static id sharedObject = nil;
    dispatch_once(&predicate, ^{
        sharedObject = [[self alloc] init];
        [sharedObject setUpStore];
    });
    return sharedObject;
}

- (void)setUpStore {
    
    _managedObjectModel = [NSManagedObjectModel mergedModelFromBundles:nil];
    
    _persistentStoreCoordinator = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:self.managedObjectModel];
    
    NSError *error = nil;
    NSURL *applicationDocumentsDirectory = [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] lastObject];
    NSDictionary *options = [NSDictionary dictionaryWithObjectsAndKeys:
                             [NSNumber numberWithBool:YES], NSMigratePersistentStoresAutomaticallyOption,
                             [NSNumber numberWithBool:YES], NSInferMappingModelAutomaticallyOption, nil];
    NSURL *storeURL = [applicationDocumentsDirectory URLByAppendingPathComponent:@"IOUsers.sqlite"];
    
    [_persistentStoreCoordinator addPersistentStoreWithType:NSSQLiteStoreType
                                              configuration:nil
                                                        URL:storeURL
                                                    options:options error:&error];
    
    _managedObjectContext = [[NSManagedObjectContext alloc] initWithConcurrencyType:NSMainQueueConcurrencyType];
    _managedObjectContext.persistentStoreCoordinator = self.persistentStoreCoordinator;
    _managedObjectContext.undoManager = nil;
    
    
}

- (void)fetchRecordsWithPredicate:(NSPredicate *)predicate  withEntitiyName:(NSString *)entity completion:(fetchSuccess) completion failure:(FetchFailure)failure {
    
    NSFetchRequest *fetch=[NSFetchRequest fetchRequestWithEntityName:entity];
    NSError* error = nil;
    NSArray *result=  [self.managedObjectContext executeFetchRequest:fetch error:&error];
    
    if (!error) {
        completion(result);
    }else {
        failure(error);
    }

}

- (void)DeleteRecordsFromCoredata:(NSString *)entityName withPredicate:(NSPredicate *)predicate deleteSuccess:(DeleteSuccessHandler)completion deleteFailure:(DeleteErrorHandler)failure {
    
    NSFetchRequest *request = [[NSFetchRequest alloc] initWithEntityName:entityName];
    
    [request setPredicate:predicate];
    
    NSError *error = nil;
    NSArray* results = [self.managedObjectContext executeFetchRequest:request error:&error];
    
    for (int i=0; i<results.count; i++)
    {
        [self.managedObjectContext deleteObject:[results objectAtIndex:i]];
    }
    
    //We should save the context into persistent store
    if (![self.managedObjectContext save:&error])
    {
        // handle error
        failure(error);
    }
    else
    {
        completion(YES);
    }
}

- (void)saveEntity:(SaveSuccessHandler)completion {
    
    NSError *error;
    BOOL status = [self.managedObjectContext save:&error];
    completion(status);
}

- (NSManagedObject *)createNewItemWithEntity:(NSString*)entityName
{
    NSEntityDescription *entityDescription = [NSEntityDescription entityForName:entityName
                                                         inManagedObjectContext:self.managedObjectContext];
    NSManagedObject *managedObject = [[NSManagedObject alloc] initWithEntity:entityDescription
                                                                  insertIntoManagedObjectContext:self.managedObjectContext];
    
    return managedObject;
}
@end

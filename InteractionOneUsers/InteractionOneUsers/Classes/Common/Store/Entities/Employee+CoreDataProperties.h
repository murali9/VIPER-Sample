//
//  Employee+CoreDataProperties.h
//  InteractionOneUsers
//
//  Created by Murali on 2/3/16.
//  Copyright © 2016 InteractionOne Solutions Pvt Ltd. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Employee.h"

NS_ASSUME_NONNULL_BEGIN

@interface Employee (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *name;
@property (nullable, nonatomic, retain) NSString *empId;
@property (nullable, nonatomic, retain) NSString *designation;
@property (nullable, nonatomic, retain) NSString *location;

@end

NS_ASSUME_NONNULL_END

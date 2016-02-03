//
//  IOLoginInteractor.h
//  InteractionOneUsers
//
//  Created by Murali on 2/1/16.
//  Copyright © 2016 InteractionOne Solutions Pvt Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IOLoginInteractorInterface.h"
#import "IOLoginPresenterInterface.h"

@interface IOLoginInteractor : NSObject<IOLoginPresenterInterface>
@property(weak,nonatomic)id<IOLoginInteractorInterface> presenter;

@end
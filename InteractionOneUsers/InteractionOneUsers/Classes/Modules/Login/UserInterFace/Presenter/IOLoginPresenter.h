//
//  IOLoginPresenter.h
//  InteractionOneUsers
//
//  Created by Murali on 2/1/16.
//  Copyright © 2016 InteractionOne Solutions Pvt Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IOLoginInteractor.h"
#import "IOLoginWireframe.h"
#import "IOLoginPresenterInterface.h"
#import "IOLoginViewEventHandlerInterface.h"
#import "IOLoginViewInterface.h"


@class IOLoginWireframe;
@class IOLoginPresenter;

@interface IOLoginPresenter : NSObject<IOLoginInteractorInterface,IOLoginViewEventHandlerInterface>

@property(nonatomic,strong)IOLoginWireframe *loginWireFrame;

@property(strong,nonatomic)id<IOLoginPresenterInterface> loginInteractor;
@property(strong,nonatomic)id<IOLoginViewInterface> loginView;


@end

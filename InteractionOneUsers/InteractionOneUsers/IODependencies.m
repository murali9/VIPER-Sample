//
//  IODependencies.m
//  InteractionOneUsers
//
//  Created by Murali on 2/1/16.
//  Copyright © 2016 InteractionOne Solutions Pvt Ltd. All rights reserved.
//


#import "IODependencies.h"

//Login
#import "IOLoginDataManager.h"
#import "IOLoginInteractor.h"
#import "IOLoginPresenter.h"
#import "IOLoginWireframe.h"

//User List
#import "IOUsersListDataManager.h"
#import "IOUsersListInteractor.h"
#import "IOUsersListPresenter.h"
#import "IOUsersListWireframe.h"

//Add User
#import "IOAddUserDataManager.h"
#import "IOAddUserInteractor.h"
#import "IOAddUserPresenter.h"
#import "IOAddUserWireframe.h"

@interface IODependencies ()

@property (nonatomic, strong) IOLoginWireframe *loginWireframe;

@end

@implementation IODependencies


- (void)configureDependencies {
    
    IOLoginWireframe *loginWireframe = [[IOLoginWireframe alloc] init];
    IOLoginInteractor *loginInteractor = [[IOLoginInteractor alloc] init];
    IOLoginPresenter *loginPresenter = [[IOLoginPresenter alloc] init];
//  IOLoginDataManager *loginDataManager = [[IOLoginDataManager alloc] init];
    
    IOUsersListWireframe *userListWireframe = [[IOUsersListWireframe alloc]init];
    IOUsersListInteractor *userListInteractor = [[IOUsersListInteractor alloc]init];
    IOUsersListPresenter *userListPresenter = [[IOUsersListPresenter alloc]init];
    IOUsersListDataManager *userListDataManager = [[IOUsersListDataManager alloc]init];
    
    IOAddUserWireframe *addUserWireframe = [[IOAddUserWireframe alloc]init];
    IOAddUserInteractor *addUserInteractor = [[IOAddUserInteractor alloc]init];
    IOAddUserPresenter *addUserPresenter = [[IOAddUserPresenter alloc]init];
    IOAddUserDataManager *addUserDataManager = [[IOAddUserDataManager alloc]init];

    
    //Assign dependencies
    
    loginPresenter.loginInteractor = loginInteractor;
    loginPresenter.loginWireFrame = loginWireframe;
    loginWireframe.loginPresentor = loginPresenter;
    loginWireframe.userListWireframe = userListWireframe;

    userListInteractor.userListPresenter = userListPresenter;
    userListPresenter.userListWireframe = userListWireframe;
    userListPresenter.userListInteractor = userListInteractor;
    userListWireframe.userListPresenter = userListPresenter;
    userListWireframe.addUserWireframe = addUserWireframe;
    userListInteractor.userListDataManager = userListDataManager;
    
    addUserPresenter.addUserInteracter = addUserInteractor;
    addUserInteractor.addUserPresenter = addUserPresenter;
    addUserInteractor.addDataManager = addUserDataManager;
    addUserWireframe.addUserPresenter = addUserPresenter;
    addUserPresenter.addUserWireframe = addUserWireframe;
    
    self.loginWireframe = loginWireframe;
    [self configure];
}

-(void)configure {
    [self.loginWireframe configureLoginView];

}


@end

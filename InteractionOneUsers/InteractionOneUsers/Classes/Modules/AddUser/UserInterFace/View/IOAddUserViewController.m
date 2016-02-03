//
//  IOAddUserViewController.m
//  InteractionOneUsers
//
//  Created by Murali on 2/2/16.
//  Copyright © 2016 InteractionOne Solutions Pvt Ltd. All rights reserved.
//

#import "IOAddUserViewController.h"

@interface IOAddUserViewController ()
@property (strong, nonatomic) IBOutlet UITextField *employeeNameTextField;
@property (strong, nonatomic) IBOutlet UITextField *employeeIdTextField;
@property (strong, nonatomic) IBOutlet UITextField *employeeDesignationTextField;
@property (strong, nonatomic) IBOutlet UITextField *employeeLocationTextField;


@end

@implementation IOAddUserViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.navigationController.navigationBarHidden = NO;

}

- (IBAction)saveAction:(id)sender {
    [self.eventHandler saveUserDetailsWithName:self.employeeNameTextField.text employeeId:self.employeeIdTextField.text designation:self.employeeDesignationTextField.text location:self.employeeLocationTextField.text];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

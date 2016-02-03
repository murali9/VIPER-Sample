//
//  IOLoginViewController.m
//  InteractionOneUsers
//
//  Created by Murali on 2/1/16.
//  Copyright © 2016 InteractionOne Solutions Pvt Ltd. All rights reserved.
//

#import "IOLoginViewController.h"
@interface IOLoginViewController ()

@property (strong, nonatomic) IBOutlet UITextField *userNameTextField;
@property (strong, nonatomic) IBOutlet UITextField *passwordTextField;

@end

@implementation IOLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.navigationController.navigationBarHidden = YES;
    
}
- (IBAction)submitButtonAction:(id)sender {
    
    [self.eventHandler loginWithUserName:self.userNameTextField.text password:self.passwordTextField.text];
}

-(void)showNoteView:(NSString*)info {

    UIView *noteView = [[UIView alloc]initWithFrame:CGRectMake(10, 20, 200, 40)];
    UILabel *infoLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 200, 20)];
    noteView.backgroundColor = [UIColor redColor];
    infoLabel.text = info;
    [noteView addSubview:infoLabel];
    [self.view addSubview:noteView];
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

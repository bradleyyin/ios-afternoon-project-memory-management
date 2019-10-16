//
//  ViewController.m
//  Contacts MRC
//
//  Created by Bradley Yin on 10/16/19.
//  Copyright © 2019 bradleyyin. All rights reserved.
//

#import "BYContactDetailViewController.h"
#import "BYContact.h"
#import "BYContactController.h"

@interface BYContactDetailViewController ()

@property (retain, nonatomic) IBOutlet UITextField *nameTextField;
@property (retain, nonatomic) IBOutlet UITextField *phoneTextField;
@property (retain, nonatomic) IBOutlet UITextField *emailTextField;


@end

@implementation BYContactDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    if (self.contact) {
        self.nameTextField.text = self.contact.name;
        self.phoneTextField.text = self.contact.phoneNumber;
        self.emailTextField.text = self.contact.email;
    }
}


- (void)dealloc {
    [_nameTextField release];
    _nameTextField = nil;
    [_phoneTextField release];
    _phoneTextField = nil;
    [_emailTextField release];
    _emailTextField = nil;
    [_controller release];
    _controller = nil;
    [_contact release];
    _contact = nil;
    [super dealloc];
}
@end

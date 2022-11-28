//
//  ViewController.h
//  ios1
//
//  Created by student on 28/11/2022.
//  Copyright © 2022 SM. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondViewControler.h"

@interface ViewController : UIViewController <SecondViewControllerDelagate> ;
@property (nonatomic, weak) IBOutlet UILabel *messageLabel;
@property (nonatomic, weak) IBOutlet UITextField *inputField;
@property (nonatomic, weak) IBOutlet UITextField *surnameTextField;
-(IBAction)enter;
@end


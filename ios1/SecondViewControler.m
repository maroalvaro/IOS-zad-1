//
//  SecondViewControler.m
//  ios1
//
//  Created by student on 28/11/2022.
//  Copyright © 2022 SM. All rights reserved.
//

#import "SecondViewControler.h"

@interface SecondViewControler ()

@end

@implementation SecondViewControler

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
     self.modifiSurnameTextField.text = self.surname;
}

- (IBAction)something {
    NSString *itemToPassBack = self.modifiSurnameTextField.text;
    [self.delegate addItemViewController:self didFinishEnteringItem: itemToPassBack];
    [self dismissViewControllerAnimated:YES completion:nil];
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

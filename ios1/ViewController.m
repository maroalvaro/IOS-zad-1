//
//  ViewController.m
//  ios1
//
//  Created by student on 28/11/2022.
//  Copyright © 2022 SM. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(IBAction)enter{
    NSString *yourName = self.inputField.text;
    
    NSString *myName = @"Marek";
    NSString *message;
    if([yourName length]==0){
        yourName = @"World";
    }
    if([yourName isEqualToString:myName]){
        message = [NSString stringWithFormat:@"Hello %@! We have the same name:)", yourName];
    }
    else{
        message = [NSString stringWithFormat:@"Hello %@!", yourName];
    }
    self.messageLabel.text = message;
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqualToString:@"sendSurnameSegue"]){
        SecondViewControler *controller = (SecondViewControler *) segue.destinationViewController;
        controller.surname = self.surnameTextField.text;
        controller.delegate = self;
    }
}

-(void) addItemViewController:(SecendViewController *)controller didFinishEnteringItem:(NSString *)item{
    NSLog(@"toooooo %@", item);
    self.surnameTextField.text = item;
}

@end

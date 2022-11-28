//
//  SecondViewControler.h
//  ios1
//
//  Created by student on 28/11/2022.
//  Copyright © 2022 SM. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class SecendViewController;
@protocol SecondViewControllerDelagate <NSObject>

-(void) addItemViewController: (SecendViewController *) controller didFinishEnteringItem: (NSString *) item;
@end

@interface SecondViewControler : UIViewController
@property (nonatomic, weak) id <SecondViewControllerDelagate> delegate;
@property (nonatomic, weak) IBOutlet UITextField *modifiSurnameTextField;

@property NSString *surname;
@end

NS_ASSUME_NONNULL_END

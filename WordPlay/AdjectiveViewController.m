//
//  AdjectiveViewController.m
//  WordPlay
//
//  Created by Cindy Barnsdale on 5/23/16.
//  Copyright © 2016 Salar Kohnechi. All rights reserved.
//

#import "AdjectiveViewController.h"
#import "NounViewController.h"
@interface AdjectiveViewController ()
@property (weak, nonatomic) IBOutlet UITextField *adjectiveTextField;

@end

@implementation AdjectiveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    NounViewController *dvc = segue.destinationViewController;
    dvc.adjective = self.adjectiveTextField.text;
    dvc.name = self.name;
}

-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender{
    if ([self.adjectiveTextField.text isEqualToString:@""]) {
        return NO;
    } else {
        return YES;
    }
}
@end

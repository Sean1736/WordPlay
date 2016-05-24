//
//  NounViewController.m
//  WordPlay
//
//  Created by Cindy Barnsdale on 5/23/16.
//  Copyright © 2016 Salar Kohnechi. All rights reserved.
//

#import "NounViewController.h"
#import "VerbViewController.h"
@interface NounViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nounTextField;

@end

@implementation NounViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
VerbViewController *dvc = segue.destinationViewController;
    dvc.name = self.name;
    dvc.adjective = self.adjective;
    dvc.noun = self.nounTextField.text;
}


-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender{
    if ([self.nounTextField.text isEqualToString:@""]) {
        return NO;
    } else {
        return YES;
    }
}
@end

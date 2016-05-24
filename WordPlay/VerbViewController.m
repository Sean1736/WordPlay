//
//  VerbViewController.m
//  WordPlay
//
//  Created by Cindy Barnsdale on 5/23/16.
//  Copyright © 2016 Salar Kohnechi. All rights reserved.
//

#import "VerbViewController.h"
#import "ResultViewController.h"

@interface VerbViewController ()
@property (weak, nonatomic) IBOutlet UITextField *verbTextField;

@end

@implementation VerbViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
ResultViewController *dvc = segue.destinationViewController;
    dvc.name = self.name;
    dvc.adjective = self.adjective;
    dvc.noun = self.noun;
    dvc.verb = self.verbTextField.text;
}

-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender{
    if ([self.verbTextField.text isEqualToString:@""]) {
        return NO;
    } else {
        return YES;
    }
}
@end

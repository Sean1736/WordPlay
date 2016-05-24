//
//  NameViewController.m
//  WordPlay
//
//  Created by Cindy Barnsdale on 5/23/16.
//  Copyright © 2016 Salar Kohnechi. All rights reserved.
//

#import "NameViewController.h"
#import "AdjectiveViewController.h"
@interface NameViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;

@end

@implementation NameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
//Code to tell the segue to bring us to the adjective page. dvc.name is referencing an NSString property in ajectiveviewcontroller.h which is imported into nameviewcontroller.h and is usable here in nameviewcontroller.m. self.nameTextField.text is in reference to the outlet above for the text field in storyboard.
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    AdjectiveViewController *dvc = segue.destinationViewController;
    dvc.name = self.nameTextField.text;
    
    
    // Code to return us back to the main page. Used on result page button start over.
}
-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender{
    if ([self.nameTextField.text isEqualToString:@""]) {
        return NO;
} else {
    return YES;
}
}


@end

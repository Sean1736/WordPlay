//
//  ResultViewController.m
//  WordPlay
//
//  Created by Cindy Barnsdale on 5/23/16.
//  Copyright © 2016 Salar Kohnechi. All rights reserved.
//

#import "ResultViewController.h"

@interface ResultViewController ()
@property (weak, nonatomic) IBOutlet UITextView *resultTextView;

@end

@implementation ResultViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.resultTextView.text = [NSString stringWithFormat:@"Your name is %@ and %@ %@ %@ %@", self.name, self.name, self.adjective, self.noun, self.verb];
}

@end

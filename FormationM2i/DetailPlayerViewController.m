//
//  detailPlayerViewController.m
//  FormationM2i
//
//  Created by admin on 30/09/2014.
//  Copyright (c) 2014 fr.proxiad.com. All rights reserved.
//

#import "DetailPlayerViewController.h"

@interface DetailPlayerViewController ()
@property (strong, nonatomic) IBOutlet UILabel *lastName;
@property (strong, nonatomic) IBOutlet UILabel *name;
@property (strong, nonatomic) IBOutlet UILabel *university;
@property (strong, nonatomic) IBOutlet UILabel *weight;
@property (strong, nonatomic) IBOutlet UILabel *size;
@property (strong, nonatomic) IBOutlet UIImageView *pictureImageView;

@end

@implementation DetailPlayerViewController
@synthesize player;

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    if(player != nil){
        self.name.text = player.firstName;
        self.lastName.text = player.lastName;
        self.university.text = player.university;
        self.weight.text = [NSString stringWithFormat:@"%d",[player.weight intValue]];
        self.size.text = [NSString stringWithFormat:@"%d",[player.size intValue]];
        
        if (player.pictureProfile != nil) {
            NSURL *url = [NSURL URLWithString:player.pictureProfile];
            NSData *data = [NSData dataWithContentsOfURL:url];
            UIImage *image = [[UIImage alloc] initWithData:data];
            [self.pictureImageView setImage:image];
        }
        
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

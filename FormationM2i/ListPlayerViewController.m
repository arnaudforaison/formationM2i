//
//  listPlayerViewController.m
//  FormationM2i
//
//  Created by admin on 30/09/2014.
//  Copyright (c) 2014 fr.proxiad.com. All rights reserved.
//

#import "ListPlayerViewController.h"

@interface ListPlayerViewController () <UITableViewDelegate,UITableViewDataSource,FilterPlayerDelegate>
@property (strong, nonatomic) IBOutlet UIPickerView *positions;
@property (strong, nonatomic) IBOutlet UITableView *players;
@property (strong, nonatomic) IBOutlet UILabel *emptyResult;
@property (strong, nonatomic) IBOutlet UILabel *positionLabel;

@end

@implementation ListPlayerViewController
@synthesize playersTeam;

// UiTableView
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [playersFiltered count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell* cell = [tableView dequeueReusableHeaderFooterViewWithIdentifier:@"cellPlayer"];
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"cellPlayer"];
    }
    
    Player* player = (Player*)[playersFiltered objectAtIndex:indexPath.row];
    NSString* labelPlayer = [[NSString alloc] initWithFormat:@"%@ %@",player.name,player.lastName];
    cell.textLabel.text = labelPlayer;
    cell.detailTextLabel.text = [[NSString alloc] initWithFormat:@"%@",[Player getPostionWithPosition:player.position]];
    NSLog(@"%@ %@",player.name,player.lastName);
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    playerSelected = (Player*)[playersFiltered objectAtIndex:indexPath.row];
    [self performSegueWithIdentifier:@"OpenPlayer" sender:nil];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    DetailPlayerViewController* detailPlayerViewController = segue.destinationViewController;
    detailPlayerViewController.title = @"Player";
    detailPlayerViewController.player = playerSelected;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    [self emptyPlayer];
    
    UIBarButtonItem *rightBarButtonItem = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemSearch target:self action:@selector(filter:)];
    self.navigationItem.rightBarButtonItem = rightBarButtonItem;
}

- (void) emptyPlayer{
    if(playersFiltered == nil || [playersFiltered count] == 0){
        self.players.hidden = YES;
        self.positions.hidden = YES;
        self.positionLabel.hidden = YES;
        self.emptyResult.hidden = NO;
    } else {
        self.players.hidden = NO;
        self.positions.hidden = NO;
        self.positionLabel.hidden = NO;
        self.emptyResult.hidden = YES;
    }
}

- (void) initListPlayers {
    if(playersTeam != nil || [playersTeam count] > 0){
        playersFiltered = playersTeam;
    }
}

- (IBAction)filter:(id)sender {
    FilterPlayerViewController* filterPlayerViewController = [[FilterPlayerViewController alloc]initWithNibName:@"FilterPlayerViewController" bundle:nil];
    filterPlayerViewController.delegate = self;
    filterPlayerViewController.position = positionFiltered;
    [self presentViewController:filterPlayerViewController animated:YES completion:nil];
}

- (void)validateFilter:(enum positionEnum)position {
    NSLog(@"%@",[Player getPostionWithPosition:position]);
    
    positionFiltered = position;
    
    if(position == ALL){
        [self initListPlayers];
    } else {
        playersFiltered = [NSMutableArray new];
        for (Player* p in playersTeam) {
            if(p.position == position){
                [playersFiltered addObject:p];
            }
        }
    }
    
    [self emptyPlayer];
    [self.players reloadData];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

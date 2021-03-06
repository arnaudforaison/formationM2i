//
//  listTeamViewController.m
//  FormationM2i
//
//  Created by admin on 30/09/2014.
//  Copyright (c) 2014 fr.proxiad.com. All rights reserved.
//

#import "ListTeamViewController.h"

@interface ListTeamViewController () <UITableViewDelegate,UITableViewDataSource,UISearchBarDelegate>

@property (nonatomic,strong) NSMutableArray* teamsNFL;
@property (nonatomic,strong) TeamService* teamService;
@property (nonatomic,strong) PlayerService* playerService;

@property (nonatomic, strong) IBOutlet UITableView *mTableView;

@end

@implementation ListTeamViewController
@synthesize teamsNFL,teamService,playerService;

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        teamService = [TeamService new];
        playerService = [PlayerService new];
    }
    return self;
}

- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar {
    [filteredTeams removeAllObjects];
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"name CONTAINS[c] %@", searchBar.text];
    NSArray *tempArray = [teamsNFL filteredArrayUsingPredicate:predicate];
    filteredTeams = [NSMutableArray arrayWithArray:tempArray];
    [[self mTableView] reloadData];
    [searchBar resignFirstResponder];
    [searchBar setShowsCancelButton:YES animated:YES];
}

- (void)searchBarCancelButtonClicked:(UISearchBar *)searchBar
{
    [filteredTeams removeAllObjects];
    filteredTeams = [NSMutableArray arrayWithArray:teamsNFL];
    [[self mTableView] reloadData];
    [searchBar setText:@""];
    [searchBar resignFirstResponder];
    [searchBar setShowsCancelButton:NO animated:YES];
}

- (void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText {
    if ([searchText length] > 0) {
        [filteredTeams removeAllObjects];
        NSPredicate *predicate = [NSPredicate predicateWithFormat:@"name CONTAINS[c] %@", searchBar.text];
        NSArray *tempArray = [teamsNFL filteredArrayUsingPredicate:predicate];
        filteredTeams = [NSMutableArray arrayWithArray:tempArray];
        [[self mTableView] reloadData];
    } else {
        filteredTeams = [NSMutableArray arrayWithArray:teamsNFL];
        [[self mTableView] reloadData];
    }
}

// UiTableView
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [filteredTeams count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"teamCell"];
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"teamCell"];
    }
    
    Team* team = [filteredTeams objectAtIndex:indexPath.row];

    cell.textLabel.text = team.name;
    cell.detailTextLabel.text = team.city;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    teamSelected = (Team*)[teamsNFL objectAtIndex:indexPath.row];
    [self performSegueWithIdentifier:@"OpenTeam" sender:nil];
}

// Default methods
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self setEdgesForExtendedLayout:UIRectEdgeNone];
    teamsNFL = [teamService loadTeams];
    filteredTeams = [[NSMutableArray alloc] initWithArray:teamsNFL];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    UITabBarController *tabBarController = segue.destinationViewController;
    tabBarController.navigationItem.title = [[NSString alloc] initWithFormat:@"%@ %@",teamSelected.city,teamSelected.name];
    UINavigationController *navigationController = [[tabBarController viewControllers] objectAtIndex:0];
    ListPlayerViewController* listPlayerViewController = [[navigationController viewControllers] objectAtIndex:0];
    NSMutableArray* playersBySelectedTeam = [playerService playersFromTeamId:teamSelected.idTeam];
    if(playersBySelectedTeam != nil && [playersBySelectedTeam count] > 0){
        listPlayerViewController.playersTeam = playersBySelectedTeam;
    }
}

@end

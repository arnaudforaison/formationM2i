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

@property (nonatomic, strong) IBOutlet UITableView *mTableView;

@end

@implementation ListTeamViewController
@synthesize teamsNFL;

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        teamsNFL = [NSMutableArray new];
        [self initNFL];
        filteredTeams = [[NSMutableArray alloc] initWithArray:teamsNFL];
    }
    return self;
}

- (void) initNFL {
    
    Team* sanFrancisco = [[Team alloc] initWithName:@"49ers" AndCity:@"San Francisco"];
    
    Player* kapernick = [[Player alloc] initWithWeight:104 AndSize:194 AndUniversity:@"Wolf Pack Nevada" AndLastName:@"Kapernick" AndName:@"Colin" AndBirthday:@"03-11-1987" AndBirthCity:@"Milwaukee" AndBirthState:@"Wisconsin" AndBirthCountry:@"USA" AndSquad:Offense AndPicProfile:@"http://static.nfl.com/static/content/public/static/img/fantasy/transparent/200x200/KAE371576.png" AndPosition:QB];
    Player* boldin = [[Player alloc] initWithWeight:98 AndSize:185 AndUniversity:@"Seminoles Florida State" AndLastName:@"Boldin" AndName:@"Anquan" AndBirthday:@"03-10-1980" AndBirthCity:@"Pahokee" AndBirthState:@"Floride" AndBirthCountry:@"USA" AndSquad:Offense AndPicProfile:@"http://static.nfl.com/static/content/public/static/img/fantasy/transparent/200x200/BOL283010.png" AndPosition:WR];
    Player* gore = [[Player alloc] initWithWeight:98 AndSize:175 AndUniversity:@"Hurricanes Miami" AndLastName:@"Gore" AndName:@"Frank" AndBirthday:@"14-05-1983" AndBirthCity:@"Miami" AndBirthState:@"Floride" AndBirthCountry:@"USA" AndSquad:Offense AndPicProfile:@"http://static.nfl.com/static/content/public/static/img/fantasy/transparent/200x200/GOR411171.png" AndPosition:RB];
    Player* dawson = [[Player alloc] initWithWeight:91 AndSize:180 AndUniversity:@"Longhorns Texas" AndLastName:@"Dawson" AndName:@"Phil" AndBirthday:@"23-01-1975" AndBirthCity:@"West Palm Beach" AndBirthState:@"Floride" AndBirthCountry:@"USA" AndSquad:SpecialTeam AndPicProfile:nil AndPosition:K];
    Player* smith = [[Player alloc] initWithWeight:129 AndSize:193 AndUniversity:@"Tigers Missouri" AndLastName:@"Smith" AndName:@"Justin" AndBirthday:@"30-09-1979" AndBirthCity:@"Jefferson City" AndBirthState:@"Missouri" AndBirthCountry:@"USA" AndSquad:Defense AndPicProfile:nil AndPosition:DL];

    [sanFrancisco addPlayer:kapernick];
    [sanFrancisco addPlayer:boldin];
    [sanFrancisco addPlayer:gore];
    [sanFrancisco addPlayer:dawson];
    [sanFrancisco addPlayer:smith];
    
    Team* seatlle = [[Team alloc] initWithName:@"Seahawk" AndCity:@"Seattle"];
    Team* denver = [[Team alloc] initWithName:@"Broncos" AndCity:@"Denver"];
    Team* carolina = [[Team alloc] initWithName:@"Panthers" AndCity:@"Carolina"];
    Team* baltimore = [[Team alloc] initWithName:@"Ravens" AndCity:@"Baltimore"];
    Team* jacksonville = [[Team alloc] initWithName:@"Jaguars" AndCity:@"Jacksonville"];
    Team* newOrleans = [[Team alloc] initWithName:@"Saints" AndCity:@"New Orleans"];
    Team* stLouis = [[Team alloc] initWithName:@"Rams" AndCity:@"Saint Louis"];
    Team* chicago = [[Team alloc] initWithName:@"Bears" AndCity:@"Chicago"];
    Team* newEngland = [[Team alloc] initWithName:@"Patriots" AndCity:@"New England"];
    Team* washington = [[Team alloc] initWithName:@"Redskins" AndCity:@"Washington"];
    Team* minnesota = [[Team alloc] initWithName:@"Vikings" AndCity:@"Minnesota"];
    Team* indianapolis = [[Team alloc] initWithName:@"Colts" AndCity:@"Indianapolis"];
    Team* arizona = [[Team alloc] initWithName:@"Cardinals" AndCity:@"Arizona"];
    Team* atlanta = [[Team alloc] initWithName:@"Falcons" AndCity:@"Atlanta"];
    Team* buffalo = [[Team alloc] initWithName:@"Bills" AndCity:@"Buffalo"];
    Team* cincinnati = [[Team alloc] initWithName:@"Bengals" AndCity:@"Cincinnati"];
    Team* cleveland = [[Team alloc] initWithName:@"Browns" AndCity:@"Cleveland"];
    Team* detroit = [[Team alloc] initWithName:@"Lions" AndCity:@"Detroit"];
    Team* greenBay = [[Team alloc] initWithName:@"Packers" AndCity:@"Green Bay"];
    Team* houston = [[Team alloc] initWithName:@"Texans" AndCity:@"Houston"];
    Team* kansasCity = [[Team alloc] initWithName:@"Chiefs" AndCity:@"Kansas City"];
    Team* giants = [[Team alloc] initWithName:@"Giants" AndCity:@"New York"];
    Team* jets = [[Team alloc] initWithName:@"Jets" AndCity:@"New York"];
    Team* oakland = [[Team alloc] initWithName:@"Raiders" AndCity:@"Oakland"];
    Team* philadelphia = [[Team alloc] initWithName:@"Eagles" AndCity:@"Philadelphia"];
    Team* pittsburg = [[Team alloc] initWithName:@"Steelers" AndCity:@"Pittsburg"];
    Team* chargers = [[Team alloc] initWithName:@"Chargers" AndCity:@"San Diego"];
    Team* tempaBay = [[Team alloc] initWithName:@"Buccaneers" AndCity:@"Tempa Bay"];
    Team* tennessee = [[Team alloc] initWithName:@"Titans" AndCity:@"Tennessee"];
    Team* dallas = [[Team alloc] initWithName:@"Cowboys" AndCity:@"Dallas"];
    Team* miami = [[Team alloc] initWithName:@"Dolphins" AndCity:@"Miami"];

    [teamsNFL addObject: sanFrancisco];
    [teamsNFL addObject: seatlle];
    [teamsNFL addObject: denver];
    [teamsNFL addObject: carolina];
    [teamsNFL addObject: baltimore];
    [teamsNFL addObject: jacksonville];
    [teamsNFL addObject: newOrleans];
    [teamsNFL addObject: stLouis];
    [teamsNFL addObject: chicago];
    [teamsNFL addObject: newEngland];
    [teamsNFL addObject: washington];
    [teamsNFL addObject: minnesota];
    [teamsNFL addObject: indianapolis];
    [teamsNFL addObject: arizona];
    [teamsNFL addObject: atlanta];
    [teamsNFL addObject: buffalo];
    [teamsNFL addObject: cincinnati];
    [teamsNFL addObject: cleveland];
    [teamsNFL addObject: detroit];
    [teamsNFL addObject: greenBay];
    [teamsNFL addObject: houston];
    [teamsNFL addObject: kansasCity];
    [teamsNFL addObject: giants];
    [teamsNFL addObject: jets];
    [teamsNFL addObject: oakland];
    [teamsNFL addObject: philadelphia];
    [teamsNFL addObject: pittsburg];
    [teamsNFL addObject: chargers];
    [teamsNFL addObject: tempaBay];
    [teamsNFL addObject: tennessee];
    [teamsNFL addObject: dallas];
    [teamsNFL addObject: miami];
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
    UITableViewCell* cell = [tableView dequeueReusableHeaderFooterViewWithIdentifier:@"cell"];
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"cell"];
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
    NSLog(@"Nom de l'equipe : %@ et nb joueurs : %d",teamSelected.name,[teamSelected.players count]);
    listPlayerViewController.playersTeam = teamSelected.players;
    [listPlayerViewController initListPlayers];
}

@end

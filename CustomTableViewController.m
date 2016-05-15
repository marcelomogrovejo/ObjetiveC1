//
//  CustomTableViewController.m
//  FirstApp
//
//  Created by Marcelo Mogrovejo on 5/13/16.
//  Copyright © 2016 Marcelo Mogrovejo. All rights reserved.
//

#import "CustomTableViewController.h"
#import "DetailViewCell.h"

@interface CustomTableViewController ()

@property(strong, nonatomic) NSMutableArray *cellContent;

@end

@implementation CustomTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"Custom";
    self.view.backgroundColor = [UIColor blackColor];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    [self.tableView registerClass:[DetailViewCell class] forCellReuseIdentifier:@"MyCellId"];
    
    // Sets each cell height
    self.tableView.rowHeight = 120;
    
    // Defines the row items
    self.cellContent = [@[@"Movie1", @"Movie2", @"Movie3", @"Movie4", @"Movie5"] mutableCopy];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    DetailViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MyCellId" forIndexPath:indexPath];
    
    switch ([indexPath row]) {
        case 0:
            cell.detailImageView.image = [UIImage imageNamed:@"karatekid"];
            cell.mainTitle.text = [NSString stringWithFormat:@"Karate kid (1984)"];
            cell.votes.text = [NSString stringWithFormat:@"******"];
            cell.synopsis.text = [NSString stringWithFormat:@"A handyman/martial arts master agrees to teach a bullied boy karate and shows him that there is more to the martial art than fighting."];
            break;
        case 1:
            cell.detailImageView.image = [UIImage imageNamed:@"godfather"];
            cell.mainTitle.text = [NSString stringWithFormat:@"The God Father (1972)"];
            cell.votes.text = [NSString stringWithFormat:@"****"];
            cell.synopsis.text = [NSString stringWithFormat:@"The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son."];
            break;
        case 2:
            cell.detailImageView.image = [UIImage imageNamed:@"fastandfurious"];
            cell.mainTitle.text = [NSString stringWithFormat:@"Fast & Furious (2009)"];
            cell.votes.text = [NSString stringWithFormat:@"**"];
            cell.synopsis.text = [NSString stringWithFormat:@"Brian O'Conner, now working for the FBI in LA, teams up with Dominic Toretto to bring down a heroin importer by infiltrating his operation."];
            break;
        case 3:
            cell.detailImageView.image = [UIImage imageNamed:@"interstellar"];
            cell.mainTitle.text = [NSString stringWithFormat:@"Interstellar (2014)"];
            cell.votes.text = [NSString stringWithFormat:@"**********"];
            cell.synopsis.text = [NSString stringWithFormat:@"A team of explorers travel through a wormhole in space in an attempt to ensure humanity's survival."];
            break;
        default:
            cell.detailImageView.image = [UIImage imageNamed:@"starwarsvii"];
            cell.mainTitle.text = [NSString stringWithFormat:@"Star Wars: Episode VII - The Force is Awakens (2015)"];
            cell.votes.text = [NSString stringWithFormat:@"********"];
            cell.synopsis.text = [NSString stringWithFormat:@"Three decades after the defeat of the Galactic Empire, a new threat arises. The First Order attempts to rule the galaxy and only a ragtag group of heroes can stop them, along with the help of the Resistance."];
    }
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

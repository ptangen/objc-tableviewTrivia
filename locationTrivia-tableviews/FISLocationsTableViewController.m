//
//  FISLocationsTableViewController.m
//  locationTrivia-tableviews
//
//  Created by Paul Tangen on 4/30/17.
//  Copyright © 2017 Joe Burgess. All rights reserved.
//

#import "FISLocationsTableViewController.h"
#import "FISLocation.h"

@interface FISLocationsTableViewController ()

@end

@implementation FISLocationsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.accessibilityLabel = @"Locations Table";
    //self.accessibilityIdentifier =  = "Locations Table";
    
    self.locations = [[NSMutableArray alloc] init];
    
    FISTrivium *joeIsAmazing = [[FISTrivium alloc] initWithContent:@"Joe is amazing!"
                                                             likes:5];
    FISTrivium *markIsJustAlright = [[FISTrivium alloc] initWithContent:@"Mark is just alright."
                                                                  likes:1];
    FISTrivium *mossIsTheBoss = [[FISTrivium alloc] initWithContent:@"The boss is Moss."
                                                              likes:112358];
    

    FISLocation *empireState = [[FISLocation alloc] initWithName:@"Empire State Building"
                                           latitude:40.748729
                                          longitude:-73.985779  ];
    [empireState.trivia addObject:joeIsAmazing];
    [self.locations addObject:empireState];
    
    FISLocation *flatiron = [[FISLocation alloc] initWithName:@"Flatiron School"
                                        latitude:40.705545
                                       longitude:-74.013975];
    [flatiron.trivia addObject:markIsJustAlright];
    [self.locations addObject:flatiron];
    
    FISLocation *ladyLiberty = [[FISLocation alloc] initWithName:@"Statue of Liberty"
                                           latitude:40.689481
                                          longitude:-74.044441];
    [ladyLiberty.trivia addObject:mossIsTheBoss];
    [self.locations addObject:ladyLiberty];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//#warning Incomplete implementation, return the number of rows
    return [self.locations count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"prototype" forIndexPath:indexPath];
    
    FISLocation *location = (FISLocation *)self.locations[indexPath.row];
    cell.textLabel.text = location.name;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%lu", [location.trivia count]];
    
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

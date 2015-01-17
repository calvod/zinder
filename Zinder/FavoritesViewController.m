

#import "FavoritesViewController.h"

@interface FavoritesViewController ()

@end

@implementation FavoritesViewController

- (void) viewDidLoad {
    [super viewDidLoad];
    
    self.favoriteItems = [NSMutableArray array];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return self.favoriteItems.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier
                                                            forIndexPath:indexPath];
    
    Item *clothesItem = [self.favoriteItems objectAtIndex:indexPath.row];
    cell.textLabel.text = clothesItem.title;
    return cell;
}

#pragma mark - Table view delegate

- (void) tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath {
    BlogPost *blogPost = [self.blogPosts objectAtIndex:indexPath.row];
    
    //access the singleton application, that is our app itself
    UIApplication *application = [UIApplication sharedApplication];
    [application openURL:blogPost.url];
}

@end

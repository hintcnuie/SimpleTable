//
//  SimpleTableViewController.m
//  SimpleTable
//
//  Created by Chen on 13-12-8.
//  Copyright (c) 2013年 cocoaObjectclearnning. All rights reserved.
//

#import "SimpleTableViewController.h"
#import "SimpleTableCell.h"

@interface SimpleTableViewController ()
{
    NSArray *tableData;
    NSArray *thumbnails;
    NSArray *prepTime;
}
@end

@implementation SimpleTableViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    tableData = [NSArray arrayWithObjects:@"Egg Benedict", @"Mushroom Risotto", @"Full Breakfast", @"Hamburger", @"Ham and Egg Sandwich", @"Creme Brelee", @"White Chocolate Donut", @"Starbucks Coffee", @"Vegetable Curry", @"Instant Noodle with Egg", @"Noodle with BBQ Pork", @"Japanese Noodle with Pork", @"Green Tea", @"Thai Shrimp Cake", @"Angry Birds Cake", @"Ham and Cheese Panini",@"糖醋鲤鱼",@"九转大肠",@"汤爆双脆",@"百花大虾",@"蟹黄海参",@"德州扒鸡",@"神仙鸭子",@"一品豆腐", nil];
    thumbnails =[NSArray arrayWithObjects:@"egg_benedict.jpg", @"mushroom_risotto.jpg", @"full_breakfast.jpg", @"hamburger.jpg", @"ham_and_egg_sandwich.jpg", @"creme_brelee.jpg", @"white_chocolate_donut.jpg", @"starbucks_coffee.jpg", @"vegetable_curry.jpg", @"instant_noodle_with_egg.jpg", @"noodle_with_bbq_pork.jpg", @"japanese_noodle_with_pork.jpg", @"green_tea.jpg", @"thai_shrimp_cake.jpg", @"angry_birds_cake.jpg", @"ham_and_cheese_panini.jpg", @"tangculiyu.jpg",@"jiuzhuandachang.jpg",@"tangbaoshuangcui.jpg",@"baihuadaxia.jpg",@"xiehuanghaishen.jpeg",@"dezhoupaji.jpg",@"shenxianyazi.jpeg",@"yipindoufu.jpg",nil];
    // Initialize Preparation Time
    prepTime = [NSArray arrayWithObjects:@"30 min", @"30 min", @"20 min", @"30 min", @"10 min", @"1 hour", @"45 min", @"5 min", @"30 min", @"8 min", @"20 min", @"20 min", @"5 min", @"1.5 hour", @"4 hours", @"10 min",@"0.5 hour",@"0.5 hour",@"0.5 hour",@"0.5 hour",@"0.5 hour",@"0.5 hour",@"0.5 hour",@"0.5 hour", nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [tableData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
//    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    static NSString *simpleTableIdentifier = @"SimpleTableCell";
//    UITableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    SimpleTableCell *cell =(SimpleTableCell *)[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell==nil) {
//        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
        NSArray *nib =[[NSBundle mainBundle] loadNibNamed:@"SimpleTableCell" owner:self options:Nil];
        cell =[nib objectAtIndex:0];
    }
    NSLog(@"row:%d",indexPath.row);
    NSInteger row = indexPath.row;
    cell.nameLabel.text = [tableData objectAtIndex:row];
    cell.imageView.image = [UIImage imageNamed:[thumbnails objectAtIndex:row]];

    cell.propTimeLabel.text =[prepTime objectAtIndex:row];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 78;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *messageStr=(NSString *)[tableData objectAtIndex:indexPath.row];
    UIAlertView *messageAlert = [[UIAlertView alloc] initWithTitle:@"Row Selected" message:messageStr delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    
    [messageAlert show];
}
@end

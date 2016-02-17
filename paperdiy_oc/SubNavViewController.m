//
//  SubNavViewController.m
//  paperdiy_oc
//
//  Created by mac373 on 16/2/17.
//  Copyright © 2016年 rexfun. All rights reserved.
//

#import "SubNavViewController.h"

@interface SubNavViewController ()

@end

@implementation SubNavViewController

static NSString * const reuseIdentifier = @"DataCell";

- (void)viewDidLoad {
    [super viewDidLoad];
//    NSLog(@"_navId -> %@",_navId);
//    NSLog(@"_navName -> %@",_navName);
//    NSLog(@"_navQty -> %@",_navQty);
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
//    [self.collectionView registerClass:[SubNavViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
//    self.parentViewController.title = _navName;
    [self initView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)initView {
//    //初始化并显示进度圈
//    self.refreshControl = [[UIRefreshControl alloc] init];
//    [self.refreshControl addTarget:self action:@selector(reloadTableViewAction) forControlEvents:UIControlEventValueChanged];
//    [self.refreshControl beginRefreshing];
    //初始化数据
    self.subNavPresenter = [[SubNavPresenter alloc] initWithCollectionView:self.collectionView andNavId:_navId];
    [self reloadCollectionViewAction];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [self.subNavPresenter.models count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    SubNavViewCell *cell = (SubNavViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    [cell setWithModel:[self.subNavPresenter.models objectAtIndex:indexPath.row]];
    
    return cell;
}

#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/


#pragma mark - action
- (void)reloadCollectionViewAction {
    [self.subNavPresenter reloadCollectionView];
}

@end
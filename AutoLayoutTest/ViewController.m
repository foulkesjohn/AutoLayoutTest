//
//  ViewController.m
//  AutoLayoutTest
//
//  Created by John Foulkes on 16/07/2014.
//
//

#import "ViewController.h"
#import <ORStackView/ORStackView.h>
#import <UIView+FLKAutoLayout.h>
#import "TestView.h"

@interface ViewController ()

@property (nonatomic, strong) ORStackView *stackView;

@end

@implementation ViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
  
  self.stackView = [[ORStackView alloc] init];
  self.stackView.bottomMarginHeight = 0;
  
  TestView *view = [[TestView alloc] initWithFrame:CGRectMake(0, 0, 320, 100)];
  view.backgroundColor = [UIColor greenColor];
  [self.stackView addSubview:view withTopMargin:@"0" sideMargin:@"0"];
  
  [self.expandingView addSubview:self.stackView];
  [self.stackView alignToView:self.expandingView];
}

- (void)expandButtonPressed:(id)sender
{
  TestView *view = [[TestView alloc] initWithFrame:CGRectMake(0, 0, 320, 100)];
  view.backgroundColor = [UIColor purpleColor];
  [self.stackView addSubview:view withTopMargin:@"0" sideMargin:@"0"];
}

- (void)buttonPressed:(id)sender
{
  if (self.heightConstraint.constant > 0) {
    self.heightConstraint.constant = 0;
  } else {
   self.heightConstraint.constant = 50;
  }
}

@end
//
//  ViewController.h
//  AutoLayoutTest
//
//  Created by John Foulkes on 16/07/2014.
//
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, weak) IBOutlet NSLayoutConstraint *heightConstraint;
@property (nonatomic, weak) IBOutlet UIView *expandingView;
@property (nonatomic, weak) IBOutlet UIScrollView *scrollView;

- (IBAction)buttonPressed:(id)sender;
- (IBAction)expandButtonPressed:(id)sender;

@end

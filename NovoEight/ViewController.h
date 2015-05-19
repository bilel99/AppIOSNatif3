//
//  ViewController.h
//  NovoEight
//
//  Created by Bilel on 06/05/2014.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


/* SCROLLVIEW */
@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;
@property (nonatomic, strong) NSArray *imageArray; //.h
@property (strong, nonatomic) IBOutlet UIImageView *imageZoom1;
@property (strong, nonatomic) IBOutlet UIImageView *imageZoom2;
@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (strong, nonatomic) IBOutlet UIImageView *resGame;
@property (strong, nonatomic) IBOutlet UIImageView *imageRefImage;
@property (strong, nonatomic) IBOutlet UIImageView *footerBas;

@property (strong, nonatomic) IBOutlet UIImageView *spc;
@property (strong, nonatomic) IBOutlet UIImageView *ref;


/* VAR BUTTON */
@property (strong, nonatomic) IBOutlet UIButton *varIntroduction;
@property (strong, nonatomic) IBOutlet UIButton *varPurety;
@property (strong, nonatomic) IBOutlet UIButton *varReliability;
@property (strong, nonatomic) IBOutlet UIButton *varSummary;
@property (strong, nonatomic) IBOutlet UIButton *varRef;
@property (strong, nonatomic) IBOutlet UIButton *varHome;
@property (strong, nonatomic) IBOutlet UIButton *varInnovation;
@property (strong, nonatomic) IBOutlet UIButton *varPortability;
@property (strong, nonatomic) IBOutlet UIButton *varSPC;


/* BUTTON ACTION */
- (IBAction)showIntro:(id)sender;
- (IBAction)showReliability:(id)sender;
- (IBAction)showPurety:(id)sender;
- (IBAction)showPortability:(id)sender;
- (IBAction)showSumary:(id)sender;
- (IBAction)showSPC:(id)sender;
- (IBAction)showRef:(id)sender;
- (IBAction)showInnovation:(id)sender;
- (IBAction)showHome:(id)sender;


/* FUNCTION */
-(void)scrollToImageIndex:(int)index;



/* SLIDER */
@property (strong, nonatomic) IBOutlet UISlider *slider;
@property (strong, nonatomic) IBOutlet UISlider *slider2;
@property (strong, nonatomic) IBOutlet UISlider *slider3;
@property (strong, nonatomic) IBOutlet UISlider *slider4;


/* PAGE CONTROL */
@property (strong, nonatomic) IBOutlet UIPageControl *pageControl;


/* Var Button Secondary from UISlider */
@property (strong, nonatomic) IBOutlet UIButton *varHomeGreen;
@property (strong, nonatomic) IBOutlet UIButton *varIntroductionGrey;
@property (strong, nonatomic) IBOutlet UIButton *varReliabilityG;
@property (strong, nonatomic) IBOutlet UIButton *varPuretyG;
@property (strong, nonatomic) IBOutlet UIButton *varPortabilityG;
@property (strong, nonatomic) IBOutlet UIButton *varInnovationG;
@property (strong, nonatomic) IBOutlet UIButton *varSummaryG;


@end

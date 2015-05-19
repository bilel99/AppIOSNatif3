//
//  ViewController.m
//  NovoEight
//
//  Created by Bilel on 06/05/2014.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIScrollViewDelegate>

@end

@implementation ViewController
@synthesize scrollView;
@synthesize imageArray;
@synthesize imageZoom1;
@synthesize imageZoom2;
@synthesize imageView;
@synthesize resGame;


@synthesize slider;
@synthesize slider2;
@synthesize slider3;
@synthesize slider4;


@synthesize pageControl;
@synthesize imageRefImage;
@synthesize footerBas;
@synthesize ref;
@synthesize spc;


@synthesize varHome;
@synthesize varIntroduction;
@synthesize varReliability;
@synthesize varPurety;
@synthesize varPortability;
@synthesize varInnovation;
@synthesize varSummary;

@synthesize varHomeGreen;
@synthesize varIntroductionGrey;
@synthesize varReliabilityG;
@synthesize varPuretyG;
@synthesize varPortabilityG;
@synthesize varInnovationG;
@synthesize varSummaryG;



- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    // Création du ScrollView //
    //Put the names of our image files in our array.
    imageArray = [[NSArray alloc] initWithObjects:@"page1.jpg", @"page2.jpg", @"page3.jpg", @"page4.jpg", @"page5.jpg", @"page6.jpg", @"page7.jpg", @"page8.jpg", @"page9.jpg", @"page10.jpg", @"page11.jpg", @"page12.jpg", @"page13.jpg", @"page14.jpg", @"page16.jpg", @"page18.jpg", @"page19.jpg", @"page20.jpg", @"page21.jpg", @"page22.jpg", nil];
    
    
    
    //Set the content size of our scrollview according to the total width of our imageView objects.
    scrollView.contentSize = CGSizeMake(scrollView.frame.size.width * [imageArray count], scrollView.frame.size.height);
    
    self.scrollView.pagingEnabled = YES;
    
    
    for (int i = 0; i < [imageArray count]; i++) {
        //We'll create an imageView object in every 'page' of our scrollView.
        CGRect frame;
        frame.origin.x = self.scrollView.frame.size.width * i;
        frame.origin.y = 0;
        frame.size = self.scrollView.frame.size;
        
        imageView = [[UIImageView alloc] initWithFrame:frame];
        imageView.image = [UIImage imageNamed:[imageArray objectAtIndex:i]];
        [self.scrollView addSubview:imageView];
        

        
    }
    
    
    
    // BUTTON ZOOM1 //
    CGRect targetFrame = CGRectMake ( self.scrollView.frame.size.width * 11, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat buttonWidth = 200.0;
    CGFloat buttonHeight = 200.0;
    
    CGRect buttonFrame = CGRectMake(targetFrame.origin.x + 240 - buttonWidth / 2, targetFrame.origin.y + 610 - buttonHeight / 2, buttonWidth, buttonHeight);
    
    UIButton * zoomEtoil1 = [ [ UIButton alloc] initWithFrame : buttonFrame ] ;
    //button.frame = CGRectMake(240, 610, 150, 40);
    [zoomEtoil1 setTitle:@"" forState:UIControlStateNormal];
    [zoomEtoil1 addTarget:self action:@selector(zoomEtoileUn:) forControlEvents:UIControlEventTouchUpInside];
    [self.scrollView addSubview : zoomEtoil1 ];
    
    
    
    
    
    // BUTTON ZOOM2 //
    CGRect targetFrame2 = CGRectMake ( self.scrollView.frame.size.width * 11, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat buttonWidth2 = 200.0;
    CGFloat buttonHeight2 = 200.0;
    
    CGRect buttonFrame2 = CGRectMake(targetFrame2.origin.x + 640 - buttonWidth2 / 2, targetFrame2.origin.y + 610 - buttonHeight2 / 2, buttonWidth2, buttonHeight2);
    
    UIButton * zoomEtoil2 = [ [ UIButton alloc] initWithFrame : buttonFrame2 ] ;
    //button.frame = CGRectMake(240, 610, 150, 40);
    [zoomEtoil2 setTitle:@"" forState:UIControlStateNormal];
    [zoomEtoil2 addTarget:self action:@selector(zoomEtoileDeux:) forControlEvents:UIControlEventTouchUpInside];
    [self.scrollView addSubview : zoomEtoil2 ];
    
    
    
    
    
    
    
    
    
    
    
    
    // MINI REF //
    CGRect refTarget = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat ImageRefWidth = 300.0;
    CGFloat imageRefHeight = 19.0;
    
    CGRect imgRef = CGRectMake(refTarget.origin.x + 509 - ImageRefWidth / 2, refTarget.origin.y + 716 - imageRefHeight / 2, ImageRefWidth, imageRefHeight);
    
    imageRefImage = [[UIImageView alloc] initWithFrame:imgRef];
    imageRefImage.image=[UIImage imageNamed:@"miniref.png"];
    [self.view addSubview:imageRefImage];
    
    
    

    
}



- (IBAction)sliderValueChanged:(UISlider *)sender {
    
    CGFloat myValueTrue = 14.50;
    
    if (sender.value > myValueTrue) {
        
        
        [slider removeFromSuperview];
        
        
        
        // SLIDER//
        CGRect targetSlide = CGRectMake ( self.scrollView.frame.size.width * 14, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
        
        CGFloat SlideWidth = 200.0;
        CGFloat SlideHeight = 200.0;
        
        CGRect frameSlide = CGRectMake(targetSlide.origin.x + 250 - SlideWidth / 2, targetSlide.origin.y + 400 - SlideHeight / 2, SlideWidth, SlideHeight);
        
        slider = [[UISlider alloc] initWithFrame:frameSlide];
        
        //Transforme le slider de type Vertical
        slider.transform=CGAffineTransformRotate(slider.transform,270.0/180*M_PI);
        [slider addTarget:self action:@selector(sliderValueChanged:) forControlEvents:UIControlEventValueChanged];
        [slider setBackgroundColor:[UIColor clearColor]];
        slider.minimumValue = 0.0;
        slider.maximumValue = 50.0;
        slider.continuous = NO;
        slider.value = myValueTrue;
        
        
        [slider setThumbImage:[UIImage imageNamed:@"bouton-40px.png"]
                     forState:UIControlStateNormal];
        [slider setThumbImage:[UIImage imageNamed:@"bouton-55px-ombre.png"]
                     forState:UIControlStateHighlighted];
        [slider setMinimumTrackImage:[UIImage imageNamed:@"barre-verte-NEW.png"]
                            forState:UIControlStateNormal];
        [slider setMaximumTrackImage:[UIImage imageNamed:@"barre-grise-NEW.png"]
                            forState:UIControlStateNormal];
        
        //expand slider hit area
        slider.frame = CGRectInset(slider.frame, 0, -10);
        
        
        
        [self.scrollView addSubview:slider];
        
    }
    
    
    
    NSLog(@"slider value = %f", sender.value);
    
}











- (IBAction)sliderValueChanged2:(UISlider *)sender {
    
    CGFloat myValueTrue = 14.50;
    
    if (sender.value > myValueTrue) {
        
        
        [slider2 removeFromSuperview];
        
        
        // SLIDER//
        CGRect targetSlide2 = CGRectMake ( self.scrollView.frame.size.width * 14, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
        
        CGFloat SlideWidth2 = 200.0;
        CGFloat SlideHeight2 = 200.0;
        
        CGRect frameSlide2 = CGRectMake(targetSlide2.origin.x + 450 - SlideWidth2 / 2, targetSlide2.origin.y + 400 - SlideHeight2 / 2, SlideWidth2, SlideHeight2);
        
        slider2 = [[UISlider alloc] initWithFrame:frameSlide2];
        
        //Transforme le slider de type Vertical
        slider2.transform=CGAffineTransformRotate(slider2.transform,270.0/180*M_PI);
        [slider2 addTarget:self action:@selector(sliderValueChanged2:) forControlEvents:UIControlEventValueChanged];
        [slider2 setBackgroundColor:[UIColor clearColor]];
        slider2.minimumValue = 0.0;
        slider2.maximumValue = 50.0;
        slider2.continuous = NO;
        slider2.value = myValueTrue;
        
        [slider2 setThumbImage:[UIImage imageNamed:@"bouton-40px.png"]
                     forState:UIControlStateNormal];
        [slider2 setThumbImage:[UIImage imageNamed:@"bouton-55px-ombre.png"]
                     forState:UIControlStateHighlighted];
        [slider2 setMinimumTrackImage:[UIImage imageNamed:@"barre-verte-NEW.png"]
                            forState:UIControlStateNormal];
        [slider2 setMaximumTrackImage:[UIImage imageNamed:@"barre-grise-NEW.png"]
                            forState:UIControlStateNormal];
        //expand slider hit area
        slider2.frame = CGRectInset(slider2.frame, 0, -10);
        
        [self.scrollView addSubview:slider2];
        
    }
    
    
    
    NSLog(@"slider value = %f", sender.value);
    
}













- (IBAction)sliderValueChanged3:(UISlider *)sender {
    
    CGFloat myValueTrue = 14.50;
    
    if (sender.value > myValueTrue) {
        
        
        [slider3 removeFromSuperview];
        
        
        // SLIDER//
        CGRect targetSlide3 = CGRectMake ( self.scrollView.frame.size.width * 14, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
        
        CGFloat SlideWidth3 = 200.0;
        CGFloat SlideHeight3 = 200.0;
        
        CGRect frameSlide3 = CGRectMake(targetSlide3.origin.x + 650 - SlideWidth3 / 2, targetSlide3.origin.y + 400 - SlideHeight3 / 2, SlideWidth3, SlideHeight3);
        
        slider3 = [[UISlider alloc] initWithFrame:frameSlide3];
        
        //Transforme le slider de type Vertical
        slider3.transform=CGAffineTransformRotate(slider3.transform,270.0/180*M_PI);
        [slider3 addTarget:self action:@selector(sliderValueChanged3:) forControlEvents:UIControlEventValueChanged];
        [slider3 setBackgroundColor:[UIColor clearColor]];
        slider3.minimumValue = 0.0;
        slider3.maximumValue = 50.0;
        slider3.continuous = NO;
        slider3.value = myValueTrue;
        
        [slider3 setThumbImage:[UIImage imageNamed:@"bouton-40px.png"]
                     forState:UIControlStateNormal];
        [slider3 setThumbImage:[UIImage imageNamed:@"bouton-55px-ombre.png"]
                     forState:UIControlStateHighlighted];
        [slider3 setMinimumTrackImage:[UIImage imageNamed:@"barre-verte-NEW.png"]
                            forState:UIControlStateNormal];
        [slider3 setMaximumTrackImage:[UIImage imageNamed:@"barre-grise-NEW.png"]
                            forState:UIControlStateNormal];
        
        //expand slider hit area
        slider3.frame = CGRectInset(slider3.frame, 0, -10);
        
        [self.scrollView addSubview:slider3];
        
    }
    
    
    
    NSLog(@"slider value = %f", sender.value);
    
}














- (IBAction)sliderValueChanged4:(UISlider *)sender {
    
    CGFloat myValueTrue = 50;
    
    if (sender.value > myValueTrue) {
        
        
        [slider4 removeFromSuperview];
        
        
        // SLIDER//
        CGRect targetSlide4 = CGRectMake ( self.scrollView.frame.size.width * 14, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
        
        CGFloat SlideWidth4 = 200.0;
        CGFloat SlideHeight4 = 200.0;
        
        CGRect frameSlide4 = CGRectMake(targetSlide4.origin.x + 850 - SlideWidth4 / 2, targetSlide4.origin.y + 400 - SlideHeight4 / 2, SlideWidth4, SlideHeight4);
        
        slider4 = [[UISlider alloc] initWithFrame:frameSlide4];
        
        //Transforme le slider de type Vertical
        slider4.transform=CGAffineTransformRotate(slider4.transform,270.0/180*M_PI);
        [slider4 addTarget:self action:@selector(sliderValueChanged4:) forControlEvents:UIControlEventValueChanged];
        [slider4 setBackgroundColor:[UIColor clearColor]];
        slider4.minimumValue = 0.0;
        slider4.maximumValue = 50.0;
        slider4.continuous = NO;
        slider4.value = myValueTrue;
        
        [slider4 setThumbImage:[UIImage imageNamed:@"bouton-40px.png"]
                     forState:UIControlStateNormal];
        [slider4 setThumbImage:[UIImage imageNamed:@"bouton-55px-ombre.png"]
                     forState:UIControlStateHighlighted];
        [slider4 setMinimumTrackImage:[UIImage imageNamed:@"barre-verte-NEW.png"]
                            forState:UIControlStateNormal];
        [slider4 setMaximumTrackImage:[UIImage imageNamed:@"barre-grise-NEW.png"]
                            forState:UIControlStateNormal];
        
        //expand slider hit area
        slider4.frame = CGRectInset(slider4.frame, 0, -10);
        
        
        
        
        
        
        [self.scrollView addSubview:slider4];
        

        
    }
    
    else if(sender.value == myValueTrue)
    {
        UIImage *resGameSlide = [UIImage imageNamed:@"resGame.png"];
        [resGame setImage:resGameSlide];

        
        
        
        [slider removeFromSuperview];
        [slider2 removeFromSuperview];
        [slider3 removeFromSuperview];
        [slider4 removeFromSuperview];
        
        
        
        
        // SLIDER//
        CGRect targetSlide = CGRectMake ( self.scrollView.frame.size.width * 14, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
        
        CGFloat SlideWidth = 200.0;
        CGFloat SlideHeight = 200.0;
        
        CGRect frameSlide = CGRectMake(targetSlide.origin.x + 250 - SlideWidth / 2, targetSlide.origin.y + 400 - SlideHeight / 2, SlideWidth, SlideHeight);
        
        slider = [[UISlider alloc] initWithFrame:frameSlide];
        
        //Transforme le slider de type Vertical
        slider.transform=CGAffineTransformRotate(slider.transform,270.0/180*M_PI);
        [slider addTarget:self action:@selector(sliderValueChanged:) forControlEvents:UIControlEventValueChanged];
        [slider setBackgroundColor:[UIColor clearColor]];
        slider.minimumValue = 0.0;
        slider.maximumValue = 50.0;
        slider.continuous = NO;
        slider.value = 14.50;
        
        
        [slider setThumbImage:[UIImage imageNamed:@"bouton-40px.png"]
                     forState:UIControlStateNormal];
        [slider setThumbImage:[UIImage imageNamed:@"bouton-55px-ombre.png"]
                     forState:UIControlStateHighlighted];
        [slider setMinimumTrackImage:[UIImage imageNamed:@"barre-verte-NEW.png"]
                            forState:UIControlStateNormal];
        [slider setMaximumTrackImage:[UIImage imageNamed:@"barre-grise-NEW.png"]
                            forState:UIControlStateNormal];
        
        //expand slider hit area
        slider.frame = CGRectInset(slider.frame, 0, -10);
        
        
        
        [self.scrollView addSubview:slider];
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        // SLIDER//
        CGRect targetSlide2 = CGRectMake ( self.scrollView.frame.size.width * 14, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
        
        CGFloat SlideWidth2 = 200.0;
        CGFloat SlideHeight2 = 200.0;
        
        CGRect frameSlide2 = CGRectMake(targetSlide2.origin.x + 450 - SlideWidth2 / 2, targetSlide2.origin.y + 400 - SlideHeight2 / 2, SlideWidth2, SlideHeight2);
        
        slider2 = [[UISlider alloc] initWithFrame:frameSlide2];
        
        //Transforme le slider de type Vertical
        slider2.transform=CGAffineTransformRotate(slider2.transform,270.0/180*M_PI);
        [slider2 addTarget:self action:@selector(sliderValueChanged2:) forControlEvents:UIControlEventValueChanged];
        [slider2 setBackgroundColor:[UIColor clearColor]];
        slider2.minimumValue = 0.0;
        slider2.maximumValue = 50.0;
        slider2.continuous = NO;
        slider2.value = 14.50;
        
        [slider2 setThumbImage:[UIImage imageNamed:@"bouton-40px.png"]
                     forState:UIControlStateNormal];
        [slider2 setThumbImage:[UIImage imageNamed:@"bouton-55px-ombre.png"]
                     forState:UIControlStateHighlighted];
        [slider2 setMinimumTrackImage:[UIImage imageNamed:@"barre-verte-NEW.png"]
                            forState:UIControlStateNormal];
        [slider2 setMaximumTrackImage:[UIImage imageNamed:@"barre-grise-NEW.png"]
                            forState:UIControlStateNormal];
        //expand slider hit area
        slider2.frame = CGRectInset(slider2.frame, 0, -10);
        
        [self.scrollView addSubview:slider2];
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        // SLIDER//
        CGRect targetSlide3 = CGRectMake ( self.scrollView.frame.size.width * 14, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
        
        CGFloat SlideWidth3 = 200.0;
        CGFloat SlideHeight3 = 200.0;
        
        CGRect frameSlide3 = CGRectMake(targetSlide3.origin.x + 650 - SlideWidth3 / 2, targetSlide3.origin.y + 400 - SlideHeight3 / 2, SlideWidth3, SlideHeight3);
        
        slider3 = [[UISlider alloc] initWithFrame:frameSlide3];
        
        //Transforme le slider de type Vertical
        slider3.transform=CGAffineTransformRotate(slider3.transform,270.0/180*M_PI);
        [slider3 addTarget:self action:@selector(sliderValueChanged3:) forControlEvents:UIControlEventValueChanged];
        [slider3 setBackgroundColor:[UIColor clearColor]];
        slider3.minimumValue = 0.0;
        slider3.maximumValue = 50.0;
        slider3.continuous = NO;
        slider3.value = 14.50;
        
        [slider3 setThumbImage:[UIImage imageNamed:@"bouton-40px.png"]
                     forState:UIControlStateNormal];
        [slider3 setThumbImage:[UIImage imageNamed:@"bouton-55px-ombre.png"]
                     forState:UIControlStateHighlighted];
        [slider3 setMinimumTrackImage:[UIImage imageNamed:@"barre-verte-NEW.png"]
                            forState:UIControlStateNormal];
        [slider3 setMaximumTrackImage:[UIImage imageNamed:@"barre-grise-NEW.png"]
                            forState:UIControlStateNormal];
        
        //expand slider hit area
        slider3.frame = CGRectInset(slider3.frame, 0, -10);
        
        [self.scrollView addSubview:slider3];
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        // SLIDER//
        CGRect targetSlide4 = CGRectMake ( self.scrollView.frame.size.width * 14, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
        
        CGFloat SlideWidth4 = 200.0;
        CGFloat SlideHeight4 = 200.0;
        
        CGRect frameSlide4 = CGRectMake(targetSlide4.origin.x + 850 - SlideWidth4 / 2, targetSlide4.origin.y + 400 - SlideHeight4 / 2, SlideWidth4, SlideHeight4);
        
        slider4 = [[UISlider alloc] initWithFrame:frameSlide4];
        
        //Transforme le slider de type Vertical
        slider4.transform=CGAffineTransformRotate(slider4.transform,270.0/180*M_PI);
        [slider4 addTarget:self action:@selector(sliderValueChanged4:) forControlEvents:UIControlEventValueChanged];
        [slider4 setBackgroundColor:[UIColor clearColor]];
        slider4.minimumValue = 0.0;
        slider4.maximumValue = 50.0;
        slider4.continuous = NO;
        slider4.value = 50;
        
        [slider4 setThumbImage:[UIImage imageNamed:@"bouton-40px.png"]
                     forState:UIControlStateNormal];
        [slider4 setThumbImage:[UIImage imageNamed:@"bouton-55px-ombre.png"]
                     forState:UIControlStateHighlighted];
        [slider4 setMinimumTrackImage:[UIImage imageNamed:@"barre-verte-NEW.png"]
                            forState:UIControlStateNormal];
        [slider4 setMaximumTrackImage:[UIImage imageNamed:@"barre-grise-NEW.png"]
                            forState:UIControlStateNormal];
        
        //expand slider hit area
        slider4.frame = CGRectInset(slider4.frame, 0, -10);
        
        [self.scrollView addSubview:slider4];

        
        
    
    }
    
}





















-(IBAction)zoomEtoileUn:(id)sender
{
    
    imageZoom2.image = nil;
    
    UIImage *zoom1E = [UIImage imageNamed:@"Zoom1Bul.png"];
    [imageZoom1 setImage:zoom1E];

    
    UIButton *exitZoom1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    exitZoom1.frame = CGRectMake(370, 240, 150, 40);
    [exitZoom1 setTitle:@"" forState:UIControlStateNormal];
    [exitZoom1 addTarget:self action:@selector(buttonExitZoom1:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:exitZoom1];
    
}



-(IBAction)buttonExitZoom1:(id)sender
{
    imageZoom1.image = nil;
}















-(IBAction)zoomEtoileDeux:(id)sender
{
    
    imageZoom1.image = nil;
    
    UIImage *zoom2E = [UIImage imageNamed:@"Zoom2Bul.png"];
    [imageZoom2 setImage:zoom2E];
    
    UIButton *exitZoom2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    exitZoom2.frame = CGRectMake(755, 240, 150, 40);
    [exitZoom2 setTitle:@"" forState:UIControlStateNormal];
    [exitZoom2 addTarget:self action:@selector(buttonExitZoom2:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:exitZoom2];
    
}


















-(IBAction)buttonExitZoom2:(id)sender
{
    imageZoom2.image=nil;
}
















- (IBAction)showIntro:(id)sender
{
    [self scrollToImageIndex:1];
    
    [sender setImage:[UIImage imageNamed:@"button-greyI.png"] forState:UIControlStateHighlighted];
    [sender setImage:[UIImage imageNamed:@"button-greyI.png"] forState:UIControlStateSelected];
}














- (IBAction)showReliability:(id)sender
{
    [self scrollToImageIndex:3];
    
    [sender setImage:[UIImage imageNamed:@"button_greyR.png"] forState:UIControlStateHighlighted];
    [sender setImage:[UIImage imageNamed:@"button_greyR.png"] forState:UIControlStateSelected];
}














- (IBAction)showPurety:(id)sender
{
    [self scrollToImageIndex:10];
    
    [sender setImage:[UIImage imageNamed:@"button_greyP.png"] forState:UIControlStateHighlighted];
    [sender setImage:[UIImage imageNamed:@"button_greyP.png"] forState:UIControlStateSelected];
}

















- (IBAction)showPortability:(id)sender
{
    [self scrollToImageIndex:13];
    
    [sender setImage:[UIImage imageNamed:@"button_grey_p.png"] forState:UIControlStateHighlighted];
    [sender setImage:[UIImage imageNamed:@"button_grey_p.png"] forState:UIControlStateSelected];
}
























- (IBAction)showSumary:(id)sender
{
    [self scrollToImageIndex:18];
    
    [sender setImage:[UIImage imageNamed:@"button_greyS.png"] forState:UIControlStateHighlighted];
    [sender setImage:[UIImage imageNamed:@"button_greyS.png"] forState:UIControlStateSelected];
}
















- (IBAction)showInnovation:(id)sender
{
    [self scrollToImageIndex:16];
    
    [sender setImage:[UIImage imageNamed:@"button_greyIN.png"] forState:UIControlStateHighlighted];
    [sender setImage:[UIImage imageNamed:@"button_greyIN.png"] forState:UIControlStateSelected];
}



















- (IBAction)showHome:(id)sender
{
    [self scrollToImageIndex:0];
    
    [sender setImage:[UIImage imageNamed:@"home.png"] forState:UIControlStateHighlighted];
    [sender setImage:[UIImage imageNamed:@"home.png"] forState:UIControlStateSelected];
}


























- (IBAction)showSPC:(id)sender
{
    
    
    // Create a new view and specify its frame. Initially the view y-origin point is set at the bottom side of the view.
    UIView *containerView = [[UIView alloc] initWithFrame:CGRectMake(0.0, self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height)];
    [containerView setBackgroundColor:[UIColor clearColor]];
    [containerView setTag:1111];
    
    

    
    
    
    UIScrollView *myScroll = [[UIScrollView alloc] init];
    myScroll.frame = self.view.bounds; //scroll view occupies full parent view!
    //specify CGRect bounds in place of self.view.bounds to make it as a portion of parent view!
    
    myScroll.contentSize = CGSizeMake(1000, 1000);   //scroll view size
    
    myScroll.backgroundColor = [UIColor clearColor];
    
    myScroll.showsVerticalScrollIndicator = YES;    // to hide scroll indicators!
    
    myScroll.showsHorizontalScrollIndicator = YES; //by default, it shows!
    
    myScroll.scrollEnabled = YES;                 //say "NO" to disable scroll
    
    
    [containerView addSubview:myScroll];               //adding to parent view!
    
    

    // REF2 //
    CGRect reff = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat RefWidth = 1000;
    CGFloat RefHeight = 800;
    
    CGRect refTarget = CGRectMake(reff.origin.x + 500 - RefWidth / 2, reff.origin.y + 365 - RefHeight / 2, RefWidth, RefHeight);
    
    ref = [[UIImageView alloc] initWithFrame:refTarget];
    ref.image=[UIImage imageNamed:@"SPC.png"];
    [myScroll addSubview:ref];
    
    
    
    UIButton *myButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    myButton.frame = CGRectMake(765, 90, 150, 40);
    [myButton setTitle:@"" forState:UIControlStateNormal];
    [myButton addTarget:self action:@selector(buttonClickedRef:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:myButton];
    
    
    
    // Add the container view to the image view.
    [self.view addSubview:containerView];
    
    
    // Animate the display of the container view.
    [UIView animateWithDuration:0.5 animations:^{
        containerView.frame = self.view.frame;
    }];


}
































- (IBAction)showRef:(id)sender
{
    // Create a new view and specify its frame. Initially the view y-origin point is set at the bottom side of the view.
    UIView *containerView = [[UIView alloc] initWithFrame:CGRectMake(0.0, self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height)];
    [containerView setBackgroundColor:[UIColor clearColor]];
    [containerView setTag:1111];
    
    
    
    
    UIScrollView *myScroll = [[UIScrollView alloc] init];
    myScroll.frame = self.view.bounds; //scroll view occupies full parent view!
    //specify CGRect bounds in place of self.view.bounds to make it as a portion of parent view!
    
    myScroll.contentSize = CGSizeMake(1000, 2500);   //scroll view size
    
    myScroll.backgroundColor = [UIColor clearColor];
    
    myScroll.showsVerticalScrollIndicator = YES;    // to hide scroll indicators!
    
    myScroll.showsHorizontalScrollIndicator = YES; //by default, it shows!
    
    myScroll.scrollEnabled = YES;                 //say "NO" to disable scroll
    
    
    [containerView addSubview:myScroll];               //adding to parent view!
    
    
    
    
    // REF //
    CGRect reff = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat RefWidth = 1000;
    CGFloat RefHeight = 2000;
    
    CGRect refTarget = CGRectMake(reff.origin.x + 500 - RefWidth / 2, reff.origin.y + 1000 - RefHeight / 2, RefWidth, RefHeight);
    
    ref = [[UIImageView alloc] initWithFrame:refTarget];
    ref.image=[UIImage imageNamed:@"Ref.png"];
    [myScroll addSubview:ref];
    
    
    
    
    UIButton *myButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    myButton.frame = CGRectMake(785, 120, 150, 40);
    [myButton setTitle:@"" forState:UIControlStateNormal];
    [myButton addTarget:self action:@selector(buttonClickedRef:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:myButton];
    
    
    // Add the container view to the image view.
    [self.view addSubview:containerView];
    
    
    // Animate the display of the container view.
    [UIView animateWithDuration:0.5 animations:^{
        containerView.frame = self.view.frame;
    }];

}






- (IBAction)buttonClickedRef:(id)sender
{
 
    
    
    // Animate the way the view gets dismissed.
    UIView *containerView = [self.view viewWithTag:1111];
    
    [UIView animateWithDuration:0.5 animations:^{
        containerView.frame = CGRectMake(0.0, self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height);
    }];
    
    [containerView performSelector:@selector(removeFromSuperview) withObject:nil afterDelay:0.6];
    
}






















#pragma mark - UIScrollView Delegate
- (void)scrollViewDidScroll:(UIScrollView *)sender
{
    static NSInteger previousPage = 0;
    CGFloat pageWidth = scrollView.frame.size.width;
    float fractionalPage = scrollView.contentOffset.x / pageWidth;
    NSInteger page = lround(fractionalPage);
    
    
    
    
    
    if (previousPage != page)
    {
        previousPage = page;
        
        NSLog(@"Page 0");
        
        
        if(page == 0)
        {
            
            
            // Suppression des zoom1 et zoom2 et ref...
            imageZoom1.image = nil;
            imageZoom2.image = nil;
            resGame.image = nil;
            
            [pageControl removeFromSuperview];
            
            
            [varHomeGreen removeFromSuperview];
            [varIntroductionGrey removeFromSuperview];
            [varReliabilityG removeFromSuperview];
            [varPuretyG removeFromSuperview];
            [varPortabilityG removeFromSuperview];
            [varInnovationG removeFromSuperview];
            [varSummaryG removeFromSuperview];
            
            
            
            // Animate the way the view gets dismissed.
            UIView *containerView = [self.view viewWithTag:1111];
            
            [UIView animateWithDuration:0.5 animations:^{
                containerView.frame = CGRectMake(0.0, self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height);
            }];
            
            [containerView performSelector:@selector(removeFromSuperview) withObject:nil afterDelay:0.6];
            
            
            
            
            
            
            
            
            
            
            
            
            
            CGRect refTarget = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat ImageRefWidth = 300.0;
            CGFloat imageRefHeight = 19.0;
            
            CGRect imgRef = CGRectMake(refTarget.origin.x + 509 - ImageRefWidth / 2, refTarget.origin.y + 716 - imageRefHeight / 2, ImageRefWidth, imageRefHeight);
            
            imageRefImage = [[UIImageView alloc] initWithFrame:imgRef];
            imageRefImage.image=[UIImage imageNamed:@"miniref.png"];
            [self.view addSubview:imageRefImage];
            
            
            
            
            
            
            
            
            
            
            
            
            
            // Changed a UIButton Home green Current Button
            [self.varHome removeFromSuperview];
            
            varHomeGreen = [UIButton buttonWithType:UIButtonTypeCustom];
            varHomeGreen.frame = CGRectMake(17, 6, 50, 45);
            [varHomeGreen setImage:[UIImage imageNamed:@"button-grayH.png"] forState:UIControlStateNormal];
            [varHomeGreen addTarget:self action:@selector(showHome:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varHomeGreen];
            // END Changed UIButton Home grey Current Button
            
            // Changed UIButton Innovation grey
            [self.varIntroduction removeFromSuperview];
            
            varIntroductionGrey = [UIButton buttonWithType:UIButtonTypeCustom];
            varIntroductionGrey.frame = CGRectMake(75, 6, 149, 45);
            [varIntroductionGrey setImage:[UIImage imageNamed:@"button-Green_I.png"] forState:UIControlStateNormal];
            [varIntroductionGrey addTarget:self action:@selector(showIntro:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varIntroductionGrey];
            // End Changed a UIButton Innovation green
            
            // Changed a UIButton Performance grey
            [self.varReliability removeFromSuperview];
            
            varReliabilityG = [UIButton buttonWithType:UIButtonTypeCustom];
            varReliabilityG.frame = CGRectMake(232, 6, 149, 45);
            [varReliabilityG setImage:[UIImage imageNamed:@"button-Green_R.png"] forState:UIControlStateNormal];
            [varReliabilityG addTarget:self action:@selector(showReliability:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varReliabilityG];
            // End Changed a UIButton Performance green
            
            // Changed a UIButton Purete grey
            [self.varPurety removeFromSuperview];
            
            varPuretyG = [UIButton buttonWithType:UIButtonTypeCustom];
            varPuretyG.frame = CGRectMake(389, 6, 149, 45);
            [varPuretyG setImage:[UIImage imageNamed:@"button-Green_P.png"] forState:UIControlStateNormal];
            [varPuretyG addTarget:self action:@selector(showPurety:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPuretyG];
            // End changed a UIButton Purete green
            
            // Changed a UIButton Transportabilite grey
            [self.varPortability removeFromSuperview];
            
            varPortabilityG = [UIButton buttonWithType:UIButtonTypeCustom];
            varPortabilityG.frame = CGRectMake(546, 6, 149, 45);
            [varPortabilityG setImage:[UIImage imageNamed:@"button-Green_Po.png"] forState:UIControlStateNormal];
            [varPortabilityG addTarget:self action:@selector(showPortability:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPortabilityG];
            // End changed a UIButton transportabilite green
            
            // Changed a UIButton BonUsage grey
            [self.varInnovation removeFromSuperview];
            
            varInnovationG = [UIButton buttonWithType:UIButtonTypeCustom];
            varInnovationG.frame = CGRectMake(703, 6, 149, 45);
            [varInnovationG setImage:[UIImage imageNamed:@"button-Green_INN.png"] forState:UIControlStateNormal];
            [varInnovationG addTarget:self action:@selector(showInnovation:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varInnovationG];
            // End Changed a UIButton a BonUsage green
            
            // Changed a UIButton Resume grey
            [self.varSummary removeFromSuperview];
            
            varSummaryG = [UIButton buttonWithType:UIButtonTypeCustom];
            varSummaryG.frame = CGRectMake(860, 6, 149, 45);
            [varSummaryG setImage:[UIImage imageNamed:@"button-Green_S.png"] forState:UIControlStateNormal];
            [varSummaryG addTarget:self action:@selector(showSumary:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varSummaryG];
            // End Changed a UIButton green
            
            
            NSLog(@"Page 0");
        }
     
        
        
        else if(page == 1)
        {
            
            // Suppression des zoom1 et zoom2 et ref...
            imageZoom1.image = nil;
            imageZoom2.image = nil;
            resGame.image = nil;
            imageRefImage.image = nil;
            
            [pageControl removeFromSuperview];
            
            
            [varHomeGreen removeFromSuperview];
            [varIntroductionGrey removeFromSuperview];
            [varReliabilityG removeFromSuperview];
            [varPuretyG removeFromSuperview];
            [varPortabilityG removeFromSuperview];
            [varInnovationG removeFromSuperview];
            [varSummaryG removeFromSuperview];
            
            
            // Animate the way the view gets dismissed.
            UIView *containerView = [self.view viewWithTag:1111];
            
            [UIView animateWithDuration:0.5 animations:^{
                containerView.frame = CGRectMake(0.0, self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height);
            }];
            
            [containerView performSelector:@selector(removeFromSuperview) withObject:nil afterDelay:0.6];
            
            
            
            
            
            
            
            
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 716 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 2;
            pageControl.currentPage = 0;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:0.85 green:0.85 blue:0.85 alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:0.00 green:0.60 blue:0.90 alpha:1.0];
            pageControl.backgroundColor = [UIColor whiteColor];
            [self.view addSubview:pageControl];


            
            
            
            
            
            // Changed a UIButton Home green Current Button
            [self.varHome removeFromSuperview];
            
            varHomeGreen = [UIButton buttonWithType:UIButtonTypeCustom];
            varHomeGreen.frame = CGRectMake(17, 6, 50, 45);
            [varHomeGreen setImage:[UIImage imageNamed:@"button-green_H.png"] forState:UIControlStateNormal];
            [varHomeGreen addTarget:self action:@selector(showHome:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varHomeGreen];
            // END Changed UIButton Home grey Current Button
            
            // Changed UIButton Innovation grey
            [self.varIntroduction removeFromSuperview];
            
            varIntroductionGrey = [UIButton buttonWithType:UIButtonTypeCustom];
            varIntroductionGrey.frame = CGRectMake(75, 6, 149, 45);
            [varIntroductionGrey setImage:[UIImage imageNamed:@"button-greyI.png"] forState:UIControlStateNormal];
            [varIntroductionGrey addTarget:self action:@selector(showIntro:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varIntroductionGrey];
            // End Changed a UIButton Innovation green
            
            // Changed a UIButton Performance grey
            [self.varReliability removeFromSuperview];
            
            varReliabilityG = [UIButton buttonWithType:UIButtonTypeCustom];
            varReliabilityG.frame = CGRectMake(232, 6, 149, 45);
            [varReliabilityG setImage:[UIImage imageNamed:@"button-Green_R.png"] forState:UIControlStateNormal];
            [varReliabilityG addTarget:self action:@selector(showReliability:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varReliabilityG];
            // End Changed a UIButton Performance green
            
            // Changed a UIButton Purete grey
            [self.varPurety removeFromSuperview];
            
            varPuretyG = [UIButton buttonWithType:UIButtonTypeCustom];
            varPuretyG.frame = CGRectMake(389, 6, 149, 45);
            [varPuretyG setImage:[UIImage imageNamed:@"button-Green_P.png"] forState:UIControlStateNormal];
            [varPuretyG addTarget:self action:@selector(showPurety:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPuretyG];
            // End changed a UIButton Purete green
            
            // Changed a UIButton Transportabilite grey
            [self.varPortability removeFromSuperview];
            
            varPortabilityG = [UIButton buttonWithType:UIButtonTypeCustom];
            varPortabilityG.frame = CGRectMake(546, 6, 149, 45);
            [varPortabilityG setImage:[UIImage imageNamed:@"button-Green_Po.png"] forState:UIControlStateNormal];
            [varPortabilityG addTarget:self action:@selector(showPortability:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPortabilityG];
            // End changed a UIButton transportabilite green
            
            // Changed a UIButton BonUsage grey
            [self.varInnovation removeFromSuperview];
            
            varInnovationG = [UIButton buttonWithType:UIButtonTypeCustom];
            varInnovationG.frame = CGRectMake(703, 6, 149, 45);
            [varInnovationG setImage:[UIImage imageNamed:@"button-Green_INN.png"] forState:UIControlStateNormal];
            [varInnovationG addTarget:self action:@selector(showInnovation:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varInnovationG];
            // End Changed a UIButton a BonUsage green
            
            // Changed a UIButton Resume grey
            [self.varSummary removeFromSuperview];
            
            varSummaryG = [UIButton buttonWithType:UIButtonTypeCustom];
            varSummaryG.frame = CGRectMake(860, 6, 149, 45);
            [varSummaryG setImage:[UIImage imageNamed:@"button-Green_S.png"] forState:UIControlStateNormal];
            [varSummaryG addTarget:self action:@selector(showSumary:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varSummaryG];
            // End Changed a UIButton green
            
            
            NSLog(@"Page 1");
            
            
            
            
        }
        
        
        else if (page == 2)
        {
            
            
            
            
            [varHomeGreen removeFromSuperview];
            [varIntroductionGrey removeFromSuperview];
            [varReliabilityG removeFromSuperview];
            [varPuretyG removeFromSuperview];
            [varPortabilityG removeFromSuperview];
            [varInnovationG removeFromSuperview];
            [varSummaryG removeFromSuperview];
            
            

            
            
            [pageControl removeFromSuperview];
            
            
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 716 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 2;
            pageControl.currentPage = 2;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:0.85 green:0.85 blue:0.85 alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:0.00 green:0.60 blue:0.90 alpha:1.0];
            pageControl.backgroundColor = [UIColor whiteColor];
            [self.view addSubview:pageControl];
            
            
            // Changed a UIButton Home green Current Button
            [self.varHome removeFromSuperview];
            
            varHomeGreen = [UIButton buttonWithType:UIButtonTypeCustom];
            varHomeGreen.frame = CGRectMake(17, 6, 50, 45);
            [varHomeGreen setImage:[UIImage imageNamed:@"button-green_H.png"] forState:UIControlStateNormal];
            [varHomeGreen addTarget:self action:@selector(showHome:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varHomeGreen];
            // END Changed UIButton Home grey Current Button
            
            // Changed UIButton Innovation grey
            [self.varIntroduction removeFromSuperview];
            
            varIntroductionGrey = [UIButton buttonWithType:UIButtonTypeCustom];
            varIntroductionGrey.frame = CGRectMake(75, 6, 149, 45);
            [varIntroductionGrey setImage:[UIImage imageNamed:@"button-greyI.png"] forState:UIControlStateNormal];
            [varIntroductionGrey addTarget:self action:@selector(showIntro:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varIntroductionGrey];
            // End Changed a UIButton Innovation green
            
            // Changed a UIButton Performance grey
            [self.varReliability removeFromSuperview];
            
            varReliabilityG = [UIButton buttonWithType:UIButtonTypeCustom];
            varReliabilityG.frame = CGRectMake(232, 6, 149, 45);
            [varReliabilityG setImage:[UIImage imageNamed:@"button-Green_R.png"] forState:UIControlStateNormal];
            [varReliabilityG addTarget:self action:@selector(showReliability:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varReliabilityG];
            // End Changed a UIButton Performance green
            
            // Changed a UIButton Purete grey
            [self.varPurety removeFromSuperview];
            
            varPuretyG = [UIButton buttonWithType:UIButtonTypeCustom];
            varPuretyG.frame = CGRectMake(389, 6, 149, 45);
            [varPuretyG setImage:[UIImage imageNamed:@"button-Green_P.png"] forState:UIControlStateNormal];
            [varPuretyG addTarget:self action:@selector(showPurety:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPuretyG];
            // End changed a UIButton Purete green
            
            // Changed a UIButton Transportabilite grey
            [self.varPortability removeFromSuperview];
            
            varPortabilityG = [UIButton buttonWithType:UIButtonTypeCustom];
            varPortabilityG.frame = CGRectMake(546, 6, 149, 45);
            [varPortabilityG setImage:[UIImage imageNamed:@"button-Green_Po.png"] forState:UIControlStateNormal];
            [varPortabilityG addTarget:self action:@selector(showPortability:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPortabilityG];
            // End changed a UIButton transportabilite green
            
            // Changed a UIButton BonUsage grey
            [self.varInnovation removeFromSuperview];
            
            varInnovationG = [UIButton buttonWithType:UIButtonTypeCustom];
            varInnovationG.frame = CGRectMake(703, 6, 149, 45);
            [varInnovationG setImage:[UIImage imageNamed:@"button-Green_INN.png"] forState:UIControlStateNormal];
            [varInnovationG addTarget:self action:@selector(showInnovation:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varInnovationG];
            // End Changed a UIButton a BonUsage green
            
            // Changed a UIButton Resume grey
            [self.varSummary removeFromSuperview];
            
            varSummaryG = [UIButton buttonWithType:UIButtonTypeCustom];
            varSummaryG.frame = CGRectMake(860, 6, 149, 45);
            [varSummaryG setImage:[UIImage imageNamed:@"button-Green_S.png"] forState:UIControlStateNormal];
            [varSummaryG addTarget:self action:@selector(showSumary:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varSummaryG];
            // End Changed a UIButton green

            
            
            
            
            
            
            
            
            
            
            
            
            NSLog(@"Page 2");

            
            
        }
        
        
        else if(page == 3)
        {
            
            // Suppression des zoom1 et zoom2 et ref...
            imageZoom1.image = nil;
            imageZoom2.image = nil;
            resGame.image = nil;
            
            [pageControl removeFromSuperview];
            
            
            
            
            
            // Animate the way the view gets dismissed.
            UIView *containerView = [self.view viewWithTag:1111];
            
            [UIView animateWithDuration:0.5 animations:^{
                containerView.frame = CGRectMake(0.0, self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height);
            }];
            
            [containerView performSelector:@selector(removeFromSuperview) withObject:nil afterDelay:0.6];
            
            
            
            
            
            [varHomeGreen removeFromSuperview];
            [varIntroductionGrey removeFromSuperview];
            [varReliabilityG removeFromSuperview];
            [varPuretyG removeFromSuperview];
            [varPortabilityG removeFromSuperview];
            [varInnovationG removeFromSuperview];
            [varSummaryG removeFromSuperview];
            
            
            
            
            
            
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 716 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 7;
            pageControl.currentPage = 0;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:0.85 green:0.85 blue:0.85 alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:0.00 green:0.60 blue:0.90 alpha:1.0];
            pageControl.backgroundColor = [UIColor whiteColor];
            [self.view addSubview:pageControl];
            
            
            
            // Changed a UIButton Home green Current Button
            [self.varHome removeFromSuperview];
            
            varHomeGreen = [UIButton buttonWithType:UIButtonTypeCustom];
            varHomeGreen.frame = CGRectMake(17, 6, 50, 45);
            [varHomeGreen setImage:[UIImage imageNamed:@"button-green_H.png"] forState:UIControlStateNormal];
            [varHomeGreen addTarget:self action:@selector(showHome:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varHomeGreen];
            // END Changed UIButton Home grey Current Button
            
            // Changed UIButton Innovation grey
            [self.varIntroduction removeFromSuperview];
            
            varIntroductionGrey = [UIButton buttonWithType:UIButtonTypeCustom];
            varIntroductionGrey.frame = CGRectMake(75, 6, 149, 45);
            [varIntroductionGrey setImage:[UIImage imageNamed:@"button-Green_I.png"] forState:UIControlStateNormal];
            [varIntroductionGrey addTarget:self action:@selector(showIntro:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varIntroductionGrey];
            // End Changed a UIButton Innovation green
            
            // Changed a UIButton Performance grey
            [self.varReliability removeFromSuperview];
            
            varReliabilityG = [UIButton buttonWithType:UIButtonTypeCustom];
            varReliabilityG.frame = CGRectMake(232, 6, 149, 45);
            [varReliabilityG setImage:[UIImage imageNamed:@"button_greyR.png"] forState:UIControlStateNormal];
            [varReliabilityG addTarget:self action:@selector(showReliability:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varReliabilityG];
            // End Changed a UIButton Performance green
            
            // Changed a UIButton Purete grey
            [self.varPurety removeFromSuperview];
            
            varPuretyG = [UIButton buttonWithType:UIButtonTypeCustom];
            varPuretyG.frame = CGRectMake(389, 6, 149, 45);
            [varPuretyG setImage:[UIImage imageNamed:@"button-Green_P.png"] forState:UIControlStateNormal];
            [varPuretyG addTarget:self action:@selector(showPurety:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPuretyG];
            // End changed a UIButton Purete green
            
            // Changed a UIButton Transportabilite grey
            [self.varPortability removeFromSuperview];
            
            varPortabilityG = [UIButton buttonWithType:UIButtonTypeCustom];
            varPortabilityG.frame = CGRectMake(546, 6, 149, 45);
            [varPortabilityG setImage:[UIImage imageNamed:@"button-Green_Po.png"] forState:UIControlStateNormal];
            [varPortabilityG addTarget:self action:@selector(showPortability:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPortabilityG];
            // End changed a UIButton transportabilite green
            
            // Changed a UIButton BonUsage grey
            [self.varInnovation removeFromSuperview];
            
            varInnovationG = [UIButton buttonWithType:UIButtonTypeCustom];
            varInnovationG.frame = CGRectMake(703, 6, 149, 45);
            [varInnovationG setImage:[UIImage imageNamed:@"button-Green_INN.png"] forState:UIControlStateNormal];
            [varInnovationG addTarget:self action:@selector(showInnovation:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varInnovationG];
            // End Changed a UIButton a BonUsage green
            
            // Changed a UIButton Resume grey
            [self.varSummary removeFromSuperview];
            
            varSummaryG = [UIButton buttonWithType:UIButtonTypeCustom];
            varSummaryG.frame = CGRectMake(860, 6, 149, 45);
            [varSummaryG setImage:[UIImage imageNamed:@"button-Green_S.png"] forState:UIControlStateNormal];
            [varSummaryG addTarget:self action:@selector(showSumary:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varSummaryG];
            // End Changed a UIButton green
            
            
            NSLog(@"Page 3");

            
        }
        
        
        else if(page == 4)
        {
            
            [pageControl removeFromSuperview];
            
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 716 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 7;
            pageControl.currentPage = 1;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:0.85 green:0.85 blue:0.85 alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:0.00 green:0.60 blue:0.90 alpha:1.0];
            pageControl.backgroundColor = [UIColor whiteColor];
            [self.view addSubview:pageControl];
            
            
            
            
            
            
            
            NSLog(@"Page 4");
            
            
            
            
            
        }
        
        
        else if (page == 5)
        {
            
            [pageControl removeFromSuperview];
            
            
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 716 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 7;
            pageControl.currentPage = 2;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:0.85 green:0.85 blue:0.85 alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:0.00 green:0.60 blue:0.90 alpha:1.0];
            pageControl.backgroundColor = [UIColor whiteColor];
            [self.view addSubview:pageControl];
            
            
            
            
            
            NSLog(@"Page 5");
            
            
            
        }
        
        
        else if (page == 6)
        {
            
            [pageControl removeFromSuperview];
            
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 716 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 7;
            pageControl.currentPage = 3;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:0.85 green:0.85 blue:0.85 alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:0.00 green:0.60 blue:0.90 alpha:1.0];
            pageControl.backgroundColor = [UIColor whiteColor];
            [self.view addSubview:pageControl];
            
            
            NSLog(@"Page 6");
            
            
            
        }
        
        
        else if (page == 7)
        {
            
            [pageControl removeFromSuperview];
            
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 716 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 7;
            pageControl.currentPage = 4;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:0.85 green:0.85 blue:0.85 alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:0.00 green:0.60 blue:0.90 alpha:1.0];
            pageControl.backgroundColor = [UIColor whiteColor];
            [self.view addSubview:pageControl];
            
            
            NSLog(@"Page 7");
            
            
            
        }
        
        
        else if(page == 8)
        {
            
            [pageControl removeFromSuperview];
            
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 716 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 7;
            pageControl.currentPage = 5;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:0.85 green:0.85 blue:0.85 alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:0.00 green:0.60 blue:0.90 alpha:1.0];
            pageControl.backgroundColor = [UIColor whiteColor];
            [self.view addSubview:pageControl];
            
            
            
            
            NSLog(@"Page 8");
            
            
            
        }
        
        
        else if (page == 9)
        {
            
            
            [varHomeGreen removeFromSuperview];
            [varIntroductionGrey removeFromSuperview];
            [varReliabilityG removeFromSuperview];
            [varPuretyG removeFromSuperview];
            [varPortabilityG removeFromSuperview];
            [varInnovationG removeFromSuperview];
            [varSummaryG removeFromSuperview];
            
            

            [pageControl removeFromSuperview];
            
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 716 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 7;
            pageControl.currentPage = 7;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:0.85 green:0.85 blue:0.85 alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:0.00 green:0.60 blue:0.90 alpha:1.0];
            pageControl.backgroundColor = [UIColor whiteColor];
            [self.view addSubview:pageControl];
            
            
            // Changed a UIButton Home green Current Button
            [self.varHome removeFromSuperview];
            
            varHomeGreen = [UIButton buttonWithType:UIButtonTypeCustom];
            varHomeGreen.frame = CGRectMake(17, 6, 50, 45);
            [varHomeGreen setImage:[UIImage imageNamed:@"button-green_H.png"] forState:UIControlStateNormal];
            [varHomeGreen addTarget:self action:@selector(showHome:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varHomeGreen];
            // END Changed UIButton Home grey Current Button
            
            // Changed UIButton Innovation grey
            [self.varIntroduction removeFromSuperview];
            
            varIntroductionGrey = [UIButton buttonWithType:UIButtonTypeCustom];
            varIntroductionGrey.frame = CGRectMake(75, 6, 149, 45);
            [varIntroductionGrey setImage:[UIImage imageNamed:@"button-Green_I.png"] forState:UIControlStateNormal];
            [varIntroductionGrey addTarget:self action:@selector(showIntro:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varIntroductionGrey];
            // End Changed a UIButton Innovation green
            
            // Changed a UIButton Performance grey
            [self.varReliability removeFromSuperview];
            
            varReliabilityG = [UIButton buttonWithType:UIButtonTypeCustom];
            varReliabilityG.frame = CGRectMake(232, 6, 149, 45);
            [varReliabilityG setImage:[UIImage imageNamed:@"button_greyR.png"] forState:UIControlStateNormal];
            [varReliabilityG addTarget:self action:@selector(showReliability:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varReliabilityG];
            // End Changed a UIButton Performance green
            
            // Changed a UIButton Purete grey
            [self.varPurety removeFromSuperview];
            
            varPuretyG = [UIButton buttonWithType:UIButtonTypeCustom];
            varPuretyG.frame = CGRectMake(389, 6, 149, 45);
            [varPuretyG setImage:[UIImage imageNamed:@"button-Green_P.png"] forState:UIControlStateNormal];
            [varPuretyG addTarget:self action:@selector(showPurety:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPuretyG];
            // End changed a UIButton Purete green
            
            // Changed a UIButton Transportabilite grey
            [self.varPortability removeFromSuperview];
            
            varPortabilityG = [UIButton buttonWithType:UIButtonTypeCustom];
            varPortabilityG.frame = CGRectMake(546, 6, 149, 45);
            [varPortabilityG setImage:[UIImage imageNamed:@"button-Green_Po.png"] forState:UIControlStateNormal];
            [varPortabilityG addTarget:self action:@selector(showPortability:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPortabilityG];
            // End changed a UIButton transportabilite green
            
            // Changed a UIButton BonUsage grey
            [self.varInnovation removeFromSuperview];
            
            varInnovationG = [UIButton buttonWithType:UIButtonTypeCustom];
            varInnovationG.frame = CGRectMake(703, 6, 149, 45);
            [varInnovationG setImage:[UIImage imageNamed:@"button-Green_INN.png"] forState:UIControlStateNormal];
            [varInnovationG addTarget:self action:@selector(showInnovation:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varInnovationG];
            // End Changed a UIButton a BonUsage green
            
            // Changed a UIButton Resume grey
            [self.varSummary removeFromSuperview];
            
            varSummaryG = [UIButton buttonWithType:UIButtonTypeCustom];
            varSummaryG.frame = CGRectMake(860, 6, 149, 45);
            [varSummaryG setImage:[UIImage imageNamed:@"button-Green_S.png"] forState:UIControlStateNormal];
            [varSummaryG addTarget:self action:@selector(showSumary:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varSummaryG];
            // End Changed a UIButton green
            
            
            
            
            NSLog(@"Page 9");
            
            
            
        }
        
        
        else if (page == 10)
        {
            
            
            
            [varHomeGreen removeFromSuperview];
            [varIntroductionGrey removeFromSuperview];
            [varReliabilityG removeFromSuperview];
            [varPuretyG removeFromSuperview];
            [varPortabilityG removeFromSuperview];
            [varInnovationG removeFromSuperview];
            [varSummaryG removeFromSuperview];
            
            

            
            // Suppression des zoom1 et zoom2 et ref...
            imageZoom1.image = nil;
            imageZoom2.image = nil;
            resGame.image = nil;
            
            [pageControl removeFromSuperview];
            
            
            
            
            
            // Animate the way the view gets dismissed.
            UIView *containerView = [self.view viewWithTag:1111];
            
            [UIView animateWithDuration:0.5 animations:^{
                containerView.frame = CGRectMake(0.0, self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height);
            }];
            
            [containerView performSelector:@selector(removeFromSuperview) withObject:nil afterDelay:0.6];
            
            
            
            
            
            
            
            
            
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 716 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 3;
            pageControl.currentPage = 0;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:0.85 green:0.85 blue:0.85 alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:0.00 green:0.60 blue:0.90 alpha:1.0];
            pageControl.backgroundColor = [UIColor whiteColor];
            [self.view addSubview:pageControl];
            
            
            
            
            
            
            
            
            
            
            // Changed a UIButton Home green Current Button
            [self.varHome removeFromSuperview];
            
            varHomeGreen = [UIButton buttonWithType:UIButtonTypeCustom];
            varHomeGreen.frame = CGRectMake(17, 6, 50, 45);
            [varHomeGreen setImage:[UIImage imageNamed:@"button-green_H.png"] forState:UIControlStateNormal];
            [varHomeGreen addTarget:self action:@selector(showHome:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varHomeGreen];
            // END Changed UIButton Home grey Current Button
            
            // Changed UIButton Innovation grey
            [self.varIntroduction removeFromSuperview];
            
            varIntroductionGrey = [UIButton buttonWithType:UIButtonTypeCustom];
            varIntroductionGrey.frame = CGRectMake(75, 6, 149, 45);
            [varIntroductionGrey setImage:[UIImage imageNamed:@"button-Green_I.png"] forState:UIControlStateNormal];
            [varIntroductionGrey addTarget:self action:@selector(showIntro:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varIntroductionGrey];
            // End Changed a UIButton Innovation green
            
            // Changed a UIButton Performance grey
            [self.varReliability removeFromSuperview];
            
            varReliabilityG = [UIButton buttonWithType:UIButtonTypeCustom];
            varReliabilityG.frame = CGRectMake(232, 6, 149, 45);
            [varReliabilityG setImage:[UIImage imageNamed:@"button-Green_R.png"] forState:UIControlStateNormal];
            [varReliabilityG addTarget:self action:@selector(showReliability:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varReliabilityG];
            // End Changed a UIButton Performance green
            
            // Changed a UIButton Purete grey
            [self.varPurety removeFromSuperview];
            
            varPuretyG = [UIButton buttonWithType:UIButtonTypeCustom];
            varPuretyG.frame = CGRectMake(389, 6, 149, 45);
            [varPuretyG setImage:[UIImage imageNamed:@"button_greyP.png"] forState:UIControlStateNormal];
            [varPuretyG addTarget:self action:@selector(showPurety:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPuretyG];
            // End changed a UIButton Purete green
            
            // Changed a UIButton Transportabilite grey
            [self.varPortability removeFromSuperview];
            
            varPortabilityG = [UIButton buttonWithType:UIButtonTypeCustom];
            varPortabilityG.frame = CGRectMake(546, 6, 149, 45);
            [varPortabilityG setImage:[UIImage imageNamed:@"button-Green_Po.png"] forState:UIControlStateNormal];
            [varPortabilityG addTarget:self action:@selector(showPortability:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPortabilityG];
            // End changed a UIButton transportabilite green
            
            // Changed a UIButton BonUsage grey
            [self.varInnovation removeFromSuperview];
            
            varInnovationG = [UIButton buttonWithType:UIButtonTypeCustom];
            varInnovationG.frame = CGRectMake(703, 6, 149, 45);
            [varInnovationG setImage:[UIImage imageNamed:@"button-Green_INN.png"] forState:UIControlStateNormal];
            [varInnovationG addTarget:self action:@selector(showInnovation:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varInnovationG];
            // End Changed a UIButton a BonUsage green
            
            // Changed a UIButton Resume grey
            [self.varSummary removeFromSuperview];
            
            varSummaryG = [UIButton buttonWithType:UIButtonTypeCustom];
            varSummaryG.frame = CGRectMake(860, 6, 149, 45);
            [varSummaryG setImage:[UIImage imageNamed:@"button-Green_S.png"] forState:UIControlStateNormal];
            [varSummaryG addTarget:self action:@selector(showSumary:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varSummaryG];
            // End Changed a UIButton green
            
            
            NSLog(@"Page 10");
            
            
        }
        
        else if (page == 11)
        {
            
            
            [pageControl removeFromSuperview];
            
            
            
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 716 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 3;
            pageControl.currentPage = 1;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:0.85 green:0.85 blue:0.85 alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:0.00 green:0.60 blue:0.90 alpha:1.0];
            pageControl.backgroundColor = [UIColor whiteColor];
            [self.view addSubview:pageControl];
            
            
            
            NSLog(@"Page 11");
            
        }
        
        
        else if (page == 12)
        {
            
            
            
            [varHomeGreen removeFromSuperview];
            [varIntroductionGrey removeFromSuperview];
            [varReliabilityG removeFromSuperview];
            [varPuretyG removeFromSuperview];
            [varPortabilityG removeFromSuperview];
            [varInnovationG removeFromSuperview];
            [varSummaryG removeFromSuperview];
            
            
            
            [pageControl removeFromSuperview];
            
            
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 716 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 3;
            pageControl.currentPage = 3;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:0.85 green:0.85 blue:0.85 alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:0.00 green:0.60 blue:0.90 alpha:1.0];
            pageControl.backgroundColor = [UIColor whiteColor];
            [self.view addSubview:pageControl];
            
            
            
            
            
            
            
            
            
            
            
            // Changed a UIButton Home green Current Button
            [self.varHome removeFromSuperview];
            
            varHomeGreen = [UIButton buttonWithType:UIButtonTypeCustom];
            varHomeGreen.frame = CGRectMake(17, 6, 50, 45);
            [varHomeGreen setImage:[UIImage imageNamed:@"button-green_H.png"] forState:UIControlStateNormal];
            [varHomeGreen addTarget:self action:@selector(showHome:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varHomeGreen];
            // END Changed UIButton Home grey Current Button
            
            // Changed UIButton Innovation grey
            [self.varIntroduction removeFromSuperview];
            
            varIntroductionGrey = [UIButton buttonWithType:UIButtonTypeCustom];
            varIntroductionGrey.frame = CGRectMake(75, 6, 149, 45);
            [varIntroductionGrey setImage:[UIImage imageNamed:@"button-Green_I.png"] forState:UIControlStateNormal];
            [varIntroductionGrey addTarget:self action:@selector(showIntro:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varIntroductionGrey];
            // End Changed a UIButton Innovation green
            
            // Changed a UIButton Performance grey
            [self.varReliability removeFromSuperview];
            
            varReliabilityG = [UIButton buttonWithType:UIButtonTypeCustom];
            varReliabilityG.frame = CGRectMake(232, 6, 149, 45);
            [varReliabilityG setImage:[UIImage imageNamed:@"button-Green_R.png"] forState:UIControlStateNormal];
            [varReliabilityG addTarget:self action:@selector(showReliability:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varReliabilityG];
            // End Changed a UIButton Performance green
            
            // Changed a UIButton Purete grey
            [self.varPurety removeFromSuperview];
            
            varPuretyG = [UIButton buttonWithType:UIButtonTypeCustom];
            varPuretyG.frame = CGRectMake(389, 6, 149, 45);
            [varPuretyG setImage:[UIImage imageNamed:@"button_greyP.png"] forState:UIControlStateNormal];
            [varPuretyG addTarget:self action:@selector(showPurety:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPuretyG];
            // End changed a UIButton Purete green
            
            // Changed a UIButton Transportabilite grey
            [self.varPortability removeFromSuperview];
            
            varPortabilityG = [UIButton buttonWithType:UIButtonTypeCustom];
            varPortabilityG.frame = CGRectMake(546, 6, 149, 45);
            [varPortabilityG setImage:[UIImage imageNamed:@"button-Green_Po.png"] forState:UIControlStateNormal];
            [varPortabilityG addTarget:self action:@selector(showPortability:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPortabilityG];
            // End changed a UIButton transportabilite green
            
            // Changed a UIButton BonUsage grey
            [self.varInnovation removeFromSuperview];
            
            varInnovationG = [UIButton buttonWithType:UIButtonTypeCustom];
            varInnovationG.frame = CGRectMake(703, 6, 149, 45);
            [varInnovationG setImage:[UIImage imageNamed:@"button-Green_INN.png"] forState:UIControlStateNormal];
            [varInnovationG addTarget:self action:@selector(showInnovation:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varInnovationG];
            // End Changed a UIButton a BonUsage green
            
            // Changed a UIButton Resume grey
            [self.varSummary removeFromSuperview];
            
            varSummaryG = [UIButton buttonWithType:UIButtonTypeCustom];
            varSummaryG.frame = CGRectMake(860, 6, 149, 45);
            [varSummaryG setImage:[UIImage imageNamed:@"button-Green_S.png"] forState:UIControlStateNormal];
            [varSummaryG addTarget:self action:@selector(showSumary:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varSummaryG];
            // End Changed a UIButton green
            
            NSLog(@"Page 12");
            
        }
        
        else if (page == 13)
        {
            
            
            
            [varHomeGreen removeFromSuperview];
            [varIntroductionGrey removeFromSuperview];
            [varReliabilityG removeFromSuperview];
            [varPuretyG removeFromSuperview];
            [varPortabilityG removeFromSuperview];
            [varInnovationG removeFromSuperview];
            [varSummaryG removeFromSuperview];
            
            

            
            // Suppression des zoom1 et zoom2 et ref...
            imageZoom1.image = nil;
            imageZoom2.image = nil;
            resGame.image = nil;
            
            [pageControl removeFromSuperview];
            
            
            
            
            
            // Animate the way the view gets dismissed.
            UIView *containerView = [self.view viewWithTag:1111];
            
            [UIView animateWithDuration:0.5 animations:^{
                containerView.frame = CGRectMake(0.0, self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height);
            }];
            
            [containerView performSelector:@selector(removeFromSuperview) withObject:nil afterDelay:0.6];
            
            
            
            
            
            
            
            
            
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 716 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 3;
            pageControl.currentPage = 0;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:0.85 green:0.85 blue:0.85 alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:0.00 green:0.60 blue:0.90 alpha:1.0];
            pageControl.backgroundColor = [UIColor whiteColor];
            [self.view addSubview:pageControl];
            
            
            
            
            
            
            
            
            
            [slider removeFromSuperview];
            [slider2 removeFromSuperview];
            [slider3 removeFromSuperview];
            [slider4 removeFromSuperview];
            
            
            
            
            // SLIDER//
            CGRect targetSlide = CGRectMake ( self.scrollView.frame.size.width * 14, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat SlideWidth = 200.0;
            CGFloat SlideHeight = 200.0;
            
            CGRect frameSlide = CGRectMake(targetSlide.origin.x + 250 - SlideWidth / 2, targetSlide.origin.y + 400 - SlideHeight / 2, SlideWidth, SlideHeight);
            
            slider = [[UISlider alloc] initWithFrame:frameSlide];
            
            //Transforme le slider de type Vertical
            slider.transform=CGAffineTransformRotate(slider.transform,270.0/180*M_PI);
            [slider addTarget:self action:@selector(sliderValueChanged:) forControlEvents:UIControlEventValueChanged];
            [slider setBackgroundColor:[UIColor clearColor]];
            slider.minimumValue = 0.0;
            slider.maximumValue = 50.0;
            slider.continuous = YES;
            slider.value = 0.0;
            
            
            [slider setThumbImage:[UIImage imageNamed:@"bouton-40px.png"]
                         forState:UIControlStateNormal];
            [slider setThumbImage:[UIImage imageNamed:@"bouton-55px-ombre.png"]
                         forState:UIControlStateHighlighted];
            [slider setMinimumTrackImage:[UIImage imageNamed:@"barre-verte-NEW.png"]
                                forState:UIControlStateNormal];
            [slider setMaximumTrackImage:[UIImage imageNamed:@"barre-grise-NEW.png"]
                                forState:UIControlStateNormal];
            
            
            
            //expand slider hit area
            slider.frame = CGRectInset(slider.frame, 0, -10);
            
            [self.scrollView addSubview:slider];
            
            
            
            
            
            
            
            
            
            
            
            // SLIDER//
            CGRect targetSlide2 = CGRectMake ( self.scrollView.frame.size.width * 14, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat SlideWidth2 = 200.0;
            CGFloat SlideHeight2 = 200.0;
            
            CGRect frameSlide2 = CGRectMake(targetSlide2.origin.x + 450 - SlideWidth2 / 2, targetSlide2.origin.y + 400 - SlideHeight2 / 2, SlideWidth2, SlideHeight2);
            
            slider2 = [[UISlider alloc] initWithFrame:frameSlide2];
            
            //Transforme le slider de type Vertical
            slider2.transform=CGAffineTransformRotate(slider2.transform,270.0/180*M_PI);
            [slider2 addTarget:self action:@selector(sliderValueChanged2:) forControlEvents:UIControlEventValueChanged];
            [slider2 setBackgroundColor:[UIColor clearColor]];
            slider2.minimumValue = 0.0;
            slider2.maximumValue = 50.0;
            slider2.continuous = YES;
            slider2.value = 0.0;
            
            [slider2 setThumbImage:[UIImage imageNamed:@"bouton-40px.png"]
                          forState:UIControlStateNormal];
            [slider2 setThumbImage:[UIImage imageNamed:@"bouton-55px-ombre.png"]
                          forState:UIControlStateHighlighted];
            [slider2 setMinimumTrackImage:[UIImage imageNamed:@"barre-verte-NEW.png"]
                                 forState:UIControlStateNormal];
            [slider2 setMaximumTrackImage:[UIImage imageNamed:@"barre-grise-NEW.png"]
                                 forState:UIControlStateNormal];
            //expand slider hit area
            slider2.frame = CGRectInset(slider2.frame, 0, -10);
            
            [self.scrollView addSubview:slider2];
            
            
            
            
            
            
            
            
            
            
            
            
            
            // SLIDER//
            CGRect targetSlide3 = CGRectMake ( self.scrollView.frame.size.width * 14, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat SlideWidth3 = 200.0;
            CGFloat SlideHeight3 = 200.0;
            
            CGRect frameSlide3 = CGRectMake(targetSlide3.origin.x + 650 - SlideWidth3 / 2, targetSlide3.origin.y + 400 - SlideHeight3 / 2, SlideWidth3, SlideHeight3);
            
            slider3 = [[UISlider alloc] initWithFrame:frameSlide3];
            
            //Transforme le slider de type Vertical
            slider3.transform=CGAffineTransformRotate(slider3.transform,270.0/180*M_PI);
            [slider3 addTarget:self action:@selector(sliderValueChanged3:) forControlEvents:UIControlEventValueChanged];
            [slider3 setBackgroundColor:[UIColor clearColor]];
            slider3.minimumValue = 0.0;
            slider3.maximumValue = 50.0;
            slider3.continuous = YES;
            slider3.value = 0.0;
            
            [slider3 setThumbImage:[UIImage imageNamed:@"bouton-40px.png"]
                          forState:UIControlStateNormal];
            [slider3 setThumbImage:[UIImage imageNamed:@"bouton-55px-ombre.png"]
                          forState:UIControlStateHighlighted];
            [slider3 setMinimumTrackImage:[UIImage imageNamed:@"barre-verte-NEW.png"]
                                 forState:UIControlStateNormal];
            [slider3 setMaximumTrackImage:[UIImage imageNamed:@"barre-grise-NEW.png"]
                                 forState:UIControlStateNormal];
            
            //expand slider hit area
            slider3.frame = CGRectInset(slider3.frame, 0, -10);
            
            [self.scrollView addSubview:slider3];
            
            
            
            
            
            
            
            
            
            
            
            
            // SLIDER//
            CGRect targetSlide4 = CGRectMake ( self.scrollView.frame.size.width * 14, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat SlideWidth4 = 200.0;
            CGFloat SlideHeight4 = 200.0;
            
            CGRect frameSlide4 = CGRectMake(targetSlide4.origin.x + 850 - SlideWidth4 / 2, targetSlide4.origin.y + 400 - SlideHeight4 / 2, SlideWidth4, SlideHeight4);
            
            slider4 = [[UISlider alloc] initWithFrame:frameSlide4];
            
            //Transforme le slider de type Vertical
            slider4.transform=CGAffineTransformRotate(slider4.transform,270.0/180*M_PI);
            [slider4 addTarget:self action:@selector(sliderValueChanged4:) forControlEvents:UIControlEventValueChanged];
            [slider4 setBackgroundColor:[UIColor clearColor]];
            slider4.minimumValue = 0.0;
            slider4.maximumValue = 50.0;
            slider4.continuous = YES;
            slider4.value = 0.0;
            
            
            
            [slider4 setThumbImage:[UIImage imageNamed:@"bouton-40px.png"]
                          forState:UIControlStateNormal];
            [slider4 setThumbImage:[UIImage imageNamed:@"bouton-55px-ombre.png"]
                          forState:UIControlStateHighlighted];
            [slider4 setMinimumTrackImage:[UIImage imageNamed:@"barre-verte-NEW.png"]
                                 forState:UIControlStateNormal];
            [slider4 setMaximumTrackImage:[UIImage imageNamed:@"barre-grise-NEW.png"]
                                 forState:UIControlStateNormal];
            
            
            
            
            //expand slider hit area
            slider4.frame = CGRectInset(slider4.frame, 0, -10);
            
            [self.scrollView addSubview:slider4];
            
            
            
            
            
            
            
            
            
            
            
            
            // Changed a UIButton Home green Current Button
            [self.varHome removeFromSuperview];
            
            varHomeGreen = [UIButton buttonWithType:UIButtonTypeCustom];
            varHomeGreen.frame = CGRectMake(17, 6, 50, 45);
            [varHomeGreen setImage:[UIImage imageNamed:@"button-green_H.png"] forState:UIControlStateNormal];
            [varHomeGreen addTarget:self action:@selector(showHome:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varHomeGreen];
            // END Changed UIButton Home grey Current Button
            
            // Changed UIButton Innovation grey
            [self.varIntroduction removeFromSuperview];
            
            varIntroductionGrey = [UIButton buttonWithType:UIButtonTypeCustom];
            varIntroductionGrey.frame = CGRectMake(75, 6, 149, 45);
            [varIntroductionGrey setImage:[UIImage imageNamed:@"button-Green_I.png"] forState:UIControlStateNormal];
            [varIntroductionGrey addTarget:self action:@selector(showIntro:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varIntroductionGrey];
            // End Changed a UIButton Innovation green
            
            // Changed a UIButton Performance grey
            [self.varReliability removeFromSuperview];
            
            varReliabilityG = [UIButton buttonWithType:UIButtonTypeCustom];
            varReliabilityG.frame = CGRectMake(232, 6, 149, 45);
            [varReliabilityG setImage:[UIImage imageNamed:@"button-Green_R.png"] forState:UIControlStateNormal];
            [varReliabilityG addTarget:self action:@selector(showReliability:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varReliabilityG];
            // End Changed a UIButton Performance green
            
            // Changed a UIButton Purete grey
            [self.varPurety removeFromSuperview];
            
            varPuretyG = [UIButton buttonWithType:UIButtonTypeCustom];
            varPuretyG.frame = CGRectMake(389, 6, 149, 45);
            [varPuretyG setImage:[UIImage imageNamed:@"button-Green_P.png"] forState:UIControlStateNormal];
            [varPuretyG addTarget:self action:@selector(showPurety:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPuretyG];
            // End changed a UIButton Purete green
            
            // Changed a UIButton Transportabilite grey
            [self.varPortability removeFromSuperview];
            
            varPortabilityG = [UIButton buttonWithType:UIButtonTypeCustom];
            varPortabilityG.frame = CGRectMake(546, 6, 149, 45);
            [varPortabilityG setImage:[UIImage imageNamed:@"button_grey_P.png"] forState:UIControlStateNormal];
            [varPortabilityG addTarget:self action:@selector(showPortability:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPortabilityG];
            // End changed a UIButton transportabilite green
            
            // Changed a UIButton BonUsage grey
            [self.varInnovation removeFromSuperview];
            
            varInnovationG = [UIButton buttonWithType:UIButtonTypeCustom];
            varInnovationG.frame = CGRectMake(703, 6, 149, 45);
            [varInnovationG setImage:[UIImage imageNamed:@"button-Green_INN.png"] forState:UIControlStateNormal];
            [varInnovationG addTarget:self action:@selector(showInnovation:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varInnovationG];
            // End Changed a UIButton a BonUsage green
            
            // Changed a UIButton Resume grey
            [self.varSummary removeFromSuperview];
            
            varSummaryG = [UIButton buttonWithType:UIButtonTypeCustom];
            varSummaryG.frame = CGRectMake(860, 6, 149, 45);
            [varSummaryG setImage:[UIImage imageNamed:@"button-Green_S.png"] forState:UIControlStateNormal];
            [varSummaryG addTarget:self action:@selector(showSumary:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varSummaryG];
            // End Changed a UIButton green
            
            
            
            NSLog(@"Page 13");
            
            
        }
        
        
        else if (page == 14)
        {

            [pageControl removeFromSuperview];
            
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 716 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 3;
            pageControl.currentPage = 1;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:0.85 green:0.85 blue:0.85 alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:0.00 green:0.60 blue:0.90 alpha:1.0];
            pageControl.backgroundColor = [UIColor whiteColor];
            [self.view addSubview:pageControl];
            
            
            
            NSLog(@"Page 14");
            
            
        }
        
        
        
        else if (page == 15)
        {
            

            [slider removeFromSuperview];
            [slider2 removeFromSuperview];
            [slider3 removeFromSuperview];
            [slider4 removeFromSuperview];
            
            
            [pageControl removeFromSuperview];
            
            
            
            // SLIDER//
            CGRect targetSlide = CGRectMake ( self.scrollView.frame.size.width * 14, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat SlideWidth = 200.0;
            CGFloat SlideHeight = 200.0;
            
            CGRect frameSlide = CGRectMake(targetSlide.origin.x + 250 - SlideWidth / 2, targetSlide.origin.y + 400 - SlideHeight / 2, SlideWidth, SlideHeight);
            
            slider = [[UISlider alloc] initWithFrame:frameSlide];
            
            //Transforme le slider de type Vertical
            slider.transform=CGAffineTransformRotate(slider.transform,270.0/180*M_PI);
            [slider addTarget:self action:@selector(sliderValueChanged:) forControlEvents:UIControlEventValueChanged];
            [slider setBackgroundColor:[UIColor clearColor]];
            slider.minimumValue = 0.0;
            slider.maximumValue = 50.0;
            slider.continuous = YES;
            slider.value = 0.0;
            
            
            [slider setThumbImage:[UIImage imageNamed:@"bouton-40px.png"]
                         forState:UIControlStateNormal];
            [slider setThumbImage:[UIImage imageNamed:@"bouton-55px-ombre.png"]
                         forState:UIControlStateHighlighted];
            [slider setMinimumTrackImage:[UIImage imageNamed:@"barre-verte-NEW.png"]
                                forState:UIControlStateNormal];
            [slider setMaximumTrackImage:[UIImage imageNamed:@"barre-grise-NEW.png"]
                                forState:UIControlStateNormal];
            
            //expand slider hit area
            slider.frame = CGRectInset(slider.frame, 0, -10);
            
            
            
            [self.scrollView addSubview:slider];
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            // SLIDER//
            CGRect targetSlide2 = CGRectMake ( self.scrollView.frame.size.width * 14, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat SlideWidth2 = 200.0;
            CGFloat SlideHeight2 = 200.0;
            
            CGRect frameSlide2 = CGRectMake(targetSlide2.origin.x + 450 - SlideWidth2 / 2, targetSlide2.origin.y + 400 - SlideHeight2 / 2, SlideWidth2, SlideHeight2);
            
            slider2 = [[UISlider alloc] initWithFrame:frameSlide2];
            
            //Transforme le slider de type Vertical
            slider2.transform=CGAffineTransformRotate(slider2.transform,270.0/180*M_PI);
            [slider2 addTarget:self action:@selector(sliderValueChanged2:) forControlEvents:UIControlEventValueChanged];
            [slider2 setBackgroundColor:[UIColor clearColor]];
            slider2.minimumValue = 0.0;
            slider2.maximumValue = 50.0;
            slider2.continuous = YES;
            slider2.value = 0.0;
            
            [slider2 setThumbImage:[UIImage imageNamed:@"bouton-40px.png"]
                          forState:UIControlStateNormal];
            [slider2 setThumbImage:[UIImage imageNamed:@"bouton-55px-ombre.png"]
                          forState:UIControlStateHighlighted];
            [slider2 setMinimumTrackImage:[UIImage imageNamed:@"barre-verte-NEW.png"]
                                 forState:UIControlStateNormal];
            [slider2 setMaximumTrackImage:[UIImage imageNamed:@"barre-grise-NEW.png"]
                                 forState:UIControlStateNormal];
            //expand slider hit area
            slider2.frame = CGRectInset(slider2.frame, 0, -10);
            
            [self.scrollView addSubview:slider2];
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            // SLIDER//
            CGRect targetSlide3 = CGRectMake ( self.scrollView.frame.size.width * 14, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat SlideWidth3 = 200.0;
            CGFloat SlideHeight3 = 200.0;
            
            CGRect frameSlide3 = CGRectMake(targetSlide3.origin.x + 650 - SlideWidth3 / 2, targetSlide3.origin.y + 400 - SlideHeight3 / 2, SlideWidth3, SlideHeight3);
            
            slider3 = [[UISlider alloc] initWithFrame:frameSlide3];
            
            //Transforme le slider de type Vertical
            slider3.transform=CGAffineTransformRotate(slider3.transform,270.0/180*M_PI);
            [slider3 addTarget:self action:@selector(sliderValueChanged3:) forControlEvents:UIControlEventValueChanged];
            [slider3 setBackgroundColor:[UIColor clearColor]];
            slider3.minimumValue = 0.0;
            slider3.maximumValue = 50.0;
            slider3.continuous = YES;
            slider3.value = 0.0;
            
            [slider3 setThumbImage:[UIImage imageNamed:@"bouton-40px.png"]
                          forState:UIControlStateNormal];
            [slider3 setThumbImage:[UIImage imageNamed:@"bouton-55px-ombre.png"]
                          forState:UIControlStateHighlighted];
            [slider3 setMinimumTrackImage:[UIImage imageNamed:@"barre-verte-NEW.png"]
                                 forState:UIControlStateNormal];
            [slider3 setMaximumTrackImage:[UIImage imageNamed:@"barre-grise-NEW.png"]
                                 forState:UIControlStateNormal];
            
            //expand slider hit area
            slider3.frame = CGRectInset(slider3.frame, 0, -10);
            
            [self.scrollView addSubview:slider3];
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            // SLIDER//
            CGRect targetSlide4 = CGRectMake ( self.scrollView.frame.size.width * 14, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat SlideWidth4 = 200.0;
            CGFloat SlideHeight4 = 200.0;
            
            CGRect frameSlide4 = CGRectMake(targetSlide4.origin.x + 860 - SlideWidth4 / 2, targetSlide4.origin.y + 400 - SlideHeight4 / 2, SlideWidth4, SlideHeight4);
            
            slider4 = [[UISlider alloc] initWithFrame:frameSlide4];
            
            //Transforme le slider de type Vertical
            slider4.transform=CGAffineTransformRotate(slider4.transform,270.0/180*M_PI);
            [slider4 addTarget:self action:@selector(sliderValueChanged4:) forControlEvents:UIControlEventValueChanged];
            [slider4 setBackgroundColor:[UIColor clearColor]];
            slider4.minimumValue = 0.0;
            slider4.maximumValue = 50.0;
            slider4.continuous = YES;
            slider4.value = 0.0;
            
            [slider4 setThumbImage:[UIImage imageNamed:@"bouton-40px.png"]
                          forState:UIControlStateNormal];
            [slider4 setThumbImage:[UIImage imageNamed:@"bouton-55px-ombre.png"]
                          forState:UIControlStateHighlighted];
            [slider4 setMinimumTrackImage:[UIImage imageNamed:@"barre-verte-NEW.png"]
                                 forState:UIControlStateNormal];
            [slider4 setMaximumTrackImage:[UIImage imageNamed:@"barre-grise-NEW.png"]
                                 forState:UIControlStateNormal];
            
            //expand slider hit area
            slider4.frame = CGRectInset(slider4.frame, 0, -10);
            
            [self.scrollView addSubview:slider4];
            
            
            
            
            
            
            
            
            [varHomeGreen removeFromSuperview];
            [varIntroductionGrey removeFromSuperview];
            [varReliabilityG removeFromSuperview];
            [varPuretyG removeFromSuperview];
            [varPortabilityG removeFromSuperview];
            [varInnovationG removeFromSuperview];
            [varSummaryG removeFromSuperview];
            
            
            
            
            
            
            
            
            
            
            
            
            
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 716 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 3;
            pageControl.currentPage = 3;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:0.85 green:0.85 blue:0.85 alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:0.00 green:0.60 blue:0.90 alpha:1.0];
            pageControl.backgroundColor = [UIColor whiteColor];
            [self.view addSubview:pageControl];
            
            
            
            
            
            
            // Changed a UIButton Home green Current Button
            [self.varHome removeFromSuperview];
            
            varHomeGreen = [UIButton buttonWithType:UIButtonTypeCustom];
            varHomeGreen.frame = CGRectMake(17, 6, 50, 45);
            [varHomeGreen setImage:[UIImage imageNamed:@"button-green_H.png"] forState:UIControlStateNormal];
            [varHomeGreen addTarget:self action:@selector(showHome:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varHomeGreen];
            // END Changed UIButton Home grey Current Button
            
            // Changed UIButton Innovation grey
            [self.varIntroduction removeFromSuperview];
            
            varIntroductionGrey = [UIButton buttonWithType:UIButtonTypeCustom];
            varIntroductionGrey.frame = CGRectMake(75, 6, 149, 45);
            [varIntroductionGrey setImage:[UIImage imageNamed:@"button-Green_I.png"] forState:UIControlStateNormal];
            [varIntroductionGrey addTarget:self action:@selector(showIntro:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varIntroductionGrey];
            // End Changed a UIButton Innovation green
            
            // Changed a UIButton Performance grey
            [self.varReliability removeFromSuperview];
            
            varReliabilityG = [UIButton buttonWithType:UIButtonTypeCustom];
            varReliabilityG.frame = CGRectMake(232, 6, 149, 45);
            [varReliabilityG setImage:[UIImage imageNamed:@"button-Green_R.png"] forState:UIControlStateNormal];
            [varReliabilityG addTarget:self action:@selector(showReliability:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varReliabilityG];
            // End Changed a UIButton Performance green
            
            // Changed a UIButton Purete grey
            [self.varPurety removeFromSuperview];
            
            varPuretyG = [UIButton buttonWithType:UIButtonTypeCustom];
            varPuretyG.frame = CGRectMake(389, 6, 149, 45);
            [varPuretyG setImage:[UIImage imageNamed:@"button-Green_P.png"] forState:UIControlStateNormal];
            [varPuretyG addTarget:self action:@selector(showPurety:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPuretyG];
            // End changed a UIButton Purete green
            
            // Changed a UIButton Transportabilite grey
            [self.varPortability removeFromSuperview];
            
            varPortabilityG = [UIButton buttonWithType:UIButtonTypeCustom];
            varPortabilityG.frame = CGRectMake(546, 6, 149, 45);
            [varPortabilityG setImage:[UIImage imageNamed:@"button_grey_P.png"] forState:UIControlStateNormal];
            [varPortabilityG addTarget:self action:@selector(showPortability:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPortabilityG];
            // End changed a UIButton transportabilite green
            
            // Changed a UIButton BonUsage grey
            [self.varInnovation removeFromSuperview];
            
            varInnovationG = [UIButton buttonWithType:UIButtonTypeCustom];
            varInnovationG.frame = CGRectMake(703, 6, 149, 45);
            [varInnovationG setImage:[UIImage imageNamed:@"button-Green_INN.png"] forState:UIControlStateNormal];
            [varInnovationG addTarget:self action:@selector(showInnovation:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varInnovationG];
            // End Changed a UIButton a BonUsage green
            
            // Changed a UIButton Resume grey
            [self.varSummary removeFromSuperview];
            
            varSummaryG = [UIButton buttonWithType:UIButtonTypeCustom];
            varSummaryG.frame = CGRectMake(860, 6, 149, 45);
            [varSummaryG setImage:[UIImage imageNamed:@"button-Green_S.png"] forState:UIControlStateNormal];
            [varSummaryG addTarget:self action:@selector(showSumary:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varSummaryG];
            // End Changed a UIButton green
            
            
            NSLog(@"Page 15");
            
            
            
        }
        
        
        else if (page == 16)
        {
            
            
            
            [pageControl removeFromSuperview];
            
            
            // Suppression des zoom1 et zoom2 et ref...
            imageZoom1.image = nil;
            imageZoom2.image = nil;
            resGame.image = nil;
            
            
            
            
            
            
            
            // Animate the way the view gets dismissed.
            UIView *containerView = [self.view viewWithTag:1111];
            
            [UIView animateWithDuration:0.5 animations:^{
                containerView.frame = CGRectMake(0.0, self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height);
            }];
            
            [containerView performSelector:@selector(removeFromSuperview) withObject:nil afterDelay:0.6];
            
            
            
            
            
            
            
            
            [varHomeGreen removeFromSuperview];
            [varIntroductionGrey removeFromSuperview];
            [varReliabilityG removeFromSuperview];
            [varPuretyG removeFromSuperview];
            [varPortabilityG removeFromSuperview];
            [varInnovationG removeFromSuperview];
            [varSummaryG removeFromSuperview];
            
            
            
            
            
            
            
            
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 716 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 2;
            pageControl.currentPage = 0;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:0.85 green:0.85 blue:0.85 alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:0.00 green:0.60 blue:0.90 alpha:1.0];
            pageControl.backgroundColor = [UIColor whiteColor];
            [self.view addSubview:pageControl];
            
            
            
            
            
            
            
            
            
            
            // Changed a UIButton Home green Current Button
            [self.varHome removeFromSuperview];
            
            varHomeGreen = [UIButton buttonWithType:UIButtonTypeCustom];
            varHomeGreen.frame = CGRectMake(17, 6, 50, 45);
            [varHomeGreen setImage:[UIImage imageNamed:@"button-green_H.png"] forState:UIControlStateNormal];
            [varHomeGreen addTarget:self action:@selector(showHome:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varHomeGreen];
            // END Changed UIButton Home grey Current Button
            
            // Changed UIButton Innovation grey
            [self.varIntroduction removeFromSuperview];
            
            varIntroductionGrey = [UIButton buttonWithType:UIButtonTypeCustom];
            varIntroductionGrey.frame = CGRectMake(75, 6, 149, 45);
            [varIntroductionGrey setImage:[UIImage imageNamed:@"button-Green_I.png"] forState:UIControlStateNormal];
            [varIntroductionGrey addTarget:self action:@selector(showIntro:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varIntroductionGrey];
            // End Changed a UIButton Innovation green
            
            // Changed a UIButton Performance grey
            [self.varReliability removeFromSuperview];
            
            varReliabilityG = [UIButton buttonWithType:UIButtonTypeCustom];
            varReliabilityG.frame = CGRectMake(232, 6, 149, 45);
            [varReliabilityG setImage:[UIImage imageNamed:@"button-Green_R.png"] forState:UIControlStateNormal];
            [varReliabilityG addTarget:self action:@selector(showReliability:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varReliabilityG];
            // End Changed a UIButton Performance green
            
            // Changed a UIButton Purete grey
            [self.varPurety removeFromSuperview];
            
            varPuretyG = [UIButton buttonWithType:UIButtonTypeCustom];
            varPuretyG.frame = CGRectMake(389, 6, 149, 45);
            [varPuretyG setImage:[UIImage imageNamed:@"button-Green_P.png"] forState:UIControlStateNormal];
            [varPuretyG addTarget:self action:@selector(showPurety:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPuretyG];
            // End changed a UIButton Purete green
            
            // Changed a UIButton Transportabilite grey
            [self.varPortability removeFromSuperview];
            
            varPortabilityG = [UIButton buttonWithType:UIButtonTypeCustom];
            varPortabilityG.frame = CGRectMake(546, 6, 149, 45);
            [varPortabilityG setImage:[UIImage imageNamed:@"button-Green_Po.png"] forState:UIControlStateNormal];
            [varPortabilityG addTarget:self action:@selector(showPortability:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPortabilityG];
            // End changed a UIButton transportabilite green
            
            // Changed a UIButton BonUsage grey
            [self.varInnovation removeFromSuperview];
            
            varInnovationG = [UIButton buttonWithType:UIButtonTypeCustom];
            varInnovationG.frame = CGRectMake(703, 6, 149, 45);
            [varInnovationG setImage:[UIImage imageNamed:@"button_greyIN.png"] forState:UIControlStateNormal];
            [varInnovationG addTarget:self action:@selector(showInnovation:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varInnovationG];
            // End Changed a UIButton a BonUsage green
            
            // Changed a UIButton Resume grey
            [self.varSummary removeFromSuperview];
            
            varSummaryG = [UIButton buttonWithType:UIButtonTypeCustom];
            varSummaryG.frame = CGRectMake(860, 6, 149, 45);
            [varSummaryG setImage:[UIImage imageNamed:@"button-Green_S.png"] forState:UIControlStateNormal];
            [varSummaryG addTarget:self action:@selector(showSumary:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varSummaryG];
            // End Changed a UIButton green

            
            
            
            NSLog(@"Page 16");
            
            
        }
        
        
        else if (page == 17)
        {
            
            

            [varHomeGreen removeFromSuperview];
            [varIntroductionGrey removeFromSuperview];
            [varReliabilityG removeFromSuperview];
            [varPuretyG removeFromSuperview];
            [varPortabilityG removeFromSuperview];
            [varInnovationG removeFromSuperview];
            [varSummaryG removeFromSuperview];
            
            
            
            
            [pageControl removeFromSuperview];
            
            
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 716 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 2;
            pageControl.currentPage = 2;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:0.85 green:0.85 blue:0.85 alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:0.00 green:0.60 blue:0.90 alpha:1.0];
            pageControl.backgroundColor = [UIColor whiteColor];
            [self.view addSubview:pageControl];
            
            
            
            
            
            
            
            
            
            
            // Changed a UIButton Home green Current Button
            [self.varHome removeFromSuperview];
            
            varHomeGreen = [UIButton buttonWithType:UIButtonTypeCustom];
            varHomeGreen.frame = CGRectMake(17, 6, 50, 45);
            [varHomeGreen setImage:[UIImage imageNamed:@"button-green_H.png"] forState:UIControlStateNormal];
            [varHomeGreen addTarget:self action:@selector(showHome:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varHomeGreen];
            // END Changed UIButton Home grey Current Button
            
            // Changed UIButton Innovation grey
            [self.varIntroduction removeFromSuperview];
            
            varIntroductionGrey = [UIButton buttonWithType:UIButtonTypeCustom];
            varIntroductionGrey.frame = CGRectMake(75, 6, 149, 45);
            [varIntroductionGrey setImage:[UIImage imageNamed:@"button-Green_I.png"] forState:UIControlStateNormal];
            [varIntroductionGrey addTarget:self action:@selector(showIntro:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varIntroductionGrey];
            // End Changed a UIButton Innovation green
            
            // Changed a UIButton Performance grey
            [self.varReliability removeFromSuperview];
            
            varReliabilityG = [UIButton buttonWithType:UIButtonTypeCustom];
            varReliabilityG.frame = CGRectMake(232, 6, 149, 45);
            [varReliabilityG setImage:[UIImage imageNamed:@"button-Green_R.png"] forState:UIControlStateNormal];
            [varReliabilityG addTarget:self action:@selector(showReliability:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varReliabilityG];
            // End Changed a UIButton Performance green
            
            // Changed a UIButton Purete grey
            [self.varPurety removeFromSuperview];
            
            varPuretyG = [UIButton buttonWithType:UIButtonTypeCustom];
            varPuretyG.frame = CGRectMake(389, 6, 149, 45);
            [varPuretyG setImage:[UIImage imageNamed:@"button-Green_P.png"] forState:UIControlStateNormal];
            [varPuretyG addTarget:self action:@selector(showPurety:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPuretyG];
            // End changed a UIButton Purete green
            
            // Changed a UIButton Transportabilite grey
            [self.varPortability removeFromSuperview];
            
            varPortabilityG = [UIButton buttonWithType:UIButtonTypeCustom];
            varPortabilityG.frame = CGRectMake(546, 6, 149, 45);
            [varPortabilityG setImage:[UIImage imageNamed:@"button-Green_Po.png"] forState:UIControlStateNormal];
            [varPortabilityG addTarget:self action:@selector(showPortability:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPortabilityG];
            // End changed a UIButton transportabilite green
            
            // Changed a UIButton BonUsage grey
            [self.varInnovation removeFromSuperview];
            
            varInnovationG = [UIButton buttonWithType:UIButtonTypeCustom];
            varInnovationG.frame = CGRectMake(703, 6, 149, 45);
            [varInnovationG setImage:[UIImage imageNamed:@"button_greyIN.png"] forState:UIControlStateNormal];
            [varInnovationG addTarget:self action:@selector(showInnovation:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varInnovationG];
            // End Changed a UIButton a BonUsage green
            
            // Changed a UIButton Resume grey
            [self.varSummary removeFromSuperview];
            
            varSummaryG = [UIButton buttonWithType:UIButtonTypeCustom];
            varSummaryG.frame = CGRectMake(860, 6, 149, 45);
            [varSummaryG setImage:[UIImage imageNamed:@"button-Green_S.png"] forState:UIControlStateNormal];
            [varSummaryG addTarget:self action:@selector(showSumary:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varSummaryG];
            // End Changed a UIButton green
            
            
            
            NSLog(@"Page 17");
            
            
        }
        
        
        else if (page == 18)
        {
            
            
            
            [pageControl removeFromSuperview];
            
            // Suppression des zoom1 et zoom2 et ref...
            imageZoom1.image = nil;
            imageZoom2.image = nil;
            resGame.image = nil;
            
            
            
            
            
            
            
            // Animate the way the view gets dismissed.
            UIView *containerView = [self.view viewWithTag:1111];
            
            [UIView animateWithDuration:0.5 animations:^{
                containerView.frame = CGRectMake(0.0, self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height);
            }];
            
            [containerView performSelector:@selector(removeFromSuperview) withObject:nil afterDelay:0.6];
            
            
            
            
            
            
            [varHomeGreen removeFromSuperview];
            [varIntroductionGrey removeFromSuperview];
            [varReliabilityG removeFromSuperview];
            [varPuretyG removeFromSuperview];
            [varPortabilityG removeFromSuperview];
            [varInnovationG removeFromSuperview];
            [varSummaryG removeFromSuperview];
            
            
            
            
            
            
            
            
            
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 716 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 2;
            pageControl.currentPage = 0;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:0.85 green:0.85 blue:0.85 alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:0.00 green:0.60 blue:0.90 alpha:1.0];
            pageControl.backgroundColor = [UIColor whiteColor];
            [self.view addSubview:pageControl];
            
            
            
            
            
            
            
            // Changed a UIButton Home green Current Button
            [self.varHome removeFromSuperview];
            
            varHomeGreen = [UIButton buttonWithType:UIButtonTypeCustom];
            varHomeGreen.frame = CGRectMake(17, 6, 50, 45);
            [varHomeGreen setImage:[UIImage imageNamed:@"button-green_H.png"] forState:UIControlStateNormal];
            [varHomeGreen addTarget:self action:@selector(showHome:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varHomeGreen];
            // END Changed UIButton Home grey Current Button
            
            // Changed UIButton Innovation grey
            [self.varIntroduction removeFromSuperview];
            
            varIntroductionGrey = [UIButton buttonWithType:UIButtonTypeCustom];
            varIntroductionGrey.frame = CGRectMake(75, 6, 149, 45);
            [varIntroductionGrey setImage:[UIImage imageNamed:@"button-Green_I.png"] forState:UIControlStateNormal];
            [varIntroductionGrey addTarget:self action:@selector(showIntro:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varIntroductionGrey];
            // End Changed a UIButton Innovation green
            
            // Changed a UIButton Performance grey
            [self.varReliability removeFromSuperview];
            
            varReliabilityG = [UIButton buttonWithType:UIButtonTypeCustom];
            varReliabilityG.frame = CGRectMake(232, 6, 149, 45);
            [varReliabilityG setImage:[UIImage imageNamed:@"button-Green_R.png"] forState:UIControlStateNormal];
            [varReliabilityG addTarget:self action:@selector(showReliability:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varReliabilityG];
            // End Changed a UIButton Performance green
            
            // Changed a UIButton Purete grey
            [self.varPurety removeFromSuperview];
            
            varPuretyG = [UIButton buttonWithType:UIButtonTypeCustom];
            varPuretyG.frame = CGRectMake(389, 6, 149, 45);
            [varPuretyG setImage:[UIImage imageNamed:@"button-Green_P.png"] forState:UIControlStateNormal];
            [varPuretyG addTarget:self action:@selector(showPurety:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPuretyG];
            // End changed a UIButton Purete green
            
            // Changed a UIButton Transportabilite grey
            [self.varPortability removeFromSuperview];
            
            varPortabilityG = [UIButton buttonWithType:UIButtonTypeCustom];
            varPortabilityG.frame = CGRectMake(546, 6, 149, 45);
            [varPortabilityG setImage:[UIImage imageNamed:@"button-Green_Po.png"] forState:UIControlStateNormal];
            [varPortabilityG addTarget:self action:@selector(showPortability:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPortabilityG];
            // End changed a UIButton transportabilite green
            
            // Changed a UIButton BonUsage grey
            [self.varInnovation removeFromSuperview];
            
            varInnovationG = [UIButton buttonWithType:UIButtonTypeCustom];
            varInnovationG.frame = CGRectMake(703, 6, 149, 45);
            [varInnovationG setImage:[UIImage imageNamed:@"button-Green_INN.png"] forState:UIControlStateNormal];
            [varInnovationG addTarget:self action:@selector(showInnovation:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varInnovationG];
            // End Changed a UIButton a BonUsage green
            
            // Changed a UIButton Resume grey
            [self.varSummary removeFromSuperview];
            
            varSummaryG = [UIButton buttonWithType:UIButtonTypeCustom];
            varSummaryG.frame = CGRectMake(860, 6, 149, 45);
            [varSummaryG setImage:[UIImage imageNamed:@"button_greyS.png"] forState:UIControlStateNormal];
            [varSummaryG addTarget:self action:@selector(showSumary:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varSummaryG];
            // End Changed a UIButton green
            
            
            
            
            NSLog(@"Page 18");
            
            
        }
        
        
        
        else if (page == 19)
        {
            
            
            [pageControl removeFromSuperview];
            
            
            
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 716 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 2;
            pageControl.currentPage = 2;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:0.85 green:0.85 blue:0.85 alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:0.00 green:0.60 blue:0.90 alpha:1.0];
            pageControl.backgroundColor = [UIColor whiteColor];
            [self.view addSubview:pageControl];
            
            
            
            
            
            [varHomeGreen removeFromSuperview];
            [varIntroductionGrey removeFromSuperview];
            [varReliabilityG removeFromSuperview];
            [varPuretyG removeFromSuperview];
            [varPortabilityG removeFromSuperview];
            [varInnovationG removeFromSuperview];
            [varSummaryG removeFromSuperview];
            
            
            
            
            
            
            // Changed a UIButton Home green Current Button
            [self.varHome removeFromSuperview];
            
            varHomeGreen = [UIButton buttonWithType:UIButtonTypeCustom];
            varHomeGreen.frame = CGRectMake(17, 6, 50, 45);
            [varHomeGreen setImage:[UIImage imageNamed:@"button-green_H.png"] forState:UIControlStateNormal];
            [varHomeGreen addTarget:self action:@selector(showHome:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varHomeGreen];
            // END Changed UIButton Home grey Current Button
            
            // Changed UIButton Innovation grey
            [self.varIntroduction removeFromSuperview];
            
            varIntroductionGrey = [UIButton buttonWithType:UIButtonTypeCustom];
            varIntroductionGrey.frame = CGRectMake(75, 6, 149, 45);
            [varIntroductionGrey setImage:[UIImage imageNamed:@"button-Green_I.png"] forState:UIControlStateNormal];
            [varIntroductionGrey addTarget:self action:@selector(showIntro:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varIntroductionGrey];
            // End Changed a UIButton Innovation green
            
            // Changed a UIButton Performance grey
            [self.varReliability removeFromSuperview];
            
            varReliabilityG = [UIButton buttonWithType:UIButtonTypeCustom];
            varReliabilityG.frame = CGRectMake(232, 6, 149, 45);
            [varReliabilityG setImage:[UIImage imageNamed:@"button-Green_R.png"] forState:UIControlStateNormal];
            [varReliabilityG addTarget:self action:@selector(showReliability:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varReliabilityG];
            // End Changed a UIButton Performance green
            
            // Changed a UIButton Purete grey
            [self.varPurety removeFromSuperview];
            
            varPuretyG = [UIButton buttonWithType:UIButtonTypeCustom];
            varPuretyG.frame = CGRectMake(389, 6, 149, 45);
            [varPuretyG setImage:[UIImage imageNamed:@"button-Green_P.png"] forState:UIControlStateNormal];
            [varPuretyG addTarget:self action:@selector(showPurety:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPuretyG];
            // End changed a UIButton Purete green
            
            // Changed a UIButton Transportabilite grey
            [self.varPortability removeFromSuperview];
            
            varPortabilityG = [UIButton buttonWithType:UIButtonTypeCustom];
            varPortabilityG.frame = CGRectMake(546, 6, 149, 45);
            [varPortabilityG setImage:[UIImage imageNamed:@"button-Green_Po.png"] forState:UIControlStateNormal];
            [varPortabilityG addTarget:self action:@selector(showPortability:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varPortabilityG];
            // End changed a UIButton transportabilite green
            
            // Changed a UIButton BonUsage grey
            [self.varInnovation removeFromSuperview];
            
            varInnovationG = [UIButton buttonWithType:UIButtonTypeCustom];
            varInnovationG.frame = CGRectMake(703, 6, 149, 45);
            [varInnovationG setImage:[UIImage imageNamed:@"button-Green_INN.png"] forState:UIControlStateNormal];
            [varInnovationG addTarget:self action:@selector(showInnovation:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varInnovationG];
            // End Changed a UIButton a BonUsage green
            
            // Changed a UIButton Resume grey
            [self.varSummary removeFromSuperview];
            
            varSummaryG = [UIButton buttonWithType:UIButtonTypeCustom];
            varSummaryG.frame = CGRectMake(860, 6, 149, 45);
            [varSummaryG setImage:[UIImage imageNamed:@"button_greyS.png"] forState:UIControlStateNormal];
            [varSummaryG addTarget:self action:@selector(showSumary:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varSummaryG];
            // End Changed a UIButton green
            
            
            NSLog(@"Page 19");
            
        }
        
        
    }
    else
    {
        // Suppression des zoom1 et zoom2 et ref...
        imageZoom1.image = nil;
        imageZoom2.image = nil;
        resGame.image = nil;
        
        
        
        
        // Animate the way the view gets dismissed.
        UIView *containerView = [self.view viewWithTag:1111];
        
        [UIView animateWithDuration:0.5 animations:^{
            containerView.frame = CGRectMake(0.0, self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height);
        }];
        
        [containerView performSelector:@selector(removeFromSuperview) withObject:nil afterDelay:0.6];
        
        
        
        
        
        
        
        
    }


}













-(void)scrollToImageIndex:(int)index
{
    CGRect desiredVisibleRect = CGRectMake(self.scrollView.frame.size.width * index,
                                           0.0,
                                           self.scrollView.frame.size.width,
                                           self.scrollView.frame.size.height);
    
    [self.scrollView scrollRectToVisible:desiredVisibleRect animated:YES];
}
















- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
    if ([self.view window] == nil)
    {
        self.view = nil;
    }
    return;
}


@end

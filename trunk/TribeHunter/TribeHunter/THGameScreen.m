//
//  THGameScreen.m
//  TribeHunter
//
//  Created by statm on 2014/3/1.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import "Macros.h"
#import "THCore.h"
#import "THGameUI.h"
#import "THGamePausePanel.h"
#import "THGameFinishPanel.h"
#import "THWinPanel.h"
#import "THDefeatPanel.h"
#import "THShopPanel.h"
#import "THSound.h"


// -----------------------------------------------------------------------
#pragma mark - THGameScreen
// -----------------------------------------------------------------------

@implementation THGameScreen {
    THGamePausePanel* _pausePanel;
    THGameFinishPanel* _finishPanel;
    THWinPanel* _winPanel;
    THDefeatPanel* _defeatPanel;
    UIButton* _cuePointPanel;
    THShopPanel* _shopPanel;
}

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self initUI];
        [self initCocos2d];
        [self initModalUI];
        [self initCuePointUI];
    }
    return self;
}

- (void)initUI {
    _gameUI = [[THGameUI alloc] initWithFrame:[self frame]];
    [self addSubview:_gameUI];
}

- (void)initCocos2d {
    // calculate glView size
    CGSize windowSize = [self frame].size;
    CGFloat windowWidth = max(windowSize.width, windowSize.height);
    CGFloat windowHeight = min(windowSize.width, windowSize.height);
    // 568 x 260
    CGRect glViewFrame = CGRectMake(0, 0, windowWidth, windowHeight - 60);
    
    // set up glView and director
    CCGLView *glView = [CCGLView viewWithFrame:glViewFrame
                                   pixelFormat:kEAGLColorFormatRGB565
                                   depthFormat:0
                            preserveBackbuffer:NO
                                    sharegroup:nil
                                 multiSampling:NO
                               numberOfSamples:0];
    
    CCDirectorIOS* _director = (CCDirectorIOS*) [CCDirector sharedDirector];
    _director.displayStats = YES;
    _director.animationInterval = 1./60;
    _director.view = glView;
    _director.projection = kCCDirectorProjection2D;
    
    if( ! [_director enableRetinaDisplay:YES] )
        CCLOG(@"Retina Display Not supported");
    [CCTexture2D setDefaultAlphaPixelFormat:kCCTexture2DPixelFormat_RGBA8888];
    [CCTexture2D PVRImagesHavePremultipliedAlpha:YES];
    
    CCFileUtils *sharedFileUtils = [CCFileUtils sharedFileUtils];
    [sharedFileUtils setEnableFallbackSuffixes:NO];
    [sharedFileUtils setiPhoneRetinaDisplaySuffix:@"-hd"];
    [sharedFileUtils setiPadSuffix:@"-ipad"];
    [sharedFileUtils setiPadRetinaDisplaySuffix:@"-ipadhd"];
    
    _director.delegate = [[THCore sharedCore] navigationController];
    
    // add glView to game screen
    [self addSubview:glView];
    
    // create game scene
    _gameScene = [[THGameScene alloc] init];
}

- (void)initModalUI {
    _pausePanel = [[THGamePausePanel alloc] initWithFrame:[self frame]];
    _pausePanel.hidden = YES;
    [self addSubview:_pausePanel];
    
    _winPanel = [[THWinPanel alloc] initWithFrame:[self frame]];
    _winPanel.hidden = YES;
    [self addSubview:_winPanel];
    
    _defeatPanel = [[THDefeatPanel alloc] initWithFrame:[self frame]];
    _defeatPanel.hidden = YES;
    [self addSubview:_defeatPanel];
    
    _shopPanel = [[THShopPanel alloc] initWithFrame:[self frame]];
    _shopPanel.hidden = YES;
    [self addSubview:_shopPanel];
}

- (void)hideModal {
    _pausePanel.hidden = YES;
    _winPanel.hidden = YES;
    _defeatPanel.hidden = YES;
    _shopPanel.hidden = YES;
}

- (void) initCuePointUI {
    _cuePointPanel = [UIButton buttonWithType:UIButtonTypeCustom];
    _cuePointPanel.frame = CGRectMake(0.0f, 0.0f, 568.0f, 320.0f);
    _cuePointPanel.hidden = YES;
    [self addSubview: _cuePointPanel];
    _cuePointPanel.userInteractionEnabled = YES;
    [_cuePointPanel addTarget:self action:@selector(handleTap) forControlEvents:UIControlEventTouchUpInside];
    [_cuePointPanel setAdjustsImageWhenHighlighted:NO];
}

- (void) showCuePointPanel: (NSString *) cueName{
    UIImage *image = [UIImage imageNamed:cueName];
    [_cuePointPanel setImage:image forState:UIControlStateNormal];
    _cuePointPanel.hidden = FALSE;
}

- (void) handleTap {
    _cuePointPanel.hidden = YES;
    [[[THCore sharedCore] game] resume];
}

- (void)showPausePanel {
    _pausePanel.hidden = NO;
}

- (void)hidePausePanel {
    _pausePanel.hidden = YES;
}

- (void)showWinPanel {
    _winPanel.hidden = NO;
    //[THSound stopMusic];
    //[THSound playMusic:@"win.mp3" loop:YES];

}

- (void)showLosePanel {
    _defeatPanel.hidden = NO;
    //[THSound stopMusic];
    //[THSound playMusic:@"lose.mp3" loop:YES];
    //[THSound playEffect:@"win.mp3" loop:YES];

}

- (void)showShopPanel {
    _shopPanel.hidden = NO;
}

- (void)hideShopPanel {
    _shopPanel.hidden = YES;
}


@end


// -----------------------------------------------------------------------
#pragma mark - THGameScreenController
// -----------------------------------------------------------------------

@implementation THGameScreenController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        [self setView:[[THGameScreen alloc] initWithFrame:[[UIScreen mainScreen] bounds]]];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (BOOL)prefersStatusBarHidden {
    return YES;
}

@end


// -----------------------------------------------------------------------
#pragma mark - THNavigationController (Cocos2dSupport)
// -----------------------------------------------------------------------

@implementation THNavigationController (Cocos2dSupport)

-(NSUInteger)supportedInterfaceOrientations {
	
	// iPhone only
	if( [[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone )
		return UIInterfaceOrientationMaskLandscape;
	
	// iPad only
	return UIInterfaceOrientationMaskLandscape;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	// iPhone only
	if( [[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone )
		return UIInterfaceOrientationIsLandscape(interfaceOrientation);
	
	// iPad only
	// iPhone only
	return UIInterfaceOrientationIsLandscape(interfaceOrientation);
}

-(void) directorDidReshapeProjection:(CCDirector*)director {
    // draw game scene
    if (director.runningScene == nil) {
        [director pushScene:[[[[THCore sharedCore] game] gameScreen] gameScene]];
        [director startAnimation];
        [director pause];
    }
}

@end

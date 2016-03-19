.class public Lcom/ime/implement/setting/SettingsSplitRatioController;
.super Ljava/lang/Object;
.source "SettingsSplitRatioController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ime/implement/setting/SettingsSplitRatioController$SettingsSplitRatioListener;
    }
.end annotation


# static fields
.field public static final KEY_LEFT_PANE_WIDTH_2014:Ljava/lang/String; = "leftPaneWidth2014"

.field public static final OLD_SCREEN_WIDTH:Ljava/lang/String; = "oldScreenWidth"

.field private static final TAG:Ljava/lang/String;

.field private static mOldScreenWidth:I

.field private static mSavedLeftPaneWidth:I


# instance fields
.field private DeltaX:I

.field private mActionBar:Landroid/app/ActionBar;

.field private mActionBarFocusedSplitBar:Landroid/view/View;

.field private mActionBarLeftTransparentSplitBar:Landroid/view/View;

.field private mActionBarRightTransparentSplitBar:Landroid/view/View;

.field private mActionBarSplitBar:Landroid/view/View;

.field private mActionBarSplitHover:Landroid/view/View;

.field private mActivity:Landroid/app/Activity;

.field private mEnableHomeButton:Z

.field private mFocusedSplitBar:Landroid/view/View;

.field private mIsSplitBarInitialized:Z

.field private mLeftActionBarContainer:Landroid/view/View;

.field private mLeftPaneContainer:Landroid/view/View;

.field private mLeftPaneMaxWidth:I

.field private mLeftPaneMinWidth:I

.field private mLeftSnapThreshold:I

.field private mLeftThreshold:I

.field private mLeftTransparentSplitBar:Landroid/view/View;

.field private mListener:Lcom/ime/implement/setting/SettingsSplitRatioController$SettingsSplitRatioListener;

.field private mMovableSplitActionBar:Landroid/view/View;

.field private mMovableSplitBar:Landroid/view/View;

.field private mRightActionBarContainer:Landroid/view/View;

.field private mRightTransparentSplitBar:Landroid/view/View;

.field private mSavedXOFfset:I

.field private mSplitBar:Landroid/view/View;

.field private mSplitBarHoverListener:Landroid/view/View$OnHoverListener;

.field private mSplitBarListener:Landroid/view/View$OnTouchListener;

.field private mSplitHover:Landroid/view/View;

.field private misHomebuttonVisible:Z

.field private screenWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/ime/implement/setting/SettingsSplitRatioController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ime/implement/setting/SettingsSplitRatioController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/app/ActionBar;Lcom/ime/implement/setting/SettingsSplitRatioController$SettingsSplitRatioListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mEnableHomeButton:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->misHomebuttonVisible:Z

    new-instance v1, Lcom/ime/implement/setting/SettingsSplitRatioController$1;

    invoke-direct {v1, p0}, Lcom/ime/implement/setting/SettingsSplitRatioController$1;-><init>(Lcom/ime/implement/setting/SettingsSplitRatioController;)V

    iput-object v1, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mSplitBarListener:Landroid/view/View$OnTouchListener;

    new-instance v1, Lcom/ime/implement/setting/SettingsSplitRatioController$2;

    invoke-direct {v1, p0}, Lcom/ime/implement/setting/SettingsSplitRatioController$2;-><init>(Lcom/ime/implement/setting/SettingsSplitRatioController;)V

    iput-object v1, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mSplitBarHoverListener:Landroid/view/View$OnHoverListener;

    iput-object p1, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mSplitBar:Landroid/view/View;

    iput-object p3, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mLeftTransparentSplitBar:Landroid/view/View;

    iput-object p4, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mRightTransparentSplitBar:Landroid/view/View;

    iput-object p5, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mFocusedSplitBar:Landroid/view/View;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mMovableSplitBar:Landroid/view/View;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mMovableSplitActionBar:Landroid/view/View;

    iput-object p6, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mLeftPaneContainer:Landroid/view/View;

    iput-object p7, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mSplitHover:Landroid/view/View;

    iput-object p8, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mLeftActionBarContainer:Landroid/view/View;

    iput-object p9, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mRightActionBarContainer:Landroid/view/View;

    iput-object p10, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mActionBarSplitBar:Landroid/view/View;

    iput-object p11, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mActionBarLeftTransparentSplitBar:Landroid/view/View;

    iput-object p12, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mActionBarRightTransparentSplitBar:Landroid/view/View;

    iput-object p13, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mActionBarFocusedSplitBar:Landroid/view/View;

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mActionBarSplitHover:Landroid/view/View;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mActionBar:Landroid/app/ActionBar;

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mListener:Lcom/ime/implement/setting/SettingsSplitRatioController$SettingsSplitRatioListener;

    return-void
.end method

.method static synthetic access$000(Lcom/ime/implement/setting/SettingsSplitRatioController;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ime/implement/setting/SettingsSplitRatioController;)I
    .locals 1

    iget v0, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->screenWidth:I

    return v0
.end method

.method static synthetic access$1000(Lcom/ime/implement/setting/SettingsSplitRatioController;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mActionBarFocusedSplitBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$102(Lcom/ime/implement/setting/SettingsSplitRatioController;I)I
    .locals 0

    iput p1, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->screenWidth:I

    return p1
.end method

.method static synthetic access$1100(Lcom/ime/implement/setting/SettingsSplitRatioController;)Lcom/ime/implement/setting/SettingsSplitRatioController$SettingsSplitRatioListener;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mListener:Lcom/ime/implement/setting/SettingsSplitRatioController$SettingsSplitRatioListener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/ime/implement/setting/SettingsSplitRatioController;)I
    .locals 1

    iget v0, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->DeltaX:I

    return v0
.end method

.method static synthetic access$1202(Lcom/ime/implement/setting/SettingsSplitRatioController;I)I
    .locals 0

    iput p1, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->DeltaX:I

    return p1
.end method

.method static synthetic access$1300(Lcom/ime/implement/setting/SettingsSplitRatioController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ime/implement/setting/SettingsSplitRatioController;->setMoveableFocusX(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/ime/implement/setting/SettingsSplitRatioController;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mLeftPaneContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/ime/implement/setting/SettingsSplitRatioController;Landroid/view/View;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ime/implement/setting/SettingsSplitRatioController;->setLeftPaneWidth(Landroid/view/View;IIZ)V

    return-void
.end method

.method static synthetic access$1600(Lcom/ime/implement/setting/SettingsSplitRatioController;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mLeftActionBarContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/ime/implement/setting/SettingsSplitRatioController;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mMovableSplitBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/ime/implement/setting/SettingsSplitRatioController;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mMovableSplitActionBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1900()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/ime/implement/setting/SettingsSplitRatioController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ime/implement/setting/SettingsSplitRatioController;)I
    .locals 1

    invoke-direct {p0}, Lcom/ime/implement/setting/SettingsSplitRatioController;->getCurrentOrientation()I

    move-result v0

    return v0
.end method

.method static synthetic access$302(Lcom/ime/implement/setting/SettingsSplitRatioController;I)I
    .locals 0

    iput p1, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mLeftPaneMinWidth:I

    return p1
.end method

.method static synthetic access$402(Lcom/ime/implement/setting/SettingsSplitRatioController;I)I
    .locals 0

    iput p1, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mLeftPaneMaxWidth:I

    return p1
.end method

.method static synthetic access$500(Lcom/ime/implement/setting/SettingsSplitRatioController;)I
    .locals 1

    iget v0, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mLeftThreshold:I

    return v0
.end method

.method static synthetic access$502(Lcom/ime/implement/setting/SettingsSplitRatioController;I)I
    .locals 0

    iput p1, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mLeftThreshold:I

    return p1
.end method

.method static synthetic access$602(Lcom/ime/implement/setting/SettingsSplitRatioController;I)I
    .locals 0

    iput p1, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mLeftSnapThreshold:I

    return p1
.end method

.method static synthetic access$700(Lcom/ime/implement/setting/SettingsSplitRatioController;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mSplitBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/ime/implement/setting/SettingsSplitRatioController;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mActionBarSplitBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/ime/implement/setting/SettingsSplitRatioController;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mFocusedSplitBar:Landroid/view/View;

    return-object v0
.end method

.method private configureSplitBarListener()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mSplitHover:Landroid/view/View;

    iget-object v1, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mSplitBarHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    iget-object v0, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mLeftTransparentSplitBar:Landroid/view/View;

    iget-object v1, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mSplitBarListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mLeftTransparentSplitBar:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mRightTransparentSplitBar:Landroid/view/View;

    iget-object v1, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mSplitBarListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mRightTransparentSplitBar:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mActionBarSplitHover:Landroid/view/View;

    iget-object v1, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mSplitBarHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    iget-object v0, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mActionBarLeftTransparentSplitBar:Landroid/view/View;

    iget-object v1, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mSplitBarListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mActionBarLeftTransparentSplitBar:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mActionBarRightTransparentSplitBar:Landroid/view/View;

    iget-object v1, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mSplitBarListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mActionBarRightTransparentSplitBar:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method

.method private getCurrentLeftPaneWidth()I
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mLeftPaneContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method private getCurrentOrientation()I
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method

.method private getHomeButtonVisiblity()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->misHomebuttonVisible:Z

    return v0
.end method

.method private getSavedX_OFFSET()I
    .locals 1

    iget v0, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mSavedXOFfset:I

    return v0
.end method

.method private setActionBarSplitBarVisible(I)V
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mActionBarSplitBar:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mActionBarLeftTransparentSplitBar:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mActionBarRightTransparentSplitBar:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mActionBarFocusedSplitBar:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setHomeButtonVisiblity(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mEnableHomeButton:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->misHomebuttonVisible:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setLeftPaneWidth(Landroid/view/View;IIZ)V
    .locals 6

    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    sub-int/2addr p2, p3

    invoke-direct {p0, v5}, Lcom/ime/implement/setting/SettingsSplitRatioController;->setHomeButtonVisiblity(Z)V

    iget v2, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mLeftSnapThreshold:I

    if-ge p2, v2, :cond_2

    iget p2, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mLeftPaneMinWidth:I

    iget-object v2, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-direct {p0, v3}, Lcom/ime/implement/setting/SettingsSplitRatioController;->setHomeButtonVisiblity(Z)V

    iget-object v2, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mRightActionBarContainer:Landroid/view/View;

    invoke-virtual {v2, v4, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    iget-object v2, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mMovableSplitBar:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mFocusedSplitBar:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mSplitBar:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mActionBarSplitBar:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mActionBarFocusedSplitBar:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mMovableSplitActionBar:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-boolean v2, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mIsSplitBarInitialized:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mMovableSplitBar:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mActionBarSplitBar:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mActionBarFocusedSplitBar:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mFocusedSplitBar:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mSplitBar:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mMovableSplitActionBar:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget v2, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->screenWidth:I

    sput v2, Lcom/ime/implement/setting/SettingsSplitRatioController;->mOldScreenWidth:I

    const/4 v1, 0x0

    if-ne p4, v5, :cond_8

    iget-object v2, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0906ce

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sub-int v1, p2, v2

    if-gez v1, :cond_1

    move v1, p2

    :cond_1
    :goto_1
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, p2}, Lcom/ime/implement/setting/SettingsSplitRatioController;->setSavedLeftPaneWidth(I)V

    invoke-direct {p0, p3}, Lcom/ime/implement/setting/SettingsSplitRatioController;->setSavedX_OFFSET(I)V

    return-void

    :cond_2
    iget v2, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mLeftThreshold:I

    if-ge p2, v2, :cond_4

    iget v2, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mLeftSnapThreshold:I

    if-lt p2, v2, :cond_4

    iget-boolean v2, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mEnableHomeButton:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_3
    iget p2, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mLeftThreshold:I

    iget-object v2, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mRightActionBarContainer:Landroid/view/View;

    invoke-virtual {v2, v4, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    iget-object v2, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mMovableSplitBar:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mFocusedSplitBar:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mSplitBar:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mActionBarSplitBar:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mActionBarFocusedSplitBar:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mMovableSplitActionBar:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mLeftPaneMaxWidth:I

    if-le p2, v2, :cond_6

    iget-boolean v2, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mEnableHomeButton:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_5
    iget-object v2, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mMovableSplitBar:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mMovableSplitActionBar:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mActionBarFocusedSplitBar:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget p2, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mLeftPaneMaxWidth:I

    goto/16 :goto_0

    :cond_6
    iget-boolean v2, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mEnableHomeButton:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_7
    iget-object v2, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mRightActionBarContainer:Landroid/view/View;

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    iget-object v2, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mMovableSplitBar:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mFocusedSplitBar:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mSplitBar:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mActionBarFocusedSplitBar:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mMovableSplitActionBar:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_8
    move v1, p2

    goto/16 :goto_1
.end method

.method private setMoveableFocusX(I)V
    .locals 4

    iget-object v0, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mMovableSplitBar:Landroid/view/View;

    iget-object v1, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mMovableSplitBar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int v1, p1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    invoke-direct {p0}, Lcom/ime/implement/setting/SettingsSplitRatioController;->getHomeButtonVisiblity()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mMovableSplitActionBar:Landroid/view/View;

    iget-object v1, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mMovableSplitActionBar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int v1, p1, v1

    iget-object v2, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0906ce

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mMovableSplitActionBar:Landroid/view/View;

    iget-object v1, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mMovableSplitActionBar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int v1, p1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    goto :goto_0
.end method

.method private setSavedLeftPaneWidth(I)V
    .locals 0

    sput p1, Lcom/ime/implement/setting/SettingsSplitRatioController;->mSavedLeftPaneWidth:I

    return-void
.end method

.method private setSavedX_OFFSET(I)V
    .locals 0

    iput p1, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mSavedXOFfset:I

    return-void
.end method


# virtual methods
.method public getSavedLeftPaneWidth()I
    .locals 1

    sget v0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mSavedLeftPaneWidth:I

    return v0
.end method

.method public hideSplitBar()V
    .locals 3

    const/16 v2, 0x8

    iget-object v1, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mSplitBar:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mLeftTransparentSplitBar:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mSplitHover:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mActionBarSplitBar:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mActionBarLeftTransparentSplitBar:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mActionBarSplitHover:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mLeftPaneContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mLeftPaneContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public initialize()V
    .locals 13

    const v12, 0x7f0906d7

    const-wide v10, 0x3fc999999999999aL    # 0.2

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-boolean v3, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mIsSplitBarInitialized:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mLeftPaneContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    sget v3, Lcom/ime/implement/setting/SettingsSplitRatioController;->mSavedLeftPaneWidth:I

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mLeftPaneContainer:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mLeftActionBarContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v3, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mLeftActionBarContainer:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void

    :cond_0
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iget-object v3, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v3, v2, Landroid/graphics/Point;->x:I

    iput v3, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->screenWidth:I

    iget-object v3, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "leftPaneWidth2014"

    invoke-interface {v1, v3, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/ime/implement/setting/SettingsSplitRatioController;->mSavedLeftPaneWidth:I

    const-string v3, "oldScreenWidth"

    invoke-interface {v1, v3, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/ime/implement/setting/SettingsSplitRatioController;->mOldScreenWidth:I

    invoke-direct {p0}, Lcom/ime/implement/setting/SettingsSplitRatioController;->getCurrentOrientation()I

    move-result v3

    if-ne v3, v9, :cond_3

    iget v3, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->screenWidth:I

    int-to-double v4, v3

    const-wide v6, 0x3f9a98eda22f6a51L    # 0.025974

    mul-double/2addr v4, v6

    double-to-int v3, v4

    iput v3, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mLeftPaneMinWidth:I

    iget v3, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->screenWidth:I

    int-to-double v4, v3

    const-wide v6, 0x3fe51eb851eb851fL    # 0.66

    mul-double/2addr v4, v6

    double-to-int v3, v4

    iput v3, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mLeftPaneMaxWidth:I

    iget v3, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->screenWidth:I

    int-to-double v4, v3

    mul-double/2addr v4, v10

    double-to-int v3, v4

    iput v3, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mLeftThreshold:I

    iget v3, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mLeftThreshold:I

    iget-object v4, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mLeftSnapThreshold:I

    :goto_1
    sget v3, Lcom/ime/implement/setting/SettingsSplitRatioController;->mSavedLeftPaneWidth:I

    if-nez v3, :cond_1

    invoke-direct {p0}, Lcom/ime/implement/setting/SettingsSplitRatioController;->getCurrentOrientation()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    iget v3, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->screenWidth:I

    int-to-double v4, v3

    const-wide v6, 0x3fd6666666666666L    # 0.35

    mul-double/2addr v4, v6

    double-to-int v3, v4

    sput v3, Lcom/ime/implement/setting/SettingsSplitRatioController;->mSavedLeftPaneWidth:I

    :cond_1
    :goto_2
    sget v3, Lcom/ime/implement/setting/SettingsSplitRatioController;->mSavedLeftPaneWidth:I

    if-eqz v3, :cond_2

    sget v3, Lcom/ime/implement/setting/SettingsSplitRatioController;->mOldScreenWidth:I

    if-eqz v3, :cond_2

    sget v3, Lcom/ime/implement/setting/SettingsSplitRatioController;->mSavedLeftPaneWidth:I

    iget v4, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->screenWidth:I

    mul-int/2addr v3, v4

    sget v4, Lcom/ime/implement/setting/SettingsSplitRatioController;->mOldScreenWidth:I

    div-int/2addr v3, v4

    sput v3, Lcom/ime/implement/setting/SettingsSplitRatioController;->mSavedLeftPaneWidth:I

    :cond_2
    iget-object v3, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mLeftTransparentSplitBar:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->bringToFront()V

    iget-object v3, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mRightTransparentSplitBar:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->bringToFront()V

    iget-object v3, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mSplitHover:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->bringToFront()V

    iget-object v3, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mActionBarLeftTransparentSplitBar:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->bringToFront()V

    iget-object v3, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mActionBarRightTransparentSplitBar:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->bringToFront()V

    iget-object v3, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mActionBarSplitHover:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->bringToFront()V

    iget-object v3, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mLeftPaneContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/ime/implement/setting/SettingsSplitRatioController;->getSavedLeftPaneWidth()I

    move-result v4

    invoke-direct {p0}, Lcom/ime/implement/setting/SettingsSplitRatioController;->getSavedX_OFFSET()I

    move-result v5

    invoke-direct {p0, v3, v4, v5, v8}, Lcom/ime/implement/setting/SettingsSplitRatioController;->setLeftPaneWidth(Landroid/view/View;IIZ)V

    iget-object v3, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mLeftActionBarContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/ime/implement/setting/SettingsSplitRatioController;->getSavedLeftPaneWidth()I

    move-result v4

    invoke-direct {p0}, Lcom/ime/implement/setting/SettingsSplitRatioController;->getSavedX_OFFSET()I

    move-result v5

    invoke-direct {p0, v3, v4, v5, v9}, Lcom/ime/implement/setting/SettingsSplitRatioController;->setLeftPaneWidth(Landroid/view/View;IIZ)V

    invoke-direct {p0}, Lcom/ime/implement/setting/SettingsSplitRatioController;->configureSplitBarListener()V

    iput-boolean v9, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mIsSplitBarInitialized:Z

    goto/16 :goto_0

    :cond_3
    iget v3, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->screenWidth:I

    int-to-double v4, v3

    const-wide v6, 0x3f93ffef39085f4aL    # 0.019531

    mul-double/2addr v4, v6

    double-to-int v3, v4

    iput v3, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mLeftPaneMinWidth:I

    iget v3, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->screenWidth:I

    int-to-double v4, v3

    const-wide v6, 0x3fe51758e219652cL    # 0.6591

    mul-double/2addr v4, v6

    double-to-int v3, v4

    iput v3, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mLeftPaneMaxWidth:I

    iget v3, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->screenWidth:I

    int-to-double v4, v3

    mul-double/2addr v4, v10

    double-to-int v3, v4

    iput v3, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mLeftThreshold:I

    iget v3, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mLeftThreshold:I

    iget-object v4, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mLeftSnapThreshold:I

    goto/16 :goto_1

    :cond_4
    iget v3, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->screenWidth:I

    int-to-double v4, v3

    const-wide v6, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v4, v6

    double-to-int v3, v4

    sput v3, Lcom/ime/implement/setting/SettingsSplitRatioController;->mSavedLeftPaneWidth:I

    goto/16 :goto_2
.end method

.method public saveLastSplitPreference()V
    .locals 4

    iget-object v1, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "oldScreenWidth"

    iget v3, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->screenWidth:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "leftPaneWidth2014"

    sget v3, Lcom/ime/implement/setting/SettingsSplitRatioController;->mSavedLeftPaneWidth:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setEndableHomeButton(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mEnableHomeButton:Z

    return-void
.end method

.method public setForceInitSplitBar()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mIsSplitBarInitialized:Z

    return-void
.end method

.method public setLeftPaneWidthDefaultForTutorialMode()V
    .locals 6

    const v5, 0x7f0906d5

    const v4, 0x7f0906d4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/ime/implement/setting/SettingsSplitRatioController;->getCurrentOrientation()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mLeftPaneContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/ime/implement/setting/SettingsSplitRatioController;->setLeftPaneWidth(Landroid/view/View;IIZ)V

    iget-object v0, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mLeftActionBarContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/ime/implement/setting/SettingsSplitRatioController;->setLeftPaneWidth(Landroid/view/View;IIZ)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mLeftPaneContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/ime/implement/setting/SettingsSplitRatioController;->setLeftPaneWidth(Landroid/view/View;IIZ)V

    iget-object v0, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mLeftActionBarContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/ime/implement/setting/SettingsSplitRatioController;->setLeftPaneWidth(Landroid/view/View;IIZ)V

    goto :goto_0
.end method

.method public showSplitBar()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mSplitBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mLeftTransparentSplitBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mSplitHover:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mActionBarSplitBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mActionBarLeftTransparentSplitBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/ime/implement/setting/SettingsSplitRatioController;->mActionBarSplitHover:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/ime/implement/setting/SettingsSplitRatioController;->initialize()V

    return-void
.end method

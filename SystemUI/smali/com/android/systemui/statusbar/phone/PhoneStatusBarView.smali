.class public Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
.super Lcom/android/systemui/statusbar/phone/PanelBar;
.source "PhoneStatusBarView.java"


# static fields
.field private static final DEBUG:Z

.field private static final DEBUG_GESTURES:Z = false

.field private static final TAG:Ljava/lang/String; = "PhoneStatusBarView"

.field private static mHorizontalShift:I

.field private static mVerticalShift:I


# instance fields
.field private isRTLlanguage:Z

.field mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private final mBarTransitions:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

.field private mBasePaddingBottom:I

.field private mBasePaddingLeft:I

.field private mBasePaddingRight:I

.field private mBasePaddingTop:I

.field private mCallBackgroundView:Landroid/view/View;

.field private mClearCoverMargin:I

.field private mCocktailBarPresent:Z

.field private mCurrentCoverStatusbarMargin:I

.field private mDirection:I

.field mDisplay:Landroid/view/Display;

.field private mExtraMarginLeft:I

.field mLastFullyOpenedPanel:Lcom/android/systemui/statusbar/phone/PanelView;

.field private mMaxShift:I

.field mNotificationPanel:Lcom/android/systemui/statusbar/phone/PanelView;

.field private mOrientationEventListener:Landroid/view/OrientationEventListener;

.field private mSViewCoverMargin:I

.field private mSViewWalletCoverMargin:I

.field private mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

.field mStatusBarContents:Landroid/view/ViewGroup;

.field mTicker:Landroid/view/ViewGroup;

.field private mTickerPaddingBottom:I

.field private mTickerPaddingLeft:I

.field private mTickerPaddingRight:I

.field private mTickerPaddingTop:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->DEBUG:Z

    sput v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mHorizontalShift:I

    sput v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mVerticalShift:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLastFullyOpenedPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDisplay:Landroid/view/Display;

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mExtraMarginLeft:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCurrentCoverStatusbarMargin:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0435

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mSViewCoverMargin:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0436

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mSViewWalletCoverMargin:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0056

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClearCoverMargin:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0434

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMaxShift:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDirection:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    invoke-static {p1}, Lcom/android/systemui/statusbar/Feature;->hasCocktailBar(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCocktailBarPresent:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCocktailBarPresent:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c04b1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mExtraMarginLeft:I

    :cond_0
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mHasOneSideEdge:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->enable()V

    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setPanelEndMagin()V

    return-void
.end method

.method private setPanelEndMagin()V
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, -0x1

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCocktailBarPresent:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContents:Landroid/view/ViewGroup;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v5}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v5

    if-ne v5, v3, :cond_1

    :goto_0
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->isRTLlanguage:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v3, v4

    goto :goto_0

    :pswitch_0
    const-string v3, "PhoneStatusBarView"

    const-string v4, "Rotation 0"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->isRTLlanguage:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mExtraMarginLeft:I

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    :goto_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContents:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_2
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mExtraMarginLeft:I

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_2

    :pswitch_1
    const-string v3, "PhoneStatusBarView"

    const-string v5, "Rotation 90 || 270"

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContents:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :pswitch_2
    const-string v3, "PhoneStatusBarView"

    const-string v4, "Rotation 180"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->isRTLlanguage:Z

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mExtraMarginLeft:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    :goto_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContents:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_3
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mExtraMarginLeft:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public addPanel(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->addPanel(Lcom/android/systemui/statusbar/phone/PanelView;)V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelView;->getId()I

    move-result v0

    const v1, 0x7f0e021e

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    :cond_0
    return-void
.end method

.method public getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    return-object v0
.end method

.method getTickerPaddingValues()V
    .locals 1

    const v0, 0x7f0e021d

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTicker:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTicker:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTickerPaddingLeft:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTicker:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTickerPaddingRight:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTicker:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTickerPaddingTop:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTicker:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTickerPaddingBottom:I

    return-void
.end method

.method public marqueeStatusBar()V
    .locals 8

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContents:Landroid/view/ViewGroup;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    sget v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mHorizontalShift:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDirection:I

    add-int/2addr v2, v3

    sput v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mHorizontalShift:I

    sget v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mHorizontalShift:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMaxShift:I

    if-gt v2, v3, :cond_1

    sget v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mHorizontalShift:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMaxShift:I

    neg-int v3, v3

    if-ge v2, v3, :cond_2

    :cond_1
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDirection:I

    neg-int v2, v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDirection:I

    :cond_2
    sget v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mVerticalShift:I

    add-int/lit8 v2, v2, 0x1

    rem-int/lit8 v2, v2, 0x4

    sput v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mVerticalShift:I

    sget v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mVerticalShift:I

    add-int/lit8 v2, v2, -0x1

    rem-int/lit8 v1, v2, 0x2

    neg-int v0, v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContents:Landroid/view/ViewGroup;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBasePaddingLeft:I

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCurrentCoverStatusbarMargin:I

    sget v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mHorizontalShift:I

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBasePaddingTop:I

    add-int/2addr v4, v1

    iget v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBasePaddingRight:I

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCurrentCoverStatusbarMargin:I

    sget v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mHorizontalShift:I

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBasePaddingBottom:I

    add-int/2addr v6, v0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/ViewGroup;->setPadding(IIII)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTicker:Landroid/view/ViewGroup;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTicker:Landroid/view/ViewGroup;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTickerPaddingLeft:I

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCurrentCoverStatusbarMargin:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTickerPaddingTop:I

    iget v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTickerPaddingRight:I

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCurrentCoverStatusbarMargin:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTickerPaddingBottom:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->invalidate()V

    goto :goto_0
.end method

.method public onAllPanelsCollapsed()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onAllPanelsCollapsed()V

    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$2;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->postOnAnimation(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLastFullyOpenedPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    return-void
.end method

.method public onClosingFinished()V
    .locals 0

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onClosingFinished()V

    return-void
.end method

.method public onExpandingFinished()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onExpandingFinished()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->onExpandingFinished()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onFinishInflate()V

    const v0, 0x7f0e0214

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContents:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContents:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBasePaddingLeft:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContents:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBasePaddingTop:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContents:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBasePaddingRight:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContents:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBasePaddingBottom:I

    const v0, 0x7f0e0212

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCallBackgroundView:Landroid/view/View;

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->interceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setPanelEndMagin()V

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelBar;->onMeasure(II)V

    return-void
.end method

.method public onPanelFullyOpened(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelFullyOpened(Lcom/android/systemui/statusbar/phone/PanelView;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLastFullyOpenedPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    if-eq p1, v0, :cond_0

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->sendAccessibilityEvent(I)V

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLastFullyOpenedPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    return-void
.end method

.method public onPanelPeeked()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelPeeked()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->makeExpandedVisible(Z)V

    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelBar;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->interceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onTrackingStarted(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->onTrackingStarted(Lcom/android/systemui/statusbar/phone/PanelView;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->onTrackingStarted()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->onTrackingStarted()V

    return-void
.end method

.method public onTrackingStopped(Lcom/android/systemui/statusbar/phone/PanelView;Z)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelBar;->onTrackingStopped(Lcom/android/systemui/statusbar/phone/PanelView;Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->onTrackingStopped(Z)V

    return-void
.end method

.method public panelExpansionChanged(Lcom/android/systemui/statusbar/phone/PanelView;FZ)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelExpansionChanged(Lcom/android/systemui/statusbar/phone/PanelView;FZ)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/ScrimController;->setPanelExpansion(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateCarrierLabelVisibility(Z)V

    return-void
.end method

.method public panelsEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->panelsEnabled()Z

    move-result v0

    return v0
.end method

.method public selectPanelForTouch(Landroid/view/MotionEvent;)Lcom/android/systemui/statusbar/phone/PanelView;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedHeight()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    goto :goto_0
.end method

.method public setBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    return-void
.end method

.method public setCallBackground(I)V
    .locals 2

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCallBackgroundView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCallBackgroundView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    return-void

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const v0, -0xbd74d7

    goto :goto_0

    :pswitch_2
    const v0, -0x59b3e1

    goto :goto_0

    :pswitch_3
    const v0, -0x9b999e

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setCallBackgroundVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCallBackgroundView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setCoverMargin(I)V
    .locals 3

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_0

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCurrentCoverStatusbarMargin:I

    :goto_0
    sparse-switch p1, :sswitch_data_1

    const-string v0, "PhoneStatusBarView"

    const-string v1, "setCoverMargin : Enable focus"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setFocusable(Z)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->marqueeStatusBar()V

    return-void

    :sswitch_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mSViewCoverMargin:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCurrentCoverStatusbarMargin:I

    goto :goto_0

    :sswitch_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mSViewWalletCoverMargin:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCurrentCoverStatusbarMargin:I

    goto :goto_0

    :sswitch_2
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClearCoverMargin:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCurrentCoverStatusbarMargin:I

    goto :goto_0

    :sswitch_3
    const-string v0, "PhoneStatusBarView"

    const-string v1, "setCoverMargin : Disable focus"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setFocusable(Z)V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_3
        0x6 -> :sswitch_3
        0x8 -> :sswitch_3
    .end sparse-switch
.end method

.method public setScrimController(Lcom/android/systemui/statusbar/phone/ScrimController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    return-void
.end method

.method public setStatusBarState(I)V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mHasOneSideEdge:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    goto :goto_0
.end method

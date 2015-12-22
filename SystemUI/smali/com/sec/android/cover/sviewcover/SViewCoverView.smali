.class public Lcom/sec/android/cover/sviewcover/SViewCoverView;
.super Lcom/sec/android/cover/CoverMainFrameView;
.source "SViewCoverView.java"

# interfaces
.implements Lcom/sec/android/cover/widget/PagedView$PageSwitchListener;
.implements Lcom/sec/android/cover/widget/CoverHideEffectView$SViewCoverHideAnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/sviewcover/SViewCoverView$5;,
        Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SViewCoverView"


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mCameraPage:Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;

.field private mCoverState:Lcom/samsung/android/cover/CoverState;

.field private mCurrentPageIndex:Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;

.field private mCurrentUiAlpha:F

.field private mIsAddedMissedEventWidget:Z

.field private mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

.field private mNeedToAddMissedEventWidget:Z

.field private mNormalContentRootView:Landroid/view/ViewGroup;

.field private mPendingIntent:Landroid/content/Intent;

.field private mPinWindowContentRootView:Landroid/view/ViewGroup;

.field private mSViewCoverHideEffectView:Lcom/sec/android/cover/widget/CoverHideEffectView;

.field private mSViewCoverPagerNavigation:Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;

.field private mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

.field private mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

.field private mScreenOffTimerHandler:Lcom/sec/android/cover/manager/CoverPowerManager$OnScreenOffTimerHandler;

.field private mShortcuts:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

.field private mStatusBarState:I

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

.field private mVoiceRecorderDialogContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

.field private mVolumeWarningRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

.field private mWallpaperView:Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/cover/CoverMainFrameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mActivityManager:Landroid/app/ActivityManager;

    iput-boolean v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mNeedToAddMissedEventWidget:Z

    iput-boolean v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mIsAddedMissedEventWidget:Z

    sget-object v0, Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;->HomePage:Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCurrentPageIndex:Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;

    new-instance v0, Lcom/samsung/android/cover/CoverState;

    invoke-direct {v0}, Lcom/samsung/android/cover/CoverState;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mPendingIntent:Landroid/content/Intent;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCurrentUiAlpha:F

    iput v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mStatusBarState:I

    new-instance v0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    new-instance v0, Lcom/sec/android/cover/sviewcover/SViewCoverView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView$2;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mScreenOffTimerHandler:Lcom/sec/android/cover/manager/CoverPowerManager$OnScreenOffTimerHandler;

    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mActivityManager:Landroid/app/ActivityManager;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->requestRemoteViews()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mWallpaperView:Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Lcom/sec/android/cover/sviewcover/SViewCoverPager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/cover/sviewcover/SViewCoverView;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mStatusBarState:I

    return v0
.end method

.method static synthetic access$2100(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2500()I
    .locals 1

    sget v0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mDelayedShowingSequence:I

    return v0
.end method

.method static synthetic access$2600()I
    .locals 1

    sget v0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mDelayedShowingSequence:I

    return v0
.end method

.method static synthetic access$2700(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Lcom/sec/android/cover/widget/CoverHideEffectView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/cover/widget/CoverHideEffectView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->makeSViewMeasureSpec()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->updateViewVisibleState()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->cancelScreenOffTimer()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->startScreenOffTimer()V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    return-object v0
.end method

.method private ensureEffectViewHidden()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/cover/widget/CoverHideEffectView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/cover/widget/CoverHideEffectView;

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/cover/widget/CoverHideEffectView;

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/cover/widget/CoverHideEffectView;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->addView(Landroid/view/View;I)V

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->requestLayout()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/cover/widget/CoverHideEffectView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/widget/CoverHideEffectView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private gotoOpenPage()V
    .locals 4

    const-string v1, "SViewCoverView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gotoMissedPage current page index : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCurrentPageIndex:Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mHomeMissedEventWidget.getMissedCallCount() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    invoke-virtual {v3}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->getMissedCallCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mPendingIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mPendingIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "SViewCoverView"

    const-string v2, "ActivityNotFoundException !!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private hideCoverUi()V
    .locals 5

    const-string v2, "SViewCoverView"

    const-string v3, "hideCoverUi"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    if-eqz v2, :cond_0

    const-string v2, "SViewCoverView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hideCoverUi : SViewPager Count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    invoke-virtual {v4}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->getChildCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->updateSViewCoverUnlockArea(Z)V

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->isCoverOpen()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->moveToMainPage()V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->ensureEffectViewHidden()V

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->isScreenOn()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    const-string v2, "SViewCoverView"

    const-string v3, "handleMessage : Screen is off"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "SViewCoverView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Call state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->wakeUpWithReason()V

    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->releaseWakeLock()V

    return-void

    :cond_3
    const-string v2, "SViewCoverView"

    const-string v3, "handleMessage : Screen is on"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->userActivity()V

    goto :goto_0
.end method

.method private makeSViewMeasureSpec()V
    .locals 8

    const/high16 v7, 0x40000000    # 2.0f

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    invoke-virtual {v4}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/sec/android/sviewcover/R$dimen;->sview_cover_pager_width:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget v5, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v4, v5

    iget v5, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v3, v4, v5

    iget v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const-string v4, "SViewCoverView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "makeSViewMeasureSpec width :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " height : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->measure(II)V

    :cond_0
    return-void
.end method

.method private playAnimationAndHide()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->hideCoverUi()V

    return-void
.end method

.method private requestRemoteViews()V
    .locals 3

    const-string v1, "SViewCoverView"

    const-string v2, "requestRemoteViews : Requesting latest remote views to apps.."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.cover.REQUEST_REMOTEVIEWS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private sendCoverEventProcessingFinishedNotification()V
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->isCoverOpen()Z

    move-result v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.cover.notification.COVER_EVENT_FINISHED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "coverOpen"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string v2, "SViewCoverView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cover event processing notification sent : coverOpen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private showCoverUi()V
    .locals 3

    const-string v0, "SViewCoverView"

    const-string v1, "showCoverUi"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->isCoverOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SViewCoverView"

    const-string v1, "showCoverUi : Cover is opend -> Ignore showCoverUi()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->releaseWakeLock()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/cover/widget/CoverHideEffectView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/cover/widget/CoverHideEffectView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/widget/CoverHideEffectView;->stopAnimation(Z)V

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->ensureEffectViewHidden()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    if-eqz v0, :cond_2

    const-string v0, "SViewCoverView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SViewPager Count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    invoke-virtual {v2}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->makeSViewMeasureSpec()V

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->showWallPaperSetting()V

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->moveToMainPage()V

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->updateViewVisibleState()V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/CoverUtils;->isOperatorLocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->updateCameraVisibility()V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->wakeUp()V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->startScreenOffTimer()V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->releaseWakeLock()V

    goto :goto_0
.end method

.method private showWallPaperSetting()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->isCoverOpen()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, v5}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->setVisibility(I)V

    :cond_2
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v4}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v4

    if-ne v4, v6, :cond_3

    const-string v4, "SViewCoverView"

    const-string v5, "showWallPaperSetting() return because of pin window"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v4}, Lcom/samsung/android/cover/CoverState;->getColor()I

    move-result v0

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/cover/CoverUtils;->isCallActive(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3, v0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->isWallpaperNeedToSetup(I)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/cover/CoverUtils;->isKidsMode(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/cover/CoverUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "SViewCoverView"

    const-string v5, "showCoverUi : Wallpaper color is not setup yet -> Show wallpaper setup activity"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    const-class v5, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v4, 0x10010000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v4, "wallpaper_initialize"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_0
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v4, "SViewCoverView"

    const-string v5, "showCoverUi : ActivityNotFoundException !!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v5}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateCameraVisibility()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCameraPage:Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCameraPage:Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v1, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Camera:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    :cond_1
    return-void
.end method

.method private updateViewVisibleState()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x8

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/CoverUtils;->isKidsMode(Landroid/content/Context;)Z

    move-result v0

    if-ne v0, v5, :cond_1

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Setting:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Contact:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Camera:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Noti:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    invoke-virtual {v1, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setPageNavigationVisibility(I)V

    :cond_0
    :goto_0
    invoke-virtual {p0, v5}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->updateSViewCoverUnlockArea(Z)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/CoverUtils;->isSetupWizardRunning(Landroid/content/Context;)Z

    move-result v1

    if-ne v1, v5, :cond_2

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Setting:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Contact:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Camera:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Noti:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    invoke-virtual {v1, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setPageNavigationVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/CoverUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCameraPage:Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCameraPage:Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->removeView(Landroid/view/View;)V

    :cond_3
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Setting:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Contact:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Camera:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Noti:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    invoke-virtual {v1, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setPageNavigationVisibility(I)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/CoverUtils;->isOperatorLocked(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->updateCameraVisibility()V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCameraPage:Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCameraPage:Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;

    invoke-virtual {v1}, Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCameraPage:Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    invoke-virtual {v3}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->getChildCount()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->addView(Landroid/view/View;I)V

    :cond_6
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Setting:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Contact:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Camera:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Noti:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    invoke-virtual {v1, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setPageNavigationVisibility(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Lcom/sec/android/cover/CoverMainFrameView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    invoke-virtual {v1}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/cover/manager/CoverPowerManager;->resetScreenOffTimer()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getCurrentPageIndex()Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCurrentPageIndex:Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;

    return-object v0
.end method

.method public getTopmostVisibleView()Landroid/view/ViewGroup;
    .locals 2

    sget v1, Lcom/sec/android/sviewcover/R$id;->sview_cover_root:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getUiAlpha()F
    .locals 1

    iget v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCurrentUiAlpha:F

    return v0
.end method

.method public isCoverOpen()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHideAllHandlerMode()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/CoverUtils;->isKidsMode(Landroid/content/Context;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/CoverUtils;->isSetupWizardRunning(Landroid/content/Context;)Z

    move-result v1

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveToMainPage()V
    .locals 4

    const/4 v3, 0x0

    sget-object v1, Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;->HomePage:Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;

    invoke-virtual {p0, v1, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->moveToPage(Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;Z)V

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/CoverUtils;->isKidsMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Camera:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    :goto_0
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    invoke-virtual {v1}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->handleShow()V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Camera:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    goto :goto_0
.end method

.method public moveToPage(IZ)V
    .locals 3

    sget-object v1, Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;->HomePage:Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    invoke-virtual {v2, p1}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    if-ne v2, v0, :cond_1

    sget-object v1, Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;->HomePage:Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;

    :cond_0
    :goto_0
    invoke-virtual {p0, v1, p2}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->moveToPage(Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;Z)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCameraPage:Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCameraPage:Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;

    if-ne v2, v0, :cond_2

    sget-object v1, Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;->CameraPage:Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mShortcuts:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mShortcuts:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    if-ne v2, v0, :cond_0

    sget-object v1, Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;->ShortCutPage:Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;

    goto :goto_0
.end method

.method public moveToPage(Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;Z)V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v1, "SViewCoverView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Move to page : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCurrentPageIndex:Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;

    const/4 v0, 0x0

    sget-object v1, Lcom/sec/android/cover/sviewcover/SViewCoverView$5;->$SwitchMap$com$sec$android$cover$sviewcover$SViewCoverView$PageIndex:[I

    invoke-virtual {p1}, Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->indexOfChild(Landroid/view/View;)I

    move-result v0

    :cond_1
    :goto_1
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    const-string v1, "SViewCoverView"

    const-string v2, "Index page not found!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_2
    const/4 v1, 0x1

    if-ne p2, v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    invoke-virtual {v1, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->snapToPage(I)V

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->indexOfChild(Landroid/view/View;)I

    move-result v0

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCameraPage:Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCameraPage:Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->indexOfChild(Landroid/view/View;)I

    move-result v0

    goto :goto_1

    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mShortcuts:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mShortcuts:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->indexOfChild(Landroid/view/View;)I

    move-result v0

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    invoke-virtual {v1, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->setCurrentPage(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onAttachedToWindow()V
    .locals 2

    const-string v0, "SViewCoverView"

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/sec/android/cover/CoverMainFrameView;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    return-void
.end method

.method public onCoverEvent(Lcom/samsung/android/cover/CoverState;)V
    .locals 5

    const/4 v1, 0x1

    invoke-super {p0, p1}, Lcom/sec/android/cover/CoverMainFrameView;->onCoverEvent(Lcom/samsung/android/cover/CoverState;)V

    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v2

    if-ne v2, v1, :cond_1

    move v0, v1

    :goto_0
    const-string v2, "SViewCoverView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCoverEvent :  isCoverOpen:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " coverType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " coverColor:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getColor()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isLGTModel()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "lock"

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "missing_phone_lock"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "SViewCoverView"

    const-string v2, "onCoverEvent : missing_phone_lock"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->cancelScreenOffTimer()V

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->gotoOpenPage()V

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->playAnimationAndHide()V

    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isSupportNotificationOnCover()Z

    move-result v2

    if-ne v2, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->cancelScreenOffTimer()V

    const-string v1, "SViewCoverView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cover open, seq = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mDelayedShowingSequence:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->showCoverUi()V

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->updateContentRootViewVisibility()V

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/input/InputManager;->coverEventFinished()V

    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isSupportNotificationOnCover()Z

    move-result v2

    if-ne v2, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->startScreenOffTimer()V

    goto :goto_1
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    const-string v0, "SViewCoverView"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/sec/android/cover/CoverMainFrameView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/manager/CoverPowerManager;->setTimerExpireHandler(Lcom/sec/android/cover/manager/CoverPowerManager$OnScreenOffTimerHandler;)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-super {p0}, Lcom/sec/android/cover/CoverMainFrameView;->onFinishInflate()V

    const-string v0, "SViewCoverView"

    const-string v1, "onFinishInflate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->setVisibility(I)V

    sget v0, Lcom/sec/android/sviewcover/R$id;->content_root_normal:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mNormalContentRootView:Landroid/view/ViewGroup;

    sget v0, Lcom/sec/android/sviewcover/R$id;->content_root_pin_window:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mPinWindowContentRootView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mScreenOffTimerHandler:Lcom/sec/android/cover/manager/CoverPowerManager$OnScreenOffTimerHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/manager/CoverPowerManager;->setTimerExpireHandler(Lcom/sec/android/cover/manager/CoverPowerManager$OnScreenOffTimerHandler;)V

    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_wallpaper:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mWallpaperView:Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mWallpaperView:Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mWallpaperView:Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;

    invoke-virtual {v0, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->setProperWallpaper(Z)V

    :cond_0
    sget v0, Lcom/sec/android/sviewcover/R$id;->clear_sound_warning_contatiner:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/widget/RemoteViewContainerView;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mVolumeWarningRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mVolumeWarningRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mVolumeWarningRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    const-string v1, "volume"

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->init(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mVolumeWarningRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    new-instance v1, Lcom/sec/android/cover/sviewcover/SViewCoverView$3;

    invoke-direct {v1, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView$3;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->setOnUpdateListener(Lcom/sec/android/cover/widget/RemoteViewContainerView$OnUpdateListener;)V

    :cond_1
    sget v0, Lcom/sec/android/sviewcover/R$id;->voice_recorder_dialog_contatiner:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/widget/RemoteViewContainerView;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mVoiceRecorderDialogContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mVoiceRecorderDialogContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    const-string v1, "voice_recorder_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->init(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mVoiceRecorderDialogContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    new-instance v1, Lcom/sec/android/cover/sviewcover/SViewCoverView$4;

    invoke-direct {v1, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView$4;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->setOnUpdateListener(Lcom/sec/android/cover/widget/RemoteViewContainerView$OnUpdateListener;)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->removeAllViews()V

    :cond_2
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_pager:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    invoke-virtual {v0, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->setSViewCoverView(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V

    :cond_3
    const-string v0, "SViewCoverView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSViewPager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_hide_effect:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/widget/CoverHideEffectView;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/cover/widget/CoverHideEffectView;

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/cover/widget/CoverHideEffectView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/cover/widget/CoverHideEffectView;

    invoke-virtual {v0, p0}, Lcom/sec/android/cover/widget/CoverHideEffectView;->setListener(Lcom/sec/android/cover/widget/CoverHideEffectView$SViewCoverHideAnimationListener;)V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    if-eqz v0, :cond_9

    iput-boolean v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mIsAddedMissedEventWidget:Z

    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_page_navigation:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverPagerNavigation:Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverPagerNavigation:Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;->setPager(Lcom/sec/android/cover/sviewcover/SViewCoverPager;)V

    :cond_5
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    sget v1, Lcom/sec/android/sviewcover/R$layout;->s_view_cover_shortcuts:I

    invoke-static {v0, v1, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mShortcuts:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mShortcuts:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mShortcuts:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mShortcuts:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    invoke-virtual {v0, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->setCoverView(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V

    :cond_6
    new-instance v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->addView(Landroid/view/View;)V

    :cond_7
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    sget v1, Lcom/sec/android/sviewcover/R$id;->s_view_cover_unlock_area:I

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverPagerNavigation:Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setPagerNavigation(Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    invoke-virtual {v0, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setCoverView(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    sget v1, Lcom/sec/android/sviewcover/R$layout;->s_view_cover_camera_layout:I

    invoke-static {v0, v1, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCameraPage:Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCameraPage:Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCameraPage:Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCameraPage:Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;

    invoke-virtual {v0, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;->setCoverView(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V

    :cond_8
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    invoke-virtual {v0, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->setPageSwitchListener(Lcom/sec/android/cover/widget/PagedView$PageSwitchListener;)V

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->updateMissedEvent()V

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->moveToMainPage()V

    :cond_9
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->requestRemoteViews()V

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->updateContentRootViewVisibility()V

    return-void
.end method

.method public onHideAnimationFinished()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->hideCoverUi()V

    return-void
.end method

.method public onPageSwitched(Landroid/view/View;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->isCoverOpen()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->resetScreenOffTimer()V

    :cond_0
    return-void
.end method

.method public onPageSwitching(Landroid/view/View;I)V
    .locals 2

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->setEnableTouchEvent(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->setEnableTouchEvent(Z)V

    goto :goto_0
.end method

.method public onStatusBarStateChanged(I)V
    .locals 1

    iput p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mStatusBarState:I

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->onStatusBarStateChanged(I)V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->isCoverOpen()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->resetScreenOffTimer()V

    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isSupportNotificationOnCover()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->cancelScreenOffTimer()V

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->startScreenOffTimer()V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/cover/CoverMainFrameView;->onWindowFocusChanged(Z)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->updateViewVisibleState()V

    goto :goto_0
.end method

.method public setCoverUiAlpha(F)V
    .locals 1

    iput p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCurrentUiAlpha:F

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->setCoverUiAlpha(F)V

    :cond_0
    return-void
.end method

.method public setPendingIntent(Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mPendingIntent:Landroid/content/Intent;

    return-void
.end method

.method public setPreviewRootView(Landroid/widget/FrameLayout;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setPreviewRootView(Landroid/widget/FrameLayout;)V

    :cond_0
    return-void
.end method

.method public updateContentRootViewVisibility()V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mPinWindowContentRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mPinWindowContentRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mPinWindowContentRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mNormalContentRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mNormalContentRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->requestLayout()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mNormalContentRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mNormalContentRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mNormalContentRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mPinWindowContentRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mPinWindowContentRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->requestLayout()V

    goto :goto_0
.end method

.method public updateMissedEvent()V
    .locals 14

    const/4 v13, 0x0

    const/4 v3, 0x1

    const-string v2, "SViewCoverView"

    const-string v4, "updateMissedEvent()"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverRemoteViewManager;

    move-result-object v11

    const-string v2, "new_message"

    invoke-virtual {v11, v2}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getRemoteViewInfo(Ljava/lang/String;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;

    move-result-object v12

    const-string v2, "missed_call"

    invoke-virtual {v11, v2}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getRemoteViewInfo(Ljava/lang/String;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverMissedEventManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->clearMissedEvent()V

    iput-boolean v13, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mNeedToAddMissedEventWidget:Z

    if-eqz v12, :cond_0

    iget-boolean v2, v12, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mVisibility:Z

    if-eqz v2, :cond_0

    iput-boolean v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mNeedToAddMissedEventWidget:Z

    new-instance v1, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverMissedEventManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v4, v12, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mTime:J

    iget-object v6, v12, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mRemoteViews:Landroid/widget/RemoteViews;

    iget-object v7, v12, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mSecureModeRemoteViews:Landroid/widget/RemoteViews;

    iget-object v8, v12, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mPendingIntent:Landroid/app/PendingIntent;

    iget v9, v12, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mCount:I

    iget-object v10, v12, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mType:Ljava/lang/String;

    invoke-direct/range {v1 .. v10}, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;-><init>(Lcom/sec/android/cover/manager/CoverMissedEventManager;IJLandroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/app/PendingIntent;ILjava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverMissedEventManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->addMissedEvent(Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;)V

    :cond_0
    if-eqz v0, :cond_1

    iget-boolean v2, v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mVisibility:Z

    if-eqz v2, :cond_1

    iput-boolean v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mNeedToAddMissedEventWidget:Z

    new-instance v1, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverMissedEventManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v4, v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mTime:J

    iget-object v6, v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mRemoteViews:Landroid/widget/RemoteViews;

    iget-object v7, v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mSecureModeRemoteViews:Landroid/widget/RemoteViews;

    iget-object v8, v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mPendingIntent:Landroid/app/PendingIntent;

    iget v9, v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mCount:I

    iget-object v10, v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mType:Ljava/lang/String;

    invoke-direct/range {v1 .. v10}, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;-><init>(Lcom/sec/android/cover/manager/CoverMissedEventManager;IJLandroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/app/PendingIntent;ILjava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverMissedEventManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->addMissedEvent(Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;)V

    :cond_1
    iget-boolean v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mNeedToAddMissedEventWidget:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->updateSViewCoverUnlockArea(Z)V

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->updateMissedEventWidget()V

    :goto_0
    return-void

    :cond_2
    iput-boolean v13, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mNeedToAddMissedEventWidget:Z

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->updateMissedEventWidget()V

    goto :goto_0
.end method

.method public updateMissedEventWidget()V
    .locals 9

    const/4 v8, 0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->isHideAllHandlerMode()Z

    move-result v4

    if-ne v4, v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    const-string v5, "keyguard"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    if-eqz v4, :cond_0

    if-nez v0, :cond_2

    iget-boolean v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mNeedToAddMissedEventWidget:Z

    if-nez v4, :cond_4

    :cond_2
    iget-boolean v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mIsAddedMissedEventWidget:Z

    if-eqz v4, :cond_0

    iput-boolean v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mIsAddedMissedEventWidget:Z

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    invoke-virtual {v4}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->getMissedEventCount()I

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v5, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Noti:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v4, v5, v7}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setPageButtonVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/cover/CoverUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v5, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Setting:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v4, v5, v7}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setPageButtonVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    invoke-virtual {v4, v7}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setPageNavigationVisibility(I)V

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    invoke-virtual {v4, v6}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->setEnableTouchEvent(Z)V

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v5, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Setting:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setPageButtonVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    goto :goto_0

    :cond_4
    iget-boolean v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mNeedToAddMissedEventWidget:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mIsAddedMissedEventWidget:Z

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/cover/CoverUtils;->isKidsMode(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_5

    iput-boolean v8, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mIsAddedMissedEventWidget:Z

    :cond_5
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    invoke-virtual {v4}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->getMissedEventCount()I

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v5, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Noti:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v4, v5, v7}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setPageButtonVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v5, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Setting:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setPageButtonVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    goto :goto_0

    :cond_6
    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    invoke-virtual {v4}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->getMissedCallCount()I

    move-result v2

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    invoke-virtual {v4}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->getUnreadMessageCount()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    invoke-virtual {v4, v2, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->updateNotiPageButton(II)V

    goto/16 :goto_0
.end method

.method public updateSViewCoverUnlockArea(Z)V
    .locals 5

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    invoke-virtual {v3, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    invoke-virtual {v3}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->getCurrentPage()I

    move-result v3

    if-ne v3, v0, :cond_4

    if-eqz p1, :cond_3

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    invoke-virtual {v3}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->handleShow()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    invoke-virtual {v3}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->getMissedCallCount()I

    move-result v1

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    invoke-virtual {v3}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->getUnreadMessageCount()I

    move-result v2

    if-nez v1, :cond_2

    if-nez v2, :cond_2

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mNeedToAddMissedEventWidget:Z

    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->updateMissedEventWidget()V

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    invoke-virtual {v3, v1, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->updateNotiArea(II)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mNeedToAddMissedEventWidget:Z

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    invoke-virtual {v3}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->handleHide()V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    invoke-virtual {v3}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->getMissedCallCount()I

    move-result v1

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    invoke-virtual {v3}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->getUnreadMessageCount()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    invoke-virtual {v3, v1, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->updateNotiArea(II)V

    goto :goto_0
.end method

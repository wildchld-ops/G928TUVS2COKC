.class public Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;
.super Lcom/sec/android/cover/CoverMainFrameView;
.source "MiniViewCoverMainFrameView.java"

# interfaces
.implements Lcom/sec/android/cover/widget/PagedView$PageSwitchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$6;,
        Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private enableMissedEventPage:Z

.field private enableMusicPlayerPage:Z

.field private mCoverState:Lcom/samsung/android/cover/CoverState;

.field private mCurrentPageIndex:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

.field private mDefaultPageIndex:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

.field private mDelayedUpdatePageHandler:Landroid/os/Handler;

.field private mIsCharingState:Z

.field private mIsKidsMode:Z

.field private mMainPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;

.field private mMiniBackGroundView:Landroid/widget/ImageView;

.field private mMissedEventManager:Lcom/sec/android/cover/manager/CoverMissedEventManager;

.field private mMissedEventPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;

.field private mMusicControllerPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMusicPlayerPage;

.field private mPageControlView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private mPowerManager:Lcom/sec/android/cover/manager/CoverPowerManager;

.field private mScreenOffTimerHandler:Lcom/sec/android/cover/manager/CoverPowerManager$OnScreenOffTimerHandler;

.field private mSettingPage:Landroid/view/View;

.field private mSettingsDescriptionText:Landroid/widget/TextView;

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

.field private mWeatherHealthPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/cover/CoverMainFrameView;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;->HomePage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mCurrentPageIndex:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    sget-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;->HomePage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mDefaultPageIndex:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    iput-boolean v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mIsKidsMode:Z

    iput-boolean v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->enableMissedEventPage:Z

    iput-boolean v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->enableMusicPlayerPage:Z

    iput-boolean v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mIsCharingState:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPendingIntent:Landroid/app/PendingIntent;

    new-instance v0, Lcom/samsung/android/cover/CoverState;

    invoke-direct {v0}, Lcom/samsung/android/cover/CoverState;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mCoverState:Lcom/samsung/android/cover/CoverState;

    new-instance v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$1;-><init>(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)V

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mDelayedUpdatePageHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$2;-><init>(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)V

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    new-instance v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$3;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$3;-><init>(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)V

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mScreenOffTimerHandler:Lcom/sec/android/cover/manager/CoverPowerManager$OnScreenOffTimerHandler;

    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/cover/CoverMainFrameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;->HomePage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mCurrentPageIndex:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    sget-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;->HomePage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mDefaultPageIndex:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    iput-boolean v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mIsKidsMode:Z

    iput-boolean v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->enableMissedEventPage:Z

    iput-boolean v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->enableMusicPlayerPage:Z

    iput-boolean v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mIsCharingState:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPendingIntent:Landroid/app/PendingIntent;

    new-instance v0, Lcom/samsung/android/cover/CoverState;

    invoke-direct {v0}, Lcom/samsung/android/cover/CoverState;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mCoverState:Lcom/samsung/android/cover/CoverState;

    new-instance v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$1;-><init>(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)V

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mDelayedUpdatePageHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$2;-><init>(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)V

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    new-instance v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$3;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$3;-><init>(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)V

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mScreenOffTimerHandler:Lcom/sec/android/cover/manager/CoverPowerManager$OnScreenOffTimerHandler;

    iput-object p1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/cover/CoverMainFrameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;->HomePage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mCurrentPageIndex:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    sget-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;->HomePage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mDefaultPageIndex:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    iput-boolean v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mIsKidsMode:Z

    iput-boolean v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->enableMissedEventPage:Z

    iput-boolean v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->enableMusicPlayerPage:Z

    iput-boolean v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mIsCharingState:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPendingIntent:Landroid/app/PendingIntent;

    new-instance v0, Lcom/samsung/android/cover/CoverState;

    invoke-direct {v0}, Lcom/samsung/android/cover/CoverState;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mCoverState:Lcom/samsung/android/cover/CoverState;

    new-instance v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$1;-><init>(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)V

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mDelayedUpdatePageHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$2;-><init>(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)V

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    new-instance v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$3;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$3;-><init>(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)V

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mScreenOffTimerHandler:Lcom/sec/android/cover/manager/CoverPowerManager$OnScreenOffTimerHandler;

    iput-object p1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->updatePage()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)Lcom/sec/android/cover/manager/CoverPowerManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPowerManager:Lcom/sec/android/cover/manager/CoverPowerManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->updateBatteryChargingState(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mIsKidsMode:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->updateMusicPlayer()V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->updateLowBatteryState()V

    return-void
.end method

.method static synthetic access$1500(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->updateSettingsText()V

    return-void
.end method

.method static synthetic access$1600(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPageControlView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->checkKidsMode()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->checkCharging()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)Lcom/sec/android/cover/miniviewcover/MiniViewCoverMusicPlayerPage;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMusicControllerPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMusicPlayerPage;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mDelayedUpdatePageHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->setMiniCoverWallpaper()V

    return-void
.end method

.method private checkCharging()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMainPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMainPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;

    invoke-virtual {v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->isBatteryChargingShown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mIsCharingState:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->moveToMainPage()V

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMainPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;

    invoke-virtual {v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->hideBatteryCharingTextAfterNSEC()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkKidsMode()V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/CoverUtils;->isKidsMode(Landroid/content/Context;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mIsKidsMode:Z

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/CoverUtils;->isKidsMode(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mIsKidsMode:Z

    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->updatePage()V

    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->setMiniCoverWallpaper()V

    :cond_0
    return-void
.end method

.method private hideCoverUi()V
    .locals 5

    sget-object v2, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->TAG:Ljava/lang/String;

    const-string v3, "hideCoverUi"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPageControlView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hideCoverUi : SViewPager Count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPageControlView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

    invoke-virtual {v4}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->getChildCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPageControlView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->isCoverOpen()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->moveToDefaultPage()V

    :cond_1
    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPowerManager:Lcom/sec/android/cover/manager/CoverPowerManager;

    invoke-virtual {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->isScreenOn()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    sget-object v2, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->TAG:Ljava/lang/String;

    const-string v3, "handleMessage : Screen is off"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->TAG:Ljava/lang/String;

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

    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPowerManager:Lcom/sec/android/cover/manager/CoverPowerManager;

    invoke-virtual {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->wakeUpWithReason()V

    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPowerManager:Lcom/sec/android/cover/manager/CoverPowerManager;

    invoke-virtual {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->releaseWakeLock()V

    return-void

    :cond_3
    sget-object v2, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->TAG:Ljava/lang/String;

    const-string v3, "handleMessage : Screen is on"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPowerManager:Lcom/sec/android/cover/manager/CoverPowerManager;

    invoke-virtual {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->userActivity()V

    goto :goto_0
.end method

.method private init()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverMissedEventManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMissedEventManager:Lcom/sec/android/cover/manager/CoverMissedEventManager;

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPowerManager:Lcom/sec/android/cover/manager/CoverPowerManager;

    return-void
.end method

.method private makeSViewMeasureSpec()V
    .locals 8

    const/high16 v7, 0x40000000    # 2.0f

    iget-object v4, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPageControlView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPageControlView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

    invoke-virtual {v4}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v4, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/sec/android/sviewcover/R$dimen;->mini_view_cover_pager_width:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget v5, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v4, v5

    iget v5, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v3, v4, v5

    iget v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sget-object v4, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->TAG:Ljava/lang/String;

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

    iget-object v4, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPageControlView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->measure(II)V

    :cond_0
    return-void
.end method

.method private needAddDeleteWeatherHealthPage()Z
    .locals 2

    sget-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->TAG:Ljava/lang/String;

    const-string v1, "needAddDeleteWeatherHealthPage()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mWeatherHealthPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mWeatherHealthPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;

    invoke-virtual {v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->needAddOrDeletePage()Z

    move-result v0

    goto :goto_0
.end method

.method private requestRemoteViews()V
    .locals 3

    sget-object v1, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->TAG:Ljava/lang/String;

    const-string v2, "requestRemoteViews : Requesting latest remote views to apps.."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.cover.REQUEST_REMOTEVIEWS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private sendCoverEventProcessingFinishedNotification()V
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->isCoverOpen()Z

    move-result v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.cover.notification.COVER_EVENT_FINISHED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "coverOpen"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    sget-object v2, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->TAG:Ljava/lang/String;

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

.method private setDefaultPageIndex()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->enableMusicPlayerPage:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;->MusicControllerPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mDefaultPageIndex:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->enableMusicPlayerPage:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->enableMissedEventPage:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;->MissedEventPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mDefaultPageIndex:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;->HomePage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mDefaultPageIndex:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    goto :goto_0
.end method

.method private setMiniCoverWallpaper()V
    .locals 4

    const/4 v3, 0x1

    sget-object v1, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->TAG:Ljava/lang/String;

    const-string v2, "setMiniCoverWallpaper"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v1, Lcom/sec/android/sviewcover/R$id;->mini_cover_setting_root_wallpaper:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMiniBackGroundView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/manager/MiniViewCoverWallpaperManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/MiniViewCoverWallpaperManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMiniBackGroundView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/CoverUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v1

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMiniBackGroundView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mIsKidsMode:Z

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMiniBackGroundView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/sec/android/sviewcover/R$drawable;->bg_lockscreen_night_mini:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMiniBackGroundView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/MiniViewCoverWallpaperManager;->getCurrentWallpaperResId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method private showCoverUi()V
    .locals 3

    sget-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->TAG:Ljava/lang/String;

    const-string v1, "showCoverUi"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->isCoverOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->TAG:Ljava/lang/String;

    const-string v1, "showCoverUi : Cover is opend -> Ignore showCoverUi()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPowerManager:Lcom/sec/android/cover/manager/CoverPowerManager;

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->releaseWakeLock()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPageControlView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SViewPager Count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPageControlView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

    invoke-virtual {v2}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->makeSViewMeasureSpec()V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->updateWeatherHealthVisibility()V

    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->checkKidsMode()V

    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->checkCharging()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->moveToDefaultPage()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPowerManager:Lcom/sec/android/cover/manager/CoverPowerManager;

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPowerManager:Lcom/sec/android/cover/manager/CoverPowerManager;

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->wakeUp()V

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPowerManager:Lcom/sec/android/cover/manager/CoverPowerManager;

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->startScreenOffTimer()V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPowerManager:Lcom/sec/android/cover/manager/CoverPowerManager;

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->releaseWakeLock()V

    goto :goto_0
.end method

.method private updateBatteryChargingState(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    sget-object v4, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->TAG:Ljava/lang/String;

    const-string v5, "updateBatteryStateWidgetState()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/cover/CoverUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMainPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;

    if-eqz v4, :cond_0

    iget v4, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->plugged:I

    if-eqz v4, :cond_3

    move v0, v2

    :goto_1
    iget-object v4, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMainPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;

    invoke-virtual {v4}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->isBatteryChargingShown()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPowerManager:Lcom/sec/android/cover/manager/CoverPowerManager;

    invoke-virtual {v4}, Lcom/sec/android/cover/manager/CoverPowerManager;->isScreenOn()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->isCoverOpen()Z

    move-result v4

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mIsCharingState:Z

    if-eq v4, v0, :cond_4

    move v1, v2

    :goto_2
    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->moveToMainPage()V

    :cond_2
    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMainPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;

    invoke-virtual {v2, p1, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->updateBatteryChargingState(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;Z)V

    iput-boolean v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mIsCharingState:Z

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_2
.end method

.method private updateLowBatteryState()V
    .locals 3

    sget-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->TAG:Ljava/lang/String;

    const-string v1, "updateLowBatteryState()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/CoverUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMainPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMainPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;

    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPageControlView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPageControlView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

    invoke-virtual {v2}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->getCurrentPage()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->moveToMainPage()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMainPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;

    invoke-virtual {v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->updateLowBatteryState()V

    goto :goto_0
.end method

.method private updateMainPageLayout()V
    .locals 2

    sget-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->TAG:Ljava/lang/String;

    const-string v1, "showBatteryChargingText()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/CoverUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMainPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMainPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;

    invoke-virtual {v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->updateMainPageLayout()V

    goto :goto_0
.end method

.method private updateMusicPlayer()V
    .locals 2

    sget-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->TAG:Ljava/lang/String;

    const-string v1, "updateMusicPlayer()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMusicControllerPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMusicPlayerPage;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMusicControllerPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMusicPlayerPage;

    invoke-virtual {v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMusicPlayerPage;->updateMusicPlayerView()V

    goto :goto_0
.end method

.method private updatePage()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    sget-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->TAG:Ljava/lang/String;

    const-string v1, "updatePage()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPageControlView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPageControlView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

    invoke-virtual {v0, v3}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->setEnableTouchEvent(Z)V

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPageControlView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

    invoke-virtual {v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->removeAllViews()V

    iput-boolean v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->enableMissedEventPage:Z

    iput-boolean v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->enableMusicPlayerPage:Z

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/CoverUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMissedEventPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMissedEventManager:Lcom/sec/android/cover/manager/CoverMissedEventManager;

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getMissedEventCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPageControlView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMissedEventPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->addView(Landroid/view/View;)V

    iput-boolean v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->enableMissedEventPage:Z

    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMainPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPageControlView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMainPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->addView(Landroid/view/View;)V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->setDefaultPageIndex()V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPageControlView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

    invoke-virtual {v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->invalidate()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$5;

    invoke-direct {v1, p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$5;-><init>(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void

    :cond_4
    iget-boolean v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mIsKidsMode:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mSettingPage:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPageControlView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mSettingPage:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->addView(Landroid/view/View;)V

    :cond_5
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMissedEventPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMissedEventManager:Lcom/sec/android/cover/manager/CoverMissedEventManager;

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getMissedEventCount()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPageControlView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMissedEventPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->addView(Landroid/view/View;)V

    iput-boolean v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->enableMissedEventPage:Z

    :cond_6
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMainPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPageControlView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMainPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->addView(Landroid/view/View;)V

    :cond_7
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMusicControllerPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMusicPlayerPage;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMusicControllerPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMusicPlayerPage;

    invoke-virtual {v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMusicPlayerPage;->getMusicPlayerState()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPageControlView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMusicControllerPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMusicPlayerPage;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->addView(Landroid/view/View;)V

    iput-boolean v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->enableMusicPlayerPage:Z

    :cond_8
    iget-boolean v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mIsKidsMode:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mWeatherHealthPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mWeatherHealthPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;

    invoke-virtual {v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->getPageState()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->TAG:Ljava/lang/String;

    const-string v1, "mPageControlView.addView(mWeatherHealthPage)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPageControlView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mWeatherHealthPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->addView(Landroid/view/View;)V

    :cond_9
    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->setDefaultPageIndex()V

    goto :goto_0
.end method

.method private updateSettingsText()V
    .locals 3

    sget-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->TAG:Ljava/lang/String;

    const-string v1, "updateSettingsText()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mSettingsDescriptionText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mSettingsDescriptionText:Landroid/widget/TextView;

    sget v1, Lcom/sec/android/sviewcover/R$string;->mini_view_cover_settings_description:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mSettingsDescriptionText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sec/android/sviewcover/R$string;->mini_view_cover_settings_description:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateWeatherHealthVisibility()V
    .locals 2

    sget-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->TAG:Ljava/lang/String;

    const-string v1, "updateWeatherHealthVisibility()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mWeatherHealthPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->needAddDeleteWeatherHealthPage()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->updatePage()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mWeatherHealthPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;

    invoke-virtual {v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->updateWeatherHealthVisibility()V

    goto :goto_0
.end method

.method private updateWindowMode()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPageControlView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

    invoke-virtual {v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->invalidate()V

    return-void
.end method


# virtual methods
.method public getCurrentPageIndex()Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mCurrentPageIndex:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    return-object v0
.end method

.method public getTopmostVisibleView()Landroid/view/ViewGroup;
    .locals 2

    sget v1, Lcom/sec/android/sviewcover/R$id;->mini_view_cover_root:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public isCoverOpen()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveToDefaultPage()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mDefaultPageIndex:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->moveToPage(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;Z)V

    return-void
.end method

.method public moveToMainPage()V
    .locals 2

    sget-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;->HomePage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->moveToPage(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;Z)V

    return-void
.end method

.method public moveToPage(IZ)V
    .locals 3

    sget-object v1, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;->HomePage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPageControlView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

    invoke-virtual {v2, p1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMainPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMainPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v1, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;->HomePage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    :cond_0
    :goto_0
    invoke-virtual {p0, v1, p2}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->moveToPage(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;Z)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mSettingPage:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mSettingPage:Landroid/view/View;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v1, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;->SettingPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mWeatherHealthPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mWeatherHealthPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v1, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;->WeatherHealthPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    goto :goto_0
.end method

.method public moveToPage(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;Z)V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPageControlView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->TAG:Ljava/lang/String;

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

    iput-object p1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mCurrentPageIndex:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    const/4 v0, 0x0

    sget-object v1, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$6;->$SwitchMap$com$sec$android$cover$miniviewcover$MiniViewCoverMainFrameView$PageIndex:[I

    invoke-virtual {p1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMainPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPageControlView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMainPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    :cond_1
    :goto_1
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    sget-object v1, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->TAG:Ljava/lang/String;

    const-string v2, "Index page not found!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_2
    const/4 v1, 0x1

    if-ne p2, v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPageControlView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

    invoke-virtual {v1, v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->snapToPage(I)V

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMainPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPageControlView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMainPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mSettingPage:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPageControlView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mSettingPage:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    goto :goto_1

    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMissedEventPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPageControlView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMissedEventPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    goto :goto_1

    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMusicControllerPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMusicPlayerPage;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPageControlView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMusicControllerPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMusicPlayerPage;

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    goto :goto_1

    :pswitch_4
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mWeatherHealthPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPageControlView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mWeatherHealthPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPageControlView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

    invoke-virtual {v1, v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->setCurrentPage(I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onAttachedToWindow()V
    .locals 2

    sget-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->TAG:Ljava/lang/String;

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/sec/android/cover/CoverMainFrameView;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    return-void
.end method

.method public onCoverEvent(Lcom/samsung/android/cover/CoverState;)V
    .locals 11

    const/high16 v10, 0x10000000

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v9, 0x0

    invoke-super {p0, p1}, Lcom/sec/android/cover/CoverMainFrameView;->onCoverEvent(Lcom/samsung/android/cover/CoverState;)V

    iput-object p1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v6

    if-ne v6, v4, :cond_2

    move v3, v4

    :goto_0
    sget-object v6, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onCoverEvent :  isCoverOpen:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " coverType:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " coverColor:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getColor()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " PageIndex:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->getCurrentPageIndex()Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPowerManager:Lcom/sec/android/cover/manager/CoverPowerManager;

    invoke-virtual {v6}, Lcom/sec/android/cover/manager/CoverPowerManager;->cancelScreenOffTimer()V

    if-eqz v3, :cond_7

    iget-object v6, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPowerManager:Lcom/sec/android/cover/manager/CoverPowerManager;

    invoke-virtual {v6}, Lcom/sec/android/cover/manager/CoverPowerManager;->isScreenOn()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->hasWindowFocus()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v6, :cond_3

    :try_start_0
    iget-object v4, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v9, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPendingIntent:Landroid/app/PendingIntent;

    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->hideCoverUi()V

    :goto_2
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getAttachState()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mWeatherHealthPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mWeatherHealthPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;

    invoke-virtual {v4}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->unregistBroadcast()V

    :cond_1
    return-void

    :cond_2
    move v3, v5

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object v9, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPendingIntent:Landroid/app/PendingIntent;

    goto :goto_1

    :catchall_0
    move-exception v4

    iput-object v9, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPendingIntent:Landroid/app/PendingIntent;

    throw v4

    :cond_3
    iput-object v9, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->getCurrentPageIndex()Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    move-result-object v6

    sget-object v7, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;->SettingPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    if-ne v6, v7, :cond_4

    sget-object v4, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->TAG:Ljava/lang/String;

    const-string v5, "Goto Settings app Dock display"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.android.settings"

    const-string v5, "com.android.settings.Settings$DockSettingsActivity"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_2
    iget-object v4, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    sget-object v4, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->TAG:Ljava/lang/String;

    const-string v5, "ActivityNotFoundException !!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->getCurrentPageIndex()Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    move-result-object v6

    sget-object v7, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;->MissedEventPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    if-ne v6, v7, :cond_0

    iget-object v6, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMissedEventManager:Lcom/sec/android/cover/manager/CoverMissedEventManager;

    invoke-virtual {v6}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getMissedEventCallCount()I

    move-result v6

    if-lez v6, :cond_6

    iget-object v4, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/cover/CoverUtils;->isTPhoneEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.skt.prod.dialer"

    const-string v6, "com.skt.prod.dialer.activities.main.MainActivity"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v4, 0x34000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v4, "INIT_MAIN_TYPE"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "GOTO_ACTIVITY"

    const/4 v5, 0x2

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_3
    iget-object v4, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v1

    sget-object v4, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->TAG:Ljava/lang/String;

    const-string v5, "ActivityNotFoundException !!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_5
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.android.phone.action.RECENT_CALLS"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v4, 0x10008000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_4
    iget-object v4, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_1

    :catch_3
    move-exception v1

    sget-object v4, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->TAG:Ljava/lang/String;

    const-string v5, "ActivityNotFoundException !!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_6
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v5, "com.android.mms"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "vnd.android-dir/mms-sms"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "fromScover"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_5
    iget-object v4, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_1

    :catch_4
    move-exception v1

    sget-object v4, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->TAG:Ljava/lang/String;

    const-string v5, "ActivityNotFoundException !!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_7
    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->showCoverUi()V

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/input/InputManager;->coverEventFinished()V

    goto/16 :goto_2
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    sget-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->TAG:Ljava/lang/String;

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/sec/android/cover/CoverMainFrameView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPowerManager:Lcom/sec/android/cover/manager/CoverPowerManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/manager/CoverPowerManager;->setTimerExpireHandler(Lcom/sec/android/cover/manager/CoverPowerManager$OnScreenOffTimerHandler;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Lcom/sec/android/cover/CoverMainFrameView;->onFinishInflate()V

    sget-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->TAG:Ljava/lang/String;

    const-string v1, "onFinishInflate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPowerManager:Lcom/sec/android/cover/manager/CoverPowerManager;

    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mScreenOffTimerHandler:Lcom/sec/android/cover/manager/CoverPowerManager$OnScreenOffTimerHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/manager/CoverPowerManager;->setTimerExpireHandler(Lcom/sec/android/cover/manager/CoverPowerManager$OnScreenOffTimerHandler;)V

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPageControlView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPageControlView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

    invoke-virtual {v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->removeAllViews()V

    :cond_0
    sget v0, Lcom/sec/android/sviewcover/R$id;->mini_view_cover_pager:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPageControlView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/CoverUtils;->isKidsMode(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mIsKidsMode:Z

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPageControlView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;

    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMainPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;

    new-instance v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMusicPlayerPage;

    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMusicPlayerPage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMusicControllerPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMusicPlayerPage;

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mContext:Landroid/content/Context;

    sget v1, Lcom/sec/android/sviewcover/R$layout;->mini_view_cover_setting_page:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mSettingPage:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mSettingPage:Landroid/view/View;

    sget v1, Lcom/sec/android/sviewcover/R$id;->mini_cover_settings_description:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mSettingsDescriptionText:Landroid/widget/TextView;

    new-instance v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;

    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMissedEventPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;

    new-instance v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;

    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mWeatherHealthPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPageControlView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

    invoke-virtual {v0, p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->setSViewCoverView(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)V

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPageControlView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

    invoke-virtual {v0, p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->setPageSwitchListener(Lcom/sec/android/cover/widget/PagedView$PageSwitchListener;)V

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPageControlView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->setEnableTouchEvent(Z)V

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMainPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;

    invoke-virtual {v0, p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->setMiniCoverView(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)V

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMissedEventPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;

    invoke-virtual {v0, p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->setMiniCoverView(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)V

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMusicControllerPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMusicPlayerPage;

    invoke-virtual {v0, p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMusicPlayerPage;->setMiniCoverView(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)V

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMissedEventPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;

    new-instance v1, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$4;

    invoke-direct {v1, p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$4;-><init>(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->setOnMissedEventClickListener(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$OnMissedEventClickListenr;)V

    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->updateMissedEvent()V

    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->updatePage()V

    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->setMiniCoverWallpaper()V

    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->checkCharging()Z

    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->updateSettingsText()V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->requestRemoteViews()V

    return-void
.end method

.method public onPageSwitched(Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mSettingPage:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mSettingPage:Landroid/view/View;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;->SettingPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mCurrentPageIndex:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->isCoverOpen()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPowerManager:Lcom/sec/android/cover/manager/CoverPowerManager;

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->resetScreenOffTimer()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMissedEventPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMissedEventPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;->MissedEventPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mCurrentPageIndex:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMusicControllerPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMusicPlayerPage;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMusicControllerPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMusicPlayerPage;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;->MusicControllerPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mCurrentPageIndex:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mWeatherHealthPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mWeatherHealthPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;->WeatherHealthPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mCurrentPageIndex:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;->HomePage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mCurrentPageIndex:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    goto :goto_0
.end method

.method public onPageSwitching(Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->resetScreenOffTimer()V

    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/cover/CoverMainFrameView;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public setPendingIntent(Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPendingIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public updateMissedEvent()V
    .locals 12

    const/4 v3, 0x1

    sget-object v2, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->TAG:Ljava/lang/String;

    const-string v4, "updateMissedEvent()"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverRemoteViewManager;

    move-result-object v10

    const-string v2, "new_message"

    invoke-virtual {v10, v2}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getRemoteViewInfo(Ljava/lang/String;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;

    move-result-object v11

    const-string v2, "missed_call"

    invoke-virtual {v10, v2}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getRemoteViewInfo(Ljava/lang/String;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMissedEventManager:Lcom/sec/android/cover/manager/CoverMissedEventManager;

    invoke-virtual {v2}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->clearMissedEvent()V

    if-eqz v11, :cond_0

    iget-boolean v2, v11, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mVisibility:Z

    if-eqz v2, :cond_0

    new-instance v1, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;

    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMissedEventManager:Lcom/sec/android/cover/manager/CoverMissedEventManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v4, 0x1

    iget-object v6, v11, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mRemoteViews:Landroid/widget/RemoteViews;

    iget-object v7, v11, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mPendingIntent:Landroid/app/PendingIntent;

    iget v8, v11, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mCount:I

    iget-object v9, v11, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mType:Ljava/lang/String;

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;-><init>(Lcom/sec/android/cover/manager/CoverMissedEventManager;IJLandroid/widget/RemoteViews;Landroid/app/PendingIntent;ILjava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMissedEventManager:Lcom/sec/android/cover/manager/CoverMissedEventManager;

    invoke-virtual {v2, v1}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->addMissedEvent(Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;)V

    :cond_0
    if-eqz v0, :cond_1

    iget-boolean v2, v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mVisibility:Z

    if-eqz v2, :cond_1

    new-instance v1, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;

    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMissedEventManager:Lcom/sec/android/cover/manager/CoverMissedEventManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v4, 0x64

    iget-object v6, v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mRemoteViews:Landroid/widget/RemoteViews;

    iget-object v7, v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mPendingIntent:Landroid/app/PendingIntent;

    iget v8, v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mCount:I

    iget-object v9, v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mType:Ljava/lang/String;

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;-><init>(Lcom/sec/android/cover/manager/CoverMissedEventManager;IJLandroid/widget/RemoteViews;Landroid/app/PendingIntent;ILjava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMissedEventManager:Lcom/sec/android/cover/manager/CoverMissedEventManager;

    invoke-virtual {v2, v1}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->addMissedEvent(Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;)V

    :cond_1
    return-void
.end method

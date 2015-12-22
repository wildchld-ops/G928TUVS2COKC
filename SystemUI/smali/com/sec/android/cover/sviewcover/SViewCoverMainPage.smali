.class public Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;
.super Landroid/widget/LinearLayout;
.source "SViewCoverMainPage.java"

# interfaces
.implements Lcom/sec/android/cover/sviewcover/SViewCoverPager$SViewCoverPageCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "SViewCoverMainPage"


# instance fields
.field private mBasicWidgetContainer:Landroid/view/ViewGroup;

.field private mBatteryCharingText:Landroid/widget/TextView;

.field private mBatteryContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

.field private mClockContainer:Landroid/widget/LinearLayout;

.field private mClockWidget:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDisasterAlertText:Landroid/widget/TextView;

.field private mDualClockWidget:Landroid/view/View;

.field private mKidsMusicPlayerContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

.field private mLastBatteryPluggedState:I

.field private mMusicPlayerContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

.field private mOnHoverListener:Landroid/view/View$OnHoverListener;

.field private mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

.field private mStatusBarState:I

.field private mStylizedClockManager:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

.field private mStylizedClockView:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;

.field private mThemeDualImageClock:Landroid/view/View;

.field private mThemeImageClock:Landroid/view/View;

.field private mUnlockArea:Landroid/view/View;

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

.field private mUseThemeClocks:Z

.field private mVoiceRecorderContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

.field private mWeatherHealthContainer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeImageClock:Landroid/view/View;

    iput-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeDualImageClock:Landroid/view/View;

    iput-boolean v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mUseThemeClocks:Z

    iput v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mStatusBarState:I

    iput v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mLastBatteryPluggedState:I

    new-instance v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$1;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    new-instance v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$7;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$7;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    invoke-direct {p0, p1}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->setupChildViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeImageClock:Landroid/view/View;

    iput-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeDualImageClock:Landroid/view/View;

    iput-boolean v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mUseThemeClocks:Z

    iput v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mStatusBarState:I

    iput v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mLastBatteryPluggedState:I

    new-instance v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$1;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    new-instance v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$7;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$7;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    invoke-direct {p0, p1}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->setupChildViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeImageClock:Landroid/view/View;

    iput-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeDualImageClock:Landroid/view/View;

    iput-boolean v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mUseThemeClocks:Z

    iput v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mStatusBarState:I

    iput v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mLastBatteryPluggedState:I

    new-instance v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$1;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    new-instance v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$7;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$7;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    invoke-direct {p0, p1}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->setupChildViews(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->updateDisasterAlertWidgetState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->updateBatteryStateWidgetState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->setClockVisibility()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->setupStylizedClockStyle()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->adjustWidgetVisibility()V

    return-void
.end method

.method private adjustWidgetVisibility()V
    .locals 21

    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isSupportNotificationOnCover()Z

    move-result v18

    if-eqz v18, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/cover/CoverUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v7

    invoke-static {v4}, Lcom/sec/android/cover/CoverUtils;->isKidsMode(Landroid/content/Context;)Z

    move-result v8

    invoke-static {v4}, Lcom/sec/android/cover/CoverUtils;->isCarMode(Landroid/content/Context;)Z

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverRemoteViewManager;

    move-result-object v12

    const-string v18, "music_controller"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->isRemoteViewAvailable(Ljava/lang/String;)Z

    move-result v13

    const-string v18, "kids_music_controller"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->isRemoteViewAvailable(Ljava/lang/String;)Z

    move-result v10

    const-string v18, "voice_recorder"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->isRemoteViewAvailable(Ljava/lang/String;)Z

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mStylizedClockManager:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->isEnabled()Z

    move-result v14

    const/16 v17, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mStylizedClockManager:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->isEnabled()Z

    move-result v18

    if-eqz v18, :cond_a

    const/4 v15, 0x0

    :goto_1
    if-eqz v7, :cond_b

    const/16 v17, 0x8

    const/16 v3, 0x8

    const/16 v15, 0x8

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mMusicPlayerContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mMusicPlayerContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->removeRemoteView()V

    :cond_1
    :goto_2
    const/16 v18, 0x1

    move/from16 v0, v18

    if-eq v13, v0, :cond_2

    const/16 v18, 0x1

    move/from16 v0, v18

    if-eq v10, v0, :cond_2

    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    :cond_2
    const/16 v15, 0x8

    const/16 v2, 0x8

    :cond_3
    if-nez v17, :cond_4

    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isTProject()Z

    move-result v18

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v18

    const-string v19, "lock_show_info"

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInt(Ljava/lang/String;I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_14

    const/4 v9, 0x1

    :goto_3
    if-nez v9, :cond_4

    const/16 v17, 0x8

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mWeatherHealthContainer:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    if-eqz v18, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mWeatherHealthContainer:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mBatteryContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mBatteryContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->setVisibility(I)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mBasicWidgetContainer:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    if-eqz v18, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mBasicWidgetContainer:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mStylizedClockView:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mStylizedClockView:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->setVisibility(I)V

    :cond_8
    if-nez v17, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->updateWeatherHealthContainer()V

    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->getTTSonlyTime()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_a
    const/16 v15, 0x8

    goto/16 :goto_1

    :cond_b
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v13, v0, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mMusicPlayerContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mMusicPlayerContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->showRemoteView()V

    :cond_c
    if-eqz v8, :cond_d

    const/16 v17, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mMusicPlayerContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mMusicPlayerContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->removeRemoteView()V

    :cond_d
    if-eqz v6, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mMusicPlayerContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_e

    const-string v18, "SViewCoverMainPage"

    const-string v19, "Hide MusicPlayerContainer by Carmode"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mMusicPlayerContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->removeRemoteView()V

    :cond_e
    const-string v18, "battery"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getRemoteViewInfo(Ljava/lang/String;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;

    move-result-object v11

    if-eqz v11, :cond_f

    iget-boolean v0, v11, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mVisibility:Z

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_f

    const/16 v17, 0x8

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_10

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->isSHealthInstalled()Z

    move-result v18

    if-nez v18, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->hideRemoteView()V

    :cond_10
    :goto_4
    if-eqz v14, :cond_1

    const/16 v2, 0x8

    goto/16 :goto_2

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v18

    const-string v19, "lock_additional_steps"

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInt(Ljava/lang/String;I)I

    move-result v18

    if-eqz v18, :cond_12

    const/4 v5, 0x1

    :goto_5
    const-string v18, "SViewCoverMainPage"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Is checked S_health ="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->showRemoteView()V

    goto :goto_4

    :cond_12
    const/4 v5, 0x0

    goto :goto_5

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->hideRemoteView()V

    goto :goto_4

    :cond_14
    const/4 v9, 0x0

    goto/16 :goto_3
.end method

.method private getTTSonlyTime()Ljava/lang/String;
    .locals 8

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const-string v0, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    :cond_0
    if-eqz v3, :cond_1

    const-string v5, "kk:mm"

    invoke-static {v5, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    move-object v0, v4

    return-object v0

    :cond_1
    sget-object v5, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mTimeFormat:Ljava/lang/String;

    invoke-static {v5, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    sget-object v5, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AA"

    invoke-static {v6, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "AA"

    invoke-static {v6, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private isSHealthInstalled()Z
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.sec.android.app.shealth"

    invoke-static {v1, v2}, Lcom/sec/android/cover/CoverUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v1, "SViewCoverMainPage"

    const-string v2, "isSHealthInstalled : SHealth is not installed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    const-string v1, "SViewCoverMainPage"

    const-string v2, "isSHealthInstalled : SHealth is installed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setClockVisibility()V
    .locals 7

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/16 v6, 0x8

    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isSupportNotificationOnCover()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v3

    const-string v4, "dualclock_menu_settings"

    invoke-virtual {v3, v4, v2}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/cover/CoverUtils;->isNetworkRoaming(Landroid/content/Context;)Z

    move-result v1

    const-string v3, "SViewCoverMainPage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setClockVisibility : isDualClock="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isRoaming="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mClockWidget:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mDualClockWidget:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mClockWidget:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeImageClock:Landroid/view/View;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeImageClock:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-boolean v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mUseThemeClocks:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mDualClockWidget:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeDualImageClock:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeDualImageClock:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mDualClockWidget:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeDualImageClock:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeDualImageClock:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mClockWidget:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mDualClockWidget:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mDualClockWidget:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeDualImageClock:Landroid/view/View;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeDualImageClock:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-boolean v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mUseThemeClocks:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mClockWidget:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeImageClock:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeImageClock:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_7
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mClockWidget:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeImageClock:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeImageClock:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private setupChildViews(Landroid/content/Context;)V
    .locals 9

    const/4 v3, 0x0

    const/4 v8, -0x1

    const/4 v4, 0x1

    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mContext:Landroid/content/Context;

    sget v6, Lcom/sec/android/sviewcover/R$layout;->s_view_cover_home_widget:I

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2, v8, v8}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->addView(Landroid/view/View;II)V

    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isSupportElasticPlugin()Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/sec/android/sviewcover/R$bool;->sview_cover_theme_clock_image_type:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    :cond_0
    iput-boolean v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mUseThemeClocks:Z

    :goto_0
    sget v3, Lcom/sec/android/sviewcover/R$id;->theme_clock_time_and_date:I

    invoke-virtual {p0, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeImageClock:Landroid/view/View;

    sget v3, Lcom/sec/android/sviewcover/R$id;->theme_dual_clock_time_and_date:I

    invoke-virtual {p0, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeDualImageClock:Landroid/view/View;

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeImageClock:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeImageClock:Landroid/view/View;

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    :cond_1
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeDualImageClock:Landroid/view/View;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeDualImageClock:Landroid/view/View;

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    :cond_2
    sget v3, Lcom/sec/android/sviewcover/R$id;->clock_time_and_date:I

    invoke-virtual {p0, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mClockWidget:Landroid/view/View;

    sget v3, Lcom/sec/android/sviewcover/R$id;->dual_clock_time_and_date:I

    invoke-virtual {p0, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mDualClockWidget:Landroid/view/View;

    sget v3, Lcom/sec/android/sviewcover/R$id;->default_home_widget:I

    invoke-virtual {p0, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mBasicWidgetContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mClockWidget:Landroid/view/View;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mClockWidget:Landroid/view/View;

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    :cond_3
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mDualClockWidget:Landroid/view/View;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mDualClockWidget:Landroid/view/View;

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->setClockVisibility()V

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/cover/manager/CoverBroadcastManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverBroadcastManager;

    move-result-object v1

    sget v3, Lcom/sec/android/sviewcover/R$id;->disaster_alert:I

    invoke-virtual {p0, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mDisasterAlertText:Landroid/widget/TextView;

    const-string v3, "com.samsung.accessory.intent.action.DISASTER_SVIEW_COVER"

    invoke-virtual {v1, v3}, Lcom/sec/android/cover/manager/CoverBroadcastManager;->getLastBroadcastInfo(Ljava/lang/String;)Lcom/sec/android/cover/manager/CoverBroadcastManager$BroadcastInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v3, v0, Lcom/sec/android/cover/manager/CoverBroadcastManager$BroadcastInfo;->mItem:Ljava/lang/Object;

    invoke-direct {p0, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->updateDisasterAlertWidgetState(Ljava/lang/Object;)V

    :cond_5
    sget v3, Lcom/sec/android/sviewcover/R$id;->battery_charging:I

    invoke-virtual {p0, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mBatteryCharingText:Landroid/widget/TextView;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v3}, Lcom/sec/android/cover/manager/CoverBroadcastManager;->getLastBroadcastInfo(Ljava/lang/String;)Lcom/sec/android/cover/manager/CoverBroadcastManager$BroadcastInfo;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v3, v0, Lcom/sec/android/cover/manager/CoverBroadcastManager$BroadcastInfo;->mItem:Ljava/lang/Object;

    invoke-direct {p0, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->updateBatteryStateWidgetState(Ljava/lang/Object;)V

    :cond_6
    sget v3, Lcom/sec/android/sviewcover/R$id;->s_view_cover_weather_health_container:I

    invoke-virtual {p0, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mWeatherHealthContainer:Landroid/widget/LinearLayout;

    sget v3, Lcom/sec/android/sviewcover/R$id;->clear_shealth_contatiner:I

    invoke-virtual {p0, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/cover/widget/RemoteViewContainerView;

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    const-string v5, "shealth"

    invoke-virtual {v3, v5, v4}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->init(Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    new-instance v5, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$2;

    invoke-direct {v5, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$2;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;)V

    invoke-virtual {v3, v5}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->setOnUpdateListener(Lcom/sec/android/cover/widget/RemoteViewContainerView$OnUpdateListener;)V

    :cond_7
    sget v3, Lcom/sec/android/sviewcover/R$id;->clear_battery_contatiner:I

    invoke-virtual {p0, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/cover/widget/RemoteViewContainerView;

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mBatteryContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mBatteryContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mBatteryContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    const-string v5, "battery"

    invoke-virtual {v3, v5, v4}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->init(Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mBatteryContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    new-instance v5, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$3;

    invoke-direct {v5, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$3;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;)V

    invoke-virtual {v3, v5}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->setOnUpdateListener(Lcom/sec/android/cover/widget/RemoteViewContainerView$OnUpdateListener;)V

    :cond_8
    sget v3, Lcom/sec/android/sviewcover/R$id;->music_player_contatiner:I

    invoke-virtual {p0, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/cover/widget/RemoteViewContainerView;

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mMusicPlayerContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mMusicPlayerContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mMusicPlayerContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    const-string v5, "music_controller"

    invoke-virtual {v3, v5, v4}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->init(Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mMusicPlayerContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    new-instance v5, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$4;

    invoke-direct {v5, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$4;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;)V

    invoke-virtual {v3, v5}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->setOnUpdateListener(Lcom/sec/android/cover/widget/RemoteViewContainerView$OnUpdateListener;)V

    :cond_9
    sget v3, Lcom/sec/android/sviewcover/R$id;->kids_music_player_contatiner:I

    invoke-virtual {p0, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/cover/widget/RemoteViewContainerView;

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mKidsMusicPlayerContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mKidsMusicPlayerContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mKidsMusicPlayerContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    const-string v5, "kids_music_controller"

    invoke-virtual {v3, v5, v4}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->init(Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mKidsMusicPlayerContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    new-instance v5, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$5;

    invoke-direct {v5, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$5;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;)V

    invoke-virtual {v3, v5}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->setOnUpdateListener(Lcom/sec/android/cover/widget/RemoteViewContainerView$OnUpdateListener;)V

    :cond_a
    sget v3, Lcom/sec/android/sviewcover/R$id;->voice_recorder_contatiner:I

    invoke-virtual {p0, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/cover/widget/RemoteViewContainerView;

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mVoiceRecorderContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mVoiceRecorderContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mVoiceRecorderContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    const-string v5, "voice_recorder"

    invoke-virtual {v3, v5, v4}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->init(Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mVoiceRecorderContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    new-instance v4, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$6;

    invoke-direct {v4, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$6;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;)V

    invoke-virtual {v3, v4}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->setOnUpdateListener(Lcom/sec/android/cover/widget/RemoteViewContainerView$OnUpdateListener;)V

    :cond_b
    sget v3, Lcom/sec/android/sviewcover/R$id;->s_view_cover_unlock_area:I

    invoke-virtual {p0, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mUnlockArea:Landroid/view/View;

    sget v3, Lcom/sec/android/sviewcover/R$id;->clock_container:I

    invoke-virtual {p0, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mClockContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mStylizedClockManager:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isSupportNotificationOnCover()Z

    move-result v3

    if-nez v3, :cond_c

    new-instance v3, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mStylizedClockView:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;

    :cond_c
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mClockContainer:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mClockContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mStylizedClockView:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_d
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->setupStylizedClockStyle()V

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->adjustWidgetVisibility()V

    return-void

    :cond_e
    iput-boolean v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mUseThemeClocks:Z

    goto/16 :goto_0
.end method

.method private setupStylizedClockStyle()V
    .locals 2

    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isSupportNotificationOnCover()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mStylizedClockView:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mStylizedClockManager:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mStylizedClockView:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mStylizedClockView:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->updateStyle()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mStylizedClockView:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateBatteryStateWidgetState(Ljava/lang/Object;)V
    .locals 11

    const/16 v10, 0x8

    const/4 v9, 0x0

    const/4 v8, 0x1

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mBatteryCharingText:Landroid/widget/TextView;

    if-nez v5, :cond_0

    const-string v5, "SViewCoverMainPage"

    const-string v6, "mBatteryCharingText is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string v5, "SViewCoverMainPage"

    const-string v6, "updateBatteryStateWidget : Intent is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mBatteryCharingText:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    instance-of v5, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;

    if-eqz v5, :cond_2

    move-object v1, p1

    check-cast v1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;

    :cond_2
    if-nez v1, :cond_3

    const-string v5, "SViewCoverMainPage"

    const-string v6, "batteryStatus is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mBatteryCharingText:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget v2, v1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->level:I

    iget v3, v1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->plugged:I

    iput v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mLastBatteryPluggedState:I

    iget v4, v1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->status:I

    const-string v5, "SViewCoverMainPage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateBatteryStateWidget : Plugged = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Level="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_8

    const/4 v0, 0x0

    const/16 v5, 0x64

    if-lt v2, v5, :cond_4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/sec/android/sviewcover/R$string;->battery_charged:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mBatteryCharingText:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mBatteryCharingText:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->isWirelssCharged()Z

    move-result v5

    if-ne v5, v8, :cond_6

    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isVZWModel()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->isWirelssFastCharged()Z

    move-result v5

    if-ne v5, v8, :cond_5

    const-string v5, "SViewCoverMainPage"

    const-string v6, "Detected fast wireless charging"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/sec/android/sviewcover/R$string;->battery_wireless_fast_charging_percent:I

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    const-string v5, "SViewCoverMainPage"

    const-string v6, "Detected wireless charging"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/sec/android/sviewcover/R$string;->battery_wireless_charging_percent:I

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isVZWModel()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->isFastCharging()Z

    move-result v5

    if-ne v5, v8, :cond_7

    const-string v5, "SViewCoverMainPage"

    const-string v6, "Detected fast wire charging"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/sec/android/sviewcover/R$string;->battery_fast_charging_percent:I

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_7
    const-string v5, "SViewCoverMainPage"

    const-string v6, "Detected wire charging"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/sec/android/sviewcover/R$string;->battery_charging_percent:I

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_8
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mBatteryCharingText:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private updateDisasterAlertWidgetState(Ljava/lang/Object;)V
    .locals 4

    const/16 v3, 0x8

    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isSupportNotificationOnCover()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mDisasterAlertText:Landroid/widget/TextView;

    if-nez v1, :cond_1

    const-string v1, "SViewCoverMainPage"

    const-string v2, "mDisasterAlertText is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mDisasterAlertText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_3

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    :cond_3
    if-nez v0, :cond_4

    const-string v1, "SViewCoverMainPage"

    const-string v2, "alertText is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mDisasterAlertText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    const-string v1, "SViewCoverMainPage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAlertVisibility show = true, alert text = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mDisasterAlertText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mDisasterAlertText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateWeatherHealthContainer()V
    .locals 6

    const/4 v2, 0x0

    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isSupportNotificationOnCover()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mWeatherHealthContainer:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mWeatherHealthContainer:Landroid/widget/LinearLayout;

    sget v4, Lcom/sec/android/sviewcover/R$id;->s_view_cover_contextual_holder:I

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v3

    const-string v4, "lock_additional_steps"

    invoke-virtual {v3, v4, v2}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    :goto_1
    const-string v3, "SViewCoverMainPage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Is checked S_health ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    invoke-virtual {v3}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->showRemoteView()V

    :goto_2
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    invoke-virtual {v3}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->getRemoteView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    invoke-virtual {v3}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->getRemoteView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/sec/android/sviewcover/R$dimen;->sview_cover_shealth_margin_left:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v3, v4, v2, v2, v2}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->setPaddingRelative(IIII)V

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    invoke-virtual {v3}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->hideRemoteView()V

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    invoke-virtual {v3, v2, v2, v2, v2}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->setPadding(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public getMissedCallCount()I
    .locals 4

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverMissedEventManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getMissedEventCallCount()I

    move-result v0

    const-string v1, "SViewCoverMainPage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "missedCallCount : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getMissedEventCount()I
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->getMissedCallCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->getUnreadMessageCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getUnreadMessageCount()I
    .locals 4

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverMissedEventManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getMissedEventMessageCount()I

    move-result v0

    const-string v1, "SViewCoverMainPage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unreadMessageCount : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public onActive(Z)V
    .locals 0

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mStatusBarState:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mStatusBarState:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    :cond_0
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    const-string v0, "SViewCoverMainPage"

    const-string v1, "main onPopulateAccessibilityEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->getTTSonlyTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onStatusBarStateChanged(I)V
    .locals 3

    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isSupportNotificationOnCover()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mStatusBarState:I

    const/4 v0, 0x0

    const/16 v1, 0xa

    if-ne p1, v1, :cond_2

    const/16 v0, 0x8

    :cond_2
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mUnlockArea:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mUnlockArea:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_3

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mUnlockArea:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mBatteryCharingText:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mLastBatteryPluggedState:I

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mBatteryCharingText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mBatteryCharingText:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->adjustWidgetVisibility()V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public setCoverUiAlpha(F)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mUnlockArea:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mUnlockArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mUnlockArea:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mBatteryCharingText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mBatteryCharingText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mBatteryCharingText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_1
    return-void
.end method

.class public Lcom/android/systemui/multiwindow/SplitRecentsFragment;
.super Landroid/support/v4/app/Fragment;
.source "SplitRecentsFragment.java"

# interfaces
.implements Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;
.implements Lcom/android/systemui/recents/RecentsAppWidgetHost$RecentsAppWidgetHostCallbacks;
.implements Lcom/android/systemui/recents/views/DebugOverlayView$DebugOverlayViewCallbacks;
.implements Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$FragmentUpdateCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/multiwindow/SplitRecentsFragment$FinishRecentsRunnable;
    }
.end annotation


# static fields
.field public static final EDM_FALSE:I = 0x0

.field public static final EDM_NULL:I = -0x1

.field public static final EDM_TRUE:I = 0x1

.field public static final TAG:Ljava/lang/String; = "Recents_SplitRecentsFragment"

.field private static mStatusBarManager:Landroid/app/StatusBarManager;


# instance fields
.field private final SAVE_STATE_DUMMY_MODE:Ljava/lang/String;

.field emptyTextView:Landroid/widget/TextView;

.field private mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

.field private mAppListShadowDistance:F

.field private mAppListShadowOpacity:F

.field private mAppListStrokeOpacity:F

.field mAppWidgetHost:Lcom/android/systemui/recents/RecentsAppWidgetHost;

.field mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

.field mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

.field mDebugOverlayStub:Landroid/view/ViewStub;

.field final mDebugTrigger:Lcom/android/systemui/recents/misc/DebugTrigger;

.field mEmptyView:Landroid/view/View;

.field mEmptyViewStub:Landroid/view/ViewStub;

.field mFinishLaunchHomeRunnable:Lcom/android/systemui/multiwindow/SplitRecentsFragment$FinishRecentsRunnable;

.field private mHandler:Landroid/os/Handler;

.field private mIsDummyMode:Z

.field mLastTabKeyEventTime:J

.field private mMainLayout:Landroid/view/View;

.field mNeedDarkFont:Z

.field mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

.field private mSavedInstanceState:Landroid/os/Bundle;

.field mScreenOnOffCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field mScrimViews:Lcom/android/systemui/recents/views/SystemBarScrimViews;

.field mSearchAppWidgetHostView:Landroid/appwidget/AppWidgetHostView;

.field mSearchAppWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

.field final mServiceBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mStacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/TaskStack;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field final mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mSystemReceiverFlag:Z

.field private mVisible:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const-string v0, "dummy_mode"

    iput-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->SAVE_STATE_DUMMY_MODE:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mHandler:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mIsDummyMode:Z

    iput-boolean v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mSystemReceiverFlag:Z

    iput-boolean v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mNeedDarkFont:Z

    new-instance v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment$1;-><init>(Lcom/android/systemui/multiwindow/SplitRecentsFragment;)V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mServiceBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment$2;-><init>(Lcom/android/systemui/multiwindow/SplitRecentsFragment;)V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment$3;-><init>(Lcom/android/systemui/multiwindow/SplitRecentsFragment;)V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mScreenOnOffCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Lcom/android/systemui/recents/misc/DebugTrigger;

    new-instance v1, Lcom/android/systemui/multiwindow/SplitRecentsFragment$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment$4;-><init>(Lcom/android/systemui/multiwindow/SplitRecentsFragment;)V

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/misc/DebugTrigger;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mDebugTrigger:Lcom/android/systemui/recents/misc/DebugTrigger;

    return-void
.end method

.method static synthetic access$000(Z)V
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->notifyRecentPanelVisiblity(Z)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui/multiwindow/SplitRecentsFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mVisible:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/multiwindow/SplitRecentsFragment;)Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    return-object v0
.end method

.method public static getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p2

    move-object v4, p3

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v6, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static notifyRecentPanelVisiblity(Z)V
    .locals 2

    sget-object v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v0, p0}, Landroid/app/StatusBarManager;->notifyRecentPanelVisiblity(Z)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Recents_SplitRecentsFragment"

    const-string v1, "mStatusBarManager is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateStackByReload()V
    .locals 20

    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v8

    const/4 v9, 0x0

    if-nez v9, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v9

    :cond_0
    invoke-virtual {v9}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v17

    if-nez v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromHome:Z

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v8, v9, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Z)V

    :cond_1
    new-instance v7, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v7}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v7, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->loadThumbnails:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedToTaskId:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v7, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->runningTaskId:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedNumVisibleTasks:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v7, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedNumVisibleThumbnails:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v7, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0, v9, v7}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;)V

    invoke-virtual {v9}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getSpaceNode()Lcom/android/systemui/recents/model/SpaceNode;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/systemui/recents/model/SpaceNode;->getStacks()Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mStacks:Ljava/util/ArrayList;

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v11, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    const-string v18, "true"

    aput-object v18, v11, v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v17

    const-string v18, "content://com.sec.knox.provider2/KioskMode"

    const-string v19, "isTaskManagerAllowed"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2, v11}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v5, v0, :cond_4

    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v5, v0, :cond_4

    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mStacks:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedToTaskId:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_6

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v15, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mStacks:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v12}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v14, :cond_3

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/recents/model/Task;

    iget-object v0, v13, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedToTaskId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v13, Lcom/android/systemui/recents/model/Task;->isLaunchTarget:Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mStacks:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    move-object/from16 v17, v0

    invoke-virtual {v10}, Lcom/android/systemui/recents/model/SpaceNode;->getStacks()Ljava/util/ArrayList;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/systemui/recents/views/RecentsView;->setTaskStacks(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mStacks:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/recents/model/TaskStack;

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/android/systemui/recents/model/TaskStack;->filterSplitTasks(Z)V

    goto :goto_3

    :cond_7
    return-void
.end method


# virtual methods
.method addSearchBarAppWidgetView()V
    .locals 0

    return-void
.end method

.method bindSearchBarAppWidget()V
    .locals 0

    return-void
.end method

.method public dismiss()V
    .locals 3

    const-string v1, "Recents_SplitRecentsFragment"

    const-string v2, "dismiss is getting called "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    invoke-virtual {v1}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->finishActivity()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Recents_SplitRecentsFragment"

    const-string v2, "Activity is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method dismissRecentsToFocusedTaskOrHome(Z)Z
    .locals 7

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v4, "Recents_SplitRecentsFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dismissRecentsToFocusedTaskOrHome is getting called mVisible="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mVisible:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTopMostTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsTopMost(Landroid/app/ActivityManager$RunningTaskInfo;Ljava/util/concurrent/atomic/AtomicBoolean;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz p1, :cond_1

    iget-object v4, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/RecentsView;->unfilterFilteredStacks()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/RecentsView;->launchFocusedTask()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v4, v4, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromHome:Z

    if-eqz v4, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->dismissRecentsToHomeRaw(Z)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iget-object v3, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v3, v0}, Lcom/android/systemui/recents/views/RecentsView;->launchPreviousTask(Ljava/util/concurrent/atomic/AtomicBoolean;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->dismissRecentsToHomeRaw(Z)V

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_0
.end method

.method dismissRecentsToHome(Z)Z
    .locals 4

    const-string v1, "Recents_SplitRecentsFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dismissRecentsToHome is getting called animated="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTopMostTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsTopMost(Landroid/app/ActivityManager$RunningTaskInfo;Ljava/util/concurrent/atomic/AtomicBoolean;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->dismissRecentsToHomeRaw(Z)V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method dismissRecentsToHomeRaw(Z)V
    .locals 5

    const/4 v4, 0x0

    const-string v1, "Recents_SplitRecentsFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dismissRecentsToHomeRaw is getting called animated="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    new-instance v0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mFinishLaunchHomeRunnable:Lcom/android/systemui/multiwindow/SplitRecentsFragment$FinishRecentsRunnable;

    invoke-direct {v0, v1, v4, v2, v4}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    new-instance v2, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;

    invoke-direct {v2, v0}, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;-><init>(Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/RecentsView;->startExitToHomeAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mFinishLaunchHomeRunnable:Lcom/android/systemui/multiwindow/SplitRecentsFragment$FinishRecentsRunnable;

    invoke-virtual {v1}, Lcom/android/systemui/multiwindow/SplitRecentsFragment$FinishRecentsRunnable;->run()V

    goto :goto_0
.end method

.method inflateDebugOverlay()V
    .locals 0

    return-void
.end method

.method public onAllTaskViewsDismissed()V
    .locals 2

    const-string v0, "Recents_SplitRecentsFragment"

    const-string v1, "onAllTaskViewsDismissed is getting called "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mFinishLaunchHomeRunnable:Lcom/android/systemui/multiwindow/SplitRecentsFragment$FinishRecentsRunnable;

    invoke-virtual {v0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment$FinishRecentsRunnable;->run()V

    return-void
.end method

.method public onAltTaskViewClicked()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "Recents_SplitRecentsFragment"

    const-string v1, "onAltTaskViewClicked is getting called "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->notifyRecentPanelVisiblity(Z)V

    iput-boolean v2, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mVisible:Z

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    const-string v0, "Recents_SplitRecentsFragment"

    const-string v1, "onBackPressed is getting called "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->debugModeEnabled:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->dismissRecentsToFocusedTaskOrHome(Z)Z

    goto :goto_0
.end method

.method onConfigurationChange()V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/recents/RecentsConfiguration;->reinitialize(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;)Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/recents/RecentsConfiguration;->setCurrentActivity(Landroid/content/Context;I)V

    :goto_0
    new-instance v0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    new-instance v2, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;

    invoke-direct {v2, v0}, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;-><init>(Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/RecentsView;->startEnterRecentsAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/recents/RecentsConfiguration;->setCurrentActivity(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x1

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const-string v4, "Recents_SplitRecentsFragment"

    const-string v5, "onCreate is getting called"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    iput-object v4, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-string v5, "statusbar"

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/StatusBarManager;

    sput-object v4, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->initialize(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoader;

    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/android/systemui/recents/RecentsConfiguration;->reinitialize(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;)Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    new-instance v4, Lcom/android/systemui/recents/RecentsAppWidgetHost;

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    sget v6, Lcom/android/systemui/recents/Constants$Values$App;->AppWidgetHostId:I

    invoke-direct {v4, v5, v6}, Lcom/android/systemui/recents/RecentsAppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mAppWidgetHost:Lcom/android/systemui/recents/RecentsAppWidgetHost;

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c04cf

    invoke-virtual {v4, v5, v0, v7}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v4

    iput v4, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mAppListShadowDistance:F

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c04d0

    invoke-virtual {v4, v5, v1, v7}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v4

    iput v4, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mAppListShadowOpacity:F

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c04ce

    invoke-virtual {v4, v5, v2, v7}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v4

    iput v4, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mAppListStrokeOpacity:F

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    const v5, 0x7f040084

    const/4 v6, 0x0

    invoke-virtual {p1, v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mMainLayout:Landroid/view/View;

    iput-object p3, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mSavedInstanceState:Landroid/os/Bundle;

    iget-object v5, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mMainLayout:Landroid/view/View;

    new-instance v6, Lcom/android/systemui/multiwindow/SplitRecentsFragment$5;

    invoke-direct {v6, p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment$5;-><init>(Lcom/android/systemui/multiwindow/SplitRecentsFragment;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    if-eqz p3, :cond_0

    const-string v5, "dummy_mode"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mIsDummyMode:Z

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mMainLayout:Landroid/view/View;

    const v6, 0x7f0e0287

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/recents/views/RecentsView;

    iput-object v5, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v5, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v6, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    invoke-virtual {v5, v6}, Lcom/android/systemui/recents/views/RecentsView;->setMultiWindowActivity(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)V

    iget-object v5, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v5, p0}, Lcom/android/systemui/recents/views/RecentsView;->setCallbacks(Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;)V

    iget-object v5, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    const/16 v6, 0x700

    invoke-virtual {v5, v6}, Lcom/android/systemui/recents/views/RecentsView;->setSystemUiVisibility(I)V

    iget-object v5, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mMainLayout:Landroid/view/View;

    const v6, 0x7f0e0288

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewStub;

    iput-object v5, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mEmptyViewStub:Landroid/view/ViewStub;

    iget-object v5, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v5, v5, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithNoRecentTasks:Z

    invoke-virtual {p0, v5}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->updateNoRecentTaskViews(Z)Z

    iget-object v5, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mMainLayout:Landroid/view/View;

    const v6, 0x7f0e0289

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewStub;

    iput-object v5, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mDebugOverlayStub:Landroid/view/ViewStub;

    new-instance v5, Lcom/android/systemui/recents/views/SystemBarScrimViews;

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-direct {v5, v6, v7}, Lcom/android/systemui/recents/views/SystemBarScrimViews;-><init>(Landroid/app/Activity;Lcom/android/systemui/recents/RecentsConfiguration;)V

    iput-object v5, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mScrimViews:Lcom/android/systemui/recents/views/SystemBarScrimViews;

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/SystemUIApplication;

    const-class v6, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v5, v6}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iput-object v5, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->inflateDebugOverlay()V

    iget-boolean v5, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mIsDummyMode:Z

    if-nez v5, :cond_1

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v5, "android.search.action.GLOBAL_SEARCH_ACTIVITY_CHANGED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v2}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mScreenOnOffCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v5, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mSystemReceiverFlag:Z

    :cond_1
    :try_start_0
    const-string v5, "ambientRatio"

    const/high16 v6, 0x3fc00000    # 1.5f

    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/systemui/recents/misc/Utilities;->setShadowProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget-object v5, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mSavedInstanceState:Landroid/os/Bundle;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v5}, Lcom/android/systemui/recents/RecentsConfiguration;->updateOnConfigurationChange()V

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->onConfigurationChange()V

    :cond_2
    iget-object v5, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v5, v5, Lcom/android/systemui/recents/RecentsConfiguration;->searchBarAppWidgetId:I

    if-ltz v5, :cond_3

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    new-instance v6, Lcom/android/systemui/multiwindow/SplitRecentsFragment$6;

    invoke-direct {v6, p0, v0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment$6;-><init>(Lcom/android/systemui/multiwindow/SplitRecentsFragment;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v5, v6}, Lcom/android/systemui/recents/views/RecentsView;->post(Ljava/lang/Runnable;)Z

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v5, v5, 0x400

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    or-int/lit8 v5, v5, 0x40

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    invoke-virtual {v4, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v5, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mMainLayout:Landroid/view/View;

    return-object v5

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method public onDebugModeTriggered()V
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->developerOptionsEnabled:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/recents/Constants$Values$App;->Key_DebugModeEnabled:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/recents/Constants$Values$App;->Key_DebugModeEnabled:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-boolean v4, v1, Lcom/android/systemui/recents/RecentsConfiguration;->debugModeEnabled:Z

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->inflateDebugOverlay()V

    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/DebugOverlayView;->disable()V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Debug mode ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/android/systemui/recents/Constants$Values$App;->DebugModeVersion:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->debugModeEnabled:Z

    if-eqz v1, :cond_3

    const-string v1, "Enabled"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", please restart Recents now"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void

    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/recents/Constants$Values$App;->Key_DebugModeEnabled:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-boolean v3, v1, Lcom/android/systemui/recents/RecentsConfiguration;->debugModeEnabled:Z

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->inflateDebugOverlay()V

    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/DebugOverlayView;->enable()V

    goto :goto_0

    :cond_3
    const-string v1, "Disabled"

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    const-string v0, "Recents_SplitRecentsFragment"

    const-string v1, "onDestroy is getting called "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mIsDummyMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mSystemReceiverFlag:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mScreenOnOffCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mAppWidgetHost:Lcom/android/systemui/recents/RecentsAppWidgetHost;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsAppWidgetHost;->stopListening()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mEmptyView:Landroid/view/View;

    const-string v0, "Recents_SplitRecentsFragment"

    const-string v1, "onDestroyView()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onEnterAnimationTriggered()V
    .locals 5

    const/4 v4, 0x0

    new-instance v2, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3, v4, v4, v4}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    new-instance v1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;-><init>(Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    iget-object v3, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v3, v1}, Lcom/android/systemui/recents/views/RecentsView;->startEnterRecentsAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;)V

    iget-object v3, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->searchBarAppWidgetId:I

    if-ltz v3, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v3, v1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    new-instance v4, Lcom/android/systemui/multiwindow/SplitRecentsFragment$7;

    invoke-direct {v4, p0, v0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment$7;-><init>(Lcom/android/systemui/multiwindow/SplitRecentsFragment;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->addLastDecrementRunnable(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mScrimViews:Lcom/android/systemui/recents/views/SystemBarScrimViews;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->startEnterRecentsAnimation()V

    return-void
.end method

.method public onExitToHomeAnimationTriggered()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mScrimViews:Lcom/android/systemui/recents/views/SystemBarScrimViews;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->startExitRecentsAnimation()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    if-eqz v4, :cond_0

    sparse-switch p1, :sswitch_data_0

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mDebugTrigger:Lcom/android/systemui/recents/misc/DebugTrigger;

    invoke-virtual {v3, p1}, Lcom/android/systemui/recents/misc/DebugTrigger;->onKeyEvent(I)V

    :cond_1
    :goto_0
    return v2

    :sswitch_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mLastTabKeyEventTime:J

    sub-long/2addr v4, v6

    iget-object v6, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v6, v6, Lcom/android/systemui/recents/RecentsConfiguration;->altTabKeyDelay:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-lez v4, :cond_2

    if-eqz v1, :cond_1

    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    iget-object v4, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    if-nez v0, :cond_3

    move v3, v2

    :cond_3
    invoke-virtual {v4, v3}, Lcom/android/systemui/recents/views/RecentsView;->focusNextTask(Z)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mLastTabKeyEventTime:J

    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_1

    :sswitch_1
    iget-object v3, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/recents/views/RecentsView;->focusNextTask(Z)V

    goto :goto_0

    :sswitch_2
    iget-object v4, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v4, v3}, Lcom/android/systemui/recents/views/RecentsView;->focusNextTask(Z)V

    goto :goto_0

    :sswitch_3
    iget-object v3, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/RecentsView;->dismissFocusedTask()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_2
        0x3d -> :sswitch_0
        0x43 -> :sswitch_3
        0x70 -> :sswitch_3
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    const-string v0, "Recents_SplitRecentsFragment"

    const-string v1, "onPause is getting called "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/recents/RecentsConfiguration;->doNotDrawTaskViewHeader:Z

    return-void
.end method

.method public onPrimarySeekBarChanged(F)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    const-string v0, "Recents_SplitRecentsFragment"

    const-string v1, "onResume is getting called "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ultra_powersaving_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x100000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-boolean v2, v0, Lcom/android/systemui/recents/RecentsConfiguration;->doNotDrawTaskViewHeader:Z

    iput-boolean v3, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mVisible:Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "dummy_mode"

    iget-boolean v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mIsDummyMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onScreenPinningRequest()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showScreenPinningRequest()V

    :cond_0
    return-void
.end method

.method public onSecondarySeekBarChanged(F)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 5

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    const-string v2, "Recents_SplitRecentsFragment"

    const-string v3, "Inside onStart()"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/recents/RecentsConfiguration;->setCurrentActivity(Landroid/content/Context;I)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->bindSearchBarAppWidget()V

    iget-object v2, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    invoke-virtual {v2, p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->registerCallbacks(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$FragmentUpdateCallbacks;)V

    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mIsDummyMode:Z

    if-nez v2, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "action_hide_recents_activity"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "action_toggle_recents_activity"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "action_start_enter_animation"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mServiceBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->registerReceivers(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsPackageMonitor$PackageCallbacks;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->updateRecentsTasks(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->launchedHasConfigurationChanged:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->onEnterAnimationTriggered()V

    :cond_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/recents/RecentsConfiguration;->setCurrentActivity(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 3

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    const-string v1, "Recents_SplitRecentsFragment"

    const-string v2, "onStop is getting called "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/RecentsView;->onRecentsHidden()V

    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/systemui/recents/RecentsConfiguration;->doNotDrawTaskViewHeader:Z

    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    invoke-virtual {v1, p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->unregisterCallbacks(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$FragmentUpdateCallbacks;)V

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mIsDummyMode:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->unregisterReceivers()V

    :cond_1
    return-void
.end method

.method public onTaskLaunchFailed()V
    .locals 0

    return-void
.end method

.method public onTaskViewClicked(Lcom/android/systemui/recents/model/Task;)V
    .locals 4

    const/4 v2, 0x0

    const-string v0, "Recents_SplitRecentsFragment"

    const-string v1, "onTaskViewClicked is getting called "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->notifyRecentPanelVisiblity(Z)V

    iput-boolean v2, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mVisible:Z

    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/multiwindow/SplitRecentsFragment$8;

    invoke-direct {v1, p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment$8;-><init>(Lcom/android/systemui/multiwindow/SplitRecentsFragment;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onTaskViewFocusSwitched(IZ)V
    .locals 0

    return-void
.end method

.method public onTaskViewMoved()V
    .locals 0

    return-void
.end method

.method public refreshSearchWidget()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->bindSearchBarAppWidget()V

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->addSearchBarAppWidgetView()V

    return-void
.end method

.method public updateNoRecentTaskViews(Z)Z
    .locals 8

    const/high16 v4, -0x1000000

    const/high16 v1, 0x42b40000    # 90.0f

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mEmptyViewStub:Landroid/view/ViewStub;

    if-nez v0, :cond_1

    :cond_0
    move v6, v7

    :goto_0
    return v6

    :cond_1
    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mEmptyView:Landroid/view/View;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mEmptyViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mEmptyView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mEmptyView:Landroid/view/View;

    const v2, 0x7f0e02a8

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->emptyTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "need_dark_font"

    invoke-static {v0, v2, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v6, :cond_3

    move v0, v6

    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mNeedDarkFont:Z

    iget-boolean v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mNeedDarkFont:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->emptyTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a00c7

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->emptyTextView:Landroid/widget/TextView;

    const/4 v2, -0x1

    iget v4, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mAppListStrokeOpacity:F

    invoke-virtual {v0, v3, v2, v4}, Landroid/widget/TextView;->addStrokeTextEffect(FIF)I

    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->emptyTextView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mAppListShadowDistance:F

    const/4 v4, -0x1

    iget v5, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mAppListShadowOpacity:F

    sub-float v5, v3, v5

    invoke-virtual/range {v0 .. v5}, Landroid/widget/TextView;->addOuterShadowTextEffect(FFFIF)I

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/RecentsView;->setSearchBarVisibility(I)V

    goto :goto_0

    :cond_3
    move v0, v7

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->emptyTextView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mAppListStrokeOpacity:F

    invoke-virtual {v0, v3, v4, v2}, Landroid/widget/TextView;->addStrokeTextEffect(FIF)I

    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->emptyTextView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mAppListShadowDistance:F

    iget v5, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mAppListShadowOpacity:F

    sub-float v5, v3, v5

    invoke-virtual/range {v0 .. v5}, Landroid/widget/TextView;->addOuterShadowTextEffect(FFFIF)I

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mEmptyView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->hasSearchBar()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0, v7}, Lcom/android/systemui/recents/views/RecentsView;->setSearchBarVisibility(I)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->addSearchBarAppWidgetView()V

    goto/16 :goto_0
.end method

.method updateRecentsTasks(Landroid/content/Intent;)V
    .locals 32

    const-string v28, "Recents_SplitRecentsFragment"

    const-string v29, "updateRecentsTasks is getting called"

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v28, "recents.triggeredOverSearchHome"

    const/16 v29, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v29, v0

    if-nez v4, :cond_0

    const-string v28, "recents.triggeredOverHome"

    const/16 v30, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v28

    if-eqz v28, :cond_5

    :cond_0
    const/16 v28, 0x1

    :goto_0
    move/from16 v0, v28

    move-object/from16 v1, v29

    iput-boolean v0, v1, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromHome:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v28, v0

    const-string v29, "recents.animatingWithThumbnail"

    const/16 v30, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromAppWithThumbnail:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v28, v0

    const-string v29, "recents.activeTaskId"

    const/16 v30, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/systemui/recents/RecentsConfiguration;->launchedToTaskId:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v28, v0

    const-string v29, "recents.triggeredFromAltTab"

    const/16 v30, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithAltTab:Z

    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v14

    const/16 v16, 0x0

    if-nez v16, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v16

    :cond_1
    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v28

    if-nez v28, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromHome:Z

    move/from16 v28, v0

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-virtual {v14, v0, v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Z)V

    :cond_2
    new-instance v13, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v13}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    const/16 v28, 0x0

    move/from16 v0, v28

    iput-boolean v0, v13, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->loadThumbnails:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedToTaskId:I

    move/from16 v28, v0

    move/from16 v0, v28

    iput v0, v13, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->runningTaskId:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedNumVisibleTasks:I

    move/from16 v28, v0

    move/from16 v0, v28

    iput v0, v13, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedNumVisibleThumbnails:I

    move/from16 v28, v0

    move/from16 v0, v28

    iput v0, v13, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v14, v0, v1, v13}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;)V

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getSpaceNode()Lcom/android/systemui/recents/model/SpaceNode;

    move-result-object v17

    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mStacks:Ljava/util/ArrayList;

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/recents/model/SpaceNode;->getStacks()Ljava/util/ArrayList;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mStacks:Ljava/util/ArrayList;

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/recents/model/SpaceNode;->hasTasks()Z

    move-result v5

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v28, 0x0

    const-string v29, "true"

    aput-object v29, v19, v28

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/support/v4/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v28

    const-string v29, "content://com.sec.knox.provider2/KioskMode"

    const-string v30, "isTaskManagerAllowed"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    const/16 v28, -0x1

    move/from16 v0, v28

    if-eq v11, v0, :cond_6

    const/16 v28, 0x1

    move/from16 v0, v28

    if-eq v11, v0, :cond_6

    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v29, v0

    if-nez v5, :cond_7

    const/16 v28, 0x1

    :goto_2
    move/from16 v0, v28

    move-object/from16 v1, v29

    iput-boolean v0, v1, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithNoRecentTasks:Z

    new-instance v6, Landroid/content/Intent;

    const-string v28, "android.intent.action.MAIN"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v28, "android.intent.category.HOME"

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v28, 0x10200000

    move/from16 v0, v28

    invoke-virtual {v6, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v30, Lcom/android/systemui/multiwindow/SplitRecentsFragment$FinishRecentsRunnable;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromSearchHome:Z

    move/from16 v28, v0

    if-eqz v28, :cond_8

    const v28, 0x7f050077

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromSearchHome:Z

    move/from16 v29, v0

    if-eqz v29, :cond_9

    const v29, 0x7f050078

    :goto_4
    move-object/from16 v0, v31

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v28

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v6, v2}, Lcom/android/systemui/multiwindow/SplitRecentsFragment$FinishRecentsRunnable;-><init>(Lcom/android/systemui/multiwindow/SplitRecentsFragment;Landroid/content/Intent;Landroid/app/ActivityOptions;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mFinishLaunchHomeRunnable:Lcom/android/systemui/multiwindow/SplitRecentsFragment$FinishRecentsRunnable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mStacks:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedToTaskId:I

    move/from16 v28, v0

    const/16 v29, -0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_b

    const/4 v7, 0x0

    :goto_5
    move/from16 v0, v25

    if-ge v7, v0, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mStacks:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v24

    const/4 v12, 0x0

    :goto_6
    move/from16 v0, v24

    if-ge v12, v0, :cond_4

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/systemui/recents/model/Task;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedToTaskId:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_a

    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/android/systemui/recents/model/Task;->isLaunchTarget:Z

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_5
    const/16 v28, 0x0

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mStacks:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v28

    if-nez v28, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    move-object/from16 v28, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/recents/model/SpaceNode;->getStacks()Ljava/util/ArrayList;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lcom/android/systemui/recents/views/RecentsView;->setTaskStacks(Ljava/util/ArrayList;)V

    goto/16 :goto_1

    :cond_7
    const/16 v28, 0x0

    goto/16 :goto_2

    :cond_8
    const v28, 0x7f050073

    goto/16 :goto_3

    :cond_9
    const v29, 0x7f050075

    goto/16 :goto_4

    :cond_a
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v28

    const-string v29, "multiwindow_facade"

    invoke-virtual/range {v28 .. v29}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    const/16 v29, 0xa

    const/16 v30, 0x7

    invoke-virtual/range {v28 .. v30}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getRunningTasks(II)Ljava/util/List;

    move-result-object v18

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mStacks:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_10

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/systemui/recents/model/Task;

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_d
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/app/ActivityManager$RunningTaskInfo;

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v28

    if-eqz v28, :cond_d

    move-object/from16 v0, v27

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    move/from16 v28, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_d

    move-object/from16 v22, v23

    const/16 v28, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/model/TaskStack;->filterExcludeTask(Lcom/android/systemui/recents/model/Task;Z)V

    :cond_e
    if-eqz v22, :cond_c

    :cond_f
    const/16 v22, 0x0

    goto :goto_7

    :cond_10
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mStacks:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_11
    :goto_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_12

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/systemui/recents/model/TaskStack;

    const/16 v28, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/TaskStack;->filterSplitTasks(Z)V

    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    if-eqz v28, :cond_11

    const/4 v15, 0x0

    goto :goto_8

    :cond_12
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->updateNoRecentTaskViews(Z)Z

    move-result v28

    if-eqz v28, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iput-boolean v15, v0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithNoRecentTasks:Z

    :cond_13
    return-void
.end method

.method public updateSelectedPackageName(Landroid/util/Pair;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->updateStackByReload()V

    iget-object v6, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/model/TaskStack;

    iget-object v6, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v6, :cond_1

    iget-object v6, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    invoke-virtual {v3}, Lcom/android/systemui/recents/model/TaskStack;->unfilterExcludeTask()V

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/model/Task;

    iget-object v6, v4, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v7, v6, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    iget-object v6, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v7, v6, :cond_3

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Lcom/android/systemui/recents/model/TaskStack;->filterExcludeTask(Lcom/android/systemui/recents/model/Task;Z)V

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    iget-object v6, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_5

    const/4 v2, 0x0

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v2}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->updateNoRecentTaskViews(Z)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-boolean v2, v6, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithNoRecentTasks:Z

    :cond_7
    return-void
.end method

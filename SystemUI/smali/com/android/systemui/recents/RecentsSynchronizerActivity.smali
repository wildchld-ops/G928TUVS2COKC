.class public abstract Lcom/android/systemui/recents/RecentsSynchronizerActivity;
.super Landroid/app/Activity;
.source "RecentsSynchronizerActivity.java"

# interfaces
.implements Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "Recents_SynchronizerActivity"

.field private static mRecentsActivities:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/systemui/recents/RecentsSynchronizerActivity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mDualScreenManager:Lcom/samsung/android/dualscreen/DualScreenManager;

.field private mIsOrientationRequested:Z

.field private mWm:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mIsOrientationRequested:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mWm:Landroid/view/WindowManager;

    sget-object v0, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mRecentsActivities:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mRecentsActivities:Landroid/util/SparseArray;

    :cond_0
    new-instance v0, Lcom/samsung/android/dualscreen/DualScreenManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/dualscreen/DualScreenManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mDualScreenManager:Lcom/samsung/android/dualscreen/DualScreenManager;

    return-void
.end method

.method protected static registerRecentsActivity(ILcom/android/systemui/recents/RecentsSynchronizerActivity;)V
    .locals 2

    sget-object v1, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mRecentsActivities:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mRecentsActivities:Landroid/util/SparseArray;

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private requestOrientation(ILandroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected static unregisterRecentsActivity(I)V
    .locals 2

    sget-object v1, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mRecentsActivities:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mRecentsActivities:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->performDismiss()V

    return-void
.end method

.method protected dismissRecentsToFocusedTaskOrHome(Z)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->dismissRecentsToFocusedTaskOrHome(ZZ)Z

    move-result v0

    return v0
.end method

.method protected dismissRecentsToFocusedTaskOrHome(ZZ)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->performDismissRecentsToFocusedTaskOrHome(ZZZ)Z

    move-result v0

    return v0
.end method

.method protected finishByCloseAllButton()V
    .locals 3

    const/4 v1, 0x1

    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->NOBLE:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->ZEN:Z

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->performDismissRecentsToCloseAll(ZZ)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method isAllTaskRemoved()Z
    .locals 14

    sget-object v12, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mRecentsActivities:Landroid/util/SparseArray;

    monitor-enter v12

    :try_start_0
    sget-object v11, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mRecentsActivities:Landroid/util/SparseArray;

    invoke-virtual {v11, p0}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v11

    if-ltz v11, :cond_2

    const-string v11, "display"

    invoke-virtual {p0, v11}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v3

    move-object v1, v3

    array-length v7, v1

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_2

    aget-object v2, v1, v6

    sget-object v11, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mRecentsActivities:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v13

    invoke-virtual {v11, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/RecentsSynchronizerActivity;

    if-eqz v0, :cond_1

    check-cast v0, Lcom/android/systemui/recents/RecentsActivity;

    iget-object v10, v0, Lcom/android/systemui/recents/RecentsActivity;->mStacks:Ljava/util/ArrayList;

    if-eqz v10, :cond_1

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v8, :cond_1

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v9}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v11

    if-eqz v11, :cond_0

    const/4 v11, 0x0

    monitor-exit v12

    :goto_2
    return v11

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v11, 0x1

    monitor-exit v12

    goto :goto_2

    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11
.end method

.method protected moveTaskToBack(ZZ)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->moveTaskToBack(Z)Z

    move-result v0

    return v0
.end method

.method public onAllTaskViewsDismissed()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->performAllTaskViewsDismissed()V

    return-void
.end method

.method public onTaskViewClicked(Lcom/android/systemui/recents/model/Task;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->performTaskViewClicked()V

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

.method protected abstract performAllTaskViewsDismissed()V
.end method

.method protected abstract performDismiss()V
.end method

.method protected abstract performDismissRecentsToCloseAll(ZZ)V
.end method

.method protected abstract performDismissRecentsToFocusedTaskOrHome(ZZ)Z
.end method

.method protected abstract performDismissRecentsToFocusedTaskOrHome(ZZZ)Z
.end method

.method protected abstract performTaskViewClicked()V
.end method

.method protected abstract requestFocusNextTask()V
.end method

.method protected requestOrientationSync(ILcom/android/systemui/recents/RecentsSynchronizerActivity;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v6, p0, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mWm:Landroid/view/WindowManager;

    if-nez v6, :cond_0

    const-string v6, "window"

    invoke-virtual {p2, v6}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    iput-object v6, p0, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mWm:Landroid/view/WindowManager;

    :cond_0
    if-eqz p1, :cond_2

    sget-object v6, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mRecentsActivities:Landroid/util/SparseArray;

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/RecentsSynchronizerActivity;

    if-eqz v3, :cond_1

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/app/ActivityThread;->getDisplayConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v6

    iget v4, v6, Landroid/content/res/Configuration;->orientation:I

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v6

    invoke-virtual {p2}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->getDisplayId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/app/ActivityThread;->getDisplayConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v6

    iget v5, v6, Landroid/content/res/Configuration;->orientation:I

    if-eq v4, v5, :cond_1

    iput-boolean v8, p0, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mIsOrientationRequested:Z

    iget-object v6, v3, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mWm:Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v6

    invoke-direct {p0, v6, p2}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->requestOrientation(ILandroid/app/Activity;)V

    :cond_1
    return-void

    :cond_2
    sget-object v6, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mRecentsActivities:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-lez v6, :cond_1

    sget-object v6, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mRecentsActivities:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v0

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/app/ActivityThread;->getDisplayConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v6

    iget v4, v6, Landroid/content/res/Configuration;->orientation:I

    move v5, v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    sget-object v6, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mRecentsActivities:Landroid/util/SparseArray;

    sget-object v7, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mRecentsActivities:Landroid/util/SparseArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/RecentsSynchronizerActivity;

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->getDisplayId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/app/ActivityThread;->getDisplayConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v6

    iget v5, v6, Landroid/content/res/Configuration;->orientation:I

    if-eq v4, v5, :cond_3

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    iput-boolean v8, p0, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mIsOrientationRequested:Z

    iget-object v6, p2, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mWm:Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v6

    invoke-direct {p0, v6, v1}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->requestOrientation(ILandroid/app/Activity;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method requestUpdateMainRecentsLayout()V
    .locals 17

    sget-object v15, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mRecentsActivities:Landroid/util/SparseArray;

    monitor-enter v15

    :try_start_0
    const-string v14, "display"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v6}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v5

    const/4 v2, 0x1

    move-object v3, v5

    array-length v9, v3

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v9, :cond_2

    aget-object v4, v3, v8

    sget-object v14, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mRecentsActivities:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/RecentsSynchronizerActivity;

    if-eqz v1, :cond_1

    check-cast v1, Lcom/android/systemui/recents/RecentsActivity;

    iget-object v13, v1, Lcom/android/systemui/recents/RecentsActivity;->mStacks:Ljava/util/ArrayList;

    if-eqz v13, :cond_1

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v11, :cond_1

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v12}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v14

    if-eqz v14, :cond_0

    const/4 v2, 0x0

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    sget-object v14, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mRecentsActivities:Landroid/util/SparseArray;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/recents/RecentsSynchronizerActivity;

    if-eqz v10, :cond_3

    if-eqz v2, :cond_4

    check-cast v10, Lcom/android/systemui/recents/RecentsActivity;

    const/4 v14, 0x1

    invoke-virtual {v10, v14}, Lcom/android/systemui/recents/RecentsActivity;->updateMainRecentsLayout(Z)V

    :cond_3
    :goto_2
    monitor-exit v15

    return-void

    :cond_4
    check-cast v10, Lcom/android/systemui/recents/RecentsActivity;

    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Lcom/android/systemui/recents/RecentsActivity;->updateMainRecentsLayout(Z)V

    goto :goto_2

    :catchall_0
    move-exception v14

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v14
.end method

.method protected resetRequestedOrientationIfNeeded()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mIsOrientationRequested:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->mIsOrientationRequested:Z

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->setRequestedOrientation(I)V

    :cond_0
    return-void
.end method

.class Lcom/android/systemui/recents/views/RecentsView$2;
.super Ljava/lang/Object;
.source "RecentsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/RecentsView;->onTaskViewClicked(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/RecentsView;

.field final synthetic val$launchOpts:Landroid/app/ActivityOptions;

.field final synthetic val$lockToTask:Z

.field final synthetic val$ssp:Lcom/android/systemui/recents/misc/SystemServicesProxy;

.field final synthetic val$style:Lcom/samsung/android/multiwindow/MultiWindowStyle;

.field final synthetic val$task:Lcom/android/systemui/recents/model/Task;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/RecentsView;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/misc/SystemServicesProxy;Lcom/samsung/android/multiwindow/MultiWindowStyle;ZLandroid/app/ActivityOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsView$2;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    iput-object p2, p0, Lcom/android/systemui/recents/views/RecentsView$2;->val$task:Lcom/android/systemui/recents/model/Task;

    iput-object p3, p0, Lcom/android/systemui/recents/views/RecentsView$2;->val$ssp:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    iput-object p4, p0, Lcom/android/systemui/recents/views/RecentsView$2;->val$style:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    iput-boolean p5, p0, Lcom/android/systemui/recents/views/RecentsView$2;->val$lockToTask:Z

    iput-object p6, p0, Lcom/android/systemui/recents/views/RecentsView$2;->val$launchOpts:Landroid/app/ActivityOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const/4 v4, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$2;->val$task:Lcom/android/systemui/recents/model/Task;

    iget-boolean v0, v0, Lcom/android/systemui/recents/model/Task;->isActive:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$2;->val$ssp:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningTasks(I)Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$2;->val$task:Lcom/android/systemui/recents/model/Task;

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    iget v1, v8, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    if-ne v0, v1, :cond_0

    const/4 v6, 0x1

    :cond_1
    if-eqz v6, :cond_7

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$2;->val$style:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$2;->val$task:Lcom/android/systemui/recents/model/Task;

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$2;->val$task:Lcom/android/systemui/recents/model/Task;

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$2;->val$ssp:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView$2;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView$2;->val$task:Lcom/android/systemui/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView$2;->val$task:Lcom/android/systemui/recents/model/Task;

    iget-object v3, v3, Lcom/android/systemui/recents/model/Task;->activityLabel:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/systemui/recents/views/RecentsView$2;->val$style:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->moveOnlySpecificTaskToFront(Landroid/content/Context;ILjava/lang/String;Landroid/app/ActivityOptions;Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$2;->val$style:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$2;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView$2;->val$task:Lcom/android/systemui/recents/model/Task;

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView$2;->val$style:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    # invokes: Lcom/android/systemui/recents/views/RecentsView;->insertLogPair(Lcom/android/systemui/recents/model/Task;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    invoke-static {v0, v1, v2}, Lcom/android/systemui/recents/views/RecentsView;->access$000(Lcom/android/systemui/recents/views/RecentsView;Lcom/android/systemui/recents/model/Task;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsView$2;->val$lockToTask:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$2;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v0, v0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    invoke-interface {v0}, Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;->onScreenPinningRequest()V

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$2;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v0, v0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$2;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    # getter for: Lcom/android/systemui/recents/views/RecentsView;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;
    invoke-static {v0}, Lcom/android/systemui/recents/views/RecentsView;->access$100(Lcom/android/systemui/recents/views/RecentsView;)Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$2;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    # getter for: Lcom/android/systemui/recents/views/RecentsView;->mFinishActivity:Z
    invoke-static {v0}, Lcom/android/systemui/recents/views/RecentsView;->access$200(Lcom/android/systemui/recents/views/RecentsView;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$2;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v0, v0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    invoke-interface {v0}, Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;->dismiss()V

    :cond_5
    return-void

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$2;->val$ssp:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView$2;->val$task:Lcom/android/systemui/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView$2;->val$launchOpts:Landroid/app/ActivityOptions;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->moveTaskToFront(ILandroid/app/ActivityOptions;)V

    goto :goto_0

    :cond_7
    const/4 v9, 0x0

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$2;->val$style:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$2;->val$ssp:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView$2;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView$2;->val$task:Lcom/android/systemui/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView$2;->val$task:Lcom/android/systemui/recents/model/Task;

    iget-object v3, v3, Lcom/android/systemui/recents/model/Task;->activityLabel:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/systemui/recents/views/RecentsView$2;->val$style:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startActivityFromRecentMultiWindow(Landroid/content/Context;ILjava/lang/String;Landroid/app/ActivityOptions;Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z

    move-result v9

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$2;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView$2;->val$task:Lcom/android/systemui/recents/model/Task;

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView$2;->val$style:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    # invokes: Lcom/android/systemui/recents/views/RecentsView;->insertLogPair(Lcom/android/systemui/recents/model/Task;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    invoke-static {v0, v1, v2}, Lcom/android/systemui/recents/views/RecentsView;->access$000(Lcom/android/systemui/recents/views/RecentsView;Lcom/android/systemui/recents/model/Task;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    :goto_1
    if-eqz v9, :cond_9

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$2;->val$launchOpts:Landroid/app/ActivityOptions;

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsView$2;->val$lockToTask:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$2;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v0, v0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    invoke-interface {v0}, Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;->onScreenPinningRequest()V

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$2;->val$ssp:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView$2;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView$2;->val$task:Lcom/android/systemui/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView$2;->val$task:Lcom/android/systemui/recents/model/Task;

    iget-object v3, v3, Lcom/android/systemui/recents/model/Task;->activityLabel:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView$2;->val$launchOpts:Landroid/app/ActivityOptions;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startActivityFromRecents(Landroid/content/Context;ILjava/lang/String;Landroid/app/ActivityOptions;)Z

    move-result v9

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$2;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView$2;->val$task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/RecentsView;->onTaskViewDismissed(Lcom/android/systemui/recents/model/Task;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$2;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v0, v0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$2;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v0, v0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    invoke-interface {v0}, Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;->onTaskLaunchFailed()V

    goto/16 :goto_0
.end method

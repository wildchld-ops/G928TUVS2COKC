.class Lcom/android/systemui/recents/AlternateRecentsComponent$TaskStackListenerImpl;
.super Landroid/app/ITaskStackListener$Stub;
.source "AlternateRecentsComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/AlternateRecentsComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TaskStackListenerImpl"
.end annotation


# instance fields
.field mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/systemui/recents/AlternateRecentsComponent;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/AlternateRecentsComponent;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent$TaskStackListenerImpl;->this$0:Lcom/android/systemui/recents/AlternateRecentsComponent;

    invoke-direct {p0}, Landroid/app/ITaskStackListener$Stub;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/recents/AlternateRecentsComponent$TaskStackListenerImpl;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onTaskStackChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent$TaskStackListenerImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent$TaskStackListenerImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public run()V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/systemui/recents/RecentsConfiguration;->getInstance()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget v6, v0, Lcom/android/systemui/recents/RecentsConfiguration;->svelteLevel:I

    if-nez v6, :cond_1

    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTopMostTask(Z)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    iget-object v6, p0, Lcom/android/systemui/recents/AlternateRecentsComponent$TaskStackListenerImpl;->this$0:Lcom/android/systemui/recents/AlternateRecentsComponent;

    iget-object v6, v6, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v3

    const/4 v6, -0x1

    invoke-virtual {v2, v3, v7, v6, v7}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;ZIZ)V

    new-instance v1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v1}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    if-eqz v4, :cond_0

    iget v6, v4, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    iput v6, v1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->runningTaskId:I

    :cond_0
    iput v8, v1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    iput v8, v1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    iput-boolean v7, v1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadForCache:Z

    iput-boolean v7, v1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadPausedActivities:Z

    iget-object v6, p0, Lcom/android/systemui/recents/AlternateRecentsComponent$TaskStackListenerImpl;->this$0:Lcom/android/systemui/recents/AlternateRecentsComponent;

    iget-object v6, v6, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6, v3, v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;)V

    :cond_1
    return-void
.end method

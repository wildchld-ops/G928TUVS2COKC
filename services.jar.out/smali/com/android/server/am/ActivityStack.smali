.class final Lcom/android/server/am/ActivityStack;
.super Ljava/lang/Object;
.source "ActivityStack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityStack$1;,
        Lcom/android/server/am/ActivityStack$ActivityStackHandler;,
        Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;,
        Lcom/android/server/am/ActivityStack$ActivityState;
    }
.end annotation


# static fields
.field static final ACTIVITY_INACTIVE_RESET_TIME:J = 0x0L

.field static final DESTROY_ACTIVITIES_MSG:I = 0x69

.field static final DESTROY_TIMEOUT:I = 0x2710

.field static final DESTROY_TIMEOUT_MSG:I = 0x66

.field static final FINISH_AFTER_PAUSE:I = 0x1

.field static final FINISH_AFTER_VISIBLE:I = 0x2

.field static final FINISH_IMMEDIATELY:I = 0x0

.field static final LAUNCH_TICK:I = 0x1f4

.field static final LAUNCH_TICK_MSG:I = 0x67

.field static final PAUSE_TIMEOUT:I = 0x1f4

.field static final PAUSE_TIMEOUT_MSG:I = 0x65

.field static final RELEASE_BACKGROUND_RESOURCES_TIMEOUT_MSG:I = 0x6b

.field static final SCREENSHOT_FORCE_565:Z

.field static final SHOW_APP_STARTING_PREVIEW:Z = true

.field static final START_WARN_TIME:J = 0x1388L

.field static final STOP_TIMEOUT:I = 0x2710

.field static final STOP_TIMEOUT_MSG:I = 0x68

.field static final SUPPORT_MULTIPLE_PAUSING_ACTIVITIES:Z = true

.field static final TRANSLUCENT_CONVERSION_TIMEOUT:J = 0x7d0L

.field static final TRANSLUCENT_TIMEOUT_MSG:I = 0x6a

.field private static final bDSSEnabled:Z = true

.field static final mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;


# instance fields
.field public aBoostCpuBoost:I

.field public aBoostSchedBoost:I

.field public aBoostTimeOut:I

.field final mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

.field mConfigWillChange:Z

.field mCurrentUser:I

.field mDisplayId:I

.field mDragAndDropMode:Z

.field mFeatureMultiwindowRecentUI:Z

.field mFullyDrawnStartTime:J

.field final mHandler:Landroid/os/Handler;

.field public mIsAnimationBoostEnabled:Z

.field final mLRUActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

.field mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

.field mLastStartedActivity:Lcom/android/server/am/ActivityRecord;

.field mLaunchStartTime:J

.field mNeedUpdateFocusWhileRemovingStack:Z

.field final mNoAnimActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mPausingActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mPausingActivity:Lcom/android/server/am/ActivityRecord;

.field public mPerf:Lorg/codeaurora/Performance;

.field mResumedActivity:Lcom/android/server/am/ActivityRecord;

.field mResumedIdleActivity:Lcom/android/server/am/ActivityRecord;

.field final mService:Lcom/android/server/am/ActivityManagerService;

.field final mStackId:I

.field final mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field final mStackType:I

.field mStackZone:I

.field mStacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityStack;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation
.end field

.field mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

.field private mTwiceResumeTop:Z

.field private mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mVRStack:Z

.field final mValidateAppTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/TaskGroup;",
            ">;"
        }
    .end annotation
.end field

.field final mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ActivityStack;->SCREENSHOT_FORCE_565:Z

    new-instance v0, Lcom/android/internal/app/ActivityTrigger;

    invoke-direct {v0}, Lcom/android/internal/app/ActivityTrigger;-><init>()V

    sput-object v0, Lcom/android/server/am/ActivityStack;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;II)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mPerf:Lorg/codeaurora/Performance;

    iput-boolean v2, p0, Lcom/android/server/am/ActivityStack;->mIsAnimationBoostEnabled:Z

    iput v2, p0, Lcom/android/server/am/ActivityStack;->aBoostTimeOut:I

    iput v2, p0, Lcom/android/server/am/ActivityStack;->aBoostCpuBoost:I

    iput v2, p0, Lcom/android/server/am/ActivityStack;->aBoostSchedBoost:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mValidateAppTokens:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mResumedIdleActivity:Lcom/android/server/am/ActivityRecord;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mLastStartedActivity:Lcom/android/server/am/ActivityRecord;

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    iput-wide v4, p0, Lcom/android/server/am/ActivityStack;->mLaunchStartTime:J

    iput-wide v4, p0, Lcom/android/server/am/ActivityStack;->mFullyDrawnStartTime:J

    iput-boolean v2, p0, Lcom/android/server/am/ActivityStack;->mNeedUpdateFocusWhileRemovingStack:Z

    iput-boolean v2, p0, Lcom/android/server/am/ActivityStack;->mFeatureMultiwindowRecentUI:Z

    iput-boolean v2, p0, Lcom/android/server/am/ActivityStack;->mDragAndDropMode:Z

    iput v2, p0, Lcom/android/server/am/ActivityStack;->mStackZone:I

    iput-object p1, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->getOuter()Lcom/android/server/am/ActivityStackSupervisor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    new-instance v0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/ActivityStack$ActivityStackHandler;-><init>(Lcom/android/server/am/ActivityStack;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v0, p1, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStackId:I

    iput v0, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->mCurrentUserId:I

    iput v0, p0, Lcom/android/server/am/ActivityStack;->mCurrentUser:I

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mIsAnimationBoostEnabled:Z

    iget-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mIsAnimationBoostEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0094

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityStack;->aBoostSchedBoost:I

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityStack;->aBoostTimeOut:I

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0095

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityStack;->aBoostCpuBoost:I

    :cond_0
    iput p2, p0, Lcom/android/server/am/ActivityStack;->mStackType:I

    iput p3, p0, Lcom/android/server/am/ActivityStack;->mStackZone:I

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportRecentUI(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mFeatureMultiwindowRecentUI:Z

    iput-boolean v2, p0, Lcom/android/server/am/ActivityStack;->mVRStack:Z

    return-void
.end method

.method private adjustFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x1

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    if-eq v6, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v9}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplayId()I

    move-result v2

    if-eq v1, p1, :cond_4

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    if-eq v3, v6, :cond_2

    invoke-direct {p0, v3}, Lcom/android/server/am/ActivityStack;->isTopTaskExcludeFinishingTask(Lcom/android/server/am/TaskRecord;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_2
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6, p0}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->isApplicationTask()Z

    move-result v6

    if-nez v6, :cond_4

    :cond_3
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v7

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplayId()I

    move-result v8

    invoke-virtual {v6, v7, p2, v8}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackTaskToTop(ILjava/lang/String;I)V

    :cond_4
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6, v9, v2}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6, v4, p2}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private adjustHiddenTaskToBottomLocked()Z
    .locals 5

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    iget-boolean v3, v2, Lcom/android/server/am/TaskRecord;->bHidden:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v3, v2}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->remove(Lcom/android/server/am/TaskRecord;)Z

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->add(ILcom/android/server/am/TaskRecord;)V

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private clearWindowModeLocked(Lcom/android/server/am/TaskRecord;)V
    .locals 5

    iget-object v2, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2, v3}, Lcom/android/server/am/MultiWindowPolicy;->isMultiWindowApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private completePauseLocked(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ActivityStack;->completePauseLocked(ZLcom/android/server/am/ActivityRecord;)V

    return-void
.end method

.method private completePauseLocked(ZLcom/android/server/am/ActivityRecord;)V
    .locals 13

    const/4 v12, 0x1

    const-wide/16 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    if-eqz p2, :cond_1

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v6, p2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    iget-boolean v6, p2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_7

    iget-object v6, p2, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v7, p0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivityStackSupervisor;->isIsolated(I)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {p0, p2, v9, v9}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    move-result-object p2

    :cond_0
    :goto_0
    iput-object v8, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/ArrayList;

    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    if-eqz p1, :cond_2

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDown()Z

    move-result v6

    if-nez v6, :cond_e

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6, v5, p2, v8}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    :cond_2
    :goto_1
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    iget-object v6, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_4

    iget-wide v6, p2, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    cmp-long v6, v6, v10

    if-lez v6, :cond_4

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v6}, Lcom/android/server/am/BatteryStatsService;->isOnBattery()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    iget-object v7, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v7, v7, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v6, v7}, Lcom/android/internal/os/ProcessCpuTracker;->getCpuTimeForPid(I)J

    move-result-wide v6

    iget-wide v8, p2, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    sub-long v2, v6, v8

    cmp-long v6, v2, v10

    if-lez v6, :cond_4

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v6}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v6, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v7, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl;->getProcessStatsLocked(ILjava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->addForegroundTimeLocked(J)V

    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    iput-wide v10, p2, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    :cond_5
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->notifyTaskStackChangedLocked()V

    return-void

    :cond_6
    const/4 v6, 0x2

    invoke-virtual {p0, p2, v6, v9}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    move-result-object p2

    goto :goto_0

    :cond_7
    iget-object v6, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_d

    iget-boolean v6, p2, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-eqz v6, :cond_8

    iput-boolean v9, p2, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v6, v6, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_8
    iget-boolean v6, p2, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    if-eqz v6, :cond_9

    const-string/jumbo v6, "pause-config"

    invoke-virtual {p0, p2, v12, v6}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->hasVisibleBehindActivity()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v6, v6, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v6, v6, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x3

    if-gt v6, v7, :cond_b

    iget-boolean v6, p2, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v12, :cond_b

    :cond_a
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStackSupervisor;->allResumedActivitiesIdle()Z

    move-result v6

    if-eqz v6, :cond_c

    :cond_b
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V

    goto/16 :goto_0

    :cond_c
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V

    goto/16 :goto_0

    :cond_d
    const/4 p2, 0x0

    goto/16 :goto_0

    :cond_e
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V

    invoke-virtual {v5, v8}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_f

    if-eqz p2, :cond_2

    if-eq v4, p2, :cond_2

    :cond_f
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6, v5, v8, v8}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    goto/16 :goto_1

    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method private completeResumeLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    iput-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->idle:Z

    iput-object v5, p1, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    iput-object v5, p1, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isNotResolverActivity()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v0, v1, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    :cond_0
    :goto_0
    iget-boolean v1, p1, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityManagerService;->isTargetDismissIntent(Lcom/android/server/am/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->notifyActivityDrawnForKeyguard()V

    :cond_1
    iget-boolean v1, p1, Lcom/android/server/am/ActivityRecord;->pendingNotifyMultiWindowStyle:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1, v4, v6}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    :cond_2
    iget v1, p1, Lcom/android/server/am/ActivityRecord;->pendingNotifyMultiWindowFocus:I

    if-eqz v1, :cond_3

    iget v1, p1, Lcom/android/server/am/ActivityRecord;->pendingNotifyMultiWindowFocus:I

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowFocusChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    :cond_3
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleTimeoutLocked(Lcom/android/server/am/ActivityRecord;)V

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStackSupervisor;->reportResumedActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v2, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v1, v2}, Lcom/android/internal/os/ProcessCpuTracker;->getCpuTimeForPid(I)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    :goto_1
    iput-object v5, p1, Lcom/android/server/am/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mVisibleBehindActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v1, p1, :cond_4

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    invoke-virtual {v1, v5}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->setVisibleBehindActivity(Lcom/android/server/am/ActivityRecord;)V

    :cond_4
    iget-boolean v1, p1, Lcom/android/server/am/ActivityRecord;->launchedBehindVRApp:Z

    if-eqz v1, :cond_5

    iput-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->launchedBehindVRApp:Z

    invoke-virtual {p0, v4, v4, v4, v6}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZZZ)Z

    :cond_5
    return-void

    :cond_6
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isRecentsActivity()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mRecentsProcess:Lcom/android/server/am/ProcessRecord;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v0, v1, Lcom/android/server/am/ActivityManagerService;->mRecentsProcess:Lcom/android/server/am/ProcessRecord;

    goto :goto_0

    :cond_7
    const-wide/16 v2, 0x0

    iput-wide v2, p1, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    goto :goto_1
.end method

.method private insertTaskAtTop(Lcom/android/server/am/TaskRecord;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ActivityStack;->insertTaskAtTop(Lcom/android/server/am/TaskRecord;Z)V

    return-void
.end method

.method private insertTaskAtTop(Lcom/android/server/am/TaskRecord;Z)V
    .locals 8

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->getLastStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->getNonFloatingFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    :cond_0
    iget-object v4, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->isSplitStack()Z

    move-result v2

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v4

    if-nez v4, :cond_3

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v4

    if-eq v4, p1, :cond_3

    :cond_1
    if-nez v2, :cond_3

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    :cond_2
    if-eqz v0, :cond_9

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v4

    if-nez v4, :cond_8

    move v4, v5

    :goto_0
    invoke-virtual {p1, v4}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, p1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivityStack;->isCurrentProfileLocked(I)Z

    move-result v4

    if-nez v4, :cond_6

    :cond_4
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_5

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivityStack;->isCurrentProfileLocked(I)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_5
    add-int/lit8 v3, v3, 0x1

    :cond_6
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v4, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->moveGlobalTaskToTop(Lcom/android/server/am/TaskRecord;)V

    if-eqz p2, :cond_7

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v6, p0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    invoke-virtual {v4, v6}, Lcom/android/server/am/ActivityStackSupervisor;->arrangeTaskToReturnTo(I)V

    :cond_7
    invoke-virtual {p0, p1, v5}, Lcom/android/server/am/ActivityStack;->updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V

    return-void

    :cond_8
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v4

    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskType:I

    goto :goto_0

    :cond_9
    move v4, v6

    goto :goto_0

    :cond_a
    invoke-virtual {p1, v6}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    goto :goto_1
.end method

.method private isStackVisible()Z
    .locals 14

    const/16 v13, 0xf

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    move-result v10

    if-nez v10, :cond_1

    move v8, v9

    :cond_0
    :goto_0
    return v8

    :cond_1
    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v10, p0}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isAllHidden()Z

    move-result v10

    if-eqz v10, :cond_2

    move v8, v9

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getGlobalTaskHistoryLocked()Ljava/util/ArrayList;

    move-result-object v7

    const/4 v4, 0x0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    :goto_1
    if-ltz v2, :cond_0

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    iget-object v1, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-nez v1, :cond_4

    const-string v10, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isStackVisible: stack is not exist. id="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->isFullscreenVisible()Z

    move-result v3

    invoke-virtual {v5, v9}, Lcom/android/server/am/TaskRecord;->getVisibleObscuredZone(Z)I

    move-result v6

    if-ne v1, p0, :cond_7

    if-ne v6, v13, :cond_5

    and-int/lit8 v10, v4, 0xf

    if-eqz v10, :cond_0

    move v8, v9

    goto :goto_0

    :cond_5
    if-nez v6, :cond_6

    if-ne v4, v13, :cond_0

    move v8, v9

    goto :goto_0

    :cond_6
    and-int v10, v4, v6

    if-ne v10, v6, :cond_0

    move v8, v9

    goto :goto_0

    :cond_7
    if-eqz v3, :cond_3

    or-int/2addr v4, v6

    goto :goto_2
.end method

.method private isTopTaskExcludeFinishingTask(Lcom/android/server/am/TaskRecord;)Z
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    if-nez v3, :cond_0

    iget v3, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    iget v4, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v3, v4, :cond_1

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Task #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is topTask exclude finishing tasks."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x5

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method static final logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    const-string/jumbo v2, "nfc://secure"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget v3, p2, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v3, v2, v7

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    const/4 v3, 0x5

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "nfc://secure:it should not be shown "

    aput-object v4, v2, v3

    const/4 v3, 0x7

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    aput-object v4, v2, v3

    const/16 v3, 0x9

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :goto_1
    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget v3, p2, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v3, v2, v7

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    const/4 v3, 0x5

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    aput-object v1, v2, v3

    const/4 v3, 0x7

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    aput-object v4, v2, v3

    const/16 v3, 0x9

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_1
.end method

.method private relaunchActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Z
    .locals 13

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p3, :cond_0

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/ActivityManagerService;->updateSubWindowState(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;)V

    if-eqz p3, :cond_6

    const/16 v0, 0x7543

    :goto_0
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x2

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x3

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v5, v1, v4

    const/4 v4, 0x4

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->haveState:Z

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->removeChildActivityContainers(Lcom/android/server/am/ActivityRecord;)V

    new-instance v6, Landroid/content/res/Configuration;

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v6, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mScaledAppNames:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->isScaledPid(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mDssHelper:Landroid/os/DssHelper;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/DssHelper;->getScalingFactor(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Double;->floatValue()F

    move-result v11

    iget v0, v6, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v0, v0

    mul-float/2addr v0, v11

    float-to-int v0, v0

    iput v0, v6, Landroid/content/res/Configuration;->densityDpi:I

    :cond_3
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    new-instance v9, Landroid/content/res/Configuration;

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v9, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportSelective1Orientation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setAppRequestOrientation(I)V

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getPreferredOrientation()I

    move-result v1

    iget v4, v9, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->shouldFakeOrientation(IILandroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v9}, Landroid/content/res/Configuration;->toggleOrientation()I

    move-result v0

    iput v0, v9, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x0

    iput v0, v9, Landroid/content/res/Configuration;->seq:I

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, v9, v1}, Lcom/android/server/wm/WindowManagerService;->computeFakeScreenDP(Landroid/content/res/Configuration;Z)V

    :cond_4
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    if-nez p3, :cond_7

    const/4 v5, 0x1

    :goto_1
    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v8

    move v4, p2

    invoke-interface/range {v0 .. v8}, Landroid/app/IApplicationThread;->scheduleRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne p1, v0, :cond_5

    const/4 v10, 0x4

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v10, v1}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowFocusChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_2
    if-eqz p3, :cond_8

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    :goto_3
    const/4 v0, 0x1

    return v0

    :cond_6
    const/16 v0, 0x7544

    goto/16 :goto_0

    :cond_7
    const/4 v5, 0x0

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method private removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V
    .locals 5

    const/4 v2, 0x0

    const/high16 v4, 0x8000000

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStackSupervisor;->removeChildActivityContainers(Lcom/android/server/am/ActivityRecord;)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/am/ActivityStack;->finishActivityResultsLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;)V

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->makeFinishing()V

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->takeFromHistory()V

    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v1, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v2, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->removeAppToken(Landroid/os/IBinder;)V

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/server/am/TaskRecord;->removeActivity(Lcom/android/server/am/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p0}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplayId()I

    move-result v3

    invoke-virtual {v1, v2, p2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackTaskToTop(ILjava/lang/String;I)V

    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/android/server/am/ActivityStack;->removeTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    iget v2, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v1, v2}, Lcom/android/server/am/MultiWindowPolicy;->notifyTaskStopped(I)V

    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    sget-object v2, Lcom/samsung/android/multiwindow/MultiWindowStyle;->sConstDefaultMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-eq v1, v2, :cond_1

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v1, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v2, 0x1

    invoke-virtual {v1, v4, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->cleanUpActivityServicesLocked(Lcom/android/server/am/ActivityRecord;)V

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->removeUriPermissionsLocked()V

    return-void
.end method

.method private removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;",
            "Lcom/android/server/am/ProcessRecord;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_0
    :goto_0
    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v2, p2, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-direct {p0, v1}, Lcom/android/server/am/ActivityStack;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->finishLaunchTickingLocked()V

    return-void
.end method

.method private resetAffinityTaskIfNeededLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;ZZI)I
    .locals 23

    const/4 v14, -0x1

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v22, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->findEffectiveRootIndex()I

    move-result v15

    add-int/lit8 v12, v13, -0x1

    :goto_0
    if-le v12, v15, :cond_0

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, v18

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v2, :cond_1

    :cond_0
    return p5

    :cond_1
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v11, v2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v2, v11, 0x2

    if-eqz v2, :cond_3

    const/4 v10, 0x1

    :goto_1
    and-int/lit8 v2, v11, 0x40

    if-eqz v2, :cond_4

    const/4 v9, 0x1

    :goto_2
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_5

    if-gez v14, :cond_2

    move v14, v12

    :cond_2
    :goto_3
    add-int/lit8 v12, v12, -0x1

    goto :goto_0

    :cond_3
    const/4 v10, 0x0

    goto :goto_1

    :cond_4
    const/4 v9, 0x0

    goto :goto_2

    :cond_5
    if-eqz p3, :cond_2

    if-eqz v9, :cond_2

    if-eqz v21, :cond_2

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez p4, :cond_6

    if-eqz v10, :cond_9

    :cond_6
    if-ltz v14, :cond_7

    move/from16 v17, v14

    :goto_4
    move/from16 v16, v17

    :goto_5
    move/from16 v0, v16

    if-lt v0, v12, :cond_d

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    iget-boolean v2, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_8

    :goto_6
    add-int/lit8 v16, v16, -0x1

    goto :goto_5

    :cond_7
    move/from16 v17, v12

    goto :goto_4

    :cond_8
    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "reset"

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    goto :goto_6

    :cond_9
    if-gez p5, :cond_a

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p5

    :cond_a
    if-ltz v14, :cond_b

    move/from16 v17, v14

    :goto_7
    move/from16 v16, v17

    :goto_8
    move/from16 v0, v16

    if-lt v0, v12, :cond_c

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v3, v0, v2}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V

    move-object/from16 v0, p2

    move/from16 v1, p5

    invoke-virtual {v0, v1, v3}, Lcom/android/server/am/TaskRecord;->addActivityAtIndex(ILcom/android/server/am/ActivityRecord;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move/from16 v0, v22

    invoke-virtual {v2, v4, v0}, Lcom/android/server/wm/WindowManagerService;->setAppGroupId(Landroid/os/IBinder;I)V

    add-int/lit8 v16, v16, -0x1

    goto :goto_8

    :cond_b
    move/from16 v17, v12

    goto :goto_7

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_d

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v19

    if-lez v19, :cond_d

    add-int/lit8 v2, v19, -0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    iget-object v2, v3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "replace"

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    :cond_d
    const/4 v14, -0x1

    goto/16 :goto_3
.end method

.method private setVisibile(Lcom/android/server/am/ActivityRecord;Z)V
    .locals 6

    iput-boolean p2, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v5

    invoke-virtual {v3, v4, p2, v5}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;ZI)V

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->mChildContainers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v0, p2}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->setVisible(Z)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private startLaunchTraces()V
    .locals 8

    const-wide/16 v6, 0x40

    const/4 v4, 0x0

    iget-wide v0, p0, Lcom/android/server/am/ActivityStack;->mFullyDrawnStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const-string v0, "drawing"

    invoke-static {v6, v7, v0, v4}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    :cond_0
    const-string/jumbo v0, "launching"

    invoke-static {v6, v7, v0, v4}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    const-string v0, "drawing"

    invoke-static {v6, v7, v0, v4}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    return-void
.end method

.method private stopFullyDrawnTraceIfNeeded()V
    .locals 6

    const-wide/16 v4, 0x0

    iget-wide v0, p0, Lcom/android/server/am/ActivityStack;->mFullyDrawnStartTime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/am/ActivityStack;->mLaunchStartTime:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    const-wide/16 v0, 0x40

    const-string v2, "drawing"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    iput-wide v4, p0, Lcom/android/server/am/ActivityStack;->mFullyDrawnStartTime:J

    :cond_0
    return-void
.end method


# virtual methods
.method final activityDestroyedLocked(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x66

    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/am/ActivityStack;->cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    invoke-direct {p0, v2, p2}, Lcom/android/server/am/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    :cond_1
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method final activityPausedLocked(Landroid/os/IBinder;Z)V
    .locals 9

    const/4 v8, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x65

    invoke-virtual {v4, v5, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eq v4, v2, :cond_0

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    invoke-direct {p0, v8, v2}, Lcom/android/server/am/ActivityStack;->completePauseLocked(ZLcom/android/server/am/ActivityRecord;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_3

    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "(none)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const/16 v4, 0x753c

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, v2, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x2

    iget-object v7, v2, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    iget-object v7, v2, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method final activityStoppedLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/lang/CharSequence;)V
    .locals 5

    const/16 v4, 0x68

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v0, v1, :cond_1

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity reported stop, but no longer stopping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p3, :cond_2

    iput-object p3, p1, Lcom/android/server/am/ActivityRecord;->persistentState:Landroid/os/PersistableBundle;

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    :cond_2
    if-eqz p2, :cond_3

    iput-object p2, p1, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    iput-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->haveState:Z

    iput v2, p1, Lcom/android/server/am/ActivityRecord;->launchCount:I

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p4}, Lcom/android/server/am/ActivityRecord;->updateThumbnailLocked(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    :cond_3
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iput-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mVisibleBehindActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v0, p1, :cond_4

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->requestVisibleBehindLocked(Lcom/android/server/am/ActivityRecord;Z)Z

    :cond_4
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->clearOptionsLocked()V

    goto :goto_0

    :cond_5
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    if-eqz v0, :cond_6

    const-string/jumbo v0, "stop-config"

    invoke-virtual {p0, p1, v3, v0}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->updatePreviousProcessLocked(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_0
.end method

.method addTask(Lcom/android/server/am/TaskRecord;ZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/am/ActivityStack;->addTask(Lcom/android/server/am/TaskRecord;ZZZ)V

    return-void
.end method

.method addTask(Lcom/android/server/am/TaskRecord;ZZZ)V
    .locals 6

    const/4 v4, 0x0

    iput-object p0, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget-boolean v3, v1, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    if-nez v3, :cond_0

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/am/ActivityStack;->mNeedUpdateFocusWhileRemovingStack:Z

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->insertTaskAtTop(Lcom/android/server/am/TaskRecord;)V

    :goto_1
    if-nez p3, :cond_2

    iget-object v3, p1, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v3, :cond_2

    :try_start_0
    iget-object v3, p1, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v4, p1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    iget v5, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-interface {v3, v4, v5}, Landroid/service/voice/IVoiceInteractionSession;->taskStarted(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_2
    return-void

    :cond_3
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    if-nez p4, :cond_4

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v3, v4, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->add(ILcom/android/server/am/TaskRecord;)V

    :cond_4
    invoke-virtual {p0, p1, v4}, Lcom/android/server/am/ActivityStack;->updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_2
.end method

.method awakeFromSleepingLocked()V
    .locals 5

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :goto_0
    if-ltz v2, :cond_1

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    iget-object v0, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_1
    if-ltz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityRecord;->setSleeping(Z)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_2

    const-string v3, "ActivityManager"

    const-string v4, "awakeFromSleepingLocked: previously pausing activity didn\'t pause"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/android/server/am/ActivityStack;->activityPausedLocked(Landroid/os/IBinder;Z)V

    :cond_2
    return-void
.end method

.method final backgroundResourcesReleased()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6b

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getVisibleBehindActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStack;->setVisibleBehindActivity(Lcom/android/server/am/ActivityRecord;)V

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleTimeoutLocked(Lcom/android/server/am/ActivityRecord;)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    return-void
.end method

.method cancelInitializingActivities()V
    .locals 8

    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    const/4 v0, 0x1

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    :goto_0
    if-ltz v4, :cond_3

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    iget-object v1, v6, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    :goto_1
    if-ltz v2, :cond_2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_1

    if-ne v3, v5, :cond_0

    const/4 v0, 0x0

    :cond_0
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    iget-object v6, v3, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v6, v7, :cond_0

    iget-boolean v6, v3, Lcom/android/server/am/ActivityRecord;->mStartingWindowShown:Z

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    iput-boolean v6, v3, Lcom/android/server/am/ActivityRecord;->mStartingWindowShown:Z

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v6, v7}, Lcom/android/server/wm/WindowManagerService;->removeAppStartingWindow(Landroid/os/IBinder;)V

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method checkReadyForSleepLocked()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1, v0, v1, v1}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZZZ)Z

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method final cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/am/ActivityStack;->cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZZ)V

    return-void
.end method

.method final cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZZ)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v3, p1, :cond_0

    iput-object v5, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    :cond_0
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v3, p1, :cond_1

    iput-object v5, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    :cond_1
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    if-nez p4, :cond_3

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityManagerService;->clearFocusedActivity(Lcom/android/server/am/ActivityRecord;)V

    :cond_3
    iput-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    iput-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    if-eqz p3, :cond_4

    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v3, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    :cond_4
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_7

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    if-eqz v3, :cond_7

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/PendingIntentRecord;

    if-eqz v2, :cond_5

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, v2, v4}, Lcom/android/server/am/ActivityManagerService;->cancelIntentSenderLocked(Lcom/android/server/am/PendingIntentRecord;Z)V

    goto :goto_0

    :cond_6
    iput-object v5, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    :cond_7
    if-eqz p2, :cond_8

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->cleanUpActivityServicesLocked(Lcom/android/server/am/ActivityRecord;)V

    :cond_8
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getVisibleBehindActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    if-ne v3, p1, :cond_9

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, p1, v4}, Lcom/android/server/am/ActivityStackSupervisor;->requestVisibleBehindLocked(Lcom/android/server/am/ActivityRecord;Z)Z

    :cond_9
    return-void
.end method

.method final cleanUpActivityServicesLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ConnectionRecord;

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v2, v0, v3, p1}, Lcom/android/server/am/ActiveServices;->removeConnectionLocked(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;)V

    goto :goto_0

    :cond_0
    iput-object v3, p1, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    :cond_1
    return-void
.end method

.method clearLaunchTime(Lcom/android/server/am/ActivityRecord;)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->fullLaunch:Z

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/android/server/am/ActivityRecord;->fullyDrawnStartTime:J

    iput-wide v0, p1, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleTimeoutLocked(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_0
.end method

.method closeSystemDialogsLocked()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    :goto_0
    if-ltz v8, :cond_2

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    iget-object v6, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    :goto_1
    if-ltz v7, :cond_1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "close-sys"

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    :cond_0
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method convertToTranslucent(Lcom/android/server/am/ActivityRecord;)V
    .locals 4

    iput-object p1, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6a

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Z)Lcom/android/server/am/TaskRecord;
    .locals 7

    new-instance v0, Lcom/android/server/am/TaskRecord;

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/TaskRecord;-><init>(Lcom/android/server/am/ActivityManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p6, v1}, Lcom/android/server/am/ActivityStack;->addTask(Lcom/android/server/am/TaskRecord;ZZ)V

    return-object v0
.end method

.method final destroyActivitiesLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v5, v6, -0x1

    :goto_0
    if-ltz v5, :cond_5

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    iget-object v0, v6, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    :goto_1
    if-ltz v1, :cond_4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    iget-boolean v6, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_1

    :cond_0
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    iget-boolean v6, v4, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v6, :cond_2

    const/4 v3, 0x1

    :cond_2
    if-eqz p1, :cond_3

    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v6, p1, :cond_0

    :cond_3
    if-eqz v3, :cond_0

    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->isDestroyable()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    invoke-virtual {p0, v4, v6, p2}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_5
    if-eqz v2, :cond_6

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    :cond_6
    return-void
.end method

.method final destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z
    .locals 11

    const/4 v1, 0x1

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x7542

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    iget v8, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    const/4 v8, 0x2

    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v9, v9, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x4

    aput-object p3, v7, v8

    const/4 v8, 0x5

    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v5, v5}, Lcom/android/server/am/ActivityStack;->cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_4

    :goto_0
    if-eqz v1, :cond_6

    if-eqz p2, :cond_1

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v6, v7, :cond_0

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v10, v6, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v7, 0x19

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendEmptyMessage(I)Z

    :cond_0
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActiveServices;->updateServiceConnectionActivitiesLocked(Lcom/android/server/am/ProcessRecord;)V

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v6, v7, v5, v10}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    :cond_1
    const/4 v4, 0x0

    :try_start_0
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-boolean v8, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    iget v9, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    invoke-interface {v6, v7, v8, v9}, Landroid/app/IApplicationThread;->scheduleDestroyActivity(Landroid/os/IBinder;ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    iput-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    iget-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_5

    if-nez v4, :cond_5

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x66

    invoke-virtual {v6, v7, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x2710

    invoke-virtual {v6, v2, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_2
    iput v5, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz v1, :cond_3

    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Activity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " being finished, but not in LRU list"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v3

    :cond_4
    move v1, v5

    goto/16 :goto_0

    :catch_0
    move-exception v0

    iget-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " exceptionInScheduleDestroy"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v6}, Lcom/android/server/am/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    const/4 v3, 0x1

    const/4 v4, 0x1

    goto :goto_1

    :cond_5
    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v10, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    goto :goto_2

    :cond_6
    iget-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " hadNoApp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v6}, Lcom/android/server/am/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    const/4 v3, 0x1

    goto :goto_2

    :cond_7
    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v10, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    goto :goto_2
.end method

.method dumpActivitiesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;ZLjava/lang/String;)Z
    .locals 15

    const/4 v12, 0x0

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v14, v0, -0x1

    :goto_0
    if-ltz v14, :cond_2

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/TaskRecord;

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    const-string v3, "    "

    const-string v4, "Hist"

    const/4 v5, 0x1

    if-nez p3, :cond_1

    const/4 v6, 0x1

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    Task id #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v13, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-static/range {v0 .. v11}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    or-int/2addr v12, v0

    if-eqz v12, :cond_0

    const/16 p7, 0x0

    :cond_0
    add-int/lit8 v14, v14, -0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    :cond_2
    return v12
.end method

.method final ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/TaskRecord;Z)V

    return-void
.end method

.method final ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/TaskRecord;Z)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/TaskRecord;ZI)V

    return-void
.end method

.method final ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/TaskRecord;ZI)V
    .locals 22

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v17

    if-nez v17, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p3, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v19, v0

    if-eqz v19, :cond_3

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->notifyActivityDrawnLocked(Lcom/android/server/am/ActivityRecord;)V

    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x6a

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeMessages(I)V

    :cond_4
    const/4 v3, 0x1

    if-nez p4, :cond_6

    const/4 v7, 0x1

    :goto_1
    if-eqz p3, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v14

    move v9, v14

    const/4 v3, 0x0

    :goto_2
    move/from16 v12, p5

    const/16 v18, 0x0

    const/4 v5, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    move/from16 v16, v14

    :goto_3
    move/from16 v0, v16

    if-lt v0, v9, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/TaskRecord;

    iget-object v4, v15, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v19

    add-int/lit8 v6, v19, -0x1

    :goto_4
    if-ltz v6, :cond_1a

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-lt v6, v0, :cond_9

    :cond_5
    :goto_5
    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    :cond_6
    const/4 v7, 0x0

    goto :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    add-int/lit8 v14, v19, -0x1

    const/4 v9, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isStackVisible()Z

    move-result v19

    if-nez v19, :cond_8

    const/4 v7, 0x1

    :goto_6
    goto :goto_2

    :cond_8
    const/4 v7, 0x0

    goto :goto_6

    :cond_9
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/ActivityRecord;

    iget-boolean v0, v13, Lcom/android/server/am/ActivityRecord;->finishing:Z

    move/from16 v19, v0

    if-nez v19, :cond_5

    if-eqz v3, :cond_a

    move-object/from16 v0, v17

    if-ne v13, v0, :cond_5

    :cond_a
    const/4 v3, 0x0

    if-eqz v7, :cond_b

    if-nez v18, :cond_b

    iget-boolean v0, v13, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    move/from16 v19, v0

    if-nez v19, :cond_b

    iget-boolean v0, v13, Lcom/android/server/am/ActivityRecord;->mIsLastShownWhenLocked:Z

    move/from16 v19, v0

    if-eqz v19, :cond_17

    :cond_b
    move-object/from16 v0, p1

    if-eq v13, v0, :cond_c

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v13, v1}, Lcom/android/server/am/ActivityStack;->ensureActivityConfigurationLocked(Lcom/android/server/am/ActivityRecord;I)Z

    :cond_c
    iget-object v0, v13, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v19, v0

    if-eqz v19, :cond_d

    iget-object v0, v13, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v19, v0

    if-nez v19, :cond_12

    :cond_d
    move-object/from16 v0, p1

    if-eq v13, v0, :cond_e

    iget-object v0, v13, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v13, v0, v1}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    :cond_e
    iget-boolean v0, v13, Lcom/android/server/am/ActivityRecord;->visible:Z

    move/from16 v19, v0

    if-eqz v19, :cond_f

    iget-boolean v0, v13, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    move/from16 v19, v0

    if-nez v19, :cond_f

    iget-boolean v0, v13, Lcom/android/server/am/ActivityRecord;->mIsLastShownWhenLocked:Z

    move/from16 v19, v0

    if-eqz v19, :cond_10

    :cond_f
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v13, v1}, Lcom/android/server/am/ActivityStack;->setVisibile(Lcom/android/server/am/ActivityRecord;Z)V

    :cond_10
    move-object/from16 v0, p1

    if-eq v13, v0, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v13, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    :cond_11
    :goto_7
    iget v0, v13, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    move/from16 v19, v0

    or-int p2, p2, v19

    iget-boolean v0, v13, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    move/from16 v19, v0

    if-eqz v19, :cond_15

    const/4 v7, 0x1

    goto/16 :goto_5

    :cond_12
    iget-boolean v0, v13, Lcom/android/server/am/ActivityRecord;->visible:Z

    move/from16 v19, v0

    if-eqz v19, :cond_13

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    :try_start_0
    iget-object v0, v13, Lcom/android/server/am/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    move-object/from16 v19, v0

    if-eqz v19, :cond_11

    iget-object v0, v13, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v19, v0

    iget-object v0, v13, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v20, v0

    iget-object v0, v13, Lcom/android/server/am/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    move-object/from16 v21, v0

    invoke-interface/range {v19 .. v21}, Landroid/app/IApplicationThread;->scheduleOnNewActivityOptions(Landroid/os/IBinder;Landroid/app/ActivityOptions;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v19

    goto :goto_7

    :cond_13
    const/16 v19, 0x1

    move/from16 v0, v19

    iput-boolean v0, v13, Lcom/android/server/am/ActivityRecord;->visible:Z

    iget-object v0, v13, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_11

    move-object/from16 v0, p1

    if-eq v13, v0, :cond_11

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v19, v0

    if-eqz v19, :cond_14

    iget-object v0, v13, Lcom/android/server/am/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v13, v1}, Lcom/android/server/am/ActivityStack;->setVisibile(Lcom/android/server/am/ActivityRecord;Z)V

    const/16 v19, 0x0

    move/from16 v0, v19

    iput-boolean v0, v13, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    iget-object v0, v13, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z

    iget-object v0, v13, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v19, v0

    iget-object v0, v13, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-interface/range {v19 .. v21}, Landroid/app/IApplicationThread;->scheduleWindowVisibility(Landroid/os/IBinder;Z)V

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_7

    :catch_1
    move-exception v8

    const-string v19, "ActivityManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Exception thrown making visibile: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v13, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v19

    if-nez v19, :cond_16

    iget-boolean v0, v13, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    move/from16 v19, v0

    if-eqz v19, :cond_16

    invoke-virtual {v15}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v19

    if-eqz v19, :cond_16

    const/4 v7, 0x1

    goto/16 :goto_5

    :cond_16
    iget-object v0, v13, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v19, v0

    const/16 v20, 0x4

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v19

    if-eqz v19, :cond_5

    iget-boolean v0, v13, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    move/from16 v19, v0

    if-nez v19, :cond_5

    const/4 v7, 0x1

    goto/16 :goto_5

    :cond_17
    iget-boolean v0, v13, Lcom/android/server/am/ActivityRecord;->visible:Z

    move/from16 v19, v0

    if-eqz v19, :cond_5

    const/16 v19, 0x0

    :try_start_2
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v13, v1}, Lcom/android/server/am/ActivityStack;->setVisibile(Lcom/android/server/am/ActivityRecord;Z)V

    sget-object v19, Lcom/android/server/am/ActivityStack$1;->$SwitchMap$com$android$server$am$ActivityStack$ActivityState:[I

    iget-object v0, v13, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/ActivityStack$ActivityState;->ordinal()I

    move-result v20

    aget v19, v19, v20

    packed-switch v19, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    iget-object v0, v13, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    iget-object v0, v13, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    iget-object v0, v13, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v19, v0

    iget-object v0, v13, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-interface/range {v19 .. v21}, Landroid/app/IApplicationThread;->scheduleWindowVisibility(Landroid/os/IBinder;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_5

    :catch_2
    move-exception v8

    const-string v19, "ActivityManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Exception thrown making hidden: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v13, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    :pswitch_1
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getVisibleBehindActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v19

    move-object/from16 v0, v19

    if-ne v0, v13, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->releaseBackgroundResources()V

    goto/16 :goto_5

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_5

    :cond_1a
    add-int/lit8 v16, v16, -0x1

    goto/16 :goto_3

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->notifyActivityDrawnLocked(Lcom/android/server/am/ActivityRecord;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method final ensureActivityConfigurationLocked(Lcom/android/server/am/ActivityRecord;I)Z
    .locals 21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    const/16 v17, 0x1

    :goto_0
    return v17

    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v17

    if-eqz v17, :cond_1

    const/16 v17, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mMinimizeAllPenWindowRequested:Z

    move/from16 v17, v0

    if-nez v17, :cond_2

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->minimizePenWindowRequested:Z

    move/from16 v17, v0

    if-eqz v17, :cond_4

    :cond_2
    iget-object v0, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    iget-object v0, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_4

    :cond_3
    const/16 v17, 0x1

    goto :goto_0

    :cond_4
    const/4 v8, 0x0

    const/4 v13, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v9, v0, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v13, v0, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportSelective1Orientation(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_5

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getPreferredOrientation()I

    move-result v18

    iget v0, v9, Landroid/content/res/Configuration;->orientation:I

    move/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->shouldFakeOrientation(IILandroid/graphics/Rect;)Z

    move-result v17

    if-eqz v17, :cond_5

    new-instance v10, Landroid/content/res/Configuration;

    invoke-direct {v10, v9}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-virtual {v10}, Landroid/content/res/Configuration;->toggleOrientation()I

    move-result v17

    move/from16 v0, v17

    iput v0, v10, Landroid/content/res/Configuration;->orientation:I

    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v10, Landroid/content/res/Configuration;->seq:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v10, v1}, Lcom/android/server/wm/WindowManagerService;->computeFakeScreenDP(Landroid/content/res/Configuration;Z)V

    move-object v9, v10

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mScaledAppNames:Ljava/util/Map;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_6

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/wm/WindowManagerService;->isScaledPid(I)Z

    move-result v17

    if-eqz v17, :cond_7

    :cond_6
    new-instance v7, Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mDssHelper:Landroid/os/DssHelper;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/os/DssHelper;->getScalingFactor(Ljava/lang/String;)D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Double;->floatValue()F

    move-result v14

    iget v0, v7, Landroid/content/res/Configuration;->densityDpi:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v14

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v7, Landroid/content/res/Configuration;->densityDpi:I

    move-object v9, v7

    :cond_7
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v17

    if-eqz v17, :cond_8

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    move/from16 v17, v0

    if-nez v17, :cond_8

    const/16 v17, 0x1

    goto/16 :goto_0

    :cond_8
    const/16 v16, 0x0

    const/4 v5, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    if-eqz v17, :cond_9

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    const/16 v16, 0x1

    :goto_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    const/high16 v18, 0x400000

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v12

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->isFixedOrientationDeclared(I)Z

    move-result v5

    :cond_9
    if-eqz v16, :cond_d

    if-eqz v12, :cond_d

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_b

    :cond_a
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    move/from16 v17, v0

    if-nez v17, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    :cond_b
    const/16 v17, 0x1

    goto/16 :goto_0

    :cond_c
    const/16 v16, 0x0

    goto :goto_1

    :cond_d
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    move/from16 v17, v0

    if-eqz v17, :cond_e

    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    const/16 v17, 0x1

    goto/16 :goto_0

    :cond_e
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    move-object/from16 v0, p1

    iput-object v9, v0, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {v11, v9}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v4

    if-nez v4, :cond_f

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    move/from16 v17, v0

    if-nez v17, :cond_f

    const/16 v17, 0x1

    goto/16 :goto_0

    :cond_f
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v17, v0

    if-eqz v17, :cond_10

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v17, v0

    if-nez v17, :cond_11

    :cond_10
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    const/16 v17, 0x1

    goto/16 :goto_0

    :cond_11
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/ActivityInfo;->getRealConfigChanged()I

    move-result v17

    xor-int/lit8 v17, v17, -0x1

    and-int v17, v17, v4

    if-nez v17, :cond_12

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    move/from16 v17, v0

    if-eqz v17, :cond_18

    :cond_12
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    move/from16 v17, v0

    or-int v17, v17, v4

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportSelective1Orientation(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_14

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    move/from16 v17, v0

    const/high16 v18, 0x2000000

    and-int v17, v17, v18

    if-eqz v17, :cond_14

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    move/from16 v17, v0

    const v18, -0x2000001

    and-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    :goto_2
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v17, v0

    if-eqz v17, :cond_13

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v17, v0

    if-nez v17, :cond_15

    :cond_13
    const/16 v17, 0x1

    const-string v18, "config"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    :goto_3
    const/16 v17, 0x0

    goto/16 :goto_0

    :cond_14
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    goto :goto_2

    :cond_15
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_16

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    const/16 v17, 0x1

    goto/16 :goto_0

    :cond_16
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_17

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->relaunchActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Z

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    goto :goto_3

    :cond_17
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    move/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->relaunchActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Z

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    goto :goto_3

    :cond_18
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v17, v0

    if-eqz v17, :cond_19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v17, v0

    if-eqz v17, :cond_19

    :try_start_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Landroid/app/IApplicationThread;->scheduleActivityConfigurationChanged(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_19
    :goto_4
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    const/16 v17, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v17

    goto :goto_4
.end method

.method findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;
    .locals 9

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    iget-object v7, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v7, :cond_0

    new-instance v2, Landroid/content/ComponentName;

    iget-object v7, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v2, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v7, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v5, v7, -0x1

    :goto_0
    if-ltz v5, :cond_4

    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    iget v7, v4, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {p0, v7}, Lcom/android/server/am/ActivityStack;->isCurrentProfileLocked(I)Z

    move-result v7

    if-nez v7, :cond_2

    :cond_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_2
    iget-object v0, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    :goto_1
    if-ltz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    iget-boolean v7, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v7, :cond_3

    iget-object v7, v3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget v7, v3, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v7, v6, :cond_3

    :goto_2
    return-object v3

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    goto :goto_2
.end method

.method findActivityLockedByName(ILjava/lang/String;)Lcom/android/server/am/ActivityRecord;
    .locals 6

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    :goto_0
    if-ltz v4, :cond_2

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    iget-object v0, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    :goto_1
    if-ltz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    iget-boolean v5, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v5, :cond_0

    iget v5, v2, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v5, p1, :cond_0

    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_2
    return-object v2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method findActivityLockedByPackage(ILjava/lang/String;)Lcom/android/server/am/ActivityRecord;
    .locals 6

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    :goto_0
    if-ltz v4, :cond_2

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    iget-object v0, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    :goto_1
    if-ltz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    iget-boolean v5, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v5, :cond_0

    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, v2, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v5, p1, :cond_0

    :goto_2
    return-object v2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method findNextTranslucentActivity(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 13

    const/4 v12, 0x0

    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return-object v12

    :cond_1
    iget-object v6, v8, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v6, :cond_0

    iget-object v11, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    iget-object v10, v6, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    iget-object v0, v8, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    add-int/lit8 v2, v11, 0x1

    iget-object v11, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_1
    if-ge v7, v4, :cond_0

    iget-object v11, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ActivityStack;

    iget-object v10, v11, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v5

    :goto_2
    if-ge v9, v5, :cond_5

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/TaskRecord;

    iget-object v0, v11, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_3
    if-ge v2, v3, :cond_4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget-boolean v11, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v11, :cond_3

    iget-boolean v11, v1, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v11, :cond_2

    move-object v1, v12

    :cond_2
    move-object v12, v1

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_5
    const/4 v9, 0x0

    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method

.method findTaskLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityStack;->findTaskLocked(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method findTaskLocked(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityRecord;
    .locals 22

    const/4 v13, 0x0

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    iget-object v0, v7, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    new-instance v4, Landroid/content/ComponentName;

    iget-object v0, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    iget-object v0, v7, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v4, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v19

    const/4 v6, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v10

    if-eqz v8, :cond_1

    const/16 v20, 0x1

    :goto_0
    invoke-virtual {v8}, Landroid/content/Intent;->isDocument()Z

    move-result v21

    and-int v9, v20, v21

    if-eqz v9, :cond_2

    invoke-virtual {v8}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    add-int/lit8 v18, v20, -0x1

    :goto_2
    if-gez v18, :cond_3

    if-eqz v11, :cond_11

    :goto_3
    return-object v11

    :cond_1
    const/16 v20, 0x0

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/TaskRecord;

    iget-object v0, v14, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    move-object/from16 v20, v0

    if-eqz v20, :cond_5

    :cond_4
    :goto_4
    add-int/lit8 v18, v18, -0x1

    goto :goto_2

    :cond_5
    iget v0, v14, Lcom/android/server/am/TaskRecord;->userId:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    invoke-virtual {v14}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v12

    if-eqz v12, :cond_4

    iget-boolean v0, v12, Lcom/android/server/am/ActivityRecord;->finishing:Z

    move/from16 v20, v0

    if-nez v20, :cond_4

    iget v0, v12, Lcom/android/server/am/ActivityRecord;->userId:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    iget v0, v12, Lcom/android/server/am/ActivityRecord;->launchMode:I

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_4

    iget-object v0, v14, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    move-object/from16 v16, v0

    iget-object v3, v14, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    if-eqz v16, :cond_7

    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->isDocument()Z

    move-result v20

    if-eqz v20, :cond_7

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v15

    :goto_5
    if-nez v9, :cond_9

    if-nez v17, :cond_9

    iget-object v0, v14, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_9

    iget-object v0, v14, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    move-object v6, v12

    :cond_6
    :goto_6
    if-eqz v6, :cond_4

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v20, v0

    const-string v21, "android.intent.category.LAUNCHER"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_10

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v20, v0

    if-eqz v20, :cond_10

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v20

    if-eqz v20, :cond_10

    iget-object v0, v12, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v20

    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v20, v0

    sget-object v21, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_b

    if-eqz v11, :cond_b

    move-object v11, v6

    goto/16 :goto_3

    :cond_7
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Landroid/content/Intent;->isDocument()Z

    move-result v20

    if-eqz v20, :cond_8

    const/16 v17, 0x1

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v15

    goto :goto_5

    :cond_8
    const/16 v17, 0x0

    const/4 v15, 0x0

    goto :goto_5

    :cond_9
    if-eqz v16, :cond_a

    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v20

    if-eqz v20, :cond_a

    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v20

    if-nez v20, :cond_a

    invoke-static {v5, v15}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    move-object v6, v12

    goto :goto_6

    :cond_a
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v20

    if-eqz v20, :cond_6

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v20

    if-nez v20, :cond_6

    invoke-static {v5, v15}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    move-object v6, v12

    goto/16 :goto_6

    :cond_b
    if-nez v11, :cond_d

    move-object v11, v6

    :cond_c
    :goto_7
    const/4 v6, 0x0

    goto/16 :goto_4

    :cond_d
    iget-object v0, v11, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v20, v0

    sget-object v21, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_f

    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v20, v0

    sget-object v21, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_e

    iget-object v0, v11, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v20

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_f

    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v20

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_f

    :cond_e
    move-object v11, v6

    goto :goto_7

    :cond_f
    if-eqz v10, :cond_c

    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v20

    move-object/from16 v0, v20

    if-ne v11, v0, :cond_c

    iget-object v0, v11, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v20, v0

    sget-object v21, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_c

    move-object v11, v6

    goto :goto_7

    :cond_10
    move-object v11, v6

    goto/16 :goto_3

    :cond_11
    const/4 v11, 0x0

    goto/16 :goto_3
.end method

.method final finishActivityAffinityLocked(Lcom/android/server/am/ActivityRecord;)Z
    .locals 9

    const/4 v3, 0x0

    const/4 v8, 0x2

    const/4 v2, 0x0

    const/4 v5, 0x1

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v0

    if-eq v0, v8, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getTopActivityMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    :goto_0
    if-ltz v7, :cond_3

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v0

    if-ne v0, v8, :cond_2

    const-string/jumbo v4, "request-affinity"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    :goto_1
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    goto :goto_0

    :cond_2
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    invoke-static {v0, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    :goto_2
    return v5

    :cond_4
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTask:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTask:Lcom/android/server/am/TaskRecord;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v0, v4, :cond_5

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eq v0, v1, :cond_6

    :cond_5
    const-string/jumbo v4, "request-affinity"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    goto :goto_1

    :cond_6
    const-string v0, "ActivityManager"

    const-string/jumbo v2, "this activity should not finish, because LockTaskMode is set"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method final finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z
    .locals 10

    iget-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_0

    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Duplicate finish request for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    :goto_0
    return v6

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->makeFinishing()V

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const/16 v6, 0x7531

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    iget v9, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x4

    aput-object p4, v7, v8

    const/4 v8, 0x5

    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object v0, v5, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v2, v6, :cond_1

    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->setFrontOfTask()V

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getFlags()I

    move-result v6

    const/high16 v7, 0x80000

    and-int/2addr v6, v7

    if-eqz v6, :cond_1

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    iget-object v6, v3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/high16 v7, 0x80000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->pauseKeyDispatchingLocked()V

    const-string/jumbo v6, "reset"

    invoke-virtual {v6, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "clear"

    invoke-virtual {v6, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string/jumbo v6, "finishActivity"

    invoke-direct {p0, p1, v6}, Lcom/android/server/am/ActivityStack;->adjustFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/ActivityStack;->finishActivityResultsLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;)V

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "clear"

    invoke-virtual {v6, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, v5, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_4

    iget-object v6, v5, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    invoke-virtual {p0, p1, v6, p5}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    if-nez v6, :cond_3

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_3
    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_4
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v6, p1, :cond_d

    if-gtz v2, :cond_9

    const/4 v1, 0x1

    :goto_1
    sget-boolean v6, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v6, :cond_5

    if-eqz v1, :cond_5

    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[DualScreenTransition] Finishing "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isFinishWithCoupledTask="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, v5, Lcom/android/server/am/TaskRecord;->mFinishWithCoupledTask:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " coupledTask="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->getOppositeTask()Lcom/android/server/am/TaskRecord;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v6

    if-nez v6, :cond_b

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_a

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v7, 0x64

    const/4 v8, 0x0

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZI)V

    :goto_2
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v8, 0x0

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;ZI)V

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v6, :cond_6

    :cond_6
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZZZ)Z

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v6, v6, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTask:Lcom/android/server/am/TaskRecord;

    if-eqz v6, :cond_7

    iget-boolean v6, v5, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    if-nez v6, :cond_8

    :cond_7
    if-eqz v1, :cond_8

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6, v5}, Lcom/android/server/am/ActivityStackSupervisor;->endLockTaskModeIfTaskEnding(Lcom/android/server/am/TaskRecord;)V

    :cond_8
    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_9
    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_a
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v7, 0x66

    const/4 v8, 0x0

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZI)V

    goto :goto_2

    :cond_b
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v1, :cond_c

    const/16 v6, 0x9

    :goto_3
    const/4 v8, 0x0

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v9

    invoke-virtual {v7, v6, v8, v9}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZI)V

    goto :goto_2

    :cond_c
    const/4 v6, 0x7

    goto :goto_3

    :cond_d
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v6, v7, :cond_8

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_f

    const-string/jumbo v6, "no-history"

    invoke-virtual {v6, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    const/4 v6, 0x0

    invoke-virtual {p0, p1, v6, p5}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    if-nez v6, :cond_e

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_e
    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_f
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_11

    const-string/jumbo v6, "removeTask"

    invoke-virtual {v6, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    const/4 v6, 0x0

    invoke-virtual {p0, p1, v6, p5}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    if-nez v6, :cond_10

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_10
    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_11
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v6, v7, :cond_13

    const/4 v6, 0x0

    invoke-virtual {p0, p1, v6, p5}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    if-nez v6, :cond_12

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_12
    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_13
    const/4 v6, 0x1

    invoke-virtual {p0, p1, v6, p5}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    if-nez v6, :cond_14

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_14
    const/4 v6, 0x0

    goto/16 :goto_0
.end method

.method final finishActivityResultsLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;)V
    .locals 8

    const/4 v7, 0x0

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v6, :cond_2

    iget v0, v6, Lcom/android/server/am/ActivityRecord;->userId:I

    iget v1, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    if-eq v0, v1, :cond_0

    if-eqz p3, :cond_0

    iget v0, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {p3, v0}, Landroid/content/Intent;->setContentUserHint(I)V

    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, v6, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v4

    iget v5, v6, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;I)V

    :cond_1
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/ActivityRecord;->requestCode:I

    move-object v0, v6

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityRecord;->addResultLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    iput-object v7, p1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    :cond_2
    iput-object v7, p1, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    iput-object v7, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    iput-object v7, p1, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    iput-object v7, p1, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    return-void
.end method

.method finishAllActivities()Z
    .locals 11

    const/4 v5, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v10, v0, -0x1

    :goto_0
    if-ltz v10, :cond_3

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    iget-object v6, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v9, :cond_2

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v0, v0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-nez v0, :cond_0

    iget-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string/jumbo v4, "force-stop"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v9, v9, -0x1

    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v10, v10, -0x1

    goto :goto_0

    :cond_3
    return v5
.end method

.method finishAllActivitiesLocked(Z)V
    .locals 9

    const/4 v8, 0x0

    const/4 v2, 0x1

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    :goto_0
    if-ltz v4, :cond_2

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    iget-object v0, v5, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    :goto_1
    if-ltz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    const/4 v2, 0x0

    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_0

    if-nez p1, :cond_0

    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_0
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "finishAllActivitiesLocked: finishing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " immediately"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3, v8, v8}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->onTaskListEmptyLocked()V

    :cond_3
    return-void
.end method

.method final finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;
    .locals 7

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne p2, v4, :cond_7

    iget-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x3

    if-gt v4, v5, :cond_0

    iget-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gt v4, v6, :cond_3

    :cond_0
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V

    :cond_1
    :goto_0
    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v3, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eqz p3, :cond_2

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    :cond_2
    :goto_1
    return-object p1

    :cond_3
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v4

    if-nez v4, :cond_5

    iget-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-nez v4, :cond_4

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4, v3}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    if-nez v3, :cond_5

    :cond_4
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V

    goto :goto_0

    :cond_6
    iget-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isMultiWindowStack()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gt v4, v6, :cond_7

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V

    :cond_7
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v4, v5, :cond_8

    iget-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V

    :cond_8
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v4, p1, :cond_9

    iput-object v3, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    :cond_9
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->FINISHING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v4, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eqz p2, :cond_a

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v2, v4, :cond_a

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v2, v4, :cond_f

    :cond_a
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->makeFinishing()V

    const-string/jumbo v4, "finish-imm"

    invoke-virtual {p0, p1, v6, v4}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    :cond_b
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {p0, v3, v6}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V

    :cond_c
    const/4 v1, 0x0

    if-nez v0, :cond_e

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v4, :cond_d

    if-eqz v1, :cond_e

    :cond_d
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V

    :cond_e
    if-eqz v0, :cond_2

    move-object p1, v3

    goto/16 :goto_1

    :cond_f
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    goto/16 :goto_1
.end method

.method final finishSubActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I)V
    .locals 9

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    :goto_0
    if-ltz v8, :cond_4

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    iget-object v6, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    :goto_1
    if-ltz v7, :cond_3

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-ne v0, p1, :cond_2

    iget v0, v1, Lcom/android/server/am/ActivityRecord;->requestCode:I

    if-ne v0, p3, :cond_2

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v3, 0x0

    const-string/jumbo v4, "request-sub"

    move-object v0, p0

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    :cond_2
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    return-void
.end method

.method final finishTopRunningActivityLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 8

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v0, p1, :cond_4

    const-string v0, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Force finishing activity 1 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    const-string v4, "crashed"

    move-object v0, p0

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    add-int/lit8 v6, v6, -0x1

    if-gez v6, :cond_1

    :cond_0
    add-int/lit8 v7, v7, -0x1

    if-gez v7, :cond_5

    :cond_1
    :goto_0
    if-ltz v6, :cond_4

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v0, v4, :cond_2

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v0, v4, :cond_2

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v0, v4, :cond_4

    :cond_2
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eq v0, v4, :cond_4

    :cond_3
    const-string v0, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Force finishing activity 2 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "crashed"

    move-object v0, p0

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    :cond_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    if-ltz v6, :cond_0

    goto :goto_0
.end method

.method final finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
    .locals 11

    const/4 v2, 0x0

    invoke-interface {p1}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v9, v0, -0x1

    :goto_0
    if-ltz v9, :cond_2

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/TaskRecord;

    iget-object v0, v10, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_1

    iget-object v0, v10, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-interface {v0}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, v8, :cond_1

    iget-object v0, v10, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    :goto_1
    if-ltz v6, :cond_1

    iget-object v0, v10, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_0

    const/4 v3, 0x0

    const-string/jumbo v4, "finish-voice"

    move-object v0, p0

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    const/4 v7, 0x1

    :cond_0
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    :cond_2
    if-eqz v7, :cond_3

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    :cond_3
    return-void
.end method

.method forceStopPackageLocked(Ljava/lang/String;ZZI)Z
    .locals 15

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v14, v1, -0x1

    :goto_0
    if-ltz v14, :cond_d

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    iget-object v7, v1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v12, :cond_c

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p1, :cond_5

    iget v1, v2, Lcom/android/server/am/ActivityRecord;->userId:I

    move/from16 v0, p4

    if-ne v1, v0, :cond_5

    :cond_0
    const/4 v13, 0x1

    :goto_2
    const/4 v1, -0x1

    move/from16 v0, p4

    if-eq v0, v1, :cond_1

    iget v1, v2, Lcom/android/server/am/ActivityRecord;->userId:I

    move/from16 v0, p4

    if-ne v1, v0, :cond_4

    :cond_1
    if-nez v13, :cond_2

    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v1, v11, :cond_4

    :cond_2
    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_3

    if-nez p3, :cond_3

    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v1, v1, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-nez v1, :cond_4

    :cond_3
    if-nez p2, :cond_7

    iget-boolean v1, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v1, :cond_6

    :cond_4
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_5
    const/4 v13, 0x0

    goto :goto_2

    :cond_6
    const/4 v1, 0x1

    :goto_4
    return v1

    :cond_7
    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v1

    if-eqz v1, :cond_9

    if-eqz v10, :cond_8

    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v10, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skip force-stop again "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_8
    iget-object v10, v2, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    :cond_9
    const/4 v9, 0x1

    const-string v1, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Force finishing activity 3 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v13, :cond_b

    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_a

    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/server/am/ProcessRecord;->removed:Z

    :cond_a
    const/4 v1, 0x0

    iput-object v1, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    :cond_b
    iget-object v11, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "force-stop"

    const/4 v6, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    add-int/lit8 v12, v12, -0x1

    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    :cond_c
    add-int/lit8 v14, v14, -0x1

    goto/16 :goto_0

    :cond_d
    move v1, v9

    goto :goto_4
.end method

.method getAllTasks()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method getDisplayId()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->getDisplayId()I

    move-result v0

    return v0
.end method

.method getDumpActivitiesLocked(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/server/am/ActivityStackSupervisor;->getGlobalTaskHistoryLocked(I)Ljava/util/ArrayList;

    move-result-object v6

    const-string v9, "all"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v7, v9, -0x1

    :goto_0
    if-ltz v7, :cond_1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/TaskRecord;

    iget-object v9, v9, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v9, "top"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v8, v9, -0x1

    if-ltz v8, :cond_1

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/TaskRecord;

    iget-object v2, v9, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v3, v9, -0x1

    if-ltz v3, :cond_1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0

    :cond_2
    new-instance v4, Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    invoke-direct {v4}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;-><init>()V

    invoke-virtual {v4, p1}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->build(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v7, v9, -0x1

    :goto_1
    if-ltz v7, :cond_1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/TaskRecord;

    iget-object v9, v9, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    iget-object v9, v5, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v4, v5, v9}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    add-int/lit8 v7, v7, -0x1

    goto :goto_1
.end method

.method getGlobalTaskHistoryIsolatedLocked()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v10, p0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    invoke-virtual {v9, v10}, Lcom/android/server/am/ActivityStackSupervisor;->getGlobalTaskHistoryLocked(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v10, p0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    invoke-virtual {v9, v10}, Lcom/android/server/am/ActivityStackSupervisor;->isIsolated(I)Z

    move-result v9

    if-eqz v9, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/TaskRecord;

    const/4 v6, 0x0

    :goto_1
    iget-object v9, v8, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v6, v9, :cond_2

    iget-object v9, v8, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ActivityRecord;

    iget v9, v9, Lcom/android/server/am/ActivityRecord;->isolatedBaseCouple:I

    sget v10, Lcom/android/server/am/ActivityRecord;->ISOLATED_BASE:I

    if-eq v9, v10, :cond_0

    iget-object v9, v8, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ActivityRecord;

    iget-object v9, v9, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/16 v10, 0x1000

    invoke-virtual {v9, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    invoke-virtual {v2, v3, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v10, p0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    invoke-virtual {v9, v10}, Lcom/android/server/am/ActivityStackSupervisor;->getGlobalTaskHistoryLocked(I)Ljava/util/ArrayList;

    move-result-object v0

    :cond_4
    return-object v0
.end method

.method getGlobalTaskHistoryLocked()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v1, p0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getGlobalTaskHistoryLocked(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getMultiWindowStyle(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .locals 3

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_0
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v1, Lcom/samsung/android/multiwindow/MultiWindowStyle;->sConstDefaultMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    monitor-exit v2

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getStackId()I
    .locals 1

    iget v0, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    return v0
.end method

.method getTasksLocked(Ljava/util/List;IZI)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;IZI)V"
        }
    .end annotation

    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v8, v10, -0x1

    :goto_0
    if-ltz v8, :cond_d

    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/TaskRecord;

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v0, v7, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    :cond_1
    if-nez p3, :cond_2

    invoke-virtual {v7}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    move-result v10

    if-nez v10, :cond_2

    iget v10, v7, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    if-ne v10, p2, :cond_0

    :cond_2
    const/4 v2, 0x0

    and-int/lit8 v10, p4, 0x4

    if-eqz v10, :cond_3

    iget-boolean v10, v7, Lcom/android/server/am/TaskRecord;->bHidden:Z

    if-nez v10, :cond_0

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v1, v10, -0x1

    :goto_2
    if-ltz v1, :cond_a

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityRecord;

    if-eqz v9, :cond_4

    iget-object v10, v9, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v11, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v10, v11, :cond_5

    :cond_4
    move-object v9, v6

    const/4 v5, 0x0

    move v4, v5

    :cond_5
    add-int/lit8 v4, v4, 0x1

    iget-object v10, v6, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v10, :cond_6

    iget-object v10, v6, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v10, v10, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v10, :cond_6

    add-int/lit8 v5, v5, 0x1

    :cond_6
    and-int/lit8 v10, p4, 0x1

    if-eqz v10, :cond_7

    iget-object v10, v6, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v11, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v10, v11, :cond_9

    :cond_7
    and-int/lit8 v10, p4, 0x2

    if-eqz v10, :cond_8

    iget v10, v6, Lcom/android/server/am/ActivityRecord;->userId:I

    iget v11, p0, Lcom/android/server/am/ActivityStack;->mCurrentUser:I

    if-ne v10, v11, :cond_9

    :cond_8
    or-int/lit8 v2, v2, 0x1

    :cond_9
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_a
    if-eqz v2, :cond_0

    new-instance v3, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-direct {v3}, Landroid/app/ActivityManager$RunningTaskInfo;-><init>()V

    iget v10, v7, Lcom/android/server/am/TaskRecord;->taskId:I

    iput v10, v3, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    iget-object v10, v6, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    iput-object v10, v3, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    iget-object v10, v9, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    iput-object v10, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    iget-wide v10, v7, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    iput-wide v10, v3, Landroid/app/ActivityManager$RunningTaskInfo;->lastActiveTime:J

    iget-wide v10, v7, Lcom/android/server/am/TaskRecord;->lastActiveElapsedTime:J

    iput-wide v10, v3, Landroid/app/ActivityManager$RunningTaskInfo;->lastActiveElapsedTime:J

    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v10

    iput-boolean v10, v3, Landroid/app/ActivityManager$RunningTaskInfo;->isHomeType:Z

    iget-object v10, v6, Lcom/android/server/am/ActivityRecord;->sourceActivity:Landroid/content/ComponentName;

    iput-object v10, v3, Landroid/app/ActivityManager$RunningTaskInfo;->sourceActivity:Landroid/content/ComponentName;

    iget v10, v7, Lcom/android/server/am/TaskRecord;->userId:I

    iput v10, v3, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    iget-object v10, v7, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    iput-object v10, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskAffinity:Ljava/lang/String;

    and-int/lit8 v10, p4, 0x8

    if-eqz v10, :cond_c

    iget-object v10, v9, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    iput-object v10, v3, Landroid/app/ActivityManager$RunningTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    :goto_3
    iget-object v10, v9, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v10, :cond_b

    iget-object v10, v9, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v10, v10, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    iput-object v10, v3, Landroid/app/ActivityManager$RunningTaskInfo;->description:Ljava/lang/CharSequence;

    :cond_b
    iput v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->numActivities:I

    iput v5, v3, Landroid/app/ActivityManager$RunningTaskInfo;->numRunning:I

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_c
    iget-object v10, v6, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    iput-object v10, v3, Landroid/app/ActivityManager$RunningTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    goto :goto_3

    :cond_d
    return-void
.end method

.method getVisibleBehindActivity()Lcom/android/server/am/ActivityRecord;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mVisibleBehindActivity:Lcom/android/server/am/ActivityRecord;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getZone()I
    .locals 1

    iget v0, p0, Lcom/android/server/am/ActivityStack;->mStackZone:I

    return v0
.end method

.method goToSleep()V
    .locals 6

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    :goto_0
    if-ltz v3, :cond_3

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    iget-object v0, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_1
    if-ltz v1, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v4, v5, :cond_0

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v4, v5, :cond_1

    :cond_0
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityRecord;->setSleeping(Z)V

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 10

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v5, v6, -0x1

    :goto_0
    if-ltz v5, :cond_3

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    iget-object v0, v6, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    :goto_1
    if-ltz v1, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v6, p1, :cond_1

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v6, :cond_0

    invoke-virtual {v3}, Landroid/app/enterprise/kioskmode/KioskMode;->isKioskModeEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/app/enterprise/kioskmode/KioskMode;->getKioskHomePackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.enterprise.TERMINATE_KIOSK"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "android.intent.extra.user_handle"

    iget v7, p0, Lcom/android/server/am/ActivityStack;->mCurrentUser:I

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  Force finishing activity 4"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    iput-object v6, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, v4, v9, v9}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method handleAppDiedLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v2, p1, :cond_0

    iput-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    :cond_0
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_2

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v2, p1, :cond_1

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v2, p1, :cond_3

    iput-object v3, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    iput-object v3, p0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v2

    return v2
.end method

.method hasVisibleBehindActivity()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->hasVisibleBehindActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAllHidden()Z
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    iget-boolean v3, v1, Lcom/android/server/am/TaskRecord;->bHidden:Z

    if-nez v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_1
    if-nez v2, :cond_2

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method final isAttached()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isCurrentProfileLocked(I)Z
    .locals 3

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/server/am/ActivityStack;->mCurrentUser:I

    if-ne p1, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mCurrentProfileIds:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mCurrentProfileIds:[I

    aget v2, v2, v0

    if-eq v2, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isFixedOrientationDeclared(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x7

    if-eq p1, v1, :cond_0

    const/16 v1, 0x9

    if-eq p1, v1, :cond_0

    const/16 v1, 0xc

    if-eq p1, v1, :cond_0

    if-eqz p1, :cond_0

    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    const/16 v1, 0x8

    if-eq p1, v1, :cond_0

    const/16 v1, 0xb

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final isFloatingStack()Z
    .locals 2

    iget v0, p0, Lcom/android/server/am/ActivityStack;->mStackType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isForceHideCascade()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isForceHideCascade()Z

    move-result v0

    return v0
.end method

.method final isHomeStack()Z
    .locals 1

    iget v0, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;
    .locals 4

    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eq v2, p0, :cond_0

    const-string v2, "ActivityManager"

    const-string v3, "Illegal state! task does not point to stack it is in."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final isMultiWindowStack()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isSplitStack()Z

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

.method final isNormalAppStack()Z
    .locals 2

    iget v0, p0, Lcom/android/server/am/ActivityStack;->mStackType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final isOnHomeDisplay()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final isSplitStack()Z
    .locals 2

    iget v0, p0, Lcom/android/server/am/ActivityStack;->mStackZone:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/am/ActivityStack;->mStackZone:I

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final isVRStack()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mVRStack:Z

    return v0
.end method

.method minimalResumeActivityLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    iput-object p1, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->addRecentTaskLocked(Lcom/android/server/am/TaskRecord;)V

    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->completeResumeLocked(Lcom/android/server/am/ActivityRecord;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityStack;->setLaunchTime(Lcom/android/server/am/ActivityRecord;Z)V

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->updateCascadeHiddenFlag(Z)V

    return-void
.end method

.method moveHomeStackTaskToTop(I)V
    .locals 6

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    move v1, v2

    :goto_0
    if-ltz v1, :cond_0

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    iget v4, v0, Lcom/android/server/am/TaskRecord;->taskType:I

    if-ne v4, p1, :cond_1

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v4, 0x1

    invoke-virtual {p0, v0, v4}, Lcom/android/server/am/ActivityStack;->updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v5, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v4, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->moveGlobalTaskToTop(Lcom/android/server/am/TaskRecord;)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method final moveTaskToBackLocked(I)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityStack;->moveTaskToBackLocked(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method final moveTaskToBackLocked(ILjava/lang/String;)Z
    .locals 27

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActivityStack;->taskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v22

    if-nez v22, :cond_0

    const-string v23, "ActivityManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "moveTaskToBack: bad taskId="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v23, 0x0

    :goto_0
    return v23

    :cond_0
    const-string v23, "ActivityManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "moveTaskToBack: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->endLockTaskModeIfTaskEnding(Lcom/android/server/am/TaskRecord;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v23

    if-eqz v23, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    move-object/from16 v23, v0

    if-eqz v23, :cond_2

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v11

    if-nez v11, :cond_1

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v11

    :cond_1
    if-eqz v11, :cond_2

    const/4 v9, 0x1

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    move-object/from16 v23, v0

    iget-object v0, v11, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-interface/range {v23 .. v24}, Landroid/app/IActivityController;->activityResuming(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    :goto_1
    if-nez v9, :cond_2

    const/16 v23, 0x0

    goto :goto_0

    :catch_0
    move-exception v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput-boolean v0, v1, Lcom/android/server/am/TaskRecord;->bHidden:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->moveTaskToBackLocked(Lcom/android/server/am/TaskRecord;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lcom/android/server/am/MultiWindowPolicy;->notifyTaskStopped(I)V

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    move/from16 v24, v0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v12, v1}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v21

    if-eqz v21, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v24, v0

    const-string/jumbo v25, "moveTaskToBack"

    invoke-virtual/range {v23 .. v25}, Lcom/android/server/am/ActivityStackSupervisor;->updateFocusedStack(Lcom/android/server/am/ActivityStack;Ljava/lang/String;)V

    if-eqz v12, :cond_3

    iget-object v0, v12, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v23

    if-eqz v23, :cond_3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v23

    if-eqz v23, :cond_3

    iget-object v0, v12, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v23

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    const-string/jumbo v23, "moveTaskToBack"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v12, v1}, Lcom/android/server/am/ActivityStack;->adjustFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    :cond_3
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v18, v13, -0x1

    :goto_2
    const/16 v23, 0x1

    move/from16 v0, v18

    move/from16 v1, v23

    if-lt v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/am/TaskRecord;

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v23

    if-eqz v23, :cond_6

    :cond_4
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    if-eqz v5, :cond_9

    iget-object v0, v5, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v23

    if-nez v23, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_8

    iget-object v0, v5, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v23

    if-eqz v23, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v23, v0

    const/16 v24, 0x64

    const/16 v25, 0x0

    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v26

    invoke-virtual/range {v23 .. v26}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZI)V

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->moveTaskToBottom(I)V

    move v14, v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v23

    if-eqz v23, :cond_b

    add-int/lit8 v18, v13, -0x1

    :goto_4
    const/16 v23, 0x1

    move/from16 v0, v18

    move/from16 v1, v23

    if-lt v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/server/am/TaskRecord;->bHidden:Z

    move/from16 v23, v0

    if-eqz v23, :cond_5

    add-int/lit8 v14, v14, -0x1

    :cond_5
    add-int/lit8 v18, v18, -0x1

    goto :goto_4

    :cond_6
    const/16 v23, 0x1

    move/from16 v0, v18

    move/from16 v1, v23

    if-ne v0, v1, :cond_7

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v23

    if-eqz v23, :cond_4

    const/16 v23, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    :cond_7
    add-int/lit8 v18, v18, -0x1

    goto/16 :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v23, v0

    const/16 v24, 0x66

    const/16 v25, 0x0

    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v26

    invoke-virtual/range {v23 .. v26}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZI)V

    goto :goto_3

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v24, v0

    const/16 v25, 0xb

    const/16 v26, 0x0

    if-eqz v5, :cond_a

    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v23

    :goto_5
    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZI)V

    goto/16 :goto_3

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getDisplayId()I

    move-result v23

    goto :goto_5

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v23, v0

    if-eqz v23, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v17, v0

    :goto_6
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_c

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v23

    if-nez v23, :cond_e

    :cond_c
    const/16 v23, 0x1

    move/from16 v0, v23

    if-le v13, v0, :cond_d

    const/16 v23, 0x1

    move/from16 v0, v23

    if-gt v14, v0, :cond_16

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v23

    if-eqz v23, :cond_16

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    move/from16 v23, v0

    if-nez v23, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    move/from16 v23, v0

    if-nez v23, :cond_10

    const/16 v23, 0x0

    goto/16 :goto_0

    :cond_f
    const/16 v17, 0x0

    goto :goto_6

    :cond_10
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v15

    if-eqz v15, :cond_11

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v23

    if-nez v23, :cond_11

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v23

    if-nez v23, :cond_11

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v23

    if-nez v23, :cond_14

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v23

    if-eqz v23, :cond_13

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZZZ)Z

    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v20

    if-eqz v20, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v26

    invoke-virtual/range {v23 .. v26}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;ZI)V

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v23

    if-eqz v23, :cond_13

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    const/16 v23, 0x1

    goto/16 :goto_0

    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getGlobalTaskHistoryLocked()Ljava/util/ArrayList;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v16

    if-lez v16, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getGlobalTaskHistoryLocked()Ljava/util/ArrayList;

    move-result-object v23

    add-int/lit8 v24, v16, -0x1

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/am/TaskRecord;

    if-eqz v20, :cond_15

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/TaskRecord;->getTopActivityMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v10

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/am/TaskRecord;->isRecentTask()Z

    move-result v23

    if-eqz v23, :cond_15

    invoke-virtual {v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v23

    if-eqz v23, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    const/16 v23, 0x1

    goto/16 :goto_0

    :cond_15
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v19

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string/jumbo v25, "moveTaskToBack"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    move/from16 v26, v0

    move-object/from16 v0, v23

    move/from16 v1, v19

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->resumeHomeStackTask(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;I)Z

    move-result v23

    goto/16 :goto_0

    :cond_16
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v15

    if-eqz v15, :cond_17

    invoke-virtual {v15}, Lcom/android/server/am/ActivityRecord;->isRecentsActivity()Z

    move-result v23

    if-eqz v23, :cond_17

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    :cond_17
    if-eqz p2, :cond_18

    const-string/jumbo v23, "moveOppositeTaskToBack_schIdle"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_19

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V

    :cond_19
    const/16 v23, 0x1

    goto/16 :goto_0
.end method

.method final moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;ILjava/lang/String;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;ILjava/lang/String;Z)V

    return-void
.end method

.method final moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;ILjava/lang/String;Z)V
    .locals 9

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-eqz v1, :cond_0

    if-gez v0, :cond_3

    :cond_0
    if-eqz p2, :cond_2

    iget-object v5, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v5

    const/high16 v6, 0x10000

    and-int/2addr v5, v6

    if-eqz v5, :cond_2

    invoke-static {p3}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/16 v5, 0xa

    invoke-virtual {p0, v5, p3, p4}, Lcom/android/server/am/ActivityStack;->updateTransitLocked(ILandroid/os/Bundle;I)V

    goto :goto_0

    :cond_3
    and-int/lit8 v5, p4, 0x1

    if-eqz v5, :cond_7

    const/4 v5, 0x0

    invoke-direct {p0, p1, v5}, Lcom/android/server/am/ActivityStack;->insertTaskAtTop(Lcom/android/server/am/TaskRecord;Z)V

    :goto_1
    const/4 v5, 0x0

    iput-boolean v5, p1, Lcom/android/server/am/TaskRecord;->bHidden:Z

    if-eqz p2, :cond_8

    iget-object v5, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v5

    const/high16 v6, 0x10000

    and-int/2addr v5, v6

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplayId()I

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZI)V

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-static {p3}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    :goto_2
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v3, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v3, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    iget-object v6, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v5, v6, v3}, Lcom/android/server/am/MultiWindowPolicy;->setMultiWindowStyleToStack(Lcom/android/server/am/ActivityStack;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    :cond_5
    if-eqz p6, :cond_6

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    :cond_6
    const/16 v5, 0x7532

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v8, p1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget v8, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplayId()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5, v4, p5}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->insertTaskAtTop(Lcom/android/server/am/TaskRecord;)V

    invoke-virtual {p0, p5}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    const/16 v5, 0xa

    invoke-virtual {p0, v5, p3, p4}, Lcom/android/server/am/ActivityStack;->updateTransitLocked(ILandroid/os/Bundle;I)V

    goto :goto_2
.end method

.method final moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;ILjava/lang/String;)V

    return-void
.end method

.method final moveToFront(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;Lcom/android/server/am/TaskRecord;)V

    return-void
.end method

.method final moveToFront(Ljava/lang/String;Lcom/android/server/am/TaskRecord;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->moveStack(Lcom/android/server/am/ActivityStack;Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_2

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v2, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eq v0, p2, :cond_3

    iget-object v1, p2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v1, :cond_1

    iget-object v1, p2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_3
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v2, p2, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    goto :goto_0
.end method

.method final navigateUpToLocked(Landroid/os/IBinder;Landroid/content/Intent;ILandroid/content/Intent;)Z
    .locals 42

    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v39

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v40

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v0, v41

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-gez v40, :cond_1

    :cond_0
    const/16 v29, 0x0

    :goto_0
    return v29

    :cond_1
    add-int/lit8 v28, v40, -0x1

    if-gez v28, :cond_3

    const/16 v34, 0x0

    :goto_1
    const/16 v29, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v25

    if-lez v40, :cond_2

    if-eqz v25, :cond_2

    move/from16 v30, v28

    :goto_2
    if-ltz v30, :cond_2

    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, v36

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual/range {v25 .. v25}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, v36

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual/range {v25 .. v25}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move/from16 v28, v30

    move-object/from16 v34, v36

    const/16 v29, 0x1

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v2, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    move-object/from16 v24, v0

    if-eqz v24, :cond_5

    move-object/from16 v0, v39

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v31

    if-eqz v31, :cond_5

    const/16 v38, 0x1

    :try_start_0
    move-object/from16 v0, v31

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/app/IActivityController;->activityResuming(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v38

    :goto_3
    if-nez v38, :cond_5

    const/16 v29, 0x0

    goto :goto_0

    :cond_3
    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v34, v2

    goto :goto_1

    :cond_4
    add-int/lit8 v30, v30, -0x1

    goto :goto_2

    :catch_0
    move-exception v27

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    goto :goto_3

    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v32

    move/from16 v30, v40

    :goto_4
    move/from16 v0, v30

    move/from16 v1, v28

    if-le v0, v1, :cond_6

    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, v36

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const-string/jumbo v6, "navigate-up"

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move/from16 v4, p3

    move-object/from16 v5, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    const/16 p3, 0x0

    const/16 p4, 0x0

    add-int/lit8 v30, v30, -0x1

    goto :goto_4

    :cond_6
    if-eqz v34, :cond_8

    if-eqz v29, :cond_8

    move-object/from16 v0, v34

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v2, Landroid/content/pm/ActivityInfo;->launchMode:I

    move/from16 v35, v0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v26

    const/4 v2, 0x3

    move/from16 v0, v35

    if-eq v0, v2, :cond_7

    const/4 v2, 0x2

    move/from16 v0, v35

    if-eq v0, v2, :cond_7

    const/4 v2, 0x1

    move/from16 v0, v35

    if-eq v0, v2, :cond_7

    const/high16 v2, 0x4000000

    and-int v2, v2, v26

    if-eqz v2, :cond_9

    :cond_7
    move-object/from16 v0, v39

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, v39

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, v34

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Ljava/lang/String;)V

    :cond_8
    :goto_5
    invoke-static/range {v32 .. v33}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    :cond_9
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v39

    iget v5, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-interface {v2, v3, v4, v5}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, v39

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v34

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    move-object/from16 v0, v34

    iget v13, v0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    move-object/from16 v0, v34

    iget-object v14, v0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    const/4 v15, -0x1

    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    move/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v4, p2

    invoke-virtual/range {v2 .. v22}, Lcom/android/server/am/ActivityStackSupervisor;->startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILandroid/os/Bundle;Z[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Lcom/android/server/am/TaskRecord;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v37

    if-nez v37, :cond_a

    const/16 v29, 0x1

    :goto_6
    move-object/from16 v0, v34

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const-string/jumbo v11, "navigate-up"

    const/4 v12, 0x1

    move-object/from16 v7, p0

    move/from16 v9, p3

    move-object/from16 v10, p4

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    goto :goto_5

    :cond_a
    const/16 v29, 0x0

    goto :goto_6

    :catch_1
    move-exception v27

    const/16 v29, 0x0

    goto :goto_6
.end method

.method notifyActivityDrawnLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->setDrawn()V

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x6a

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/WindowManagerService;->setWindowOpaque(Landroid/os/IBinder;Z)V

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_2

    :try_start_0
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-interface {v2, v3, v1}, Landroid/app/IApplicationThread;->scheduleTranslucentConversionComplete(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method notifyMultiWindowFocusChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V
    .locals 5

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_2

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v3, :cond_3

    :cond_2
    or-int/lit8 p2, p2, 0x2

    iput p2, p1, Lcom/android/server/am/ActivityRecord;->pendingNotifyMultiWindowFocus:I

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    iput v3, p1, Lcom/android/server/am/ActivityRecord;->pendingNotifyMultiWindowFocus:I

    and-int/lit8 v3, p2, 0x2

    if-eqz v3, :cond_5

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    :goto_1
    if-ltz v2, :cond_0

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_4

    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_4

    :try_start_0
    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v3, v4, p2, p3}, Landroid/app/IApplicationThread;->scheduleMultiWindowFocusChanged(Landroid/os/IBinder;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_2
    iget-boolean v3, v1, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-nez v3, :cond_0

    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_5
    :try_start_1
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v3, v4, p2, p3}, Landroid/app/IApplicationThread;->scheduleMultiWindowFocusChanged(Landroid/os/IBinder;IZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_2
.end method

.method notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V
    .locals 17

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v13, :cond_1

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v13, v13, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v13, :cond_2

    :cond_1
    const/4 v13, 0x1

    move-object/from16 v0, p1

    iput-boolean v13, v0, Lcom/android/server/am/ActivityRecord;->pendingNotifyMultiWindowStyle:Z

    goto :goto_0

    :cond_2
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v7

    if-nez v7, :cond_4

    const/4 v13, 0x2

    move/from16 v0, p2

    if-ne v0, v13, :cond_4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/16 v16, 0x0

    move/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v13, v14, v15, v0, v1}, Lcom/android/server/wm/WindowManagerService;->setAppMultiWindowStyle(Landroid/view/IApplicationToken;Lcom/samsung/android/multiwindow/MultiWindowStyle;ZI)V

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActivityStack;->screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;

    move-result-object v12

    if-eqz v12, :cond_3

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Lcom/android/server/am/ActivityRecord;->updateThumbnailLocked(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    :cond_3
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_4
    const/4 v13, 0x0

    move-object/from16 v0, p1

    iput-boolean v13, v0, Lcom/android/server/am/ActivityRecord;->pendingNotifyMultiWindowStyle:Z

    packed-switch p2, :pswitch_data_0

    :cond_5
    if-eqz p3, :cond_9

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v13, v13, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v5, v2, -0x1

    :goto_1
    if-ltz v5, :cond_7

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v13, v13, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    iget-object v13, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v13, :cond_6

    iget-object v13, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v13, v13, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v13, :cond_6

    :try_start_0
    iget-object v13, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v13, v13, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v14, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-object v15, v3, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move/from16 v0, p2

    invoke-interface {v13, v14, v15, v0}, Landroid/app/IApplicationThread;->scheduleMultiWindowStyleChanged(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_6
    :goto_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v13

    if-eqz v13, :cond_8

    :cond_7
    :goto_3
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v14, 0x20000

    invoke-virtual {v13, v14}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v13

    if-eqz v13, :cond_a

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/am/ActivityRecord;->lastRelaunchedMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setTo(Lcom/samsung/android/multiwindow/MultiWindowStyle;Z)V

    goto/16 :goto_0

    :cond_8
    :pswitch_1
    if-eqz v7, :cond_5

    goto :goto_3

    :cond_9
    :try_start_1
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v13, v13, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move/from16 v0, p2

    invoke-interface {v13, v14, v15, v0}, Landroid/app/IApplicationThread;->scheduleMultiWindowStyleChanged(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v13

    goto :goto_3

    :cond_a
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/am/ActivityRecord;->lastRelaunchedMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/16 v14, 0x400

    invoke-virtual {v13, v14}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v13

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/16 v15, 0x400

    invoke-virtual {v14, v15}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v14

    if-eq v13, v14, :cond_d

    const/4 v4, 0x1

    :goto_4
    if-eqz v4, :cond_10

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/am/ActivityRecord;->lastRelaunchedMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNull()Z

    move-result v6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v13

    if-eqz v13, :cond_b

    const/4 v14, 0x0

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v15, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v13, v15, :cond_e

    if-nez v6, :cond_e

    const/4 v13, 0x1

    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14, v13}, Lcom/android/server/am/ActivityStack;->relaunchActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Z

    :cond_b
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v13, v13, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v5, v2, -0x1

    :goto_6
    if-ltz v5, :cond_f

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v13, v13, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p1

    if-eq v0, v3, :cond_c

    move-object/from16 v0, p1

    iget-boolean v13, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v13, :cond_c

    const/4 v13, 0x1

    iput-boolean v13, v3, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    :cond_c
    add-int/lit8 v5, v5, -0x1

    goto :goto_6

    :cond_d
    const/4 v4, 0x0

    goto :goto_4

    :cond_e
    const/4 v13, 0x0

    goto :goto_5

    :cond_f
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_10
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v13, v13, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v5, v2, -0x1

    :goto_7
    if-ltz v5, :cond_12

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v13, v13, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    iget-object v13, v3, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v13

    if-eqz v13, :cond_11

    iget-object v13, v3, Lcom/android/server/am/ActivityRecord;->lastRelaunchedMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setTo(Lcom/samsung/android/multiwindow/MultiWindowStyle;Z)V

    :cond_11
    add-int/lit8 v5, v5, -0x1

    goto :goto_7

    :cond_12
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/am/ActivityRecord;->lastRelaunchedMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setTo(Lcom/samsung/android/multiwindow/MultiWindowStyle;Z)V

    goto/16 :goto_0

    :catch_1
    move-exception v13

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method numActivities()I
    .locals 3

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method okToShowLocked(Lcom/android/server/am/ActivityRecord;)Z
    .locals 1

    iget v0, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStack;->isCurrentProfileLocked(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onNotifyMinimizeMultiWindow(Lcom/android/server/am/ActivityRecord;)V
    .locals 9

    const/4 v1, 0x2

    const/4 v5, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v0, :cond_3

    :cond_2
    iput-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->pendingNotifyMultiWindowStyle:Z

    goto :goto_0

    :cond_3
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string/jumbo v4, "minimize-finish"

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    goto :goto_0

    :cond_4
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v8, v6, -0x1

    :goto_1
    if-ltz v8, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityRecord;

    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_5

    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_5

    :try_start_0
    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v1, v7, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-object v2, v7, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v3, 0x2

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IApplicationThread;->scheduleMultiWindowStyleChanged(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_2
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method postProcessAfterMovingTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;Z)V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActivityStack;->updatePausingActivitiesAfterMovingTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;)V

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget v4, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p2, v1}, Lcom/android/server/am/ActivityStack;->updateLRUListLocked(Lcom/android/server/am/ActivityRecord;)Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_4

    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v4, v5, :cond_4

    iget-object v2, p2, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_2

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v4, v5, :cond_2

    if-eq v2, v3, :cond_2

    invoke-virtual {p2, v6, v6, v6, v6}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZZZ)Z

    :cond_2
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-ne p2, v4, :cond_4

    sget-boolean v4, Lcom/android/server/am/ActivityManagerService;->SHIP_BUILD:Z

    if-nez v4, :cond_3

    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "postProcessAfterMovingTaskLocked: Setting mResumedActivity of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p2, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " as "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " oldStack="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iput-object v3, p2, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    :cond_4
    return-void
.end method

.method prepareDisplayTransitions(IZILcom/android/server/am/ActivityRecord;)V
    .locals 9

    const/4 v8, 0x2

    if-eq p3, v8, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v8, v8, Lcom/android/server/am/ActivityStackSupervisor;->mUniversalTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {p3}, Lcom/android/server/am/ActivityStackSupervisor;->convertObsucredZoneToDisplayId(I)I

    move-result v3

    const/4 v1, 0x0

    add-int/lit8 v4, v0, -0x1

    :goto_0
    if-ltz v4, :cond_0

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v8, v8, Lcom/android/server/am/ActivityStackSupervisor;->mUniversalTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v7, p4}, Lcom/android/server/am/TaskRecord;->getObscuredDisplayIds(Lcom/android/server/am/ActivityRecord;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/android/server/am/ActivityStackSupervisor;->convertObsucredZoneToDisplayId(I)I

    move-result v8

    or-int/2addr v1, v8

    if-eq v2, p3, :cond_3

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v8, p1, p2, v2}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZI)V

    :cond_3
    const/4 v8, 0x3

    if-ne v1, v8, :cond_2

    :cond_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_0
.end method

.method prepareTaskToFrontTransition(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;I)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p2, :cond_1

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v3, v3, v2}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZI)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {p3}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_1
    const/16 v1, 0xa

    invoke-virtual {p0, v1, p3, p4}, Lcom/android/server/am/ActivityStack;->updateTransitLocked(ILandroid/os/Bundle;I)V

    goto :goto_0
.end method

.method releaseBackgroundResources()V
    .locals 5

    const/16 v4, 0x6b

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->hasVisibleBehindActivity()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getVisibleBehindActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v1, :cond_2

    :try_start_0
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v1, v2}, Landroid/app/IApplicationThread;->scheduleCancelVisibleBehind(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "releaseBackgroundResources: activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " no longer running"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->backgroundResourcesReleased()V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method final releaseSomeActivitiesLocked(Lcom/android/server/am/ProcessRecord;Landroid/util/ArraySet;Ljava/lang/String;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ProcessRecord;",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    const/4 v9, 0x1

    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v8

    div-int/lit8 v4, v8, 0x4

    if-ge v4, v9, :cond_0

    const/4 v4, 0x1

    :cond_0
    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_0
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_6

    if-lez v4, :cond_6

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    invoke-virtual {p2, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    iget-object v1, v6, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    iget-object v8, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v8, p1, :cond_4

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->isDestroyable()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {p0, v2, v9, p3}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eq v8, v2, :cond_3

    add-int/lit8 v0, v0, -0x1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    if-lez v3, :cond_1

    add-int/2addr v5, v3

    add-int/lit8 v4, v4, -0x1

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eq v8, v6, :cond_1

    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    :cond_6
    return v5
.end method

.method removeCoupledTask(Lcom/android/server/am/TaskRecord;)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getOppositeTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isFinishWithCoupledTask()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getChildCoupledTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getChildCoupledTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getChildCoupledTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getChildCoupledTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->removedFromRecents()V

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getOppositeTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->removeTaskActivitiesLocked()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getParentCoupledTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getOppositeTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setChildCoupledTask(Lcom/android/server/am/TaskRecord;)V

    invoke-virtual {p1, v1}, Lcom/android/server/am/TaskRecord;->setParentCoupledTask(Lcom/android/server/am/TaskRecord;)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->removedFromRecents()V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getChildCoupledTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getOppositeTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setParentCoupledTask(Lcom/android/server/am/TaskRecord;)V

    invoke-virtual {p1, v1}, Lcom/android/server/am/TaskRecord;->setChildCoupledTask(Lcom/android/server/am/TaskRecord;)V

    goto :goto_1
.end method

.method removeHistoryRecordsForAppLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 14

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    const-string/jumbo v9, "mLRUActivities"

    invoke-direct {p0, v8, p1, v9}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v8, v8, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    const-string/jumbo v9, "mStoppingActivities"

    invoke-direct {p0, v8, p1, v9}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v8, v8, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    const-string/jumbo v9, "mGoingToSleepActivities"

    invoke-direct {p0, v8, p1, v9}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v8, v8, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    const-string/jumbo v9, "mWaitingVisibleActivities"

    invoke-direct {p0, v8, p1, v9}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v8, v8, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    const-string/jumbo v9, "mFinishingActivities"

    invoke-direct {p0, v8, p1, v9}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->numActivities()I

    move-result v3

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v7, v8, -0x1

    :goto_0
    if-ltz v7, :cond_a

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/TaskRecord;

    iget-object v0, v8, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v1, v8, -0x1

    :goto_1
    if-ltz v1, :cond_9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    add-int/lit8 v3, v3, -0x1

    iget-object v8, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v8, p1, :cond_4

    iget-boolean v8, v4, Lcom/android/server/am/ActivityRecord;->haveState:Z

    if-nez v8, :cond_0

    iget-boolean v8, v4, Lcom/android/server/am/ActivityRecord;->stateNotNeeded:Z

    if-eqz v8, :cond_1

    :cond_0
    iget-boolean v8, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v8, :cond_5

    :cond_1
    const/4 v5, 0x1

    :goto_2
    if-eqz v5, :cond_7

    iget-boolean v8, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v8, :cond_2

    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Force removing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": app died, no saved state"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v8, 0x7531

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, v4, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    iget-object v11, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v11, v11, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    iget-object v11, v4, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string/jumbo v11, "proc died without state saved"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    iget-object v11, v4, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object v8, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v9, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v8, v9, :cond_2

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v9, 0x0

    invoke-virtual {v8, v4, v9}, Lcom/android/server/am/ActivityManagerService;->updateUsageStats(Lcom/android/server/am/ActivityRecord;Z)V

    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->makeFinishing()V

    const-string v8, "appDied"

    invoke-direct {p0, v4, v8}, Lcom/android/server/am/ActivityStack;->adjustFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    const/4 v6, 0x1

    :cond_2
    const-string v8, "appDied"

    invoke-direct {p0, v4, v8}, Lcom/android/server/am/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    :cond_3
    :goto_3
    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {p0, v4, v8, v9, v6}, Lcom/android/server/am/ActivityStack;->cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZZ)V

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_1

    :cond_5
    iget v8, v4, Lcom/android/server/am/ActivityRecord;->launchCount:I

    const/4 v9, 0x2

    if-le v8, v9, :cond_6

    iget-wide v8, v4, Lcom/android/server/am/ActivityRecord;->lastLaunchTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const-wide/32 v12, 0xea60

    sub-long/2addr v10, v12

    cmp-long v8, v8, v10

    if-lez v8, :cond_6

    const/4 v5, 0x1

    goto/16 :goto_2

    :cond_6
    const/4 v5, 0x0

    goto/16 :goto_2

    :cond_7
    iget-boolean v8, v4, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v8, :cond_8

    const/4 v2, 0x1

    :cond_8
    const/4 v8, 0x0

    iput-object v8, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v8, 0x0

    iput-boolean v8, v4, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    iget-boolean v8, v4, Lcom/android/server/am/ActivityRecord;->haveState:Z

    if-nez v8, :cond_3

    const/4 v8, 0x0

    iput-object v8, v4, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    goto :goto_3

    :cond_9
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_0

    :cond_a
    return v2
.end method

.method removeTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move-object v5, p2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStack;->removeTask(Lcom/android/server/am/TaskRecord;ZZZLjava/lang/String;Z)V

    return-void
.end method

.method removeTask(Lcom/android/server/am/TaskRecord;ZZLjava/lang/String;)V
    .locals 7

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStack;->removeTask(Lcom/android/server/am/TaskRecord;ZZZLjava/lang/String;Z)V

    return-void
.end method

.method removeTask(Lcom/android/server/am/TaskRecord;ZZLjava/lang/String;Z)V
    .locals 7

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStack;->removeTask(Lcom/android/server/am/TaskRecord;ZZZLjava/lang/String;Z)V

    return-void
.end method

.method removeTask(Lcom/android/server/am/TaskRecord;ZZZLjava/lang/String;Z)V
    .locals 11

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v8, p1}, Lcom/android/server/am/ActivityStackSupervisor;->endLockTaskModeIfTaskEnding(Lcom/android/server/am/TaskRecord;)V

    :cond_0
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v9, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v0, p6

    invoke-virtual {v8, v9, p2, v0}, Lcom/android/server/wm/WindowManagerService;->removeTask(IZZ)V

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v4, :cond_1

    iget-object v8, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v8, p1, :cond_1

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    :cond_1
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v7, v8, -0x1

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v8

    if-eqz v8, :cond_2

    if-ge v5, v7, :cond_2

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v8

    if-nez v8, :cond_2

    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    :cond_2
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v8, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->remove(Lcom/android/server/am/TaskRecord;)Z

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v9, v9, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    invoke-virtual {v8, v9}, Lcom/android/server/am/ActivityStackSupervisor;->arrangeTaskToReturnTo(I)V

    const/4 v8, 0x1

    invoke-virtual {p0, p1, v8}, Lcom/android/server/am/ActivityStack;->updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V

    iget-object v8, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p1, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v8, :cond_b

    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_3

    :try_start_0
    iget-object v8, p1, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v9, p1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    iget v10, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-interface {v8, v9, v10}, Landroid/service/voice/IVoiceInteractionSession;->taskFinished(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->autoRemoveFromRecents()Z

    move-result v8

    if-nez v8, :cond_4

    if-eqz v2, :cond_6

    :cond_4
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Ljava/util/ArrayList;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_5
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->removedFromRecents()V

    :cond_6
    if-nez p3, :cond_c

    if-eqz p4, :cond_c

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_7

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isAllHidden()Z

    move-result v8

    if-eqz v8, :cond_c

    :cond_7
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v9, 0x0

    invoke-virtual {v8, p0, v9}, Lcom/android/server/am/ActivityStackSupervisor;->moveStack(Lcom/android/server/am/ActivityStack;Z)V

    :cond_8
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v8, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_9
    invoke-direct {p0}, Lcom/android/server/am/ActivityStack;->adjustHiddenTaskToBottomLocked()Z

    move-result v8

    if-nez v8, :cond_a

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->onTaskListEmptyLocked()V

    :cond_a
    :goto_2
    return-void

    :cond_b
    const/4 v2, 0x0

    goto :goto_0

    :cond_c
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_a

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    if-eqz v6, :cond_a

    iget-boolean v8, v6, Lcom/android/server/am/TaskRecord;->bHidden:Z

    if-nez v8, :cond_a

    iget-object v8, v6, Lcom/android/server/am/TaskRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v8

    if-eqz v8, :cond_a

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_a

    const/16 v8, 0x10

    const/4 v9, 0x1

    invoke-virtual {p0, v1, v8, v9}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    goto :goto_2

    :catch_0
    move-exception v8

    goto/16 :goto_1
.end method

.method protected removeTimeoutsForActivitiesLocked()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method final requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z
    .locals 6

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    const/4 v0, 0x1

    goto :goto_0
.end method

.method final resetTargetTaskIfNeededLocked(Lcom/android/server/am/TaskRecord;Z)Landroid/app/ActivityOptions;
    .locals 28

    const/16 v27, 0x0

    const/16 v20, -0x1

    const/4 v12, 0x1

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v19

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->findEffectiveRootIndex()I

    move-result v21

    add-int/lit8 v17, v19, -0x1

    :goto_0
    move/from16 v0, v17

    move/from16 v1, v21

    if-le v0, v1, :cond_0

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, v24

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v2, :cond_1

    :cond_0
    return-object v27

    :cond_1
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v2, Landroid/content/pm/ActivityInfo;->flags:I

    move/from16 v16, v0

    and-int/lit8 v2, v16, 0x2

    if-eqz v2, :cond_3

    const/4 v15, 0x1

    :goto_1
    and-int/lit8 v2, v16, 0x40

    if-eqz v2, :cond_4

    const/4 v10, 0x1

    :goto_2
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v4, 0x80000

    and-int/2addr v2, v4

    if-eqz v2, :cond_5

    const/4 v13, 0x1

    :goto_3
    if-nez v15, :cond_6

    if-nez v13, :cond_6

    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_6

    if-gez v20, :cond_2

    move/from16 v20, v17

    :cond_2
    :goto_4
    add-int/lit8 v17, v17, -0x1

    goto :goto_0

    :cond_3
    const/4 v15, 0x0

    goto :goto_1

    :cond_4
    const/4 v10, 0x0

    goto :goto_2

    :cond_5
    const/4 v13, 0x0

    goto :goto_3

    :cond_6
    if-nez v15, :cond_d

    if-nez v13, :cond_d

    if-eqz v10, :cond_d

    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    if-eqz v2, :cond_d

    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    move-object v11, v2

    :goto_5
    if-eqz v11, :cond_8

    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    if-eqz v2, :cond_8

    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    iget-object v4, v11, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v0, v11, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v25, v0

    :goto_6
    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move/from16 v0, v26

    invoke-virtual {v2, v4, v0}, Lcom/android/server/wm/WindowManagerService;->setAppGroupId(Landroid/os/IBinder;I)V

    move/from16 v18, v12

    if-gez v20, :cond_9

    move/from16 v23, v17

    :goto_7
    move/from16 v22, v23

    :goto_8
    move/from16 v0, v22

    move/from16 v1, v17

    if-lt v0, v1, :cond_c

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    iget-boolean v2, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_a

    :goto_9
    add-int/lit8 v22, v22, -0x1

    goto :goto_8

    :cond_7
    const/4 v11, 0x0

    goto :goto_5

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getNextTaskId()I

    move-result v3

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ActivityStack;->createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Z)Lcom/android/server/am/TaskRecord;

    move-result-object v25

    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v25

    iput-object v2, v0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    goto :goto_6

    :cond_9
    move/from16 v23, v20

    goto :goto_7

    :cond_a
    const/4 v12, 0x0

    if-eqz v18, :cond_b

    if-nez v27, :cond_b

    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->takeOptionsLocked()Landroid/app/ActivityOptions;

    move-result-object v27

    if-eqz v27, :cond_b

    const/16 v18, 0x0

    :cond_b
    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v3, v0, v2}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/android/server/am/TaskRecord;->addActivityAtBottom(Lcom/android/server/am/ActivityRecord;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move/from16 v0, v26

    invoke-virtual {v2, v4, v0}, Lcom/android/server/wm/WindowManagerService;->setAppGroupId(Landroid/os/IBinder;I)V

    goto :goto_9

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move/from16 v0, v26

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->moveTaskToBottom(I)V

    const/16 v20, -0x1

    goto/16 :goto_4

    :cond_d
    if-nez p2, :cond_e

    if-nez v15, :cond_e

    if-eqz v13, :cond_16

    :cond_e
    if-eqz v13, :cond_10

    add-int/lit8 v14, v19, -0x1

    :goto_a
    move/from16 v18, v12

    move/from16 v22, v17

    :goto_b
    move/from16 v0, v22

    if-gt v0, v14, :cond_f

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v22

    if-lt v0, v2, :cond_12

    :cond_f
    const/16 v20, -0x1

    goto/16 :goto_4

    :cond_10
    if-gez v20, :cond_11

    move/from16 v14, v17

    goto :goto_a

    :cond_11
    move/from16 v14, v20

    goto :goto_a

    :cond_12
    move/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    iget-boolean v2, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_14

    :cond_13
    :goto_c
    add-int/lit8 v22, v22, 0x1

    goto :goto_b

    :cond_14
    const/4 v12, 0x0

    if-eqz v18, :cond_15

    if-nez v27, :cond_15

    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->takeOptionsLocked()Landroid/app/ActivityOptions;

    move-result-object v27

    if-eqz v27, :cond_15

    const/16 v18, 0x0

    :cond_15
    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "reset"

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_13

    add-int/lit8 v14, v14, -0x1

    add-int/lit8 v22, v22, -0x1

    goto :goto_c

    :cond_16
    const/16 v20, -0x1

    goto/16 :goto_4
.end method

.method final resetTaskIfNeededLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 10

    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    :goto_0
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v5, -0x1

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    :goto_1
    if-ltz v6, :cond_2

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    if-ne v1, v2, :cond_1

    invoke-virtual {p0, v2, v4}, Lcom/android/server/am/ActivityStack;->resetTargetTaskIfNeededLocked(Lcom/android/server/am/TaskRecord;Z)Landroid/app/ActivityOptions;

    move-result-object v9

    const/4 v3, 0x1

    :goto_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->resetAffinityTaskIfNeededLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;ZZI)I

    move-result v5

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    :goto_3
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    add-int/lit8 v8, v7, -0x1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object p1

    if-nez p1, :cond_3

    if-gez v8, :cond_6

    :cond_3
    if-eqz v9, :cond_4

    if-eqz p1, :cond_5

    invoke-virtual {p1, v9}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    :cond_4
    :goto_4
    return-object p1

    :cond_5
    invoke-virtual {v9}, Landroid/app/ActivityOptions;->abort()V

    goto :goto_4

    :cond_6
    move v7, v8

    goto :goto_3
.end method

.method restartPackage(Ljava/lang/String;)Lcom/android/server/am/ActivityRecord;
    .locals 7

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    :goto_0
    if-ltz v4, :cond_2

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    iget-object v1, v5, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    :goto_1
    if-ltz v2, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    if-eqz v3, :cond_0

    if-ne v0, v3, :cond_0

    iget-boolean v5, v0, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v5, :cond_0

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/16 v6, 0x100

    invoke-virtual {v0, v5, v6}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_2
    return-object v3
.end method

.method final resumeTopActivityInnerLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z
    .locals 46

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v0, v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v37, v0

    if-eqz v37, :cond_1

    move-object/from16 v0, v37

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v3, v4, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->isAttachedLocked()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->cancelInitializingActivities()V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-boolean v0, v3, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    move/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    if-eqz p1, :cond_4

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v40, v0

    :goto_1
    if-nez v32, :cond_c

    invoke-static/range {p2 .. p2}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    goto :goto_0

    :cond_4
    const/16 v40, 0x0

    goto :goto_1

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v3

    if-nez v3, :cond_7

    if-eqz p1, :cond_6

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v3

    if-nez v3, :cond_7

    :cond_6
    const/4 v3, 0x0

    goto :goto_0

    :cond_7
    if-eqz v40, :cond_8

    invoke-virtual/range {v40 .. v40}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v3

    if-nez v3, :cond_a

    :cond_8
    const/16 v42, 0x1

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v3

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/server/am/ActivityStackSupervisor;->inResumeTopActivity:Z

    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const-string/jumbo v4, "noMoreActivities"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    move/from16 v0, v42

    move-object/from16 v1, p1

    invoke-virtual {v3, v0, v1, v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->resumeHomeStackTask(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;I)Z

    move-result v3

    goto/16 :goto_0

    :cond_a
    invoke-virtual/range {v40 .. v40}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v42

    goto :goto_2

    :cond_b
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_c
    const/4 v3, 0x0

    move-object/from16 v0, v32

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, v32

    if-ne v3, v0, :cond_f

    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v3, v4, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getDisplayId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->allResumedActivitiesComplete(I)Z

    move-result v3

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getDisplayId()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->allResumedActivitiesComplete(ZI)Z

    move-result v3

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getDisplayId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    move-object/from16 v0, p0

    if-ne v3, v0, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getDisplayId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    invoke-static/range {p2 .. p2}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    :cond_d
    if-eqz p1, :cond_e

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->setAppWillBeHidden(Landroid/os/IBinder;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    :cond_e
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_f
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v34, v0

    if-eqz v40, :cond_10

    move-object/from16 v0, v40

    iget-object v3, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v0, p0

    if-ne v3, v0, :cond_10

    invoke-virtual/range {v40 .. v40}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v3

    if-eqz v3, :cond_10

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_10

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v3, :cond_10

    move-object/from16 v0, v40

    move-object/from16 v1, v34

    if-ne v0, v1, :cond_13

    invoke-virtual/range {v40 .. v40}, Lcom/android/server/am/TaskRecord;->setFrontOfTask()V

    :cond_10
    :goto_3
    const/16 v30, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mChangedFocusedStackWhileSleeping:Z

    if-eqz v3, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v3

    move-object/from16 v0, p0

    if-ne v3, v0, :cond_19

    const/16 v30, 0x1

    :goto_4
    sget-boolean v3, Lcom/android/server/am/ActivityStackSupervisor;->SAFE_DEBUG:Z

    if-eqz v3, :cond_11

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "needsResume="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / this="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / mChangedFocusedStackWhileSleeping=true"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/server/am/ActivityStackSupervisor;->mChangedFocusedStackWhileSleeping:Z

    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDown()Z

    move-result v3

    if-eqz v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, v32

    if-ne v3, v0, :cond_1a

    if-nez v30, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getDisplayId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->allPausedActivitiesComplete(I)Z

    move-result v3

    if-eqz v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getDisplayId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    invoke-static/range {p2 .. p2}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    move-object/from16 v0, v40

    if-eq v0, v3, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v0, v40

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    add-int/lit8 v43, v3, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    move/from16 v0, v43

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    goto/16 :goto_3

    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v3

    if-nez v3, :cond_15

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v3

    if-nez v3, :cond_10

    if-eqz v40, :cond_16

    invoke-virtual/range {v40 .. v40}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v3

    if-nez v3, :cond_17

    :cond_16
    const/16 v42, 0x1

    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const-string/jumbo v4, "prevFinished"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    move/from16 v0, v42

    move-object/from16 v1, p1

    invoke-virtual {v3, v0, v1, v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->resumeHomeStackTask(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_18

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mTwiceResumeTop:Z

    if-nez v3, :cond_10

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_17
    invoke-virtual/range {v40 .. v40}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v42

    goto :goto_5

    :cond_18
    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_19
    const/16 v30, 0x0

    goto/16 :goto_4

    :cond_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mStartedUsers:Landroid/util/SparseArray;

    move-object/from16 v0, v32

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1b

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping resume of top activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    iget v5, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is stopped"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    move-object/from16 v0, v32

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    move-object/from16 v0, v32

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getDisplayId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->allPausedActivitiesComplete(I)Z

    move-result v3

    if-nez v3, :cond_1c

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_1c
    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v3, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v3, v3, 0x4000

    if-eqz v3, :cond_20

    const/16 v23, 0x1

    :goto_6
    if-nez p1, :cond_1d

    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v3, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_1d

    const/16 v23, 0x0

    :cond_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x1

    move/from16 v0, v45

    move/from16 v1, v23

    invoke-virtual {v3, v0, v4, v1}, Lcom/android/server/am/ActivityStackSupervisor;->pauseBackStacks(ZZZ)Z

    move-result v38

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_1e

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v45

    move/from16 v2, v23

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZZZ)Z

    move-result v3

    or-int v38, v38, v3

    :cond_1e
    if-eqz v38, :cond_21

    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_1f

    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_1f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    :cond_1f
    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_20
    const/16 v23, 0x0

    goto :goto_6

    :cond_21
    invoke-virtual/range {v32 .. v32}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v3

    if-eqz v3, :cond_29

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, v32

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/server/am/ActivityManagerService;->setActivitySwitchBooster(ZZZLjava/lang/String;)V

    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->isSleeping()Z

    move-result v3

    if-eqz v3, :cond_22

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_22

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v3, :cond_22

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "no-history"

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    :cond_22
    if-eqz p1, :cond_23

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    if-eq v0, v1, :cond_23

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-nez v3, :cond_2a

    if-eqz v32, :cond_2a

    move-object/from16 v0, v32

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-nez v3, :cond_2a

    const/4 v3, 0x1

    move-object/from16 v0, p1

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_23
    :goto_8
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, v32

    iget v6, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-interface {v3, v4, v5, v6}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_9
    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mIsAnimationBoostEnabled:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_24

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mPerf:Lorg/codeaurora/Performance;

    if-nez v3, :cond_24

    new-instance v3, Lorg/codeaurora/Performance;

    invoke-direct {v3}, Lorg/codeaurora/Performance;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/am/ActivityStack;->mPerf:Lorg/codeaurora/Performance;

    :cond_24
    if-eqz p1, :cond_36

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_30

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZI)V

    :cond_25
    :goto_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->setAppWillBeHidden(Landroid/os/IBinder;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;ZI)V

    :cond_26
    :goto_b
    const/16 v41, 0x0

    if-eqz v20, :cond_39

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/am/ActivityRecord;->getOptionsForTargetActivityLocked()Landroid/app/ActivityOptions;

    move-result-object v36

    if-eqz v36, :cond_27

    invoke-virtual/range {v36 .. v36}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v41

    :cond_27
    invoke-virtual/range {v32 .. v32}, Lcom/android/server/am/ActivityRecord;->applyOptionsLocked()V

    :goto_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->getLastStack()Lcom/android/server/am/ActivityStack;

    move-result-object v27

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v3

    if-eqz v3, :cond_3a

    const/16 v27, 0x0

    :cond_28
    :goto_d
    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_55

    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_55

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v3}, Lcom/android/server/am/ActivityStack;->setLaunchTime(Lcom/android/server/am/ActivityRecord;Z)V

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/am/ActivityRecord;->isVRActivity()Z

    move-result v3

    if-nez v3, :cond_3b

    if-eqz p1, :cond_3b

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->isVRActivity()Z

    move-result v3

    if-eqz v3, :cond_3b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mVRApplicationPolicy:Lcom/android/server/am/VRApplicationPolicy;

    invoke-virtual {v3}, Lcom/android/server/am/VRApplicationPolicy;->isHMTconnected()Z

    move-result v3

    if-eqz v3, :cond_3b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mVRApplicationPolicy:Lcom/android/server/am/VRApplicationPolicy;

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {v3, v4}, Lcom/android/server/am/VRApplicationPolicy;->startVRHomeLocked(I)Z

    move-result v3

    if-eqz v3, :cond_3b

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_29
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, v32

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/server/am/ActivityManagerService;->setActivitySwitchBooster(ZZZLjava/lang/String;)V

    goto/16 :goto_7

    :cond_2a
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_23

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-eqz v3, :cond_2b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;ZI)V

    goto/16 :goto_8

    :catch_0
    move-exception v24

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed trying to unstop package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :cond_2c
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v3, v4, :cond_2d

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v3

    if-eqz v3, :cond_2d

    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v3

    if-eqz v3, :cond_2d

    new-instance v44, Ljava/util/ArrayList;

    invoke-direct/range {v44 .. v44}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v4, 0x8

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getDisplayId()I

    move-result v5

    move-object/from16 v0, v44

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/wm/WindowManagerService;->prepareMultiWindowTransition(Ljava/util/ArrayList;II)V

    :goto_e
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v3, v4, :cond_25

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mPerf:Lorg/codeaurora/Performance;

    if-eqz v3, :cond_25

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mPerf:Lorg/codeaurora/Performance;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/am/ActivityStack;->aBoostTimeOut:I

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/am/ActivityStack;->aBoostSchedBoost:I

    aput v7, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/am/ActivityStack;->aBoostCpuBoost:I

    aput v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lorg/codeaurora/Performance;->perfLockAcquire(I[I)I

    goto/16 :goto_a

    :cond_2d
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v3

    if-nez v3, :cond_2e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v4, 0x66

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZI)V

    goto :goto_e

    :cond_2e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v32

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v3, v5, :cond_2f

    const/4 v3, 0x7

    :goto_f
    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v6

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZI)V

    goto :goto_e

    :cond_2f
    const/16 v3, 0x9

    goto :goto_f

    :cond_30
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    const/16 v20, 0x0

    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v3

    if-eqz v3, :cond_31

    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v4, 0x4000000

    invoke-virtual {v3, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_31

    new-instance v44, Ljava/util/ArrayList;

    invoke-direct/range {v44 .. v44}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v4, 0x8

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getDisplayId()I

    move-result v5

    move-object/from16 v0, v44

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/wm/WindowManagerService;->prepareMultiWindowTransition(Ljava/util/ArrayList;II)V

    :cond_31
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZI)V

    goto/16 :goto_b

    :cond_32
    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    if-eqz v3, :cond_33

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v4, 0x65

    const/4 v5, 0x0

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZI)V

    :goto_10
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v3, v4, :cond_26

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mPerf:Lorg/codeaurora/Performance;

    if-eqz v3, :cond_26

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mPerf:Lorg/codeaurora/Performance;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/am/ActivityStack;->aBoostTimeOut:I

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/am/ActivityStack;->aBoostSchedBoost:I

    aput v7, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/am/ActivityStack;->aBoostCpuBoost:I

    aput v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lorg/codeaurora/Performance;->perfLockAcquire(I[I)I

    goto/16 :goto_b

    :cond_33
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v32

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v3, v5, :cond_34

    const/4 v3, 0x6

    :goto_11
    const/4 v5, 0x0

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v6

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZI)V

    goto :goto_10

    :cond_34
    move-object/from16 v0, v32

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v3, :cond_35

    const/16 v3, 0x10

    goto :goto_11

    :cond_35
    const/16 v3, 0x8

    goto :goto_11

    :cond_36
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZI)V

    goto/16 :goto_b

    :cond_37
    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    if-eqz v3, :cond_38

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v4, 0x65

    const/4 v5, 0x0

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZI)V

    goto/16 :goto_b

    :cond_38
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZI)V

    goto/16 :goto_b

    :cond_39
    invoke-virtual/range {v32 .. v32}, Lcom/android/server/am/ActivityRecord;->clearOptionsLocked()V

    goto/16 :goto_c

    :cond_3a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isNormalAppStack()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v3

    if-eqz v3, :cond_28

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->getNonFloatingFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v27

    goto/16 :goto_d

    :cond_3b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->SAMP_PPM_ENABLE:Z

    if-eqz v3, :cond_3d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    if-eqz v3, :cond_3c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v3, v4, v5, v0, v6}, Landroid/app/usage/UsageStatsManagerInternal;->reportPpmEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->SAMP_HOTNESS_ENABLE:Z

    if-eqz v3, :cond_3d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->updateHotnessAdj(Lcom/android/server/am/ProcessRecord;I)V

    :cond_3d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v5, 0x1

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;ZI)V

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/am/ActivityRecord;->startLaunchTickingLocked()V

    if-nez v27, :cond_46

    const/16 v26, 0x0

    :goto_12
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->updateCpuStats()V

    const-string v3, "com.sec.android.app.camera/.Camera"

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    const-string v3, "com.sec.android.app.ocr/.OCR"

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    const-string v3, "com.cyworld.camera/com.cyworld.cymera.CameraMain"

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3e

    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    :cond_3e
    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v3, v4, :cond_3f

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "resumeTopActivityLocked() Aggressive kill try = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "persist.sys.kill_support"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    if-lez v29, :cond_3f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const-string v5, "camera-start"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->killProcessesForMemoryLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    :cond_3f
    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v32

    iput-object v3, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService;->addRecentTaskLocked(Lcom/android/server/am/TaskRecord;)V

    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/server/am/TaskRecord;->bHidden:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v25

    if-eqz v25, :cond_40

    if-eqz v32, :cond_40

    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v0, v25

    if-eq v3, v0, :cond_40

    const/4 v3, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v21

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v3

    if-eqz v3, :cond_47

    if-eqz v21, :cond_40

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService;->addRecentTaskLocked(Lcom/android/server/am/TaskRecord;)V

    :cond_40
    :goto_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v0, v3, Landroid/content/res/Configuration;->orientation:I

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->updateLRUListLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    const/16 v35, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v3

    if-eqz v3, :cond_42

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v3, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityRecord;->mayFreezeScreenLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v3

    if-eqz v3, :cond_48

    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    :goto_14
    invoke-virtual {v4, v5, v3}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;

    move-result-object v22

    if-eqz v22, :cond_41

    const/4 v3, 0x1

    move-object/from16 v0, v32

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    :cond_41
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-virtual {v3, v0, v1, v4, v5}, Lcom/android/server/am/ActivityManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;ZZ)Z

    move-result v3

    if-nez v3, :cond_49

    const/16 v35, 0x1

    :cond_42
    :goto_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v0, v3, Landroid/content/res/Configuration;->orientation:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mMinimizeAllPenWindowRequested:Z

    if-eqz v3, :cond_43

    move/from16 v0, v31

    move/from16 v1, v39

    if-ne v0, v1, :cond_43

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->handleMinimizeAllPenWindow()V

    :cond_43
    if-eqz v35, :cond_4b

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    if-eq v0, v1, :cond_44

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleResumeTopActivities()V

    :cond_44
    sget-boolean v3, Lcom/android/server/am/ActivityManagerService;->SHIP_BUILD:Z

    if-nez v3, :cond_45

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " as resumed: lastState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " lastResumed="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " prev="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " nextNext="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityStackSupervisor;->reportResumedActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v3

    if-eqz v3, :cond_4a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_46
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v26, v0

    goto/16 :goto_12

    :cond_47
    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isSplitStack()Z

    move-result v3

    if-eqz v3, :cond_40

    if-eqz v21, :cond_40

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    goto/16 :goto_13

    :cond_48
    const/4 v3, 0x0

    goto/16 :goto_14

    :cond_49
    const/16 v35, 0x0

    goto/16 :goto_15

    :cond_4a
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_4b
    :try_start_1
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4c

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v18

    move-object/from16 v0, v32

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v3, :cond_4c

    if-lez v18, :cond_4c

    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, v19

    invoke-interface {v3, v4, v0}, Landroid/app/IApplicationThread;->scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V

    :cond_4c
    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    if-eqz v3, :cond_4d

    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    move-object/from16 v0, v32

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v3, v4, v5}, Landroid/app/IApplicationThread;->scheduleNewIntent(Ljava/util/List;Landroid/os/IBinder;)V

    :cond_4d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, v32

    invoke-virtual {v3, v0, v4}, Lcom/android/server/am/ActivityManagerService;->updateSubWindowState(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;)V

    const/16 v3, 0x7537

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, v32

    iget v6, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static/range {v32 .. v32}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    move-object/from16 v0, v32

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    move-object/from16 v0, v32

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    move-object/from16 v0, v32

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    const/4 v3, 0x0

    move-object/from16 v0, v32

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityManagerService;->showAskCompatModeDialogLocked(Lcom/android/server/am/ActivityRecord;)V

    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z

    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/server/am/ProcessRecord;->forceProcessStateUpTo(I)V

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/am/ActivityRecord;->clearOptionsLocked()V

    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, v32

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v5, v5, Lcom/android/server/am/ProcessRecord;->repProcState:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getDisplayId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivityManagerService;->isNextTransitionForward(I)Z

    move-result v6

    move-object/from16 v0, v41

    invoke-interface {v3, v4, v5, v6, v0}, Landroid/app/IApplicationThread;->scheduleResumeActivity(Landroid/os/IBinder;IZLandroid/os/Bundle;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->updateCascadeHiddenFlag(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v3, 0x1

    :try_start_2
    move-object/from16 v0, v32

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->visible:Z

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityStack;->completeResumeLocked(Lcom/android/server/am/ActivityRecord;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v3, 0x0

    move-object/from16 v0, v32

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    :goto_16
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_CIQ_BroadcastState"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4e

    if-eqz v32, :cond_4e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/server/am/AppStateBroadcaster;->sendApplicationFocusGain(Landroid/content/Context;Ljava/lang/String;)V

    :cond_4e
    const/4 v3, 0x1

    goto/16 :goto_0

    :catch_1
    move-exception v24

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eqz v27, :cond_4f

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    :cond_4f
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Restarting because process died: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v32

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    if-nez v3, :cond_51

    const/4 v3, 0x1

    move-object/from16 v0, v32

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    :cond_50
    :goto_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_51
    if-eqz v27, :cond_50

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v3

    if-eqz v3, :cond_50

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const-string v3, "android.intent.action.MAIN"

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_52

    const-string v3, "android.intent.action.DIAL"

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_52

    const-string v3, "android.intent.action.CALL_BUTTON"

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_53

    :cond_52
    new-instance v15, Lcom/android/server/wm/CustomStartingWindowData;

    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, v32

    iget v5, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-direct {v15, v3, v4, v5}, Lcom/android/server/wm/CustomStartingWindowData;-><init>(Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;I)V

    :cond_53
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, v32

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, v32

    iget v6, v0, Lcom/android/server/am/ActivityRecord;->theme:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v32

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v7

    move-object/from16 v0, v32

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v0, v32

    iget v9, v0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    move-object/from16 v0, v32

    iget v10, v0, Lcom/android/server/am/ActivityRecord;->icon:I

    move-object/from16 v0, v32

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->logo:I

    move-object/from16 v0, v32

    iget v12, v0, Lcom/android/server/am/ActivityRecord;->windowFlags:I

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v16

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v17, v0

    if-eqz v17, :cond_54

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->userId:I

    move/from16 v17, v0

    :goto_18
    invoke-virtual/range {v3 .. v17}, Lcom/android/server/wm/WindowManagerService;->setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/os/IBinder;ZLcom/android/server/wm/CustomStartingWindowData;II)V

    goto/16 :goto_17

    :cond_54
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v17

    goto :goto_18

    :catch_2
    move-exception v24

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception thrown during resume of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "resume-exception"

    const/4 v8, 0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_55
    move-object/from16 v0, v32

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    if-nez v3, :cond_56

    const/4 v3, 0x1

    move-object/from16 v0, v32

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    :goto_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, v32

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    goto/16 :goto_16

    :cond_56
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const-string v3, "android.intent.action.MAIN"

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_57

    const-string v3, "android.intent.action.DIAL"

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_57

    const-string v3, "android.intent.action.CALL_BUTTON"

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    :cond_57
    new-instance v15, Lcom/android/server/wm/CustomStartingWindowData;

    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, v32

    iget v5, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-direct {v15, v3, v4, v5}, Lcom/android/server/wm/CustomStartingWindowData;-><init>(Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;I)V

    :cond_58
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, v32

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, v32

    iget v6, v0, Lcom/android/server/am/ActivityRecord;->theme:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v32

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v7

    move-object/from16 v0, v32

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v0, v32

    iget v9, v0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    move-object/from16 v0, v32

    iget v10, v0, Lcom/android/server/am/ActivityRecord;->icon:I

    move-object/from16 v0, v32

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->logo:I

    move-object/from16 v0, v32

    iget v12, v0, Lcom/android/server/am/ActivityRecord;->windowFlags:I

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v16

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v17, v0

    if-eqz v17, :cond_59

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->userId:I

    move/from16 v17, v0

    :goto_1a
    invoke-virtual/range {v3 .. v17}, Lcom/android/server/wm/WindowManagerService;->setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/os/IBinder;ZLcom/android/server/wm/CustomStartingWindowData;II)V

    goto/16 :goto_19

    :cond_59
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v17

    goto :goto_1a

    :catch_3
    move-exception v3

    goto/16 :goto_9
.end method

.method final resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method final resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->inResumeTopActivity:Z

    if-eqz v2, :cond_0

    iput-boolean v4, p0, Lcom/android/server/am/ActivityStack;->mTwiceResumeTop:Z

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/am/ActivityStackSupervisor;->inResumeTopActivity:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/ActivityStack;->mTwiceResumeTop:Z

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v2, v2, Lcom/android/server/am/ActivityManagerService;->mLockScreenShown:I

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    iput v3, v2, Lcom/android/server/am/ActivityManagerService;->mLockScreenShown:I

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->updateSleepIfNeededLocked()V

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActivityStack;->resumeTopActivityInnerLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-boolean v1, v2, Lcom/android/server/am/ActivityStackSupervisor;->inResumeTopActivity:Z

    goto :goto_0

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-boolean v1, v3, Lcom/android/server/am/ActivityStackSupervisor;->inResumeTopActivity:Z

    throw v2
.end method

.method final safelyDestroyActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isDestroyable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final scheduleDestroyActivities(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x69

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;

    invoke-direct {v1, p1, p2}, Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;-><init>(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v6, 0x0

    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v6

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v3, v0, Lcom/android/server/am/ActivityManagerService;->mThumbnailWidth:I

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v4, v0, Lcom/android/server/am/ActivityManagerService;->mThumbnailHeight:I

    if-lez v3, :cond_2

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v2, 0x0

    sget-boolean v5, Lcom/android/server/am/ActivityStack;->SCREENSHOT_FORCE_565:Z

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowManagerService;->screenshotApplications(Landroid/os/IBinder;IIIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const-string v1, "1"

    const-string/jumbo v2, "sys.samsung.personalpage.mode"

    const-string v5, "0"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/am/TaskRecord;->isSecretMode:Z

    goto :goto_0

    :cond_2
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid thumbnail dimensions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V
    .locals 8

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v4

    iget v5, p2, Lcom/android/server/am/ActivityRecord;->userId:I

    move v1, p1

    move-object v3, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;I)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v0, p2, :cond_1

    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Landroid/app/ResultInfo;

    invoke-direct {v0, p3, p4, p5, p6}, Landroid/app/ResultInfo;-><init>(Ljava/lang/String;IILandroid/content/Intent;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v0, v1, v7}, Landroid/app/IApplicationThread;->scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v6

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception thrown sending result to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, 0x0

    move-object v0, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityRecord;->addResultLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public sendActivityResultToOpposite(Lcom/android/server/am/ActivityRecord;)V
    .locals 6

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_0

    iget-object v1, v3, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v4, v5, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-boolean v4, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v4, :cond_2

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_2

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v4, :cond_2

    :try_start_0
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v4, v5, v1}, Landroid/app/IApplicationThread;->scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v4, "ActivityManager"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method setLaunchTime(Lcom/android/server/am/ActivityRecord;Z)V
    .locals 4

    const-wide/16 v2, 0x0

    iget-wide v0, p1, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    iput-wide v0, p1, Lcom/android/server/am/ActivityRecord;->fullyDrawnStartTime:J

    iget-wide v0, p0, Lcom/android/server/am/ActivityStack;->mLaunchStartTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/am/ActivityStack;->startLaunchTraces()V

    iget-wide v0, p1, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    iput-wide v0, p0, Lcom/android/server/am/ActivityStack;->mFullyDrawnStartTime:J

    iput-wide v0, p0, Lcom/android/server/am/ActivityStack;->mLaunchStartTime:J

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-wide v0, p0, Lcom/android/server/am/ActivityStack;->mLaunchStartTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/am/ActivityStack;->startLaunchTraces()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ActivityStack;->mFullyDrawnStartTime:J

    iput-wide v0, p0, Lcom/android/server/am/ActivityStack;->mLaunchStartTime:J

    goto :goto_0
.end method

.method public setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;Z)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;ZZLandroid/os/Bundle;)V

    return-void
.end method

.method public setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;ZZLandroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;ZZLandroid/os/Bundle;Z)V

    return-void
.end method

.method public setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;ZZLandroid/os/Bundle;Z)V
    .locals 44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v39, v0

    monitor-enter v39

    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v19

    if-nez v19, :cond_0

    monitor-exit v39

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v20

    const/4 v13, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v38

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v40

    move/from16 v0, v38

    move/from16 v1, v40

    if-ne v0, v1, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v38

    const/16 v40, 0x1

    move/from16 v0, v38

    move/from16 v1, v40

    if-ne v0, v1, :cond_1

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v38

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v40

    move/from16 v0, v38

    move/from16 v1, v40

    if-ne v0, v1, :cond_2

    :cond_1
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v38

    if-eqz v38, :cond_a

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v38

    if-eqz v38, :cond_a

    :cond_2
    const/4 v12, 0x1

    :goto_1
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v38, v0

    const/16 v40, 0x4

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v38

    if-eqz v38, :cond_3

    const/16 v38, 0x4

    move-object/from16 v0, p2

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v38

    if-nez v38, :cond_3

    const/4 v8, 0x1

    :cond_3
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v38, v0

    const/16 v40, 0x4

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v38

    if-nez v38, :cond_4

    const/16 v38, 0x4

    move-object/from16 v0, p2

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v38

    if-eqz v38, :cond_4

    const/4 v13, 0x1

    :cond_4
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v38, v0

    const/16 v40, 0x8

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v38

    if-nez v38, :cond_5

    const/16 v38, 0x8

    move-object/from16 v0, p2

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v38

    if-eqz v38, :cond_5

    const/4 v13, 0x1

    :cond_5
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v38

    const/16 v40, 0x2

    move/from16 v0, v38

    move/from16 v1, v40

    if-ne v0, v1, :cond_6

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v38

    if-nez v38, :cond_6

    const/4 v13, 0x1

    :cond_6
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v38

    const/16 v40, 0x1

    move/from16 v0, v38

    move/from16 v1, v40

    if-ne v0, v1, :cond_7

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v38

    if-nez v38, :cond_7

    const/4 v13, 0x1

    :cond_7
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v38

    if-nez v38, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v38, v0

    const/16 v40, 0x0

    const-string/jumbo v41, "setMultiWindowStyle"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    move/from16 v42, v0

    move-object/from16 v0, v38

    move/from16 v1, v40

    move-object/from16 v2, v41

    move/from16 v3, v42

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStack(ZLjava/lang/String;I)V

    :cond_8
    const/high16 v38, 0x20000

    move-object/from16 v0, p2

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v38

    if-eqz v38, :cond_9

    const/16 v38, 0x2

    const/16 v40, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v38

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    :cond_9
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v38

    const/16 v40, 0x2

    move/from16 v0, v38

    move/from16 v1, v40

    if-ne v0, v1, :cond_c

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/android/server/am/ActivityStack;->isNormalAppStack()Z

    move-result v38

    if-eqz v38, :cond_c

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/android/server/am/ActivityStack;->isSplitStack()Z

    move-result v38

    if-nez v38, :cond_c

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v38

    if-eqz v38, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getGlobalTaskHistoryLocked()Ljava/util/ArrayList;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v38

    add-int/lit8 v17, v38, -0x1

    :goto_2
    if-ltz v17, :cond_b

    move-object/from16 v0, v31

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v38

    if-eqz v38, :cond_b

    add-int/lit8 v17, v17, -0x1

    goto :goto_2

    :cond_a
    const/4 v12, 0x0

    goto/16 :goto_1

    :cond_b
    if-lez v17, :cond_c

    move-object/from16 v0, v31

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v38

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v40, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    if-ne v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v38, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v40

    const-string/jumbo v41, "setMultiWindowStyle"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    move/from16 v42, v0

    move-object/from16 v0, v38

    move/from16 v1, v40

    move-object/from16 v2, v41

    move/from16 v3, v42

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackTaskToTop(ILjava/lang/String;I)V

    :cond_c
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v38, v0

    const/high16 v40, 0x800000

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v38

    if-eqz v38, :cond_10

    const/high16 v38, 0x800000

    move-object/from16 v0, p2

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v38

    if-nez v38, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/android/server/am/MultiWindowPolicy;->getTabFrontStack()I

    move-result v38

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    move/from16 v40, v0

    move/from16 v0, v38

    move/from16 v1, v40

    if-ne v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportTabPenWindow(Landroid/content/Context;)Z

    move-result v38

    if-eqz v38, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    move/from16 v40, v0

    move-object/from16 v0, v38

    move/from16 v1, v40

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->getStackOriginalBound(ILandroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_d
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-eqz v38, :cond_10

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/am/ActivityStack;

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v38

    if-eqz v38, :cond_d

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/am/ActivityStack;->topMultiPhoneWindowActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v34

    if-eqz v34, :cond_d

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v38, v0

    const/high16 v40, 0x800000

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v38

    if-eqz v38, :cond_d

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_d

    new-instance v35, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v38, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v26

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Lcom/android/server/am/ActivityStack;->setStackBoundForAllTaskInStackLocked(Landroid/graphics/Rect;)V

    const/16 v38, 0x4

    const/16 v40, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v38

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v25

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowPolicy;->setMultiWindowStyleToStack(Lcom/android/server/am/ActivityStack;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move/from16 v1, v26

    invoke-virtual {v0, v1, v6}, Lcom/android/server/wm/WindowManagerService;->setStackBound(ILandroid/graphics/Rect;)V

    goto :goto_3

    :catchall_0
    move-exception v38

    monitor-exit v39
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v38

    :cond_e
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    move-object/from16 v38, v0

    const/16 v40, -0x1

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiWindowPolicy;->setTabFrontStack(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/android/server/am/MultiWindowPolicy;->getTabs()Ljava/util/List;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_f
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-eqz v38, :cond_10

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/am/ActivityStack;

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v38

    if-eqz v38, :cond_f

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/am/ActivityStack;->topMultiPhoneWindowActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v34

    if-eqz v34, :cond_f

    move-object/from16 v0, v34

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_f

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v38, v0

    const/high16 v40, 0x800000

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v38

    if-eqz v38, :cond_f

    new-instance v35, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v38, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v40

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v41, v0

    move-object/from16 v0, v38

    move/from16 v1, v40

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->getStackOriginalBound(ILandroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v18

    if-eqz v18, :cond_f

    new-instance v14, Landroid/graphics/Rect;

    move-object/from16 v0, v18

    invoke-direct {v14, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/16 v38, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v40

    const v41, 0x105022d

    invoke-virtual/range {v40 .. v41}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v40

    move/from16 v0, v40

    neg-int v0, v0

    move/from16 v40, v0

    move/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v14, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    const/high16 v38, 0x800000

    const/16 v40, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v38

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v25

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowPolicy;->setMultiWindowStyleToStack(Lcom/android/server/am/ActivityStack;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Lcom/android/server/am/ActivityStack;->setStackBoundForAllTaskInStackLocked(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v40

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1, v14}, Lcom/android/server/wm/WindowManagerService;->setStackBound(ILandroid/graphics/Rect;)V

    const/16 v38, 0x4

    const/16 v40, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, v34

    move/from16 v2, v38

    move/from16 v3, v40

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    goto/16 :goto_4

    :cond_10
    if-eqz p3, :cond_19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v38

    const/16 v40, 0x2

    move/from16 v0, v38

    move/from16 v1, v40

    if-eq v0, v1, :cond_13

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v38

    const/16 v40, 0x2

    move/from16 v0, v38

    move/from16 v1, v40

    if-ne v0, v1, :cond_13

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v38, v0

    const/16 v40, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v36

    move-object/from16 v27, v19

    if-eqz v36, :cond_11

    move-object/from16 v27, v36

    :cond_11
    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityRecord;->setMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v40, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v41, v0

    const/16 v42, 0x1

    const/16 v43, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    move/from16 v3, v42

    move/from16 v4, v43

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->setAppMultiWindowStyle(Landroid/view/IApplicationToken;Lcom/samsung/android/multiwindow/MultiWindowStyle;ZI)V

    const/16 v38, 0x0

    const/16 v40, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move/from16 v2, v38

    move/from16 v3, v40

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    :goto_5
    if-eqz v12, :cond_2b

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v38

    if-nez v38, :cond_1a

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v38

    if-eqz v38, :cond_1a

    const/4 v9, 0x1

    :goto_6
    if-eqz v9, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v40, v0

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    move-object/from16 v38, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v40, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->moveGlobalTaskToTop(Lcom/android/server/am/TaskRecord;)V

    :cond_12
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v24

    if-nez v24, :cond_1b

    monitor-exit v39

    goto/16 :goto_0

    :cond_13
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v38

    const/16 v40, 0x1

    move/from16 v0, v38

    move/from16 v1, v40

    if-ne v0, v1, :cond_14

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    const/16 v38, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v38

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    goto/16 :goto_5

    :cond_14
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getAppRequestOrientation()I

    move-result v38

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getAppRequestOrientation()I

    move-result v40

    move/from16 v0, v38

    move/from16 v1, v40

    if-eq v0, v1, :cond_15

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v38, v0

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getAppRequestOrientation()I

    move-result v40

    move-object/from16 v0, v38

    move-object/from16 v1, p1

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->setRequestedOrientationForSingleTask(Landroid/os/IBinder;I)V

    const/16 v38, 0x0

    const/16 v40, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v38

    move/from16 v3, v40

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    goto/16 :goto_5

    :cond_15
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v38

    const/16 v40, 0x2

    move/from16 v0, v38

    move/from16 v1, v40

    if-ne v0, v1, :cond_17

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v38, v0

    const/16 v40, 0x2000

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v38

    if-nez v38, :cond_17

    if-nez v13, :cond_17

    if-nez v8, :cond_17

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityRecord;->setMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v40, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v41, v0

    const/16 v42, 0x1

    const/16 v43, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    move/from16 v3, v42

    move/from16 v4, v43

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->setAppMultiWindowStyle(Landroid/view/IApplicationToken;Lcom/samsung/android/multiwindow/MultiWindowStyle;ZI)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v38

    if-eqz v38, :cond_16

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v38

    if-eqz v38, :cond_16

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    move/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Lcom/android/server/wm/WindowManagerService;->getStackBound(I)Landroid/graphics/Rect;

    move-result-object v40

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    move/from16 v40, v0

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v41

    move-object/from16 v0, v38

    move/from16 v1, v40

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->setStackBound(ILandroid/graphics/Rect;)V

    :cond_16
    const/16 v38, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v38

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    goto/16 :goto_5

    :cond_17
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v38

    const/16 v40, 0x2

    move/from16 v0, v38

    move/from16 v1, v40

    if-ne v0, v1, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    move-object/from16 v38, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v40, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowPolicy;->setMultiWindowStyleToStack(Lcom/android/server/am/ActivityStack;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto/16 :goto_5

    :cond_18
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    const/16 v38, 0x0

    const/16 v40, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v38

    move/from16 v3, v40

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    goto/16 :goto_5

    :cond_19
    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityRecord;->setMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v40, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v41, v0

    const/16 v42, 0x1

    const/16 v43, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    move/from16 v3, v42

    move/from16 v4, v43

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->setAppMultiWindowStyle(Landroid/view/IApplicationToken;Lcom/samsung/android/multiwindow/MultiWindowStyle;ZI)V

    const/16 v38, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v38

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    goto/16 :goto_5

    :cond_1a
    const/4 v9, 0x0

    goto/16 :goto_6

    :cond_1b
    const/16 v28, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v38

    const/16 v40, 0x2

    move/from16 v0, v38

    move/from16 v1, v40

    if-ne v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v38, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v40, v0

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->needMoveOnlySpecificTaskToFront(I)Z

    move-result v38

    if-eqz v38, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/android/server/am/ActivityStackSupervisor;->getSpecificFloatingStack()Lcom/android/server/am/ActivityStack;

    move-result-object v38

    if-eqz v38, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/android/server/am/ActivityStackSupervisor;->getSpecificFloatingStack()Lcom/android/server/am/ActivityStack;

    move-result-object v28

    :goto_7
    if-nez v9, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v40, v0

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    move-object/from16 v38, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v40, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->moveGlobalTaskToTop(Lcom/android/server/am/TaskRecord;)V

    :cond_1c
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v38, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v38

    if-eq v0, v1, :cond_25

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v38

    const/16 v40, 0x2

    move/from16 v0, v38

    move/from16 v1, v40

    if-eq v0, v1, :cond_2a

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v38

    if-eqz v38, :cond_2a

    if-eqz p3, :cond_2a

    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1d
    :goto_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-eqz v38, :cond_20

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/server/am/TaskRecord;

    if-nez p4, :cond_1f

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v38, v0

    const/16 v40, 0x1

    move-object/from16 v0, v38

    move-object/from16 v1, v24

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->adjustStackFocus(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityStack;

    move-result-object v28

    goto/16 :goto_7

    :cond_1f
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v38, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v38

    if-eq v0, v1, :cond_1d

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_20
    const/4 v11, 0x0

    :goto_9
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v38

    move/from16 v0, v38

    if-ge v11, v0, :cond_22

    move-object/from16 v0, v30

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v38

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v32, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v38, v0

    move/from16 v0, v32

    move/from16 v1, v38

    if-eq v0, v1, :cond_21

    move-object/from16 v0, v30

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    move-object/from16 v0, v30

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/android/server/am/TaskRecord;

    invoke-virtual/range {v38 .. v38}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v38

    const/16 v40, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move/from16 v2, v40

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v38, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    move/from16 v40, v0

    const/16 v41, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v32

    move/from16 v2, v40

    move/from16 v3, v41

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStackLocked(IIZ)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    :cond_22
    if-eqz p4, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v38, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v40, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    move/from16 v41, v0

    const/16 v42, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v40

    move/from16 v2, v41

    move/from16 v3, v42

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStackLocked(IIZ)V

    :cond_23
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-eqz v38, :cond_24

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/android/server/am/TaskRecord;

    const/16 v38, 0x0

    invoke-virtual/range {v37 .. v38}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    goto :goto_a

    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v40, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->addRecentTaskLocked(Lcom/android/server/am/TaskRecord;)V

    :cond_25
    :goto_b
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v38

    if-nez v38, :cond_26

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityStack;->clearWindowModeLocked(Lcom/android/server/am/TaskRecord;)V

    :cond_26
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    move-object/from16 v38, v0

    if-eqz v38, :cond_27

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    move-object/from16 v38, v0

    new-instance v40, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v41, v0

    invoke-direct/range {v40 .. v41}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    :cond_27
    if-eqz v13, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v38, v0

    const/16 v40, 0x0

    const/16 v41, 0x1

    const/16 v42, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v40

    move/from16 v2, v41

    move/from16 v3, v42

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->pauseBackStacks(ZZZ)Z

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v38

    if-eqz v38, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/android/server/wm/WindowManagerService;->findNextFocusableFloatingStackIdFromTop()I

    move-result v16

    const/16 v38, -0x1

    move/from16 v0, v16

    move/from16 v1, v38

    if-le v0, v1, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v38

    if-nez v38, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->setFocusedStack(I)V

    :cond_28
    :goto_c
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v38, v0

    const/16 v40, 0x4

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v38

    if-eqz v38, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v40, v0

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    move-object/from16 v38, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v40, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->moveGlobalTaskToTop(Lcom/android/server/am/TaskRecord;)V

    :cond_29
    :goto_d
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v39

    goto/16 :goto_0

    :cond_2a
    const-string/jumbo v38, "setMultiWindowStyle"

    move-object/from16 v0, v28

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v38, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v40, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    move/from16 v41, v0

    const/16 v42, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v40

    move/from16 v2, v41

    move/from16 v3, v42

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStackLocked(IIZ)V

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v38

    if-eqz v38, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    move/from16 v40, v0

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->setFocusedStack(I)V

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    goto/16 :goto_b

    :cond_2b
    const/16 v38, 0x4

    move-object/from16 v0, p2

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v38

    if-nez v38, :cond_25

    const/16 v38, 0x8

    move-object/from16 v0, p2

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v38

    if-nez v38, :cond_25

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v38

    const/16 v40, 0x1

    move/from16 v0, v38

    move/from16 v1, v40

    if-ne v0, v1, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    move-object/from16 v38, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v40

    const/16 v41, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v40

    move/from16 v2, v41

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/MultiWindowPolicy;->getRelativeStackIdLocked(IILcom/android/server/am/ActivityRecord;)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    move-object/from16 v38, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v40, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v22

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowPolicy;->arrangeMultiWindowStyle(Lcom/android/server/am/ActivityStack;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    :cond_2c
    if-nez p6, :cond_25

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v38, v0

    const/16 v40, 0x0

    const-string/jumbo v41, "setMultiWindowStyle"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v40

    move-object/from16 v3, p5

    move-object/from16 v4, v41

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/android/server/am/ActivityStackSupervisor;->getNonFloatingFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v38

    if-eqz v38, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    move/from16 v40, v0

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->setFocusedStack(I)V

    goto/16 :goto_c

    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v15

    if-eqz v15, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v38, v0

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    move/from16 v40, v0

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->setFocusedStack(I)V

    goto/16 :goto_c

    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v7

    const/16 v38, 0x0

    move-object/from16 v0, v38

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v33

    if-eqz v33, :cond_29

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_d
.end method

.method setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .locals 15

    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    move-object/from16 v6, p2

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->hasUnitaryOption()Z

    move-result v10

    if-eqz v10, :cond_0

    new-instance v6, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v0, p2

    invoke-direct {v6, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->removeUnitaryOption()V

    :cond_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-result-object v5

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_4

    if-eqz v5, :cond_4

    add-int/lit8 v3, v1, -0x1

    :goto_0
    if-ltz v3, :cond_4

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ActivityRecord;

    iget-object v10, v9, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v5, v10}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportMultiWindow(Landroid/content/pm/ActivityInfo;)Z

    move-result v10

    if-nez v10, :cond_1

    iget-boolean v10, v9, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-nez v10, :cond_2

    :cond_1
    iget-object v10, v9, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v11, 0x2

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    :cond_2
    const/16 v10, 0x800

    invoke-virtual {v6, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, v9, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v5, v10}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportScaleApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, v9, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v11, 0x2

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    add-int/lit8 v3, v1, -0x1

    :goto_1
    if-ltz v3, :cond_15

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityRecord;

    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v10, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->equals(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_6

    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v10

    if-nez v10, :cond_6

    :cond_5
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_6
    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v11, v8, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-object v12, v8, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Lcom/android/server/wm/WindowManagerService;->setAppMultiWindowStyle(Landroid/view/IApplicationToken;Lcom/samsung/android/multiwindow/MultiWindowStyle;ZI)V

    goto :goto_2

    :cond_7
    const/16 v10, 0x800

    invoke-virtual {v6, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v10

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    iget-object v11, v8, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v10, v11}, Lcom/android/server/am/MultiWindowPolicy;->isAvoidScaleApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v10

    if-eqz v10, :cond_8

    const/4 v10, 0x4

    invoke-virtual {v6, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v10

    if-nez v10, :cond_8

    iget-boolean v10, v8, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-nez v10, :cond_5

    :cond_8
    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_9

    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v10

    if-nez v10, :cond_9

    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_2

    :cond_9
    if-nez v2, :cond_a

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_a

    const/16 v10, 0x800

    invoke-virtual {v6, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v10

    if-eqz v10, :cond_a

    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v10

    const/4 v11, 0x4

    invoke-virtual {v6, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v11

    xor-int v2, v10, v11

    :cond_a
    const/4 v4, 0x0

    const v10, 0x8000

    invoke-virtual {v6, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v10

    if-eqz v10, :cond_b

    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const v11, 0x8000

    invoke-virtual {v10, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v10

    if-nez v10, :cond_b

    const/4 v4, 0x1

    :cond_b
    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    iget-object v11, v8, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v10, v11}, Lcom/android/server/am/MultiWindowPolicy;->isSupportPopupApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v10

    if-eqz v10, :cond_12

    const/4 v10, 0x1

    invoke-virtual {v8, v6, v10}, Lcom/android/server/am/ActivityRecord;->setMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;Z)V

    :cond_c
    :goto_3
    if-eqz v4, :cond_d

    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const v11, 0x8000

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    :cond_d
    iget v10, v8, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/android/server/am/TaskRecord;->setType(I)V

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v10

    const/4 v11, 0x2

    if-eq v10, v11, :cond_f

    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    iget-object v11, v8, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v10, v11}, Lcom/android/server/am/MultiWindowPolicy;->isMultiWindowApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v10

    if-eqz v10, :cond_e

    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    iget-object v11, v8, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v10, v11}, Lcom/android/server/am/MultiWindowPolicy;->isPenWindowOnly(Landroid/content/pm/ActivityInfo;)Z

    move-result v10

    if-eqz v10, :cond_f

    :cond_e
    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    :cond_f
    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_10

    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v10

    if-eqz v10, :cond_5

    :cond_10
    const/4 v7, 0x0

    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v11, 0x4000000

    invoke-virtual {v10, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v10

    if-eqz v10, :cond_11

    or-int/lit8 v7, v7, 0x20

    :cond_11
    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v11, v8, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-object v12, v8, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13, v7}, Lcom/android/server/wm/WindowManagerService;->setAppMultiWindowStyle(Landroid/view/IApplicationToken;Lcom/samsung/android/multiwindow/MultiWindowStyle;ZI)V

    goto/16 :goto_2

    :cond_12
    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_13

    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v10

    if-nez v10, :cond_13

    const/4 v10, 0x3

    iput v10, v8, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    goto :goto_3

    :cond_13
    invoke-virtual {v8, v6}, Lcom/android/server/am/ActivityRecord;->setMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_14

    const/16 v10, 0x800

    invoke-virtual {v6, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v10

    if-eqz v10, :cond_14

    if-eqz v5, :cond_14

    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v5, v10}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportScaleApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v10

    if-eqz v10, :cond_14

    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v11, 0x2

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    :cond_14
    if-eqz v5, :cond_c

    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v5, v10}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportScaleApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v10

    if-eqz v10, :cond_c

    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v11, 0x1000000

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    goto/16 :goto_3

    :cond_15
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v10

    if-eqz v10, :cond_17

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    if-eqz v10, :cond_17

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v12, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v11, v12}, Lcom/android/server/wm/WindowManagerService;->getStackBound(I)Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_17

    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v11, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/server/wm/WindowManagerService;->setStackBound(ILandroid/graphics/Rect;)V

    :cond_16
    :goto_4
    return-void

    :cond_17
    if-eqz v2, :cond_16

    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v11}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/server/wm/WindowManagerService;->assignMultiWindowScale(I)V

    goto :goto_4
.end method

.method setStackBoundForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;)V
    .locals 6

    const/4 v5, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v3, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v3, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v3, p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setBounds(Landroid/graphics/Rect;)V

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3, v2, v5, v5}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method setStackBoundForAllTaskInStackLocked(Landroid/graphics/Rect;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    invoke-virtual {p0, v2, p1}, Lcom/android/server/am/ActivityStack;->setStackBoundForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method setVisibleBehindActivity(Lcom/android/server/am/ActivityRecord;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->setVisibleBehindActivity(Lcom/android/server/am/ActivityRecord;)V

    :cond_0
    return-void
.end method

.method final shouldUpRecreateTaskLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v4, :cond_3

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v4, :cond_3

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->isDocument()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_2

    const-string v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "shouldUpRecreateTask: task not in history for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_3
    move v2, v3

    goto :goto_0
.end method

.method final startActivityLocked(Lcom/android/server/am/ActivityRecord;ZZZLandroid/os/Bundle;Z)V
    .locals 40

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v37, v0

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->taskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v3

    if-eqz v3, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityStack;->insertTaskAtTop(Lcom/android/server/am/TaskRecord;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move/from16 v0, v37

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    :cond_1
    const/16 v36, 0x0

    if-nez p2, :cond_8

    const/16 v35, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v38, v3, -0x1

    :goto_0
    if-ltz v38, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    move/from16 v0, v38

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/android/server/am/TaskRecord;

    invoke-virtual/range {v36 .. v36}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    if-nez v3, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v38, v38, -0x1

    goto :goto_0

    :cond_3
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v36

    if-ne v0, v3, :cond_7

    if-nez v35, :cond_8

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->addActivityToTop(Lcom/android/server/am/ActivityRecord;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->putInHistory()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v8, v8, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    move-object/from16 v0, p1

    iget-boolean v9, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v10, v10, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v10, v10, 0x400

    if-eqz v10, :cond_5

    const/4 v10, 0x1

    :goto_2
    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v12, v12, Landroid/content/pm/ActivityInfo;->configChanges:I

    move-object/from16 v0, v36

    iget-object v13, v0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v13, :cond_6

    const/4 v13, 0x1

    :goto_3
    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->skipRotationAnimation:Z

    move/from16 v16, v0

    invoke-virtual/range {v3 .. v16}, Lcom/android/server/wm/WindowManagerService;->addAppToken(ILandroid/view/IApplicationToken;IIIZZIIZZLcom/samsung/android/multiwindow/MultiWindowStyle;Z)V

    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    :cond_4
    :goto_4
    return-void

    :cond_5
    const/4 v10, 0x0

    goto :goto_2

    :cond_6
    const/4 v13, 0x0

    goto :goto_3

    :cond_7
    move-object/from16 v0, v36

    iget v3, v0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    if-lez v3, :cond_2

    const/16 v35, 0x0

    goto :goto_1

    :cond_8
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v36

    if-ne v0, v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v0, v36

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    :cond_9
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->addActivityToTop(Lcom/android/server/am/ActivityRecord;)V

    invoke-virtual/range {v36 .. v36}, Lcom/android/server/am/TaskRecord;->setFrontOfTask()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->putInHistory()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->numActivities()I

    move-result v3

    if-lez v3, :cond_20

    :cond_a
    move/from16 v34, p2

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v32, v0

    if-nez v32, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/server/am/ProcessRecord;

    :cond_b
    if-eqz v32, :cond_c

    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v3, :cond_d

    :cond_c
    const/16 v34, 0x1

    :cond_d
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v4, 0x10000

    and-int/2addr v3, v4

    if-eqz v3, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v5

    move/from16 v0, p4

    invoke-virtual {v3, v4, v0, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZI)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v8, v8, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    move-object/from16 v0, p1

    iget-boolean v9, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v10, v10, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v10, v10, 0x400

    if-eqz v10, :cond_15

    const/4 v10, 0x1

    :goto_6
    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v12, v12, Landroid/content/pm/ActivityInfo;->configChanges:I

    move-object/from16 v0, v36

    iget-object v13, v0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v13, :cond_16

    const/4 v13, 0x1

    :goto_7
    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->skipRotationAnimation:Z

    move/from16 v16, v0

    invoke-virtual/range {v3 .. v16}, Lcom/android/server/wm/WindowManagerService;->addAppToken(ILandroid/view/IApplicationToken;IIIZZIIZZLcom/samsung/android/multiwindow/MultiWindowStyle;Z)V

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v3

    if-eqz v3, :cond_e

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v4, 0x4000000

    invoke-virtual {v3, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_e

    new-instance v39, Ljava/util/ArrayList;

    invoke-direct/range {v39 .. v39}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v4, 0x8

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getDisplayId()I

    move-result v5

    move-object/from16 v0, v39

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/wm/WindowManagerService;->prepareMultiWindowTransition(Ljava/util/ArrayList;II)V

    :cond_e
    const/16 v30, 0x1

    if-eqz p2, :cond_18

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v4, 0x200000

    and-int/2addr v3, v4

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->resetTaskIfNeededLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    move-object/from16 v0, p1

    if-ne v3, v0, :cond_17

    const/16 v30, 0x1

    :cond_f
    :goto_8
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v3, :cond_19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v5, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;ZI)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    :cond_10
    :goto_9
    if-eqz p3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    goto/16 :goto_4

    :cond_11
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    if-eqz v3, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v4, 0x65

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v5

    move/from16 v0, p4

    invoke-virtual {v3, v4, v0, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZI)V

    :goto_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz p2, :cond_14

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v3, :cond_13

    const/16 v3, 0x10

    :goto_b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v5

    move/from16 v0, p4

    invoke-virtual {v4, v3, v0, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZI)V

    goto :goto_a

    :cond_13
    const/16 v3, 0x8

    goto :goto_b

    :cond_14
    const/4 v3, 0x6

    goto :goto_b

    :cond_15
    const/4 v10, 0x0

    goto/16 :goto_6

    :cond_16
    const/4 v13, 0x0

    goto/16 :goto_7

    :cond_17
    const/16 v30, 0x0

    goto :goto_8

    :cond_18
    if-eqz p5, :cond_f

    new-instance v3, Landroid/app/ActivityOptions;

    move-object/from16 v0, p5

    invoke-direct {v3, v0}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_f

    const/16 v30, 0x0

    goto/16 :goto_8

    :cond_19
    if-eqz v30, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v31, v0

    if-eqz v31, :cond_1a

    move-object/from16 v0, v31

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v3, v4, :cond_1d

    const/16 v31, 0x0

    :cond_1a
    :goto_c
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const-string v3, "android.intent.action.MAIN"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    const-string v3, "android.intent.action.DIAL"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    const-string v3, "android.intent.action.CALL_BUTTON"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    :cond_1b
    new-instance v15, Lcom/android/server/wm/CustomStartingWindowData;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-direct {v15, v3, v4, v5}, Lcom/android/server/wm/CustomStartingWindowData;-><init>(Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;I)V

    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/server/am/ActivityRecord;->theme:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v7

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    move-object/from16 v0, p1

    iget v10, v0, Lcom/android/server/am/ActivityRecord;->icon:I

    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->logo:I

    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/server/am/ActivityRecord;->windowFlags:I

    if-eqz v31, :cond_1e

    move-object/from16 v0, v31

    iget-object v13, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    :goto_d
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v16

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v14, :cond_1f

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v0, v14, Lcom/android/server/am/ProcessRecord;->userId:I

    move/from16 v17, v0

    :goto_e
    move/from16 v14, v34

    invoke-virtual/range {v3 .. v17}, Lcom/android/server/wm/WindowManagerService;->setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/os/IBinder;ZLcom/android/server/wm/CustomStartingWindowData;II)V

    const/4 v3, 0x1

    move-object/from16 v0, p1

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->mStartingWindowShown:Z

    goto/16 :goto_9

    :cond_1d
    move-object/from16 v0, v31

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v3, :cond_1a

    const/16 v31, 0x0

    goto/16 :goto_c

    :cond_1e
    const/4 v13, 0x0

    goto :goto_d

    :cond_1f
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v14}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v17

    goto :goto_e

    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v16, v0

    move-object/from16 v0, v36

    iget-object v3, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v17

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v0, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v3, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    move/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v3, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_21

    const/16 v23, 0x1

    :goto_f
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v3, Landroid/content/pm/ActivityInfo;->configChanges:I

    move/from16 v25, v0

    move-object/from16 v0, v36

    iget-object v3, v0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v3, :cond_22

    const/16 v26, 0x1

    :goto_10
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    move/from16 v27, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->skipRotationAnimation:Z

    move/from16 v29, v0

    invoke-virtual/range {v16 .. v29}, Lcom/android/server/wm/WindowManagerService;->addAppToken(ILandroid/view/IApplicationToken;IIIZZIIZZLcom/samsung/android/multiwindow/MultiWindowStyle;Z)V

    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    const/16 p5, 0x0

    goto/16 :goto_9

    :cond_21
    const/16 v23, 0x0

    goto :goto_f

    :cond_22
    const/16 v26, 0x0

    goto :goto_10
.end method

.method final startPausingLocked(ZZZZ)Z
    .locals 12

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_0

    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Going to pause when pause is already pending for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityStack;->completePauseLocked(Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-nez v1, :cond_2

    if-nez p3, :cond_1

    const-string v0, "ActivityManager"

    const-string v2, "Trying to pause when nothing is resumed"

    invoke-static {v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->minimizePenWindowRequested:Z

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStackSupervisor;->pauseChildStacks(Lcom/android/server/am/ActivityRecord;ZZZZ)V

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v0, v2

    if-nez v0, :cond_5

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_d

    :cond_5
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v11

    if-eqz v11, :cond_6

    iget-object v0, v11, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_6

    iget-object v0, v11, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    iget-object v0, v11, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v11, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityManagerService;->addRecentTaskLocked(Lcom/android/server/am/TaskRecord;)V

    :cond_6
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStack;->clearLaunchTime(Lcom/android/server/am/ActivityRecord;)V

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v9, 0x0

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v9

    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skip updateThumbnail for r="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v11

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mHasRecents:Z

    if-eqz v0, :cond_8

    if-eqz v11, :cond_7

    iget-boolean v0, v11, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    if-nez v0, :cond_7

    iget-object v0, v11, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v0, v2, :cond_7

    if-eqz p2, :cond_8

    :cond_7
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const-string v2, "com.sec.knox.knoxsetupwizardclient"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    if-nez v9, :cond_8

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStack;->screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/server/am/ActivityRecord;->updateThumbnailLocked(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    :cond_8
    invoke-direct {p0}, Lcom/android/server/am/ActivityStack;->stopFullyDrawnTraceIfNeeded()V

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateCpuStats()V

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_e

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_e

    const/16 v0, 0x753d

    const/4 v2, 0x4

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, v1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->updateUsageStats(Lcom/android/server/am/ActivityRecord;Z)V

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-boolean v4, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    iget v6, v1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    move v5, p1

    move/from16 v7, p4

    invoke-interface/range {v2 .. v7}, Landroid/app/IApplicationThread;->schedulePauseActivity(Landroid/os/IBinder;ZZIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDown()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->acquireLaunchWakelock()V

    :cond_9
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_a
    if-nez p2, :cond_b

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->pauseKeyDispatchingLocked()V

    :cond_b
    if-eqz p4, :cond_f

    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/ActivityStack;->completePauseLocked(ZLcom/android/server/am/ActivityRecord;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->SAMP_PPM_ENABLE:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/app/usage/UsageStatsManagerInternal;->reportPpmEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_d
    const/4 v0, 0x0

    goto/16 :goto_1

    :catch_0
    move-exception v8

    const-string v0, "ActivityManager"

    const-string v2, "Exception thrown during pause"

    invoke-static {v0, v2, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_f
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    iput-object v1, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/am/ActivityRecord;->pauseTime:J

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v10, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->SAMP_PPM_ENABLE:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/app/usage/UsageStatsManagerInternal;->reportPpmEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_10
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_11
    if-nez p3, :cond_12

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    :cond_12
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->SAMP_PPM_ENABLE:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/app/usage/UsageStatsManagerInternal;->reportPpmEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_13
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method final stopActivityLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v2, 0x0

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isSleeping()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v3, 0x0

    const-string/jumbo v4, "no-history"

    move-object v0, p0

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    :cond_1
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_4

    const-string/jumbo v0, "stopActivity"

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ActivityStack;->adjustFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;ZI)V

    :cond_2
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    iget v3, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IApplicationThread;->scheduleStopActivity(Landroid/os/IBinder;ZI)V

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDown()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/am/ActivityRecord;->setSleeping(Z)V

    :cond_3
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v7, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_0
    return-void

    :catch_0
    move-exception v6

    const-string v0, "ActivityManager"

    const-string v1, "Exception thrown during pause"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-boolean v8, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "stop-except"

    invoke-virtual {p0, p1, v8, v0}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    goto :goto_0
.end method

.method final switchUserLocked(I)V
    .locals 8

    iget v6, p0, Lcom/android/server/am/ActivityStack;->mCurrentUser:I

    if-ne v6, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/android/server/am/ActivityStack;->mCurrentUser:I

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_4

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    iget v6, v5, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {p0, v6}, Lcom/android/server/am/ActivityStack;->isCurrentProfileLocked(I)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_CIQ_BroadcastState"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v0, v5, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    :goto_2
    if-ltz v3, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    iget-boolean v6, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v6, :cond_2

    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivityStack;->okToShowLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v7, v4, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/android/server/am/AppStateBroadcaster;->sendApplicationFocusGain(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->switchUserLocked()V

    goto :goto_0
.end method

.method taskForIdLocked(I)Lcom/android/server/am/TaskRecord;
    .locals 3

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    iget v2, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v2, p1, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityStack{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " stackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " tasks}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final topActivity()Lcom/android/server/am/ActivityRecord;
    .locals 5

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    :goto_0
    if-ltz v3, :cond_2

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    iget-object v0, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_1
    if-ltz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    iget-boolean v4, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v4, :cond_0

    :goto_2
    return-object v2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method final topMultiPhoneWindowActivity()Lcom/android/server/am/ActivityRecord;
    .locals 6

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    :goto_0
    if-ltz v4, :cond_4

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    iget-object v0, v5, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    :goto_1
    if-ltz v1, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    iget-boolean v5, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v5, 0x20000

    invoke-virtual {v3, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_0

    const/high16 v5, 0x40000

    invoke-virtual {v3, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    :goto_2
    return-object v5

    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    goto :goto_2
.end method

.method final topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/am/ActivityRecord;
    .locals 6

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    :goto_0
    if-ltz v4, :cond_3

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    iget v5, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v5, p2, :cond_1

    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    :goto_1
    if-ltz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    iget-boolean v5, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v5, :cond_2

    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    if-eq p1, v5, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStack;->okToShowLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v5

    if-eqz v5, :cond_2

    :goto_2
    return-object v2

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_2
.end method

.method final topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method final topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityRecord;
    .locals 4

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_0
    if-ltz v1, :cond_2

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2, p1}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method final topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 6

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    :goto_0
    if-ltz v4, :cond_2

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    iget-object v0, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    :goto_1
    if-ltz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    iget-boolean v5, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v5, :cond_0

    iget-boolean v5, v2, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    if-nez v5, :cond_0

    if-eq v2, p1, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStack;->okToShowLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_2
    return-object v2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method final topTask()Lcom/android/server/am/TaskRecord;
    .locals 3

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public unhandledBackLocked()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    if-ltz v8, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    iget-object v6, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    if-lez v7, :cond_0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string/jumbo v4, "unhandled-back"

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    :cond_0
    return-void
.end method

.method final updateLRUListLocked(Lcom/android/server/am/ActivityRecord;)Z
    .locals 2

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v0
.end method

.method updatePausingActivitiesAfterMovingTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;)V
    .locals 13

    const-wide/16 v6, 0x0

    const/16 v12, 0x65

    if-eq p0, p2, :cond_4

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_3

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    iget-object v8, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v8, p1, :cond_1

    iget-object v8, p2, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p2, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-wide v8, v3, Lcom/android/server/am/ActivityRecord;->pauseTime:J

    const-wide/16 v10, 0x1f4

    add-long/2addr v8, v10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    sub-long v4, v8, v10

    cmp-long v8, v4, v6

    if-lez v8, :cond_2

    :goto_1
    iget-object v8, p2, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v12, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    move-wide v4, v6

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v6, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v6, p1, :cond_4

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    :cond_4
    return-void
.end method

.method updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V
    .locals 4

    iget-boolean v0, p1, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    if-nez p2, :cond_0

    iget-wide v0, p1, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    const-wide/16 v2, -0x1

    mul-long/2addr v0, v2

    iput-wide v0, p1, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    :cond_0
    return-void
.end method

.method final updateTransitLocked(ILandroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/ActivityStack;->updateTransitLocked(ILandroid/os/Bundle;I)V

    return-void
.end method

.method final updateTransitLocked(ILandroid/os/Bundle;I)V
    .locals 5

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v1, v2, :cond_1

    invoke-virtual {v0, p2}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/os/Bundle;)V

    :cond_0
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v1

    if-eqz v1, :cond_2

    and-int/lit8 v1, p3, 0x1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v2, 0x65

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v3

    invoke-virtual {v1, v2, v4, v3}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZI)V

    :goto_1
    return-void

    :cond_1
    invoke-static {p2}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v1

    :goto_2
    invoke-virtual {v2, p1, v4, v1}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZI)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplayId()I

    move-result v1

    goto :goto_2
.end method

.method final validateAppTokensLocked()V
    .locals 11

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mValidateAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mValidateAppTokens:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->numActivities()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->ensureCapacity(I)V

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v4, :cond_2

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    iget-object v0, v6, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/android/server/wm/TaskGroup;

    invoke-direct {v2}, Lcom/android/server/wm/TaskGroup;-><init>()V

    iget v8, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    iput v8, v2, Lcom/android/server/wm/TaskGroup;->taskId:I

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mValidateAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    iget-object v8, v2, Lcom/android/server/wm/TaskGroup;->tokens:Ljava/util/ArrayList;

    iget-object v9, v5, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v9, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mValidateAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v8, v9, v10}, Lcom/android/server/wm/WindowManagerService;->validateAppTokens(ILjava/util/List;)V

    return-void
.end method

.method willActivityBeVisibleLocked(Landroid/os/IBinder;)Z
    .locals 9

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    :goto_0
    if-ltz v3, :cond_4

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    iget-object v0, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_1
    if-ltz v1, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    if-ne v4, p1, :cond_1

    move v6, v5

    :cond_0
    :goto_2
    return v6

    :cond_1
    iget-boolean v4, v2, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v4, :cond_2

    iget-boolean v4, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_0

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_4
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-boolean v4, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_5

    const-string v4, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "willActivityBeVisibleLocked: Returning false, would have returned true for r="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-boolean v4, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v4, :cond_6

    move v4, v5

    :goto_3
    move v6, v4

    goto :goto_2

    :cond_6
    move v4, v6

    goto :goto_3
.end method

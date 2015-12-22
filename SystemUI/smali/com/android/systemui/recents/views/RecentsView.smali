.class public Lcom/android/systemui/recents/views/RecentsView;
.super Landroid/widget/FrameLayout;
.source "RecentsView.java"

# interfaces
.implements Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;
.implements Lcom/android/systemui/recents/model/RecentsPackageMonitor$PackageCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;
    }
.end annotation


# instance fields
.field private TW_TAG:Ljava/lang/String;

.field private mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

.field mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

.field mCloseAllButton:Landroid/view/View;

.field mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

.field mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

.field private mFinishActivity:Z

.field mInflater:Landroid/view/LayoutInflater;

.field mSearchBar:Landroid/view/View;

.field mStacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/TaskStack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "Recents_RecentsView"

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->TW_TAG:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mFinishActivity:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mCloseAllButton:Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recents/views/RecentsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/recents/views/RecentsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-string v0, "Recents_RecentsView"

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->TW_TAG:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mFinishActivity:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mCloseAllButton:Landroid/view/View;

    invoke-static {}, Lcom/android/systemui/recents/RecentsConfiguration;->getInstance()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/recents/views/RecentsView;Lcom/android/systemui/recents/model/Task;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/recents/views/RecentsView;->insertLogPair(Lcom/android/systemui/recents/model/Task;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/recents/views/RecentsView;)Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/recents/views/RecentsView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mFinishActivity:Z

    return v0
.end method

.method private insertLogPair(Lcom/android/systemui/recents/model/Task;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    const-string v3, "RCSV"

    iget-object v4, p1, Lcom/android/systemui/recents/model/Task;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_0

    new-array v1, v6, [Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v2, "RCSV"

    aput-object v2, v1, v4

    iget-object v2, p1, Lcom/android/systemui/recents/model/Task;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    aput-object v2, v0, v4

    const-string v2, "SPLW"

    aput-object v2, v1, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    invoke-virtual {v2}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getSelectedAppPackageInfo()Landroid/util/Pair;

    move-result-object v2

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/systemui/recents/model/Task;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    const/4 v3, 0x0

    invoke-static {v2, v1, v0, v3}, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper;->insertMultipleStatusLog(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;[J)V

    goto :goto_0
.end method

.method private sendDiagnosticLogs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "app_id"

    const-string v3, "com.android.systemui.recents.RecentsActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "feature"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string v2, "extra"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    invoke-interface {v0}, Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;->dismiss()V

    return-void
.end method

.method public dismissFocusedTask()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eq v0, v4, :cond_1

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->dismissFocusedTask()V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public focusNextTask(Z)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eq v0, v4, :cond_1

    instance-of v4, v0, Lcom/android/systemui/recents/views/TaskStackView;

    if-eqz v4, :cond_0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/recents/views/TaskStackView;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Lcom/android/systemui/recents/views/TaskStackView;->focusNextTask(ZZ)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mCloseAllButton:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mCloseAllButton:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    iget-object v4, v3, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v4

    iput v4, v3, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public hasFocusTask()Z
    .locals 6

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eq v0, v4, :cond_0

    instance-of v4, v0, Lcom/android/systemui/recents/views/TaskStackView;

    if-eqz v4, :cond_1

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/recents/views/TaskStackView;

    iget v4, v3, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    const/4 v4, 0x1

    :goto_1
    return v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public hasSearchBar()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCascadeRunning()Z
    .locals 11

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eq v0, v10, :cond_1

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v5, v6, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v8, :cond_1

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/recents/model/Task;

    iget-boolean v10, v10, Lcom/android/systemui/recents/model/Task;->isActive:Z

    if-eqz v10, :cond_0

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v7}, Lcom/android/systemui/recents/model/Task;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x4

    invoke-virtual {v4, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v10

    if-nez v10, :cond_0

    const/4 v10, 0x1

    :goto_2
    return v10

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v10, 0x0

    goto :goto_2
.end method

.method public launchFocusedTask()Z
    .locals 12

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getChildCount()I

    move-result v8

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_0

    invoke-virtual {p0, v9}, Lcom/android/systemui/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eq v7, v0, :cond_2

    move-object v1, v7

    check-cast v1, Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v3, v1, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v11

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v11, :cond_2

    invoke-virtual {v1, v10}, Lcom/android/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskView;->isFocusedTask()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p0

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/recents/views/RecentsView;->onTaskViewClicked(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;ZZ)V

    const/4 v5, 0x1

    :cond_0
    return v5

    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0
.end method

.method public launchPreviousTask(Ljava/util/concurrent/atomic/AtomicBoolean;)Z
    .locals 14

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getChildCount()I

    move-result v8

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_5

    invoke-virtual {p0, v9}, Lcom/android/systemui/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eq v7, v0, :cond_4

    move-object v1, v7

    check-cast v1, Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v3, v1, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v12, :cond_4

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/model/Task;

    iget-boolean v0, v0, Lcom/android/systemui/recents/model/Task;->isLaunchTarget:Z

    if-eqz v0, :cond_3

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v1, v4}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v2

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/Task;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v11

    if-eqz v11, :cond_2

    invoke-virtual {v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/views/RecentsView;->onAltTaskViewClicked(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Z)V

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    :goto_2
    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_2
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/recents/views/RecentsView;->onTaskViewClicked(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;ZZ)V

    goto :goto_2

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public onAllTaskViewsDismissed()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    invoke-interface {v0}, Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;->onAllTaskViewsDismissed()V

    return-void
.end method

.method public onAltTaskViewClicked(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Z)V
    .locals 24

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    if-eqz v7, :cond_0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    invoke-interface {v7}, Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;->onAltTaskViewClicked()V

    :cond_0
    new-instance v23, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct/range {v23 .. v23}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v22

    if-nez p2, :cond_4

    move-object/from16 v3, p1

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    move-result-object v7

    const/4 v8, 0x0

    move-object/from16 v0, p4

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v7, v0, v1, v2, v8}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v7, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    iget v5, v7, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v7, v7, Lcom/android/systemui/recents/RecentsConfiguration;->displayRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v6

    :goto_0
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v14

    const/16 v20, 0x0

    move-object/from16 v0, p4

    iget-object v7, v0, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_3

    move-object/from16 v0, p4

    iget-object v7, v0, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-lez v7, :cond_3

    move-object/from16 v0, p4

    iget-object v7, v0, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-lez v7, :cond_3

    if-eqz p2, :cond_5

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    if-eqz v7, :cond_5

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v7}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredWidth()I

    move-result v7

    if-lez v7, :cond_5

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v7}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredHeight()I

    move-result v7

    if-lez v7, :cond_5

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskView;->isFocusedTask()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskView;->unsetFocusedTask()V

    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskView;->getScaleX()F

    move-result v21

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v7}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, v21

    float-to-int v0, v7

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v7}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, v21

    float-to-int v0, v7

    move/from16 v18, v0

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v19

    move/from16 v1, v18

    invoke-static {v0, v1, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v17, Landroid/graphics/Canvas;

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskView;->getScaleX()F

    move-result v7

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskView;->getScaleY()F

    move-result v8

    move-object/from16 v0, v17

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Canvas;->scale(FF)V

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->draw(Landroid/graphics/Canvas;)V

    const/4 v7, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    :goto_1
    const/4 v10, 0x0

    if-eqz p5, :cond_2

    new-instance v10, Lcom/android/systemui/recents/views/RecentsView$4;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/android/systemui/recents/views/RecentsView$4;-><init>(Lcom/android/systemui/recents/views/RecentsView;)V

    :cond_2
    move-object/from16 v0, v23

    iget-object v7, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    move-object/from16 v0, v23

    iget-object v8, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-virtual {v3}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v9

    invoke-static/range {v3 .. v10}, Landroid/app/ActivityOptions;->makeThumbnailAspectScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v20

    :cond_3
    move-object/from16 v15, v20

    new-instance v11, Lcom/android/systemui/recents/views/RecentsView$5;

    move-object/from16 v12, p0

    move-object/from16 v13, p4

    move/from16 v16, p5

    invoke-direct/range {v11 .. v16}, Lcom/android/systemui/recents/views/RecentsView$5;-><init>(Lcom/android/systemui/recents/views/RecentsView;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/misc/SystemServicesProxy;Landroid/app/ActivityOptions;Z)V

    if-nez p2, :cond_6

    invoke-interface {v11}, Ljava/lang/Runnable;->run()V

    :goto_2
    return-void

    :cond_4
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    move-result-object v7

    const/4 v8, 0x0

    move-object/from16 v0, p4

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v7, v0, v1, v2, v8}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v23

    goto/16 :goto_0

    :cond_5
    const/4 v7, 0x1

    const/4 v8, 0x1

    sget-object v9, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_1

    :cond_6
    move-object/from16 v0, p4

    iget-object v7, v0, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    if-eqz v7, :cond_7

    move-object/from16 v0, p4

    iget-object v7, v0, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    move-object/from16 v0, p4

    invoke-virtual {v7, v0}, Lcom/android/systemui/recents/model/TaskGrouping;->isFrontMostTask(Lcom/android/systemui/recents/model/Task;)Z

    move-result v7

    if-nez v7, :cond_7

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p5

    invoke-virtual {v0, v1, v11, v2}, Lcom/android/systemui/recents/views/TaskStackView;->startLaunchTaskAnimation(Lcom/android/systemui/recents/views/TaskView;Ljava/lang/Runnable;Z)V

    goto :goto_2

    :cond_7
    const/4 v7, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p5

    invoke-virtual {v0, v1, v7, v2}, Lcom/android/systemui/recents/views/TaskStackView;->startLaunchTaskAnimation(Lcom/android/systemui/recents/views/TaskView;Ljava/lang/Runnable;Z)V

    invoke-interface {v11}, Ljava/lang/Runnable;->run()V

    goto :goto_2
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsConfiguration;->updateSystemInsets(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->requestLayout()V

    invoke-virtual {p1}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method public onChangeMultiwindowEnabled()V
    .locals 8

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v7, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eq v0, v7, :cond_0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v5

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_0

    invoke-virtual {v4, v3}, Lcom/android/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskView;->setNoUserInteractionState()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eqz v4, :cond_0

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getMeasuredHeight()I

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v7, v7, Lcom/android/systemui/recents/RecentsConfiguration;->systemInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5, v6, v7, v3}, Lcom/android/systemui/recents/RecentsConfiguration;->getSearchBarBounds(IIILandroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    iget v5, v3, Landroid/graphics/Rect;->left:I

    iget v6, v3, Landroid/graphics/Rect;->top:I

    iget v7, v3, Landroid/graphics/Rect;->right:I

    iget v8, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eq v0, v4, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, p2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, p3

    invoke-virtual {v0, p2, p3, v4, v5}, Landroid/view/View;->layout(IIII)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eqz v0, :cond_0

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->systemInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2, v3, v9}, Lcom/android/systemui/recents/RecentsConfiguration;->getSearchBarBounds(IIILandroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-static {v3, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v4, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/view/View;->measure(II)V

    :cond_0
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->systemInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v4, v4, Lcom/android/systemui/recents/RecentsConfiguration;->systemInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/RecentsConfiguration;->getTaskStackBounds(IIIILandroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getChildCount()I

    move-result v7

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_2

    invoke-virtual {p0, v8}, Lcom/android/systemui/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eq v6, v0, :cond_1

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-eq v0, v3, :cond_1

    move-object v10, v6

    check-cast v10, Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v10, v5}, Lcom/android/systemui/recents/views/TaskStackView;->setStackInsetRect(Landroid/graphics/Rect;)V

    invoke-virtual {v10, p1, p2}, Lcom/android/systemui/recents/views/TaskStackView;->measure(II)V

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/recents/views/RecentsView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onPackagesChanged(Lcom/android/systemui/recents/model/RecentsPackageMonitor;Ljava/lang/String;I)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eq v0, v4, :cond_0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/systemui/recents/views/TaskStackView;->onPackagesChanged(Lcom/android/systemui/recents/model/RecentsPackageMonitor;Ljava/lang/String;I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onRecentsHidden()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eq v0, v4, :cond_0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->onRecentsHidden()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onTaskStackFilterTriggered()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->fastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->filteringCurrentViewsAnimDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method public onTaskStackUnfilterTriggered()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->fastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->filteringNewViewsAnimDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method public onTaskViewAppInfoClicked(Lcom/android/systemui/recents/model/Task;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v0, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v3, "package"

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    move-result-object v2

    new-instance v3, Landroid/os/UserHandle;

    iget-object v4, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v4, v4, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v5, v3}, Landroid/app/TaskStackBuilder;->startActivities(Landroid/os/Bundle;Landroid/os/UserHandle;)V

    return-void
.end method

.method public onTaskViewClicked(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;ZZ)V
    .locals 32

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    if-eqz v7, :cond_0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v7}, Lcom/android/systemui/recents/RecentsConfiguration;->showOnlySplitTask()Z

    move-result v7

    if-nez v7, :cond_0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    if-eqz p2, :cond_6

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    :goto_0
    invoke-interface {v8, v7}, Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;->onTaskViewClicked(Lcom/android/systemui/recents/model/Task;)V

    :cond_0
    new-instance v31, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct/range {v31 .. v31}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v30

    if-nez p2, :cond_7

    move-object/from16 v3, p1

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    move-result-object v7

    const/4 v8, 0x0

    move-object/from16 v0, p4

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v7, v0, v1, v2, v8}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v31

    move-object/from16 v0, v31

    iget-object v7, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    iget v5, v7, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v7, v7, Lcom/android/systemui/recents/RecentsConfiguration;->displayRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v6

    :goto_1
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v14

    const/16 v28, 0x0

    move-object/from16 v0, p4

    iget-object v7, v0, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_3

    move-object/from16 v0, p4

    iget-object v7, v0, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-lez v7, :cond_3

    move-object/from16 v0, p4

    iget-object v7, v0, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-lez v7, :cond_3

    if-eqz p2, :cond_8

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskView;->isFocusedTask()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskView;->unsetFocusedTask()V

    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskView;->getScaleX()F

    move-result v29

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v7}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, v29

    float-to-int v0, v7

    move/from16 v27, v0

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v7}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, v29

    float-to-int v0, v7

    move/from16 v26, v0

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v27

    move/from16 v1, v26

    invoke-static {v0, v1, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v25, Landroid/graphics/Canvas;

    move-object/from16 v0, v25

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskView;->getScaleX()F

    move-result v7

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskView;->getScaleY()F

    move-result v8

    move-object/from16 v0, v25

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Canvas;->scale(FF)V

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->draw(Landroid/graphics/Canvas;)V

    const/4 v7, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    :goto_2
    const/4 v10, 0x0

    if-eqz p5, :cond_2

    new-instance v10, Lcom/android/systemui/recents/views/RecentsView$1;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/android/systemui/recents/views/RecentsView$1;-><init>(Lcom/android/systemui/recents/views/RecentsView;)V

    :cond_2
    move-object/from16 v0, v31

    iget-object v7, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    move-object/from16 v0, v31

    iget-object v8, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-virtual {v3}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v9

    invoke-static/range {v3 .. v10}, Landroid/app/ActivityOptions;->makeThumbnailAspectScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v28

    :cond_3
    move-object/from16 v17, v28

    new-instance v15, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v15}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>()V

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/android/systemui/recents/views/RecentsView;->mFinishActivity:Z

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/views/RecentsView;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    if-eqz v7, :cond_a

    const/4 v7, 0x1

    invoke-virtual {v15, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/views/RecentsView;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    invoke-virtual {v7}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v7

    if-eqz v7, :cond_9

    const/16 v7, 0xc

    invoke-virtual {v15, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    :cond_4
    :goto_3
    new-instance v11, Lcom/android/systemui/recents/views/RecentsView$2;

    move-object/from16 v12, p0

    move-object/from16 v13, p4

    move/from16 v16, p5

    invoke-direct/range {v11 .. v17}, Lcom/android/systemui/recents/views/RecentsView$2;-><init>(Lcom/android/systemui/recents/views/RecentsView;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/misc/SystemServicesProxy;Lcom/samsung/android/multiwindow/MultiWindowStyle;ZLandroid/app/ActivityOptions;)V

    new-instance v18, Lcom/android/systemui/recents/views/RecentsView$3;

    move-object/from16 v19, p0

    move-object/from16 v20, p2

    move-object/from16 v21, v11

    move-object/from16 v22, p4

    move-object/from16 v23, p1

    move/from16 v24, p5

    invoke-direct/range {v18 .. v24}, Lcom/android/systemui/recents/views/RecentsView$3;-><init>(Lcom/android/systemui/recents/views/RecentsView;Lcom/android/systemui/recents/views/TaskView;Ljava/lang/Runnable;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskStackView;Z)V

    invoke-interface/range {v18 .. v18}, Ljava/lang/Runnable;->run()V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    if-eqz v7, :cond_5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v7}, Lcom/android/systemui/recents/RecentsConfiguration;->showOnlySplitTask()Z

    move-result v7

    if-eqz v7, :cond_5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    if-eqz p2, :cond_c

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    :goto_4
    invoke-interface {v8, v7}, Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;->onTaskViewClicked(Lcom/android/systemui/recents/model/Task;)V

    :cond_5
    return-void

    :cond_6
    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    move-result-object v7

    const/4 v8, 0x0

    move-object/from16 v0, p4

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v7, v0, v1, v2, v8}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v31

    goto/16 :goto_1

    :cond_8
    const/4 v7, 0x1

    const/4 v8, 0x1

    sget-object v9, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    goto/16 :goto_2

    :cond_9
    const/4 v7, 0x3

    invoke-virtual {v15, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/android/systemui/recents/views/RecentsView;->mFinishActivity:Z

    goto :goto_3

    :cond_a
    if-eqz p6, :cond_b

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/views/RecentsView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportSimplificationUI(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_b

    const/4 v7, 0x1

    invoke-virtual {v15, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    const/4 v7, 0x3

    invoke-virtual {v15, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    const/high16 v7, 0x2000000

    const/4 v8, 0x1

    invoke-virtual {v15, v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    goto/16 :goto_3

    :cond_b
    if-nez p6, :cond_4

    move-object/from16 v0, p4

    iget-object v7, v0, Lcom/android/systemui/recents/model/Task;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v7, :cond_4

    const-string v7, "RC01"

    move-object/from16 v0, p4

    iget-object v8, v0, Lcom/android/systemui/recents/model/Task;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8}, Lcom/android/systemui/recents/views/RecentsView;->sendDiagnosticLogs(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_c
    const/4 v7, 0x0

    goto :goto_4
.end method

.method public onTaskViewDismissed(Lcom/android/systemui/recents/model/Task;)V
    .locals 3

    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->deleteTaskData(Lcom/android/systemui/recents/model/Task;Z)V

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    iget-object v2, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->removeTask(I)V

    return-void
.end method

.method public onTaskViewFocusSwitched(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;->onTaskViewFocusSwitched(IZ)V

    return-void
.end method

.method public onTaskViewMoved()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    invoke-interface {v0}, Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;->onTaskViewMoved()V

    return-void
.end method

.method public onUserInteraction()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eq v0, v4, :cond_0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->onUserInteraction()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setCallbacks(Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    return-void
.end method

.method public setCloseAllButton(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsView;->mCloseAllButton:Landroid/view/View;

    return-void
.end method

.method public setDebugOverlay(Lcom/android/systemui/recents/views/DebugOverlayView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsView;->mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

    return-void
.end method

.method public setMultiWindowActivity(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsView;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    return-void
.end method

.method public setSearchBar(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public setSearchBarVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    :cond_0
    return-void
.end method

.method public setTaskStacks(Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/TaskStack;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eq v0, v10, :cond_0

    check-cast v0, Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v10, v10, Lcom/android/systemui/recents/RecentsConfiguration;->launchedReuseTaskStackViews:Z

    if-eqz v10, :cond_2

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    :cond_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v2, v10, -0x1

    :goto_1
    if-lt v2, v4, :cond_3

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v10}, Lcom/android/systemui/recents/views/TaskStackView;->destroyViewPool()V

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    invoke-virtual {p0, v10}, Lcom/android/systemui/recents/views/RecentsView;->removeView(Landroid/view/View;)V

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v4, :cond_4

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v8}, Lcom/android/systemui/recents/views/TaskStackView;->reset()V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v8, v10}, Lcom/android/systemui/recents/views/TaskStackView;->setStack(Lcom/android/systemui/recents/model/TaskStack;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsView;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_3
    if-ge v2, v3, :cond_6

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/recents/model/TaskStack;

    new-instance v6, Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v6, v10, v5}, Lcom/android/systemui/recents/views/TaskStackView;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/model/TaskStack;)V

    invoke-virtual {v6, p0}, Lcom/android/systemui/recents/views/TaskStackView;->setCallbacks(Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;)V

    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    if-nez v10, :cond_5

    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsView;->TW_TAG:Ljava/lang/String;

    const-string v11, "mConfig is null. Reinitializing mConfig value"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsView;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/systemui/recents/RecentsConfiguration;->reinitialize(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;)Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    :cond_5
    invoke-virtual {p0, v6}, Lcom/android/systemui/recents/views/RecentsView;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v10, v10, Lcom/android/systemui/recents/RecentsConfiguration;->debugModeEnabled:Z

    if-eqz v10, :cond_8

    add-int/lit8 v2, v1, -0x1

    :goto_4
    if-ltz v2, :cond_8

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eq v9, v10, :cond_7

    move-object v6, v9

    check-cast v6, Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsView;->mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

    invoke-virtual {v6, v10}, Lcom/android/systemui/recents/views/TaskStackView;->setDebugOverlay(Lcom/android/systemui/recents/views/DebugOverlayView;)V

    :cond_7
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->requestLayout()V

    return-void
.end method

.method public startCloseAllRecentsAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewCloseAllContext;)V
    .locals 5

    iget-object v4, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewCloseAllContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eq v0, v4, :cond_0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/recents/views/TaskStackView;

    sub-int v4, v1, v2

    mul-int/lit8 v4, v4, 0x21

    iput v4, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewCloseAllContext;->startOffset:I

    invoke-virtual {v3, p1}, Lcom/android/systemui/recents/views/TaskStackView;->startCloseAllAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewCloseAllContext;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewCloseAllContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrement()V

    return-void
.end method

.method public startEnterRecentsAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;)V
    .locals 5

    iget-object v4, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eq v0, v4, :cond_0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3, p1}, Lcom/android/systemui/recents/views/TaskStackView;->startEnterRecentsAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrement()V

    return-void
.end method

.method public startExitToHomeAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;)V
    .locals 5

    iget-object v4, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eq v0, v4, :cond_0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3, p1}, Lcom/android/systemui/recents/views/TaskStackView;->startExitToHomeAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrement()V

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    invoke-interface {v4}, Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;->onExitToHomeAnimationTriggered()V

    return-void
.end method

.method public unfilterFilteredStacks()Z
    .locals 5

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mStacks:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/TaskStack;->hasFilteredTasks()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/TaskStack;->unfilterTasks()V

    const/4 v3, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :cond_2
    return v3
.end method

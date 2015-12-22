.class public Lcom/android/server/am/MultiWindowFacadeService;
.super Lcom/android/server/SystemService;
.source "MultiWindowFacadeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MultiWindowFacadeService$1;,
        Lcom/android/server/am/MultiWindowFacadeService$BinderService;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final LOGGING_REASON_DOCKING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MultiWindowFacade"

.field private static sSelf:Lcom/android/server/am/MultiWindowFacadeService;


# instance fields
.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mContext:Landroid/content/Context;

.field private mLock:Ljava/lang/Object;

.field private mMWOffRequesters:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMWOffRequestersLog:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mVibrator:Landroid/os/SystemVibrator;

.field private mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/MultiWindowFacadeService;->sSelf:Lcom/android/server/am/MultiWindowFacadeService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mLock:Ljava/lang/Object;

    iput-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iput-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mMWOffRequesters:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mMWOffRequestersLog:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mContext:Landroid/content/Context;

    sput-object p0, Lcom/android/server/am/MultiWindowFacadeService;->sSelf:Lcom/android/server/am/MultiWindowFacadeService;

    const-string/jumbo v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SystemVibrator;

    iput-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mVibrator:Landroid/os/SystemVibrator;

    return-void
.end method

.method private getTopTaskIdByZone(I)I
    .locals 6

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v3, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    move-result-object v3

    iget v3, v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    invoke-virtual {v0, p1, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    iget v2, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    :cond_0
    const-string v3, "MultiWindowFacade"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getTopTaskIdByZone zone="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->zoneToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " taskId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static self()Lcom/android/server/am/MultiWindowFacadeService;
    .locals 1

    sget-object v0, Lcom/android/server/am/MultiWindowFacadeService;->sSelf:Lcom/android/server/am/MultiWindowFacadeService;

    return-object v0
.end method


# virtual methods
.method public addTab(Landroid/os/IBinder;)V
    .locals 13

    const/4 v8, -0x1

    iget-object v11, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    if-nez v6, :cond_0

    monitor-exit v11

    :goto_0
    return-void

    :cond_0
    iget-object v10, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v10, v10, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v10}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v8

    const/4 v10, -0x1

    if-eq v8, v10, :cond_3

    iget-object v10, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v10, v8}, Lcom/android/server/am/MultiWindowPolicy;->setTabFrontStack(I)V

    iget-object v10, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v10}, Lcom/android/server/am/MultiWindowPolicy;->getTabs()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->clear()V

    iget-object v10, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    iget-object v12, v6, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v10, v8, v12}, Lcom/android/server/am/MultiWindowPolicy;->addTab(ILandroid/content/ComponentName;)V

    iget-object v10, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v10, v8, p1}, Lcom/android/server/wm/WindowManagerService;->getStackOriginalBound(ILandroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v10, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v10}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    :goto_1
    if-ltz v2, :cond_3

    iget-object v10, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v10, v2}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->topMultiPhoneWindowActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-virtual {v6, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    iget-object v10, v9, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v12, 0x4

    invoke-virtual {v10, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v10

    if-nez v10, :cond_2

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/android/server/am/ActivityRecord;->visible:Z

    new-instance v3, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    iget-object v10, v9, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v3, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v8

    invoke-virtual {v7, v1}, Lcom/android/server/am/ActivityStack;->setStackBoundForAllTaskInStackLocked(Landroid/graphics/Rect;)V

    const/high16 v10, 0x800000

    const/4 v12, 0x1

    invoke-virtual {v3, v10, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    invoke-virtual {v3, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setBounds(Landroid/graphics/Rect;)V

    iget-object v10, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v10, v7, v3}, Lcom/android/server/am/MultiWindowPolicy;->setMultiWindowStyleToStack(Lcom/android/server/am/ActivityStack;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    iget-object v10, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    iget-object v12, v9, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v10, v8, v12}, Lcom/android/server/am/MultiWindowPolicy;->addTab(ILandroid/content/ComponentName;)V

    iget-object v10, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v10, v8, v1}, Lcom/android/server/wm/WindowManagerService;->setStackBound(ILandroid/graphics/Rect;)V

    goto :goto_2

    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    :cond_3
    :try_start_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public appMinimizingStarted(Landroid/os/IBinder;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->appMinimizingStarted(Landroid/os/IBinder;)V

    return-void
.end method

.method public changeTaskToCascade(Landroid/graphics/Point;IZ)Z
    .locals 4

    iget-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v1}, Lcom/android/server/am/MultiWindowPolicy;->isEnableMakePenWindow()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/am/ActivityStackSupervisor;->changeTypeOfTaskToCascade(Landroid/graphics/Point;IZ)Z

    move-result v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0
.end method

.method public changeTaskToFull(I)V
    .locals 3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStackSupervisor;->changeTypeOfTaskToNormal(I)V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public closeMultiWindowPanel()Z
    .locals 12

    const/4 v10, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    iget-object v8, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v8, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isSplitStack()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v2, v10, v6}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v8, v4, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v9, 0x4000000

    invoke-virtual {v8, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v8

    if-eqz v8, :cond_1

    move v1, v6

    :goto_0
    if-eqz v1, :cond_0

    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v5, :cond_0

    iget-object v8, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v8, v9, v7, v10, v6}, Lcom/android/server/am/ActivityManagerService;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;Z)Z

    iget-object v8, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-object v10, v4, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const v11, 0x10a0042

    invoke-virtual {v8, v9, v10, v11, v7}, Lcom/android/server/am/ActivityManagerService;->overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;II)V

    :goto_1
    return v6

    :cond_1
    move v1, v7

    goto :goto_0

    :cond_2
    move v6, v7

    goto :goto_1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    iget-object v5, p0, Lcom/android/server/am/MultiWindowFacadeService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.DUMP"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Permission Denial: can\'t dump MultiWindowFacade from from pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v6, p0, Lcom/android/server/am/MultiWindowFacadeService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    const-string v5, ""

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "----------------------------------------------------------------------"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "MULTIWINDOW SERVICE (dumpsys multiwindow facade service)"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v5, "mCenterBarPoint="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/server/am/MultiWindowFacadeService;->getCenterBarPoint(I)Landroid/graphics/Point;

    move-result-object v5

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(I)V

    :goto_1
    const-string v5, "----------------------------------------------------------------------"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v5, "mTabFrontStack="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v5}, Lcom/android/server/am/MultiWindowPolicy;->getTabFrontStack()I

    move-result v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v5, "mTabMap :"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v5}, Lcom/android/server/am/MultiWindowPolicy;->getTabs()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/multiwindow/MultiWindowTab;

    const-string v5, "   "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "stackid = "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowTab;->getStackId()I

    move-result v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, " ,component = "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowTab;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_2

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_1
    :try_start_1
    const-string/jumbo v5, "null"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v5, "----------------------------------------------------------------------"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v5, "mTaskController :"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v5}, Lcom/android/server/am/MultiWindowPolicy;->getTaskController()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    const-string v5, "   "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    const-string v5, "----------------------------------------------------------------------"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public dumpMultiWindowSetting(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 10

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v8, "MultiWindow setting"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "current"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object v8, p0, Lcom/android/server/am/MultiWindowFacadeService;->mMWOffRequesters:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    add-int/lit8 v0, v8, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v8, p0, Lcom/android/server/am/MultiWindowFacadeService;->mMWOffRequesters:Landroid/util/SparseArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    iget-object v8, p0, Lcom/android/server/am/MultiWindowFacadeService;->mMWOffRequesters:Landroid/util/SparseArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "u"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " block requester : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_1

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "history"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object v8, p0, Lcom/android/server/am/MultiWindowFacadeService;->mMWOffRequestersLog:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    add-int/lit8 v0, v8, -0x1

    :goto_2
    if-ltz v0, :cond_4

    iget-object v8, p0, Lcom/android/server/am/MultiWindowFacadeService;->mMWOffRequestersLog:Landroid/util/SparseArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    iget-object v8, p0, Lcom/android/server/am/MultiWindowFacadeService;->mMWOffRequestersLog:Landroid/util/SparseArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "u"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " history["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    move v2, v3

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public exchangeTopTaskToZone(II)Z
    .locals 8

    const/4 v2, 0x1

    const/4 v7, -0x1

    iget-object v3, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->getTopTaskIdByZone(I)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/android/server/am/MultiWindowFacadeService;->getTopTaskIdByZone(I)I

    move-result v1

    const-string v4, "MultiWindowFacade"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exchangeTopTaskToZone zone1="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->zoneToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " task1="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " zone2="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->zoneToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " task2="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v0, v7, :cond_0

    if-eq v1, v7, :cond_0

    iget-object v4, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v1, v5}, Lcom/android/server/am/ActivityManagerService;->exchangeTaskToStack(IIZ)V

    monitor-exit v3

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public exitByCloseBtn(I)V
    .locals 4

    iget-object v3, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityManagerService;->exitByCloseBtn(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method public finishAllTasks(Landroid/os/IBinder;I)V
    .locals 9

    iget-object v8, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v7, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v7, v7, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v7, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v7, v6}, Lcom/android/server/am/ActivityStack;->finishActivityAffinityLocked(Lcom/android/server/am/ActivityRecord;)Z

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    :cond_1
    :try_start_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public getArrangeState()I
    .locals 15

    iget-object v12, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v12

    const/4 v7, 0x0

    :try_start_0
    iget-object v11, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v14, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v14}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Lcom/android/server/am/ActivityStackSupervisor;->getStackOrder(ZLcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;)Ljava/util/ArrayList;

    move-result-object v9

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    iget-object v11, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v11, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v13, v11}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-boolean v11, v2, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v11, :cond_0

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v11, 0x1

    if-le v8, v11, :cond_2

    packed-switch v8, :pswitch_data_0

    :cond_2
    :goto_1
    monitor-exit v12

    return v7

    :pswitch_0
    const/4 v7, 0x1

    goto :goto_1

    :pswitch_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget-object v11, v1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_4

    const/4 v11, 0x2

    if-ne v10, v11, :cond_5

    :cond_4
    const/4 v7, 0x2

    goto :goto_1

    :cond_5
    const/4 v11, 0x4

    if-eq v10, v11, :cond_6

    const/16 v11, 0x8

    if-ne v10, v11, :cond_3

    :cond_6
    const/4 v7, 0x4

    goto :goto_1

    :pswitch_2
    const/16 v7, 0x8

    goto :goto_1

    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getAvailableMultiInstanceCnt()I
    .locals 2

    iget-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowPolicy;->getAvailableMultiInstanceCnt()I

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCenterBarPoint(I)Landroid/graphics/Point;
    .locals 2

    iget-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowPolicy;->getCenterBarPoint(I)Landroid/graphics/Point;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCurrentOrientation()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getForcedAppOrientation()I

    move-result v0

    return v0
.end method

.method public getDragAndDropModeOfStack(Landroid/os/IBinder;)Z
    .locals 6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    :try_start_0
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-boolean v0, v4, Lcom/android/server/am/ActivityStack;->mDragAndDropMode:Z

    :cond_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public getEnabledFeaturesFlags()J
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->getEnabledFeaturesFlags(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getExpectedOrientation()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getExpectedOrientation()I

    move-result v0

    return v0
.end method

.method public getFocusedStackLayer()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getFocusedStackLayer()I

    move-result v0

    return v0
.end method

.method public getFocusedZone()I
    .locals 3

    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getNonFloatingFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getFrontActivityMultiWindowStyle(I)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/MultiWindowFacadeService;->getFrontActivityMultiWindowStyle(II)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    return-object v0
.end method

.method public getFrontActivityMultiWindowStyle(II)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .locals 4

    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v1, p2}, Lcom/android/server/am/ActivityStackSupervisor;->topResumedActivityExceptFloatingLocked(ZI)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    monitor-exit v2

    :goto_1
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getGlobalSystemUiVisibility()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getGlobalSystemUiVisibility()I

    move-result v0

    return v0
.end method

.method public getMultiWindowStyle(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .locals 3

    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_0
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    monitor-exit v2

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStack;->getMultiWindowStyle(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRecentTaskSize(II)I
    .locals 5

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    iget-object v3, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/am/ActivityManagerService;->getRecentTaskSizeLocked(II)I

    move-result v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v4

    return v2

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getRunningPenWindowCnt()I
    .locals 2

    iget-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowPolicy;->getRunningPenWindowCnt()I

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRunningScaleWindows()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    iget-object v6, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    const/4 v7, 0x1

    invoke-virtual {v2, v5, v7}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_1
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1
.end method

.method public getRunningTasks(II)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/am/ActivityManagerService;->getTasks(II)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSplitMaxWeight()F
    .locals 1

    const v0, 0x3f4ccccd    # 0.8f

    return v0
.end method

.method public getSplitMinWeight()F
    .locals 1

    const v0, 0x3e4ccccd    # 0.2f

    return v0
.end method

.method public getStackBound(Landroid/os/IBinder;)Landroid/graphics/Rect;
    .locals 5

    const/4 v2, 0x0

    const/4 v1, -0x1

    iget-object v3, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_0
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_1

    monitor-exit v3

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowManagerService;->getStackBound(I)Landroid/graphics/Rect;

    move-result-object v2

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getStackId(Landroid/os/IBinder;)I
    .locals 4

    const/4 v1, -0x1

    iget-object v3, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_0
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v2, -0x1

    monitor-exit v3

    :goto_0
    return v2

    :cond_0
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v1

    monitor-exit v3

    move v2, v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;
    .locals 5

    const/4 v2, 0x0

    const/4 v1, -0x1

    iget-object v3, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_0
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_1

    monitor-exit v3

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v1, p1}, Lcom/android/server/wm/WindowManagerService;->getStackOriginalBound(ILandroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v2

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getStackPosition(Landroid/os/IBinder;)Landroid/graphics/Point;
    .locals 5

    const/4 v2, 0x0

    const/4 v1, -0x1

    iget-object v3, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_0
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_1

    monitor-exit v3

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v1, p1}, Lcom/android/server/wm/WindowManagerService;->getStackPosition(ILandroid/os/IBinder;)Landroid/graphics/Point;

    move-result-object v2

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getSystemDisplayInfo()Landroid/view/DisplayInfo;
    .locals 4

    const/4 v1, 0x0

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(ILandroid/os/IBinder;)Landroid/view/DisplayInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/view/DisplayInfo;

    invoke-direct {v1, v0}, Landroid/view/DisplayInfo;-><init>(Landroid/view/DisplayInfo;)V

    :cond_0
    return-object v1
.end method

.method public getTabs()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/multiwindow/MultiWindowTab;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowPolicy;->getTabs()Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getZoneBounds(I)Landroid/graphics/Rect;
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v1, v0, p1}, Lcom/android/server/am/MultiWindowPolicy;->getBounds(Landroid/graphics/Rect;I)V

    const-string v1, "MultiWindowFacade"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getZoneBounds zone="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->zoneToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bounds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public initMultiWindowApplicationInfo()V
    .locals 2

    iget-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowPolicy;->initMultiWindowApplicationInfo()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isEnableMakePenWindow()Z
    .locals 2

    iget-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowPolicy;->isEnableMakePenWindow()Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isEnableMakePenWindow(I)Z
    .locals 2

    iget-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowPolicy;->isEnableMakePenWindow(I)Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public minimizeAll()V
    .locals 3

    iget-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/am/MultiWindowPolicy;->minimizeAll(Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public minimizeWindow(Landroid/os/IBinder;)V
    .locals 8

    iget-object v5, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    :try_start_0
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    :goto_0
    if-ltz v2, :cond_1

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v4, :cond_0

    iget-boolean v4, v1, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v6, 0x2

    const/4 v7, 0x1

    invoke-virtual {v4, v1, v6, v7}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    monitor-exit v5

    return-void

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public moveOnlySpecificTaskToFront(ILandroid/os/Bundle;ILcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .locals 14

    iget-object v13, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v11

    if-nez v11, :cond_0

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, v11}, Lcom/android/server/am/ActivityStackSupervisor;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->showLockTaskToast()V

    const-string v2, "MultiWindowFacade"

    const-string/jumbo v3, "moveOnlySpecificTaskToFront : Attempt to violate Lock Task Mode"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v13

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_1
    :try_start_3
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v3, 0x0

    iget-object v5, v11, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->getDisplayId()I

    move-result v5

    invoke-virtual {v2, v3, v5}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Lcom/android/server/am/ActivityRecord;->isRecentsActivity()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    invoke-virtual {v11, v2}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    :cond_2
    if-eqz p4, :cond_9

    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v12

    if-eqz v12, :cond_8

    and-int/lit8 v2, p3, 0x2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    :cond_3
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    iget-object v2, v12, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v2}, Lcom/android/server/am/MultiWindowPolicy;->isEnableMakePenWindow()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v2

    if-nez v2, :cond_4

    :try_start_4
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :cond_4
    :try_start_5
    new-instance v4, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    iget-object v2, v12, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v4, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v2

    invoke-virtual {v4, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v2

    invoke-virtual {v4, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    const/16 v2, 0x800

    const/16 v3, 0x800

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v3

    invoke-virtual {v4, v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    const/high16 v2, 0x2000000

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_5

    const/high16 v2, 0x2000000

    const/4 v3, 0x1

    invoke-virtual {v4, v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->createMultiWindowFreezeSurface()V

    :cond_5
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/MultiWindowPolicy;->adjustStackBound(Landroid/graphics/Rect;)V

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setBounds(Landroid/graphics/Rect;)V

    :cond_6
    const/4 v2, 0x0

    iput-boolean v2, v11, Lcom/android/server/am/TaskRecord;->bHidden:Z

    iget-object v2, v12, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v3, v12, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;ZZLandroid/os/Bundle;)V

    and-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    :cond_7
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-string v3, "FIXME"

    invoke-virtual {v2, v12, v3}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_1
    :try_start_6
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-static/range {p2 .. p2}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    monitor-exit v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    :cond_8
    :try_start_7
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/am/MultiWindowFacadeService;->startActivityFromRecentMultiWindow(ILandroid/os/Bundle;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    :try_start_8
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_9
    :try_start_9
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const-string v3, "FIXME"

    move/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v2, v11, v0, v1, v3}, Lcom/android/server/am/ActivityStackSupervisor;->findTaskToMoveToFrontLocked(Lcom/android/server/am/TaskRecord;ILandroid/os/Bundle;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_1
.end method

.method public needHideTrayBar()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->needHideTrayBar()Z

    move-result v0

    return v0
.end method

.method public needMoveOnlySpecificTaskToFront(I)Z
    .locals 4

    iget-object v3, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStackSupervisor;->needMoveOnlySpecificTaskToFront(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v3

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method public needToExposureTitleBarMenu()Z
    .locals 2

    sget-boolean v0, Lcom/android/server/am/MultiWindowPolicy;->sExposuerTitleBarMenu:Z

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/am/MultiWindowPolicy;->sExposuerTitleBarMenu:Z

    return v0
.end method

.method public onStart()V
    .locals 3

    const-string/jumbo v0, "multiwindow_facade"

    new-instance v1, Lcom/android/server/am/MultiWindowFacadeService$BinderService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/MultiWindowFacadeService$BinderService;-><init>(Lcom/android/server/am/MultiWindowFacadeService;Lcom/android/server/am/MultiWindowFacadeService$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/MultiWindowFacadeService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public registerTaskController(Lcom/samsung/android/multiwindow/ITaskController;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowPolicy;->registerTaskController(Lcom/samsung/android/multiwindow/ITaskController;)V

    return-void
.end method

.method public registerTaskControllerWithType(Lcom/samsung/android/multiwindow/ITaskController;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/MultiWindowPolicy;->registerTaskControllerWithType(Lcom/samsung/android/multiwindow/ITaskController;I)V

    return-void
.end method

.method public removeAllTasks(Landroid/os/IBinder;I)V
    .locals 9

    iget-object v7, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v6, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    iget-object v6, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget v8, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v6, v8, p2}, Lcom/android/server/am/ActivityManagerService;->removeTask(II)Z

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    :cond_0
    :try_start_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public removeTab(I)Z
    .locals 4

    iget-object v3, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v2, p1}, Lcom/android/server/am/MultiWindowPolicy;->removeTab(I)V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v2, 0x1

    monitor-exit v3

    return v2

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public removeUser(I)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mMWOffRequesters:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mMWOffRequestersLog:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAcitivityManager(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-void
.end method

.method public setAppVisibility(Landroid/os/IBinder;Z)V
    .locals 4

    iget-object v3, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/am/MultiWindowPolicy;->setAppVisibility(Landroid/os/IBinder;Z)V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setCenterBarPoint(ILandroid/graphics/Point;)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/MultiWindowPolicy;->setCenterBarPoint(ILandroid/graphics/Point;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDragAndDropModeOfStack(Landroid/os/IBinder;Z)V
    .locals 5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    iget-object v4, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_0
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iput-boolean p2, v3, Lcom/android/server/am/ActivityStack;->mDragAndDropMode:Z

    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public setFocusAppByZone(I)V
    .locals 9

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    iget-object v6, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->isNormalAppStack()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v5, v7, :cond_0

    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v5

    if-ne v5, p1, :cond_0

    iget-object v5, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v7, v7, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v7, v7, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v8, 0x1

    invoke-virtual {v5, v7, v8}, Lcom/android/server/am/ActivityManagerService;->setFocusedStack(IZ)V

    :cond_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method public setFocusedStack(IZ)V
    .locals 5

    iget-object v4, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    iget-object v3, p0, Lcom/android/server/am/MultiWindowFacadeService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportTabPenWindow(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v3, p1}, Lcom/android/server/am/MultiWindowPolicy;->setTabFrontStack(I)V

    :cond_0
    iget-object v3, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/am/ActivityManagerService;->setFocusedStack(IZ)V

    iget-object v3, p0, Lcom/android/server/am/MultiWindowFacadeService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportTabPenWindow(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .locals 9

    const/4 v8, 0x2

    :try_start_0
    iget-object v6, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v5, :cond_4

    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v5, :cond_4

    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    iget-object v5, p0, Lcom/android/server/am/MultiWindowFacadeService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportFreeStyle(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v5

    if-ne v5, v8, :cond_0

    monitor-exit v6

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v5

    if-nez v5, :cond_3

    const/4 v1, 0x0

    invoke-virtual {p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v5

    const/16 v7, 0xf

    if-ne v5, v7, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    if-nez v1, :cond_3

    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    :cond_3
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v7, 0x1

    invoke-virtual {v5, p1, p2, v7}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;Z)V

    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v2

    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v5, v7, :cond_4

    if-ne v3, v8, :cond_4

    if-nez v2, :cond_4

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/server/am/ActivityRecord;->mNeedToIdle:Z

    :cond_4
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v5, "MultiWindowFacade"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setMultiWindowStyle is failed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setMultiWindowStyleWithLogging(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V
    .locals 11

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/MultiWindowFacadeService;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    packed-switch p3, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v9, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v9

    :try_start_0
    iget-object v8, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v8, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v8, 0x3

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    move-result-object v10

    iget v10, v10, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    invoke-virtual {v0, v8, v10}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v6

    const/16 v8, 0xc

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    move-result-object v10

    iget v10, v10, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    invoke-virtual {v0, v8, v10}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v7

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    iget-object v4, v8, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    :cond_1
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    iget-object v5, v8, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    :cond_2
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " | "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x2

    new-array v2, v8, [Ljava/lang/String;

    const/4 v8, 0x2

    new-array v1, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "POPW"

    aput-object v9, v2, v8

    const/4 v8, 0x0

    const-string v9, "CHANGE-SPLIT"

    aput-object v9, v1, v8

    const/4 v8, 0x1

    const-string v9, "SPLW"

    aput-object v9, v2, v8

    const/4 v8, 0x1

    aput-object v3, v1, v8

    iget-object v8, p0, Lcom/android/server/am/MultiWindowFacadeService;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    invoke-static {v8, v2, v1, v9}, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper;->insertMultipleStatusLog(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;[J)V

    goto :goto_0

    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setMultiWindowTrayOpenState(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->setMultiWindowTrayOpenState(Z)V

    return-void
.end method

.method public setStackBound(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    .locals 6

    const/4 v5, -0x1

    const/4 v1, -0x1

    iget-object v3, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_0
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_1

    monitor-exit v3

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v1

    if-eq v1, v5, :cond_3

    if-eqz p2, :cond_3

    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowManagerService;->getStackBound(I)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2, p2}, Lcom/android/server/am/ActivityStack;->setStackBoundForAllTaskInStackLocked(Landroid/graphics/Rect;)V

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v4, 0x800000

    invoke-virtual {v2, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v2, p2, v0}, Lcom/android/server/am/MultiWindowPolicy;->setStackBoundTab(Landroid/graphics/Rect;Lcom/android/server/am/ActivityRecord;)V

    :cond_2
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v1, v5, :cond_0

    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v1, p2}, Lcom/android/server/wm/WindowManagerService;->setStackBound(ILandroid/graphics/Rect;)V

    goto :goto_0

    :cond_3
    const/4 v1, -0x1

    goto :goto_1

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public setStackBoundByStackId(ILandroid/graphics/Rect;)V
    .locals 3

    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p2}, Lcom/android/server/am/ActivityStack;->setStackBoundForAllTaskInStackLocked(Landroid/graphics/Rect;)V

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/WindowManagerService;->setStackBound(ILandroid/graphics/Rect;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method

.method public shouldFakeOrientation(ILcom/samsung/android/multiwindow/MultiWindowStyle;)Z
    .locals 5

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/am/MultiWindowFacadeService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportSelective1Orientation(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    move v1, v3

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v4, :cond_2

    if-nez p2, :cond_3

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getCurOrientation()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->isCascadeRunning()Z

    move-result v0

    invoke-virtual {p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    :cond_4
    const/4 v3, 0x0

    invoke-virtual {p2, p1, v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->shouldFakeOrientation(IILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_0
.end method

.method public startActivityFromRecentMultiWindow(ILandroid/os/Bundle;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/ActivityManagerService;->startActivityFromRecents(ILandroid/os/Bundle;Lcom/samsung/android/multiwindow/MultiWindowStyle;)I

    return-void
.end method

.method public unregisterTaskController(Lcom/samsung/android/multiwindow/ITaskController;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowPolicy;->unregisterTaskController(Lcom/samsung/android/multiwindow/ITaskController;)V

    return-void
.end method

.method public updateIsolatedCenterPoint(Landroid/graphics/Point;)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1}, Lcom/android/server/am/MultiWindowPolicy;->setIsolatedPoint(ILandroid/graphics/Point;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateMinimizeSize(Landroid/os/IBinder;[I)V
    .locals 4

    const/4 v1, -0x1

    iget-object v3, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_0
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_1

    monitor-exit v3

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v1, p1, p2}, Lcom/android/server/wm/WindowManagerService;->updateMinimizeSize(ILandroid/os/IBinder;[I)V

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public updateMultiWindowSetting(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 12

    iget-object v8, p0, Lcom/android/server/am/MultiWindowFacadeService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/am/MultiWindowFacadeService;->mMWOffRequesters:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/server/am/MultiWindowFacadeService;->mMWOffRequestersLog:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lcom/android/server/am/MultiWindowFacadeService;->mMWOffRequesters:Landroid/util/SparseArray;

    invoke-virtual {v7, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    if-nez v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lcom/android/server/am/MultiWindowFacadeService;->mMWOffRequestersLog:Landroid/util/SparseArray;

    invoke-virtual {v7, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " reason : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/16 v9, 0x64

    if-le v7, v9, :cond_2

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2
    iget-object v7, p0, Lcom/android/server/am/MultiWindowFacadeService;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportSimplificationUI(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_4

    if-eqz p3, :cond_3

    iget-object v7, p0, Lcom/android/server/am/MultiWindowFacadeService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v9, "multi_window_enabled"

    const/4 v10, 0x1

    const/4 v11, -0x2

    invoke-static {v7, v9, v10, v11}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v8

    :goto_1
    return-void

    :cond_3
    iget-object v7, p0, Lcom/android/server/am/MultiWindowFacadeService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v9, "multi_window_enabled"

    const/4 v10, 0x0

    const/4 v11, -0x2

    invoke-static {v7, v9, v10, v11}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    :cond_4
    if-eqz p3, :cond_6

    :try_start_1
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/android/server/am/MultiWindowFacadeService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v9, "multi_window_enabled"

    const/4 v10, 0x1

    const/4 v11, -0x2

    invoke-static {v7, v9, v10, v11}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string v7, "MultiWindowFacade"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "turn on MW, Requester : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_5
    :goto_2
    :try_start_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v7, "MultiWindowFacade"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateMultiWindowSetting prev requester : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :cond_6
    :try_start_3
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/android/server/am/MultiWindowFacadeService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v9, "multi_window_enabled"

    const/4 v10, 0x0

    const/4 v11, -0x2

    invoke-static {v7, v9, v10, v11}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v7, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v7}, Lcom/android/server/am/MultiWindowPolicy;->closePenWindow()V

    const-string v7, "MultiWindowFacade"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "turn off MW, Requester : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v7

    :try_start_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v9, "MultiWindowFacade"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateMultiWindowSetting prev requester : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_7
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v8

    goto/16 :goto_1

    :cond_8
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public updateSettingThroughSystemProcess(Ljava/lang/String;I)V
    .locals 5

    const-string v2, "do_not_show_help_popup_drag_and_drop"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateSettingThroughSystemProcess is not for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, -0x3

    invoke-static {v2, p1, p2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public vibrateImmVibeFromWindow([BI)V
    .locals 3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v2, p1, p2}, Landroid/os/SystemVibrator;->vibrateImmVibe([BI)V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

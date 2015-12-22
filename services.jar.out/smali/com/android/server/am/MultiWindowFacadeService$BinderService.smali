.class final Lcom/android/server/am/MultiWindowFacadeService$BinderService;
.super Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;
.source "MultiWindowFacadeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MultiWindowFacadeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MultiWindowFacadeService;


# direct methods
.method private constructor <init>(Lcom/android/server/am/MultiWindowFacadeService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/MultiWindowFacadeService;Lcom/android/server/am/MultiWindowFacadeService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/MultiWindowFacadeService$BinderService;-><init>(Lcom/android/server/am/MultiWindowFacadeService;)V

    return-void
.end method


# virtual methods
.method public addTab(Landroid/os/IBinder;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->addTab(Landroid/os/IBinder;)V

    return-void
.end method

.method public appMinimizingStarted(Landroid/os/IBinder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->appMinimizingStarted(Landroid/os/IBinder;)V

    return-void
.end method

.method public changeTaskToCascade(Landroid/graphics/Point;IZ)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/MultiWindowFacadeService;->changeTaskToCascade(Landroid/graphics/Point;IZ)Z

    move-result v0

    return v0
.end method

.method public changeTaskToFull(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->changeTaskToFull(I)V

    return-void
.end method

.method public closeMultiWindowPanel()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowFacadeService;->closeMultiWindowPanel()Z

    move-result v0

    return v0
.end method

.method public exchangeTopTaskToZone(II)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/MultiWindowFacadeService;->exchangeTopTaskToZone(II)Z

    move-result v0

    return v0
.end method

.method public exitByCloseBtn(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->exitByCloseBtn(I)V

    return-void
.end method

.method public finishAllTasks(Landroid/os/IBinder;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/MultiWindowFacadeService;->finishAllTasks(Landroid/os/IBinder;I)V

    return-void
.end method

.method public getArrangeState()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowFacadeService;->getArrangeState()I

    move-result v0

    return v0
.end method

.method public getAvailableMultiInstanceCnt()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowFacadeService;->getAvailableMultiInstanceCnt()I

    move-result v0

    return v0
.end method

.method public getCenterBarPoint(I)Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->getCenterBarPoint(I)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentOrientation()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowFacadeService;->getCurrentOrientation()I

    move-result v0

    return v0
.end method

.method public getDragAndDropModeOfStack(Landroid/os/IBinder;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->getDragAndDropModeOfStack(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method public getEnabledFeaturesFlags()J
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowFacadeService;->getEnabledFeaturesFlags()J

    move-result-wide v0

    return-wide v0
.end method

.method public getExpectedOrientation()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowFacadeService;->getExpectedOrientation()I

    move-result v0

    return v0
.end method

.method public getFocusedStackLayer()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowFacadeService;->getFocusedStackLayer()I

    move-result v0

    return v0
.end method

.method public getFocusedZone()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowFacadeService;->getFocusedZone()I

    move-result v0

    return v0
.end method

.method public getFrontActivityMultiWindowStyle(I)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->getFrontActivityMultiWindowStyle(I)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    return-object v0
.end method

.method public getGlobalSystemUiVisibility()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowFacadeService;->getGlobalSystemUiVisibility()I

    move-result v0

    return v0
.end method

.method public getMultiWindowStyle(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->getMultiWindowStyle(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    return-object v0
.end method

.method public getRecentTaskSize(II)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/MultiWindowFacadeService;->getRecentTaskSize(II)I

    move-result v0

    return v0
.end method

.method public getRunningPenWindowCnt()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowFacadeService;->getRunningPenWindowCnt()I

    move-result v0

    return v0
.end method

.method public getRunningScaleWindows()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowFacadeService;->getRunningScaleWindows()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRunningTasks(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/MultiWindowFacadeService;->getRunningTasks(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSplitMaxWeight()F
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowFacadeService;->getSplitMaxWeight()F

    move-result v0

    return v0
.end method

.method public getSplitMinWeight()F
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowFacadeService;->getSplitMinWeight()F

    move-result v0

    return v0
.end method

.method public getStackBound(Landroid/os/IBinder;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->getStackBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getStackId(Landroid/os/IBinder;)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->getStackId(Landroid/os/IBinder;)I

    move-result v0

    return v0
.end method

.method public getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getStackPosition(Landroid/os/IBinder;)Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->getStackPosition(Landroid/os/IBinder;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public getSystemDisplayInfo()Landroid/view/DisplayInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowFacadeService;->getSystemDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    return-object v0
.end method

.method public getTabs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/multiwindow/MultiWindowTab;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowFacadeService;->getTabs()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getZoneBounds(I)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->getZoneBounds(I)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public isEnableMakePenWindow(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->isEnableMakePenWindow(I)Z

    move-result v0

    return v0
.end method

.method public minimizeWindow(Landroid/os/IBinder;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->minimizeWindow(Landroid/os/IBinder;)V

    return-void
.end method

.method public moveOnlySpecificTaskToFront(ILandroid/os/Bundle;ILcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/am/MultiWindowFacadeService;->moveOnlySpecificTaskToFront(ILandroid/os/Bundle;ILcom/samsung/android/multiwindow/MultiWindowStyle;)V

    return-void
.end method

.method public needHideTrayBar()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowFacadeService;->needHideTrayBar()Z

    move-result v0

    return v0
.end method

.method public needMoveOnlySpecificTaskToFront(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->needMoveOnlySpecificTaskToFront(I)Z

    move-result v0

    return v0
.end method

.method public needToExposureTitleBarMenu()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowFacadeService;->needToExposureTitleBarMenu()Z

    move-result v0

    return v0
.end method

.method public registerTaskController(Lcom/samsung/android/multiwindow/ITaskController;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->registerTaskController(Lcom/samsung/android/multiwindow/ITaskController;)V

    return-void
.end method

.method public registerTaskControllerWithType(Lcom/samsung/android/multiwindow/ITaskController;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/MultiWindowFacadeService;->registerTaskControllerWithType(Lcom/samsung/android/multiwindow/ITaskController;I)V

    return-void
.end method

.method public removeAllTasks(Landroid/os/IBinder;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/MultiWindowFacadeService;->removeAllTasks(Landroid/os/IBinder;I)V

    return-void
.end method

.method public removeTab(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->removeTab(I)Z

    move-result v0

    return v0
.end method

.method public setAppVisibility(Landroid/os/IBinder;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/MultiWindowFacadeService;->setAppVisibility(Landroid/os/IBinder;Z)V

    return-void
.end method

.method public setCenterBarPoint(ILandroid/graphics/Point;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/MultiWindowFacadeService;->setCenterBarPoint(ILandroid/graphics/Point;)V

    return-void
.end method

.method public setDragAndDropModeOfStack(Landroid/os/IBinder;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/MultiWindowFacadeService;->setDragAndDropModeOfStack(Landroid/os/IBinder;Z)V

    return-void
.end method

.method public setFocusAppByZone(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->setFocusAppByZone(I)V

    return-void
.end method

.method public setFocusedStack(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/MultiWindowFacadeService;->setFocusedStack(IZ)V

    return-void
.end method

.method public setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/MultiWindowFacadeService;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    return-void
.end method

.method public setMultiWindowStyleWithLogging(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/MultiWindowFacadeService;->setMultiWindowStyleWithLogging(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V

    return-void
.end method

.method public setMultiWindowTrayOpenState(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->setMultiWindowTrayOpenState(Z)V

    return-void
.end method

.method public setStackBound(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/MultiWindowFacadeService;->setStackBound(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    return-void
.end method

.method public setStackBoundByStackId(ILandroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/MultiWindowFacadeService;->setStackBoundByStackId(ILandroid/graphics/Rect;)V

    return-void
.end method

.method public shouldFakeOrientation(ILcom/samsung/android/multiwindow/MultiWindowStyle;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/MultiWindowFacadeService;->shouldFakeOrientation(ILcom/samsung/android/multiwindow/MultiWindowStyle;)Z

    move-result v0

    return v0
.end method

.method public startActivityFromRecentMultiWindow(ILandroid/os/Bundle;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/MultiWindowFacadeService;->startActivityFromRecentMultiWindow(ILandroid/os/Bundle;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    return-void
.end method

.method public unregisterTaskController(Lcom/samsung/android/multiwindow/ITaskController;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->unregisterTaskController(Lcom/samsung/android/multiwindow/ITaskController;)V

    return-void
.end method

.method public updateIsolatedCenterPoint(Landroid/graphics/Point;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->updateIsolatedCenterPoint(Landroid/graphics/Point;)V

    return-void
.end method

.method public updateMinimizeSize(Landroid/os/IBinder;[I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/MultiWindowFacadeService;->updateMinimizeSize(Landroid/os/IBinder;[I)V

    return-void
.end method

.method public updateMultiWindowSetting(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/MultiWindowFacadeService;->updateMultiWindowSetting(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public updateSettingThroughSystemProcess(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/MultiWindowFacadeService;->updateSettingThroughSystemProcess(Ljava/lang/String;I)V

    return-void
.end method

.method public vibrateImmVibeFromWindow([BI)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$BinderService;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/MultiWindowFacadeService;->vibrateImmVibeFromWindow([BI)V

    return-void
.end method

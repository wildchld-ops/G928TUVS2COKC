.class final Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;
.super Ljava/lang/Object;
.source "SurfaceWidgetConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ServiceConn"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;
    }
.end annotation


# instance fields
.field private final mInfo:Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

.field private mIsBound:Z

.field private final mName:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$Name;

.field private mService:Lcom/samsung/surfacewidget/ISurfaceWidgetService;

.field private final mSurfaceInfo:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;

.field private final mWidgetViewComm:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;

.field private mbResumeLater:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$Name;Lcom/sec/android/app/launcher/views/SurfaceWidgetView;Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mIsBound:Z

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mbResumeLater:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mService:Lcom/samsung/surfacewidget/ISurfaceWidgetService;

    iput-object p1, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mName:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$Name;

    iput-object p3, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mInfo:Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    new-instance v0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;

    iget-object v1, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mName:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$Name;

    invoke-direct {v0, v1, p2, p0}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;-><init>(Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$Name;Lcom/sec/android/app/launcher/views/SurfaceWidgetView;Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mWidgetViewComm:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;

    new-instance v0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;-><init>(Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$Name;Lcom/sec/android/app/launcher/views/SurfaceWidgetView;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mSurfaceInfo:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;)Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mSurfaceInfo:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mIsBound:Z

    return v0
.end method


# virtual methods
.method public arePositionUpdatesOn()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mWidgetViewComm:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;->arePositionUpdatesOn()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized bind(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mIsBound:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p0, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mIsBound:Z

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mIsBound:Z

    if-eqz v0, :cond_0

    const-string v0, "SurfaceWidgetConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mName:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has been bound to its service"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "SurfaceWidgetConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mName:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed to bind to its service"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    const-string v0, "SurfaceWidgetConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mName:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already bound to its service"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public onDestroy(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mWidgetViewComm:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mWidgetViewComm:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;->onDestroy()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mService:Lcom/samsung/surfacewidget/ISurfaceWidgetService;

    if-eqz v0, :cond_1

    const-string v0, "SurfaceWidgetConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mName:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is being destroyed by launcher"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mService:Lcom/samsung/surfacewidget/ISurfaceWidgetService;

    iget-object v1, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mName:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$Name;

    iget v1, v1, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$Name;->inst:I

    invoke-interface {v0, v1, p1}, Lcom/samsung/surfacewidget/ISurfaceWidgetService;->onDestroy(IZ)V

    :cond_1
    return-void
.end method

.method public onKeyboardCompleted(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mService:Lcom/samsung/surfacewidget/ISurfaceWidgetService;

    if-eqz v0, :cond_0

    const-string v0, "SurfaceWidgetConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mName:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " being sent onEditViewTextChanged by launcher"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mService:Lcom/samsung/surfacewidget/ISurfaceWidgetService;

    iget-object v1, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mName:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$Name;

    iget v1, v1, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$Name;->inst:I

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/surfacewidget/ISurfaceWidgetService;->onKeyboardCompleted(IILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onLauncherTiltChanged(FFF)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mService:Lcom/samsung/surfacewidget/ISurfaceWidgetService;

    if-eqz v0, :cond_0

    const-string v0, "SurfaceWidgetConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mName:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " getting tilt changed from launcher"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mService:Lcom/samsung/surfacewidget/ISurfaceWidgetService;

    iget-object v1, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mName:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$Name;

    iget v1, v1, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$Name;->inst:I

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/samsung/surfacewidget/ISurfaceWidgetService;->onLauncherTiltChanged(IFFF)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mService:Lcom/samsung/surfacewidget/ISurfaceWidgetService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mSurfaceInfo:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;

    # getter for: Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;->mSurfaceWidgetView:Lcom/sec/android/app/launcher/views/SurfaceWidgetView;
    invoke-static {v1}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;->access$400(Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;)Lcom/sec/android/app/launcher/views/SurfaceWidgetView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->getState()Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;->PAUSED:Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;

    if-eq v1, v2, :cond_0

    const-string v1, "SurfaceWidgetConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mName:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$Name;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is being paused by launcher"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;->PAUSED:Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->setState(Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mService:Lcom/samsung/surfacewidget/ISurfaceWidgetService;

    iget-object v2, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mName:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$Name;

    iget v2, v2, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$Name;->inst:I

    invoke-interface {v1, v2}, Lcom/samsung/surfacewidget/ISurfaceWidgetService;->onPause(I)V

    :cond_0
    return-void
.end method

.method public onPositionOffsetChanged(FFF)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mService:Lcom/samsung/surfacewidget/ISurfaceWidgetService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mService:Lcom/samsung/surfacewidget/ISurfaceWidgetService;

    iget-object v1, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mName:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$Name;

    iget v1, v1, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$Name;->inst:I

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/samsung/surfacewidget/ISurfaceWidgetService;->onPositionOffsetChanged(IFFF)V

    :cond_0
    return-void
.end method

.method public onResume()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mService:Lcom/samsung/surfacewidget/ISurfaceWidgetService;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mSurfaceInfo:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;

    # getter for: Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;->mSurfaceWidgetView:Lcom/sec/android/app/launcher/views/SurfaceWidgetView;
    invoke-static {v1}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;->access$400(Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;)Lcom/sec/android/app/launcher/views/SurfaceWidgetView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->getState()Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;->RESUMED:Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;

    if-eq v1, v2, :cond_0

    const-string v1, "SurfaceWidgetConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mName:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$Name;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is being resumed by launcher"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;->RESUMED:Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->setState(Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mService:Lcom/samsung/surfacewidget/ISurfaceWidgetService;

    iget-object v2, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mName:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$Name;

    iget v2, v2, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$Name;->inst:I

    invoke-interface {v1, v2}, Lcom/samsung/surfacewidget/ISurfaceWidgetService;->onResume(I)V

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 11

    const-string v0, "SurfaceWidgetConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mName:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " connected to its service"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/samsung/surfacewidget/ISurfaceWidgetService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/surfacewidget/ISurfaceWidgetService;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mService:Lcom/samsung/surfacewidget/ISurfaceWidgetService;

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mService:Lcom/samsung/surfacewidget/ISurfaceWidgetService;

    const v1, 0x39f50

    invoke-interface {v0, v1}, Lcom/samsung/surfacewidget/ISurfaceWidgetService;->checkVersion(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mService:Lcom/samsung/surfacewidget/ISurfaceWidgetService;

    iget-object v1, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mName:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$Name;

    iget v1, v1, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$Name;->inst:I

    iget-object v2, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mInfo:Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    invoke-interface {v0, v1, v2}, Lcom/samsung/surfacewidget/ISurfaceWidgetService;->setProviderInfo(ILcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mService:Lcom/samsung/surfacewidget/ISurfaceWidgetService;

    iget-object v1, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mName:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$Name;

    iget v1, v1, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$Name;->inst:I

    iget-object v2, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mWidgetViewComm:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;

    invoke-interface {v0, v1, v2}, Lcom/samsung/surfacewidget/ISurfaceWidgetService;->setCallback(ILcom/samsung/surfacewidget/IRemoteServiceCallback;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mSurfaceInfo:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;->getLatestSurfaceState()Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;

    move-result-object v10

    if-eqz v10, :cond_3

    const-string v1, "SurfaceWidgetConnection"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mName:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$Name;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'s surface is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v10, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;->surface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "valid"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v10, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;->height:I

    if-lez v0, :cond_3

    iget v0, v10, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;->width:I

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mWidgetViewComm:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;

    # getter for: Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;->mWidgetViewRef:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;->access$300(Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;

    if-nez v9, :cond_2

    const-string v0, "SurfaceWidgetConnection"

    const-string v1, "Cannot get associated SurfaceWidgetItem - event will not be sent to widget"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string v0, "invalid"

    goto :goto_0

    :cond_2
    invoke-virtual {v9}, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->getSpanX()I

    move-result v6

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->getSpanY()I

    move-result v7

    iget-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mService:Lcom/samsung/surfacewidget/ISurfaceWidgetService;

    iget-object v1, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mName:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$Name;

    iget v1, v1, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$Name;->inst:I

    iget-object v2, v10, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;->surface:Landroid/view/Surface;

    iget v3, v10, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;->width:I

    iget v4, v10, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;->height:I

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v7}, Lcom/samsung/surfacewidget/ISurfaceWidgetService;->onSurfaceSizeChanged(ILandroid/view/Surface;IIZII)V

    const-string v0, "SurfaceWidgetConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mName:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onServiceConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v10, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v10, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-boolean v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mbResumeLater:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->registerGyro()V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->onResume()Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mbResumeLater:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v8

    iget-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mWidgetViewComm:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;

    invoke-virtual {v0, v8}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;->onSurfaceWidgetError(Ljava/lang/Exception;)V

    goto :goto_1

    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mWidgetViewComm:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;

    # getter for: Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;->mWidgetViewRef:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;->access$300(Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->onResume()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    const-string v0, "SurfaceWidgetConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mName:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has been disconnected from its service"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mService:Lcom/samsung/surfacewidget/ISurfaceWidgetService;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mIsBound:Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mWidgetViewComm:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;->onSurfaceWidgetDisconnect()V

    return-void
.end method

.method public onSurfaceDestroyed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mService:Lcom/samsung/surfacewidget/ISurfaceWidgetService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mService:Lcom/samsung/surfacewidget/ISurfaceWidgetService;

    iget-object v1, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mName:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$Name;

    iget v1, v1, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$Name;->inst:I

    invoke-interface {v0, v1}, Lcom/samsung/surfacewidget/ISurfaceWidgetService;->onSurfaceDestroyed(I)V

    :cond_0
    return-void
.end method

.method public onSurfaceSizeChanged(Landroid/view/Surface;IIZII)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mService:Lcom/samsung/surfacewidget/ISurfaceWidgetService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mService:Lcom/samsung/surfacewidget/ISurfaceWidgetService;

    iget-object v1, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mName:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$Name;

    iget v1, v1, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$Name;->inst:I

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/samsung/surfacewidget/ISurfaceWidgetService;->onSurfaceSizeChanged(ILandroid/view/Surface;IIZII)V

    :cond_0
    return-void
.end method

.method public onSurfaceWidgetDisconnect()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mWidgetViewComm:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;->onSurfaceWidgetDisconnect()V

    return-void
.end method

.method public onSurfaceWidgetError(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mWidgetViewComm:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;->onSurfaceWidgetError(Ljava/lang/Exception;)V

    return-void
.end method

.method public onVerticalTouch(Landroid/view/MotionEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mService:Lcom/samsung/surfacewidget/ISurfaceWidgetService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mService:Lcom/samsung/surfacewidget/ISurfaceWidgetService;

    iget-object v1, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mName:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$Name;

    iget v1, v1, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$Name;->inst:I

    invoke-interface {v0, v1, p1}, Lcom/samsung/surfacewidget/ISurfaceWidgetService;->onVerticalTouch(ILandroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mService:Lcom/samsung/surfacewidget/ISurfaceWidgetService;

    if-eqz v0, :cond_0

    const-string v1, "SurfaceWidgetConnection"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mName:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$Name;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " onVisibilityChanged:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " sTexture:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mSurfaceInfo:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;

    if-nez v0, :cond_1

    const-string v0, "null"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mService:Lcom/samsung/surfacewidget/ISurfaceWidgetService;

    iget-object v1, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mName:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$Name;

    iget v1, v1, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$Name;->inst:I

    invoke-interface {v0, v1, p1}, Lcom/samsung/surfacewidget/ISurfaceWidgetService;->onVisibilityChanged(IZ)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mSurfaceInfo:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;

    # getter for: Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;
    invoke-static {v0}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;->access$200(Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    goto :goto_0
.end method

.method public registerGyro()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mWidgetViewComm:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;->registerGyro()V

    return-void
.end method

.method public resumeLater(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mbResumeLater:Z

    return-void
.end method

.method public setFocus(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mService:Lcom/samsung/surfacewidget/ISurfaceWidgetService;

    if-eqz v0, :cond_0

    const-string v0, "SurfaceWidgetConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mName:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " being set focused "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " by launcher"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mService:Lcom/samsung/surfacewidget/ISurfaceWidgetService;

    iget-object v1, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mName:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$Name;

    iget v1, v1, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$Name;->inst:I

    invoke-interface {v0, v1, p1}, Lcom/samsung/surfacewidget/ISurfaceWidgetService;->setFocus(IZ)V

    :cond_0
    return-void
.end method

.method public setUpdateTime(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mService:Lcom/samsung/surfacewidget/ISurfaceWidgetService;

    if-eqz v0, :cond_0

    const-string v0, "SurfaceWidgetConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mName:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " being sent updateTime by launcher"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mService:Lcom/samsung/surfacewidget/ISurfaceWidgetService;

    iget-object v1, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mName:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$Name;

    iget v1, v1, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$Name;->inst:I

    invoke-interface {v0, v1, p1}, Lcom/samsung/surfacewidget/ISurfaceWidgetService;->setUpdateTime(II)V

    :cond_0
    return-void
.end method

.method public declared-synchronized unbind(Landroid/content/Context;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mIsBound:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mIsBound:Z

    const-string v1, "SurfaceWidgetConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mName:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$Name;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has been unbound from its service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mName:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$Name;

    iget-object v2, v2, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$Name;->name:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    move-result v0

    const-string v2, "SurfaceWidgetConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mName:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$Name;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'s service has "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_1

    const-string v1, "been stopped"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string v1, "not been stopped"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public unregisterGyro()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mWidgetViewComm:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;->unregisterGyro()V

    return-void
.end method

.method public updateContentDescription()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mService:Lcom/samsung/surfacewidget/ISurfaceWidgetService;

    if-eqz v0, :cond_0

    const-string v0, "SurfaceWidgetConnection"

    const-string v1, "Requesting fresh content description"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mService:Lcom/samsung/surfacewidget/ISurfaceWidgetService;

    iget-object v1, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mName:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$Name;

    iget v1, v1, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$Name;->inst:I

    invoke-interface {v0, v1}, Lcom/samsung/surfacewidget/ISurfaceWidgetService;->onContentDescriptionRequest(I)V

    :cond_0
    return-void
.end method

.class public Lcom/android/server/edge/EdgeManagerService;
.super Lcom/android/server/SystemService;
.source "EdgeManagerService.java"


# instance fields
.field private final mEdgeImpl:Lcom/android/server/edge/EdgeManagerServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/server/edge/EdgeManagerServiceImpl;

    invoke-direct {v0, p1}, Lcom/android/server/edge/EdgeManagerServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/edge/EdgeManagerService;->mEdgeImpl:Lcom/android/server/edge/EdgeManagerServiceImpl;

    return-void
.end method


# virtual methods
.method public notifySwipeFromEdge(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/edge/EdgeManagerService;->mEdgeImpl:Lcom/android/server/edge/EdgeManagerServiceImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/edge/EdgeManagerServiceImpl;->notifySwipeFromEdge(I)V

    return-void
.end method

.method public onBootPhase(I)V
    .locals 2

    const/16 v0, 0x258

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/edge/EdgeManagerService;->mEdgeImpl:Lcom/android/server/edge/EdgeManagerServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/edge/EdgeManagerService;->isSafeMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/edge/EdgeManagerServiceImpl;->setSafeMode(Z)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    const-string v0, "edgeservice"

    iget-object v1, p0, Lcom/android/server/edge/EdgeManagerService;->mEdgeImpl:Lcom/android/server/edge/EdgeManagerServiceImpl;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/edge/EdgeManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    iget-object v0, p0, Lcom/android/server/edge/EdgeManagerService;->mEdgeImpl:Lcom/android/server/edge/EdgeManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/edge/EdgeManagerServiceImpl;->resetActivatedService()V

    return-void
.end method

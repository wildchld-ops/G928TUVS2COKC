.class public Lcom/samsung/android/edge/EdgeService;
.super Landroid/app/SallyService;
.source "EdgeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/edge/EdgeService$1;,
        Lcom/samsung/android/edge/EdgeService$EdgeManagerClient;,
        Lcom/samsung/android/edge/EdgeService$EdgeServiceHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EdgeService"


# instance fields
.field private mEdgeManagerClient:Lcom/samsung/android/edge/EdgeService$EdgeManagerClient;

.field private mHandler:Lcom/samsung/android/edge/EdgeService$EdgeServiceHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/SallyService;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/edge/EdgeService;)Lcom/samsung/android/edge/EdgeService$EdgeServiceHandler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/edge/EdgeService;->mHandler:Lcom/samsung/android/edge/EdgeService$EdgeServiceHandler;

    return-object v0
.end method


# virtual methods
.method protected getEdgeConfiguration()Landroid/os/Bundle;
    .locals 4

    invoke-static {p0}, Lcom/samsung/android/edge/EdgeManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/edge/EdgeManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/samsung/android/edge/EdgeService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/edge/EdgeManager;->getEdgeConfiguration(Landroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/app/SallyService;->onCreate()V

    new-instance v0, Lcom/samsung/android/edge/EdgeService$EdgeServiceHandler;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/edge/EdgeService$EdgeServiceHandler;-><init>(Lcom/samsung/android/edge/EdgeService;Lcom/samsung/android/edge/EdgeService$1;)V

    iput-object v0, p0, Lcom/samsung/android/edge/EdgeService;->mHandler:Lcom/samsung/android/edge/EdgeService$EdgeServiceHandler;

    new-instance v0, Lcom/samsung/android/edge/EdgeService$EdgeManagerClient;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/edge/EdgeService$EdgeManagerClient;-><init>(Lcom/samsung/android/edge/EdgeService;Lcom/samsung/android/edge/EdgeService$1;)V

    iput-object v0, p0, Lcom/samsung/android/edge/EdgeService;->mEdgeManagerClient:Lcom/samsung/android/edge/EdgeService$EdgeManagerClient;

    invoke-static {p0}, Lcom/samsung/android/edge/EdgeManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/edge/EdgeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/edge/EdgeService;->mEdgeManagerClient:Lcom/samsung/android/edge/EdgeService$EdgeManagerClient;

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/samsung/android/edge/EdgeService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/edge/EdgeManager;->connect(Lcom/samsung/android/edge/IEdgeManagerClient;Landroid/content/ComponentName;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/SallyService;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/edge/EdgeService;->mEdgeManagerClient:Lcom/samsung/android/edge/EdgeService$EdgeManagerClient;

    return-void
.end method

.method protected onDisconnected()V
    .locals 2

    const-string v0, "EdgeService"

    const-string/jumbo v1, "onDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/edge/EdgeService;->stopService()V

    return-void
.end method

.method protected onEdgeConfigurationChanged(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "EdgeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onEdgeConfigurationChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onExtraChanged(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "EdgeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onExtraChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onSwipeFromEdge(I)V
    .locals 3

    const-string v0, "EdgeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSwipeFormEdge:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

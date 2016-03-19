.class public Lcom/android/phone/SSInfoService;
.super Landroid/app/Service;
.source "SSInfoService.java"


# instance fields
.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/android/phone/ISSInfoServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mSSInfoService:Lcom/android/phone/ISSInfoService$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/android/phone/SSInfoService$1;

    invoke-direct {v0, p0}, Lcom/android/phone/SSInfoService$1;-><init>(Lcom/android/phone/SSInfoService;)V

    iput-object v0, p0, Lcom/android/phone/SSInfoService;->mSSInfoService:Lcom/android/phone/ISSInfoService$Stub;

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/SSInfoService;->mCallbacks:Landroid/os/RemoteCallbackList;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/SSInfoService;)Landroid/os/RemoteCallbackList;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/SSInfoService;->mCallbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/SSInfoService;->mSSInfoService:Lcom/android/phone/ISSInfoService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    const-string v0, "SSInfoService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-static {}, Lcom/android/services/utils/SSInfoManager;->getInstance()Lcom/android/services/utils/SSInfoManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/services/utils/SSInfoManager;->setSSInfoService(Lcom/android/phone/SSInfoService;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "SSInfoService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/services/utils/SSInfoManager;->getInstance()Lcom/android/services/utils/SSInfoManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/services/utils/SSInfoManager;->setSSInfoService(Lcom/android/phone/SSInfoService;)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onSSInfo(I)V
    .locals 3

    iget-object v1, p0, Lcom/android/phone/SSInfoService;->mSSInfoService:Lcom/android/phone/ISSInfoService$Stub;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/SSInfoService;->mSSInfoService:Lcom/android/phone/ISSInfoService$Stub;

    invoke-virtual {v1, p1}, Lcom/android/phone/ISSInfoService$Stub;->onSSInfo(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SSInfoService"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

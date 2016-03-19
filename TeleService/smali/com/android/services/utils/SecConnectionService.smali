.class public Lcom/android/services/utils/SecConnectionService;
.super Landroid/app/Service;
.source "SecConnectionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/services/utils/SecConnectionService$SecConnectionServiceBinder;
    }
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/android/services/utils/SecConnectionService$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/services/utils/SecConnectionService$1;-><init>(Lcom/android/services/utils/SecConnectionService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/services/utils/SecConnectionService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/services/utils/SecConnectionService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/services/utils/SecConnectionService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    new-instance v0, Lcom/android/services/utils/SecConnectionService$SecConnectionServiceBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/services/utils/SecConnectionService$SecConnectionServiceBinder;-><init>(Lcom/android/services/utils/SecConnectionService;Lcom/android/services/utils/SecConnectionService$1;)V

    return-object v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/services/utils/SecTelecomAdapter;->clearSecConnectionServiceAdapter()V

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.class public Lcom/android/systemui/cover/SViewCoverService;
.super Landroid/app/Service;
.source "SViewCoverService.java"


# static fields
.field static final TAG:Ljava/lang/String; = "SViewCoverService"


# instance fields
.field private mBaseStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

.field private final mBinder:Lcom/samsung/android/cover/ISViewCoverBaseService$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/android/systemui/cover/SViewCoverService$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/cover/SViewCoverService$1;-><init>(Lcom/android/systemui/cover/SViewCoverService;)V

    iput-object v0, p0, Lcom/android/systemui/cover/SViewCoverService;->mBinder:Lcom/samsung/android/cover/ISViewCoverBaseService$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/cover/SViewCoverService;)Lcom/android/systemui/statusbar/BaseStatusBar;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/cover/SViewCoverService;->mBaseStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/cover/SViewCoverService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/cover/SViewCoverService;->getStatusBar()V

    return-void
.end method

.method private getStatusBar()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/cover/SViewCoverService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/SystemUIApplication;

    if-nez v0, :cond_1

    const-string v1, "SViewCoverService"

    const-string v2, "app==null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "CoverUI"

    const-string v2, "onCreate() - app is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-class v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, v1}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/BaseStatusBar;

    iput-object v1, p0, Lcom/android/systemui/cover/SViewCoverService;->mBaseStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v1, p0, Lcom/android/systemui/cover/SViewCoverService;->mBaseStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    if-nez v1, :cond_0

    const-string v1, "CoverUI"

    const-string v2, "onCreate() - mBaseStatusBar is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const-string v0, "CoverUI"

    const-string v1, "SViewCoverService onBind() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/cover/SViewCoverService;->mBinder:Lcom/samsung/android/cover/ISViewCoverBaseService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    const-string v0, "CoverUI"

    const-string v1, "SViewCoverService onCreate() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/cover/SViewCoverService;->getStatusBar()V

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 5

    const-string v3, "CoverUI"

    const-string v4, "SViewCoverService onUnbind() called"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "cover"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/cover/ICoverManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/systemui/cover/SViewCoverService;->mBaseStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    if-eqz v3, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/cover/ICoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v3, v1, Lcom/samsung/android/cover/CoverState;->attached:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/cover/SViewCoverService;->mBaseStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v3

    return v3

    :catch_0
    move-exception v2

    const-string v3, "SViewCoverService"

    const-string v4, "RemoteException in getCoverState: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.class final Lcom/sec/android/app/launcher/activities/LauncherApp$1;
.super Ljava/lang/Object;
.source "LauncherApp.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/activities/LauncherApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherApp;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onServiceConnected(), service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # setter for: Lcom/sec/android/app/launcher/activities/LauncherApp;->mService:Landroid/os/IBinder;
    invoke-static {p2}, Lcom/sec/android/app/launcher/activities/LauncherApp;->access$102(Landroid/os/IBinder;)Landroid/os/IBinder;

    const/4 v2, 0x1

    # setter for: Lcom/sec/android/app/launcher/activities/LauncherApp;->mIsServiceConnected:Z
    invoke-static {v2}, Lcom/sec/android/app/launcher/activities/LauncherApp;->access$202(Z)Z

    instance-of v2, p2, Lcom/sec/android/app/launcher/services/LauncherService$LocalLauncherServiceBinder;

    if-eqz v2, :cond_1

    check-cast p2, Lcom/sec/android/app/launcher/services/LauncherService$LocalLauncherServiceBinder;

    invoke-virtual {p2}, Lcom/sec/android/app/launcher/services/LauncherService$LocalLauncherServiceBinder;->getLauncherService()Lcom/sec/android/app/launcher/services/LauncherService;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/launcher/activities/LauncherApp;->mLauncherService:Lcom/sec/android/app/launcher/services/LauncherService;

    sget-object v2, Lcom/sec/android/app/launcher/activities/LauncherApp;->mLauncherService:Lcom/sec/android/app/launcher/services/LauncherService;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/sec/android/app/launcher/activities/LauncherApp;->pendingServiceList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    sget-object v2, Lcom/sec/android/app/launcher/activities/LauncherApp;->mLauncherService:Lcom/sec/android/app/launcher/services/LauncherService;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/launcher/services/LauncherService;->onStart(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/sec/android/app/launcher/activities/LauncherApp;->pendingServiceList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :goto_1
    return-void

    :cond_1
    # getter for: Lcom/sec/android/app/launcher/activities/LauncherApp;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onServiceConnected(),  not service instanceof LocalLauncherServiceBinder!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const/4 v0, 0x0

    # setter for: Lcom/sec/android/app/launcher/activities/LauncherApp;->mIsServiceConnected:Z
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/LauncherApp;->access$202(Z)Z

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherApp;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

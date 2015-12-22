.class public Lcom/android/server/telecom/secutils/FlashNoti;
.super Ljava/lang/Object;
.source "FlashNoti.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/telecom/secutils/FlashNoti$1;,
        Lcom/android/server/telecom/secutils/FlashNoti$NotificationFlashThread;
    }
.end annotation


# static fields
.field private static lock:Ljava/lang/Object;

.field private static mCfmsService:Landroid/os/ICustomFrequencyManager;


# instance fields
.field isDone:Z

.field mContext:Landroid/content/Context;

.field mNotificationFlashThread:Lcom/android/server/telecom/secutils/FlashNoti$NotificationFlashThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/telecom/secutils/FlashNoti;->mCfmsService:Landroid/os/ICustomFrequencyManager;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/telecom/secutils/FlashNoti;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/telecom/secutils/FlashNoti;->isDone:Z

    iput-object p1, p0, Lcom/android/server/telecom/secutils/FlashNoti;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public checkTorchLight()V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v0, "flash_notification"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/secutils/FlashNoti;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "torch_light"

    const/4 v4, -0x2

    invoke-static {v0, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isEnableAssistiveLightBeforeStart : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {p0, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/telecom/secutils/FlashNoti;->shouldNotiLight()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/secutils/FlashNoti;->mNotificationFlashThread:Lcom/android/server/telecom/secutils/FlashNoti$NotificationFlashThread;

    if-nez v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/server/telecom/secutils/FlashNoti;->setIsDone(Z)V

    new-instance v0, Lcom/android/server/telecom/secutils/FlashNoti$NotificationFlashThread;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/android/server/telecom/secutils/FlashNoti$NotificationFlashThread;-><init>(Lcom/android/server/telecom/secutils/FlashNoti;Lcom/android/server/telecom/secutils/FlashNoti$1;)V

    iput-object v0, p0, Lcom/android/server/telecom/secutils/FlashNoti;->mNotificationFlashThread:Lcom/android/server/telecom/secutils/FlashNoti$NotificationFlashThread;

    const-string v0, "starting notification flash...."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-static {p0, v0, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/FlashNoti;->mNotificationFlashThread:Lcom/android/server/telecom/secutils/FlashNoti$NotificationFlashThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/secutils/FlashNoti;->mNotificationFlashThread:Lcom/android/server/telecom/secutils/FlashNoti$NotificationFlashThread;

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/FlashNoti$NotificationFlashThread;->start()V

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public controlFlashNotification(Z)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "controlFlashNotification - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    sget-object v1, Lcom/android/server/telecom/secutils/FlashNoti;->lock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v0, Lcom/android/server/telecom/secutils/FlashNoti;->mCfmsService:Landroid/os/ICustomFrequencyManager;

    if-nez v0, :cond_0

    const-string v0, "CustomFrequencyManagerService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/os/ICustomFrequencyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;

    move-result-object v0

    sput-object v0, Lcom/android/server/telecom/secutils/FlashNoti;->mCfmsService:Landroid/os/ICustomFrequencyManager;

    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v0, Lcom/android/server/telecom/secutils/FlashNoti;->mCfmsService:Landroid/os/ICustomFrequencyManager;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_2

    sget-object v0, Lcom/android/server/telecom/secutils/FlashNoti;->mCfmsService:Landroid/os/ICustomFrequencyManager;

    const-string v1, "CLOCK_SET_TORCH_LIGHT"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Landroid/os/ICustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    :try_start_5
    iget-object v0, p0, Lcom/android/server/telecom/secutils/FlashNoti;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "torch_light"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "controlFlashNotification assitiveOn - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/server/telecom/secutils/FlashNoti;->mCfmsService:Landroid/os/ICustomFrequencyManager;

    const-string v1, "CLOCK_SET_TORCH_LIGHT"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/os/ICustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0
.end method

.method public getIsDone()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/telecom/secutils/FlashNoti;->isDone:Z

    return v0
.end method

.method isNotiFlashing()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/FlashNoti;->mNotificationFlashThread:Lcom/android/server/telecom/secutils/FlashNoti$NotificationFlashThread;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setIsDone(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/telecom/secutils/FlashNoti;->isDone:Z

    return-void
.end method

.method shouldNotiLight()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/telecom/secutils/FlashNoti;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "flash_notification"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_0

    move v2, v0

    :goto_0
    if-eqz v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public stopFlashThread()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/FlashNoti;->mNotificationFlashThread:Lcom/android/server/telecom/secutils/FlashNoti$NotificationFlashThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/secutils/FlashNoti;->mNotificationFlashThread:Lcom/android/server/telecom/secutils/FlashNoti$NotificationFlashThread;

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/FlashNoti$NotificationFlashThread;->stopThread()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/telecom/secutils/FlashNoti;->mNotificationFlashThread:Lcom/android/server/telecom/secutils/FlashNoti$NotificationFlashThread;

    :cond_0
    return-void
.end method

.method public stopNotiFlash()V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/server/telecom/secutils/FlashNoti;->isNotiFlashing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "-stopNotiFlash: cleaning up notiflash thread..."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v3}, Lcom/android/server/telecom/secutils/FlashNoti;->controlFlashNotification(Z)V

    invoke-virtual {p0}, Lcom/android/server/telecom/secutils/FlashNoti;->stopFlashThread()V

    :cond_0
    return-void
.end method

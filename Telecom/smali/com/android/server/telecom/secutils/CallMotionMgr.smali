.class public Lcom/android/server/telecom/secutils/CallMotionMgr;
.super Ljava/lang/Object;
.source "CallMotionMgr.java"


# instance fields
.field private mCallMotion:Lcom/android/server/telecom/secutils/CallMotion;

.field private mCallMotionFlash:Lcom/android/server/telecom/secutils/CallMotion;

.field private mContext:Landroid/content/Context;

.field private mFlashNoti:Lcom/android/server/telecom/secutils/FlashNoti;

.field private mRinger:Lcom/android/server/telecom/Ringer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/telecom/Ringer;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/telecom/secutils/CallMotionMgr;->mRinger:Lcom/android/server/telecom/Ringer;

    iput-object v0, p0, Lcom/android/server/telecom/secutils/CallMotionMgr;->mFlashNoti:Lcom/android/server/telecom/secutils/FlashNoti;

    iput-object v0, p0, Lcom/android/server/telecom/secutils/CallMotionMgr;->mCallMotion:Lcom/android/server/telecom/secutils/CallMotion;

    iput-object v0, p0, Lcom/android/server/telecom/secutils/CallMotionMgr;->mCallMotionFlash:Lcom/android/server/telecom/secutils/CallMotion;

    iput-object p1, p0, Lcom/android/server/telecom/secutils/CallMotionMgr;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/telecom/secutils/CallMotionMgr;->mRinger:Lcom/android/server/telecom/Ringer;

    iget-object v0, p2, Lcom/android/server/telecom/Ringer;->mFlashNoti:Lcom/android/server/telecom/secutils/FlashNoti;

    iput-object v0, p0, Lcom/android/server/telecom/secutils/CallMotionMgr;->mFlashNoti:Lcom/android/server/telecom/secutils/FlashNoti;

    return-void
.end method


# virtual methods
.method public checkCallMotion()V
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    const-string v2, "support_motion"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/telecom/secutils/CallMotionMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_overturn"

    const/4 v4, -0x2

    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkCallMotion() MOTION_OVERTURN is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v2, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallMotionMgr;->mCallMotion:Lcom/android/server/telecom/secutils/CallMotion;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/telecom/secutils/CallMotion;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/CallMotionMgr;->mContext:Landroid/content/Context;

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/server/telecom/secutils/CallMotion;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/server/telecom/secutils/CallMotionMgr;->mCallMotion:Lcom/android/server/telecom/secutils/CallMotion;

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallMotionMgr;->mCallMotion:Lcom/android/server/telecom/secutils/CallMotion;

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/CallMotion;->startMotionCatch()V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public checkFlashCallMotion()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "flash_notification"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "support_motion"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/telecom/secutils/CallMotionMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "flash_notification"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkFlashCallMotion() FLASH_NOTIFICATION is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v2, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallMotionMgr;->mCallMotionFlash:Lcom/android/server/telecom/secutils/CallMotion;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/telecom/secutils/CallMotion;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/CallMotionMgr;->mContext:Landroid/content/Context;

    const/16 v2, 0x56

    invoke-direct {v0, v1, v2}, Lcom/android/server/telecom/secutils/CallMotion;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/server/telecom/secutils/CallMotionMgr;->mCallMotionFlash:Lcom/android/server/telecom/secutils/CallMotion;

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallMotionMgr;->mCallMotionFlash:Lcom/android/server/telecom/secutils/CallMotion;

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/CallMotion;->startMotionCatch()V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public stopCallMotion()V
    .locals 1

    const-string v0, "support_motion"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallMotionMgr;->mCallMotion:Lcom/android/server/telecom/secutils/CallMotion;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallMotionMgr;->mCallMotion:Lcom/android/server/telecom/secutils/CallMotion;

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/CallMotion;->stopMotionCatch()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/telecom/secutils/CallMotionMgr;->mCallMotion:Lcom/android/server/telecom/secutils/CallMotion;

    :cond_0
    return-void
.end method

.method public stopFlashCallMotion()V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v0, "flash_notification"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "support_motion"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallMotionMgr;->mFlashNoti:Lcom/android/server/telecom/secutils/FlashNoti;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallMotionMgr;->mFlashNoti:Lcom/android/server/telecom/secutils/FlashNoti;

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/FlashNoti;->isNotiFlashing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallMotionMgr;->mFlashNoti:Lcom/android/server/telecom/secutils/FlashNoti;

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/FlashNoti;->getIsDone()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "-stopRing: cleaning up notiflash thread..."

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v3}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallMotionMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "torch_light"

    const/4 v4, -0x2

    invoke-static {v0, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isEnableAssistiveLight : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/server/telecom/secutils/CallMotionMgr;->mFlashNoti:Lcom/android/server/telecom/secutils/FlashNoti;

    invoke-virtual {v3, v1}, Lcom/android/server/telecom/secutils/FlashNoti;->controlFlashNotification(Z)V

    iget-object v3, p0, Lcom/android/server/telecom/secutils/CallMotionMgr;->mFlashNoti:Lcom/android/server/telecom/secutils/FlashNoti;

    invoke-virtual {v3}, Lcom/android/server/telecom/secutils/FlashNoti;->stopFlashThread()V

    if-eqz v0, :cond_3

    const-wide/16 v2, 0x5dc

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallMotionMgr;->mFlashNoti:Lcom/android/server/telecom/secutils/FlashNoti;

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/secutils/FlashNoti;->controlFlashNotification(Z)V

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallMotionMgr;->mCallMotionFlash:Lcom/android/server/telecom/secutils/CallMotion;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallMotionMgr;->mCallMotionFlash:Lcom/android/server/telecom/secutils/CallMotion;

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/CallMotion;->stopMotionCatch()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/telecom/secutils/CallMotionMgr;->mCallMotionFlash:Lcom/android/server/telecom/secutils/CallMotion;

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallMotionMgr;->mFlashNoti:Lcom/android/server/telecom/secutils/FlashNoti;

    invoke-virtual {v0, v2}, Lcom/android/server/telecom/secutils/FlashNoti;->controlFlashNotification(Z)V

    goto :goto_1
.end method

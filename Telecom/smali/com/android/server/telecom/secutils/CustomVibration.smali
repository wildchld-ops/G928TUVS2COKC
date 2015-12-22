.class public Lcom/android/server/telecom/secutils/CustomVibration;
.super Ljava/lang/Object;
.source "CustomVibration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/telecom/secutils/CustomVibration$1;,
        Lcom/android/server/telecom/secutils/CustomVibration$VibratorThread;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/server/telecom/secutils/CustomVibration;


# instance fields
.field mContext:Landroid/content/Context;

.field mCustomVibrationUri:Landroid/net/Uri;

.field private mRingtoneAfterVib:I

.field mVibrator:Landroid/os/SystemVibrator;

.field mVibratorThread:Lcom/android/server/telecom/secutils/CustomVibration$VibratorThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/telecom/secutils/CustomVibration;->mRingtoneAfterVib:I

    iput-object p1, p0, Lcom/android/server/telecom/secutils/CustomVibration;->mContext:Landroid/content/Context;

    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SystemVibrator;

    iput-object v0, p0, Lcom/android/server/telecom/secutils/CustomVibration;->mVibrator:Landroid/os/SystemVibrator;

    return-void
.end method

.method private StringToLongArray(Ljava/lang/String;)[J
    .locals 9

    const/4 v8, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StringToLongArray, size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/telecom/secutils/CustomVibration;->log(Ljava/lang/String;)V

    array-length v1, v3

    if-gtz v1, :cond_1

    const-string v1, "string is null"

    invoke-direct {p0, v1, v8}, Lcom/android/server/telecom/secutils/CustomVibration;->log(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    array-length v1, v3

    new-array v1, v1, [J

    const/4 v2, 0x0

    :goto_1
    :try_start_0
    array-length v4, v3

    if-ge v2, v4, :cond_2

    aget-object v4, v3, v2

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v1, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ret["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-wide v6, v1, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/telecom/secutils/CustomVibration;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v8}, Lcom/android/server/telecom/secutils/CustomVibration;->log(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/telecom/secutils/CustomVibration;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/telecom/secutils/CustomVibration;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/telecom/secutils/CustomVibration;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/telecom/secutils/CustomVibration;Ljava/lang/String;)[J
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/telecom/secutils/CustomVibration;->StringToLongArray(Ljava/lang/String;)[J

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/telecom/secutils/CustomVibration;
    .locals 1

    sget-object v0, Lcom/android/server/telecom/secutils/CustomVibration;->sInstance:Lcom/android/server/telecom/secutils/CustomVibration;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/telecom/secutils/CustomVibration;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/secutils/CustomVibration;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/telecom/secutils/CustomVibration;->sInstance:Lcom/android/server/telecom/secutils/CustomVibration;

    :cond_0
    sget-object v0, Lcom/android/server/telecom/secutils/CustomVibration;->sInstance:Lcom/android/server/telecom/secutils/CustomVibration;

    return-object v0
.end method

.method private getVibrateWhenRinging(Landroid/content/Context;)Z
    .locals 4

    const/4 v1, 0x0

    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCarModeOn()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "vibrate_when_ringing"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 2

    const-string v0, "CustomVibration"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 4

    const-string v0, "CustomVibration"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, p1, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private shouldVibrate(Landroid/content/Context;)Z
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "ringtone_after_vibration"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/telecom/secutils/CustomVibration;->mRingtoneAfterVib:I

    iget v1, p0, Lcom/android/server/telecom/secutils/CustomVibration;->mRingtoneAfterVib:I

    if-lez v1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->isDrivingModeOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "Driving mode on, Don\'t make vibration in Vibration when ringing"

    invoke-static {v1}, Lcom/android/server/telecom/secutils/CustomVibration;->log(Ljava/lang/String;)V

    move v1, v2

    :goto_1
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/server/telecom/secutils/CustomVibration;->getVibrateWhenRinging(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->checkVoiceRecorder()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->checkVideoRecorder()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "disable_incoming_call_popup_during_camera"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/server/telecom/secutils/CustomVibration;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/telecom/secutils/TelecomUtils;->notVibrateDuringVideoRecording(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    if-nez v0, :cond_0

    move v2, v3

    goto :goto_0

    :cond_4
    if-eq v0, v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_5
    move v1, v3

    goto :goto_1
.end method


# virtual methods
.method public isVibrating()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CustomVibration;->mVibratorThread:Lcom/android/server/telecom/secutils/CustomVibration$VibratorThread;

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

.method public setCustomVibrationUri(Landroid/net/Uri;)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CustomVibration;->mCustomVibrationUri:Landroid/net/Uri;

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCustomVibrationUri uri :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/CustomVibration;->log(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/telecom/secutils/CustomVibration;->mCustomVibrationUri:Landroid/net/Uri;

    const-string v0, "personal_vibration"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/telecom/secutils/CustomVibration;->isVibrating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CustomVibration;->mVibratorThread:Lcom/android/server/telecom/secutils/CustomVibration$VibratorThread;

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/CustomVibration$VibratorThread;->stopThread()V

    iput-object v2, p0, Lcom/android/server/telecom/secutils/CustomVibration;->mVibratorThread:Lcom/android/server/telecom/secutils/CustomVibration$VibratorThread;

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CustomVibration;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v0}, Landroid/os/SystemVibrator;->cancel()V

    new-instance v0, Lcom/android/server/telecom/secutils/CustomVibration$VibratorThread;

    invoke-direct {v0, p0, v2}, Lcom/android/server/telecom/secutils/CustomVibration$VibratorThread;-><init>(Lcom/android/server/telecom/secutils/CustomVibration;Lcom/android/server/telecom/secutils/CustomVibration$1;)V

    iput-object v0, p0, Lcom/android/server/telecom/secutils/CustomVibration;->mVibratorThread:Lcom/android/server/telecom/secutils/CustomVibration$VibratorThread;

    const-string v0, "- re-starting vibrator..."

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/telecom/secutils/CustomVibration;->log(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CustomVibration;->mVibratorThread:Lcom/android/server/telecom/secutils/CustomVibration$VibratorThread;

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/CustomVibration$VibratorThread;->start()V

    :cond_0
    return-void
.end method

.method public startVibration()V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "personal_vibration"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CustomVibration;->mCustomVibrationUri:Landroid/net/Uri;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CustomVibration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_vibration_pattern"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startIncomingCallQuery: patternUri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/android/server/telecom/secutils/CustomVibration;->log(Ljava/lang/String;Z)V

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/secutils/CustomVibration;->mCustomVibrationUri:Landroid/net/Uri;

    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/server/telecom/TelecomGlobals;->getInstance()Lcom/android/server/telecom/TelecomGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomGlobals;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/telecom/secutils/CustomVibration;->shouldVibrate(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CustomVibration;->mVibratorThread:Lcom/android/server/telecom/secutils/CustomVibration$VibratorThread;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/server/telecom/secutils/CustomVibration$VibratorThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/telecom/secutils/CustomVibration$VibratorThread;-><init>(Lcom/android/server/telecom/secutils/CustomVibration;Lcom/android/server/telecom/secutils/CustomVibration$1;)V

    iput-object v0, p0, Lcom/android/server/telecom/secutils/CustomVibration;->mVibratorThread:Lcom/android/server/telecom/secutils/CustomVibration$VibratorThread;

    const-string v0, "- starting vibrator..."

    invoke-direct {p0, v0, v3}, Lcom/android/server/telecom/secutils/CustomVibration;->log(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CustomVibration;->mVibratorThread:Lcom/android/server/telecom/secutils/CustomVibration$VibratorThread;

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/CustomVibration$VibratorThread;->start()V

    :cond_1
    return-void

    :cond_2
    const-string v0, "mCustomVibrationUri is NOT null"

    invoke-direct {p0, v0, v3}, Lcom/android/server/telecom/secutils/CustomVibration;->log(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    const-string v0, "PERSONAL_VIBRATION OFF"

    invoke-direct {p0, v0, v3}, Lcom/android/server/telecom/secutils/CustomVibration;->log(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public stopVibration()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/server/telecom/secutils/CustomVibration;->isVibrating()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "- stopVibration: cleaning up vibrator thread..."

    invoke-direct {p0, v0, v1}, Lcom/android/server/telecom/secutils/CustomVibration;->log(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CustomVibration;->mVibratorThread:Lcom/android/server/telecom/secutils/CustomVibration$VibratorThread;

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/CustomVibration$VibratorThread;->stopThread()V

    iput-object v2, p0, Lcom/android/server/telecom/secutils/CustomVibration;->mVibratorThread:Lcom/android/server/telecom/secutils/CustomVibration$VibratorThread;

    iput-object v2, p0, Lcom/android/server/telecom/secutils/CustomVibration;->mCustomVibrationUri:Landroid/net/Uri;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CustomVibration;->mCustomVibrationUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    const-string v0, "- stopVibration mCustomVibrationUri : "

    invoke-direct {p0, v0, v1}, Lcom/android/server/telecom/secutils/CustomVibration;->log(Ljava/lang/String;Z)V

    iput-object v2, p0, Lcom/android/server/telecom/secutils/CustomVibration;->mCustomVibrationUri:Landroid/net/Uri;

    :cond_1
    const-string v0, "- stopVibration isVibrating is null "

    invoke-direct {p0, v0, v1}, Lcom/android/server/telecom/secutils/CustomVibration;->log(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.class public Lcom/android/settings/notification/SeekBarVolumizerDTMF;
.super Ljava/lang/Object;
.source "SeekBarVolumizerDTMF.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/SeekBarVolumizerDTMF$Callback;
    }
.end annotation


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mCallback:Lcom/android/settings/notification/SeekBarVolumizerDTMF$Callback;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultUri:Landroid/net/Uri;

.field private final mHandler:Landroid/os/Handler;

.field private mLastProgress:I

.field private mLastWaitingToneVolume:I

.field private mOriginalStreamVolume:I

.field private mRingtone:Landroid/media/Ringtone;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private final mStreamType:I

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private mVolumeBeforeMute:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/net/Uri;Lcom/android/settings/notification/SeekBarVolumizerDTMF$Callback;)V
    .locals 4

    const/4 v3, 0x2

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mLastProgress:I

    iput v1, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mVolumeBeforeMute:I

    iput v1, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mLastWaitingToneVolume:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mToneGenerator:Landroid/media/ToneGenerator;

    iput-object p1, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mAudioManager:Landroid/media/AudioManager;

    iput p2, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mStreamType:I

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SeekBarVolumizerDTMF.CallbackHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mHandler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mCallback:Lcom/android/settings/notification/SeekBarVolumizerDTMF$Callback;

    iget-object v1, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mOriginalStreamVolume:I

    iget-object v1, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "volume_waiting_tone"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mLastWaitingToneVolume:I

    if-nez p3, :cond_0

    iget v1, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mStreamType:I

    if-ne v1, v3, :cond_1

    sget-object p3, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    :cond_0
    :goto_0
    iput-object p3, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mDefaultUri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_1
    iget v1, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mStreamType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    sget-object p3, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_2
    sget-object p3, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method private onInitSample()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mDefaultUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mRingtone:Landroid/media/Ringtone;

    iget-object v0, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mRingtone:Landroid/media/Ringtone;

    iget v1, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setStreamType(I)V

    :cond_0
    return-void
.end method

.method private onStartSample()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->isSamplePlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mCallback:Lcom/android/settings/notification/SeekBarVolumizerDTMF$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mCallback:Lcom/android/settings/notification/SeekBarVolumizerDTMF$Callback;

    invoke-interface {v0, p0}, Lcom/android/settings/notification/SeekBarVolumizerDTMF$Callback;->onSampleStarting(Lcom/android/settings/notification/SeekBarVolumizerDTMF;)V

    :cond_0
    return-void
.end method

.method private onStopSample()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    const-string v0, "SeekBarVolumizerDTMF"

    const-string v1, "onStopSample()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private postStartSample()V
    .locals 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->isSamplePlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x3e8

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private stopToneGenerator()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mToneGenerator:Landroid/media/ToneGenerator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->setVolume(F)V

    iget-object v0, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "SeekBarVolumizerDTMF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid SeekBarVolumizer message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mStreamType:I

    iget v2, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mLastProgress:I

    const/16 v3, 0x400

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->onStartSample()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->onStopSample()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->onInitSample()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isSamplePlaying()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 6

    if-nez p3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->stopToneGenerator()V

    iget-object v1, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "volume_waiting_tone"

    invoke-static {v1, v2, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v1, :cond_1

    new-instance v1, Landroid/media/ToneGenerator;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v1, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mToneGenerator:Landroid/media/ToneGenerator;

    :cond_1
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    add-int/lit8 v1, p2, -0x2

    int-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v0, v2

    iget-object v1, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mToneGenerator:Landroid/media/ToneGenerator;

    iget-object v2, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mAudioManager:Landroid/media/AudioManager;

    const-string v3, "situation=15;device=0"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/media/ToneGenerator;->setVolume(F)V

    iget-object v1, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mToneGenerator:Landroid/media/ToneGenerator;

    const/16 v2, 0x16

    const/16 v3, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/media/ToneGenerator;->startTone(II)Z

    iput p2, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mLastProgress:I

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->postStartSample()V

    return-void
.end method

.method postStopSample()V
    .locals 3

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setSeekBar(Landroid/widget/SeekBar;)V
    .locals 3

    iput-object p1, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v1, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mSeekBar:Landroid/widget/SeekBar;

    iget v0, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mLastProgress:I

    const/4 v2, -0x1

    if-le v0, v2, :cond_0

    iget v0, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mLastProgress:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void

    :cond_0
    iget v0, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mLastWaitingToneVolume:I

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->postStopSample()V

    invoke-direct {p0}, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->stopToneGenerator()V

    iget-object v0, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    iput-object v1, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mToneGenerator:Landroid/media/ToneGenerator;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    return-void
.end method

.method public stopSample()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->postStopSample()V

    return-void
.end method

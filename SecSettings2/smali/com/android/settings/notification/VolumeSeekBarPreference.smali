.class public Lcom/android/settings/notification/VolumeSeekBarPreference;
.super Landroid/preference/SeekBarPreference;
.source "VolumeSeekBarPreference.java"

# interfaces
.implements Landroid/preference/PreferenceManager$OnActivityStopListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;
    }
.end annotation


# instance fields
.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCallback:Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;

.field private mContext:Landroid/content/Context;

.field private mIconResId:I

.field private mIconView:Landroid/widget/ImageView;

.field private mMuteIconResId:I

.field private mMuted:Z

.field private final mSamsungAudioManager:Landroid/media/SamsungAudioManager;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mStopped:Z

.field private mStream:I

.field private mSuppressionText:Ljava/lang/String;

.field private mSuppressionTextView:Landroid/widget/TextView;

.field private mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mVolumizer:Landroid/preference/SeekBarVolumizer;

.field private mVolumizerDTMF:Lcom/android/settings/notification/SeekBarVolumizerDTMF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Lcom/android/settings/notification/VolumeSeekBarPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/VolumeSeekBarPreference$1;-><init>(Lcom/android/settings/notification/VolumeSeekBarPreference;)V

    iput-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/notification/VolumeSeekBarPreference$6;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/VolumeSeekBarPreference$6;-><init>(Lcom/android/settings/notification/VolumeSeekBarPreference;)V

    iput-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    iput-object p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mContext:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mAudioManager:Landroid/media/AudioManager;

    new-instance v0, Landroid/media/SamsungAudioManager;

    iget-object v1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/media/SamsungAudioManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mSamsungAudioManager:Landroid/media/SamsungAudioManager;

    const v0, 0x7f040186

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setLayoutResource(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/VolumeSeekBarPreference;)Landroid/widget/SeekBar;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/notification/VolumeSeekBarPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setDualColorSeekbar()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/notification/VolumeSeekBarPreference;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->requestAudioFocus()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/notification/VolumeSeekBarPreference;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mStream:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/notification/VolumeSeekBarPreference;)Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mCallback:Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/notification/VolumeSeekBarPreference;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mMuted:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings/notification/VolumeSeekBarPreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mMuted:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/notification/VolumeSeekBarPreference;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->updateIconView(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/notification/VolumeSeekBarPreference;)Landroid/preference/SeekBarVolumizer;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mVolumizer:Landroid/preference/SeekBarVolumizer;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/notification/VolumeSeekBarPreference;)Lcom/android/settings/notification/SeekBarVolumizerDTMF;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mVolumizerDTMF:Lcom/android/settings/notification/SeekBarVolumizerDTMF;

    return-object v0
.end method

.method private getMediaVolumeUri()Landroid/net/Uri;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f080005

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private getTelephonyService()Lcom/android/internal/telephony/ITelephony;
    .locals 3

    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "VolumeSeekBarPreference"

    const-string v2, "Unable to find ITelephony interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method private init()V
    .locals 11

    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceManager;->registerOnActivityStopListener(Landroid/preference/PreferenceManager$OnActivityStopListener;)V

    iget v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mStream:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->getMediaVolumeUri()Landroid/net/Uri;

    move-result-object v4

    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ultra_powersaving_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.resource://com.android.server.telecom/raw/low_power_ringtone"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-static {v6, v7}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v9

    if-eqz v9, :cond_1

    iget v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mStream:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    move-object v4, v7

    :cond_1
    iget v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mStream:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mVolumizerDTMF:Lcom/android/settings/notification/SeekBarVolumizerDTMF;

    if-nez v0, :cond_2

    new-instance v5, Lcom/android/settings/notification/VolumeSeekBarPreference$2;

    invoke-direct {v5, p0}, Lcom/android/settings/notification/VolumeSeekBarPreference$2;-><init>(Lcom/android/settings/notification/VolumeSeekBarPreference;)V

    new-instance v0, Lcom/android/settings/notification/VolumeSeekBarPreference$3;

    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mStream:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notification/VolumeSeekBarPreference$3;-><init>(Lcom/android/settings/notification/VolumeSeekBarPreference;Landroid/content/Context;ILandroid/net/Uri;Lcom/android/settings/notification/SeekBarVolumizerDTMF$Callback;)V

    iput-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mVolumizerDTMF:Lcom/android/settings/notification/SeekBarVolumizerDTMF;

    :cond_2
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mVolumizerDTMF:Lcom/android/settings/notification/SeekBarVolumizerDTMF;

    iget-object v1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->setSeekBar(Landroid/widget/SeekBar;)V

    :goto_2
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mCallback:Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;

    iget v1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mStream:I

    iget-object v2, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;->onStreamValueChanged(II)V

    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.sec.android.fm.player_lock.status.off"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.sec.android.fm.player_lock.status.on"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/settings/notification/VolumeSeekBarPreference$5;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/VolumeSeekBarPreference$5;-><init>(Lcom/android/settings/notification/VolumeSeekBarPreference;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_3
    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_4
    new-instance v10, Lcom/android/settings/notification/VolumeSeekBarPreference$4;

    invoke-direct {v10, p0}, Lcom/android/settings/notification/VolumeSeekBarPreference$4;-><init>(Lcom/android/settings/notification/VolumeSeekBarPreference;)V

    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mVolumizer:Landroid/preference/SeekBarVolumizer;

    if-nez v0, :cond_5

    new-instance v0, Landroid/preference/SeekBarVolumizer;

    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mStream:I

    invoke-direct {v0, v1, v2, v4, v10}, Landroid/preference/SeekBarVolumizer;-><init>(Landroid/content/Context;ILandroid/net/Uri;Landroid/preference/SeekBarVolumizer$Callback;)V

    iput-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mVolumizer:Landroid/preference/SeekBarVolumizer;

    :cond_5
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mVolumizer:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->start()V

    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mVolumizer:Landroid/preference/SeekBarVolumizer;

    iget-object v1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/preference/SeekBarVolumizer;->setSeekBar(Landroid/widget/SeekBar;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->updateIconView(Z)V

    invoke-direct {p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->updateSuppressionText()V

    const-string v0, "VolumeSeekBarPreference"

    const-string v1, "onBindView : setSeekBar called"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private requestAudioFocus()Z
    .locals 7

    const/4 v2, 0x1

    const-string v3, "VolumeSeekBarPreference"

    const-string v4, "requestAudioFocus()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v3, 0x5

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mAudioManager:Landroid/media/AudioManager;

    iget-object v4, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v5, 0x3

    const/4 v6, 0x2

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    if-ne v0, v2, :cond_2

    :cond_0
    if-nez v0, :cond_1

    const-string v2, "VolumeSeekBarPreference"

    const-string v3, "requestAudioFocus is failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :cond_1
    return v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private setDualColorSeekbar()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, -0x1

    iget v2, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mStream:I

    if-eq v2, v6, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v2, "VolumeSeekBarPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDualColorSeekbar : AudioManager.STREAM_MUSIC. mSamsungAudioManager.isSafeMediaVolumeDeviceOn() return : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mSamsungAudioManager:Landroid/media/SamsungAudioManager;

    invoke-virtual {v4}, Landroid/media/SamsungAudioManager;->isSafeMediaVolumeDeviceOn()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "VolumeSeekBarPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Earphone - mAudioManager.isWiredHeadsetOn() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-eqz v1, :cond_2

    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const-string v2, "VolumeSeekBarPreference"

    const-string v3, "telephonyService.isRinging() || telephonyService.isOffhook() Now calling."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mSamsungAudioManager:Landroid/media/SamsungAudioManager;

    invoke-virtual {v2}, Landroid/media/SamsungAudioManager;->isSafeMediaVolumeDeviceOn()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "VolumeSeekBarPreference"

    const-string v3, "Don\'t show dual color seekbar. setDualColorSeekbar set single"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setOverlapPointForDualColor(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "VolumeSeekBarPreference"

    const-string v3, "ITelephony threw RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    iget-object v2, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mSamsungAudioManager:Landroid/media/SamsungAudioManager;

    invoke-virtual {v2}, Landroid/media/SamsungAudioManager;->isSafeMediaVolumeDeviceOn()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_3
    iget-object v2, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isFMActive()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isRadioSpeakerOn()Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    iget-object v2, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMode(I)V

    const-string v2, "VolumeSeekBarPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDualColorSeekbar set dual. EarProtectLimitIndex : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {}, Landroid/media/AudioManager;->getEarProtectLimitIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mStream:I

    if-ne v2, v6, :cond_5

    iget-object v2, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {}, Landroid/media/AudioManager;->getEarProtectLimitIndex()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    mul-int/lit8 v3, v3, 0xa

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setOverlapPointForDualColor(I)V

    const-string v2, "VolumeSeekBarPreference"

    const-string v3, "SUPPORT_FINEVOLUME"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v2, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->invalidate()V

    goto/16 :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {}, Landroid/media/AudioManager;->getEarProtectLimitIndex()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setOverlapPointForDualColor(I)V

    const-string v2, "VolumeSeekBarPreference"

    const-string v3, "Not supported fine volume"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    const-string v2, "VolumeSeekBarPreference"

    const-string v3, "setDualColorSeekbar set single"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v5}, Landroid/widget/SeekBar;->setOverlapPointForDualColor(I)V

    goto :goto_1
.end method

.method private updateIconView(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mIconView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mIconResId:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mIconResId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    :goto_2
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mIconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mMuteIconResId:I

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mMuted:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mMuteIconResId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    goto :goto_2
.end method

.method private updateSuppressionText()V
    .locals 5

    const/4 v3, 0x4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mSuppressionTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mSuppressionTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mSuppressionText:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mSuppressionText:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v4, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mSuppressionTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    move v2, v1

    :goto_1
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_3

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    :cond_3
    move v3, v1

    goto :goto_2
.end method


# virtual methods
.method public onActivityResume()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mStopped:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->init()V

    :cond_0
    return-void
.end method

.method public onActivityStop()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mStopped:Z

    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mVolumizer:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mVolumizer:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->stop()V

    iput-object v1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mVolumizer:Landroid/preference/SeekBarVolumizer;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mVolumizerDTMF:Lcom/android/settings/notification/SeekBarVolumizerDTMF;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mVolumizerDTMF:Lcom/android/settings/notification/SeekBarVolumizerDTMF;

    invoke-virtual {v0}, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->stop()V

    iput-object v1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mVolumizerDTMF:Lcom/android/settings/notification/SeekBarVolumizerDTMF;

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->onClosed()V

    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/preference/SeekBarPreference;->onBindView(Landroid/view/View;)V

    iget v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mStream:I

    if-nez v0, :cond_0

    const-string v0, "VolumeSeekBarPreference"

    const-string v1, "No stream found, not binding volumizer"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceManager;->registerOnActivityStopListener(Landroid/preference/PreferenceManager$OnActivityStopListener;)V

    const v0, 0x1020403

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mIconView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mIconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    const v0, 0x7f100356

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mSuppressionTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->init()V

    goto :goto_0
.end method

.method public onClosed()V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    iget-object v1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->unregisterAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "VolumeSeekBarPreference"

    const-string v2, "onDialogClosed : mVolumeChangeReceiver is not registered."

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/preference/SeekBarPreference;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mCallback:Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mCallback:Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;

    iget v1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mStream:I

    invoke-interface {v0, v1, p2}, Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;->onStreamValueChanged(II)V

    :cond_0
    return-void
.end method

.method public setCallback(Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mCallback:Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;

    return-void
.end method

.method public setMuteIcon(I)V
    .locals 1

    iget v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mMuteIconResId:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mMuteIconResId:I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->updateIconView(Z)V

    goto :goto_0
.end method

.method public setStream(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mStream:I

    return-void
.end method

.method public setSuppressionText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mSuppressionText:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mSuppressionText:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->updateSuppressionText()V

    goto :goto_0
.end method

.method public showIcon(IZ)V
    .locals 0

    iput p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mIconResId:I

    invoke-direct {p0, p2}, Lcom/android/settings/notification/VolumeSeekBarPreference;->updateIconView(Z)V

    return-void
.end method

.class public Landroid/preference/SeekBarVolumizer;
.super Ljava/lang/Object;
.source "SeekBarVolumizer.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/SeekBarVolumizer$1;,
        Landroid/preference/SeekBarVolumizer$Receiver;,
        Landroid/preference/SeekBarVolumizer$Observer;,
        Landroid/preference/SeekBarVolumizer$H;,
        Landroid/preference/SeekBarVolumizer$Callback;
    }
.end annotation


# static fields
.field private static final CHECK_RINGTONE_PLAYBACK_DELAY_MS:I = 0x3e8

.field private static final DEBUG:Z = true

.field private static final DISPLAY_PROFILE_EDIT:I = 0x1

.field private static final DISPLAY_SOUND_SETTING:I = 0x0

.field private static final DUAL_SIM:Z

.field private static final FINEVOLUME_MAX_INDEX:I = 0x96

.field private static final MSG_INIT_SAMPLE:I = 0x3

.field private static final MSG_SET_STREAM_VOLUME:I = 0x0

.field private static final MSG_START_SAMPLE:I = 0x1

.field private static final MSG_STOP_SAMPLE:I = 0x2

.field private static final SUPPORT_FINEVOLUME:Z = true

.field private static final TAG:Ljava/lang/String; = "SeekBarVolumizer"


# instance fields
.field private final ACTION_DND_OFF:Ljava/lang/String;

.field private final SIM_CHANGED_ACTION:Ljava/lang/String;

.field private final VOLUME_CHANGED_ACTION:Ljava/lang/String;

.field private mActualRingtoneUri:Landroid/net/Uri;

.field private mAffectedByRingerMode:Z

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mCallback:Landroid/preference/SeekBarVolumizer$Callback;

.field private final mContext:Landroid/content/Context;

.field private mDefaultUri:Landroid/net/Uri;

.field private mDisplayType:I

.field private mEditMode:I

.field private mHandler:Landroid/os/Handler;

.field private mLastProgress:I

.field private mLastWaitingToneVolume:I

.field private final mMaxStreamVolume:I

.field private mMuted:Z

.field private mNotificationOrRing:Z

.field private mOriginalLastAudibleStreamVolume:I

.field private mOriginalNotificationVolume:I

.field private mOriginalRingerMode:I

.field private mOriginalStreamVolume:I

.field private mOriginalSystemVolume:I

.field private mProfileMode:I

.field private final mReceiver:Landroid/preference/SeekBarVolumizer$Receiver;

.field private mRingerMode:I

.field private mRingtone:Landroid/media/Ringtone;

.field private final mSamsungAudioManager:Landroid/media/SamsungAudioManager;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private final mStreamType:I

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private final mUiHandler:Landroid/preference/SeekBarVolumizer$H;

.field private mVibrator:Landroid/os/Vibrator;

.field private mVoiceCapable:Z

.field private mVolumeBeforeMute:I

.field private mVolumeObserver:Landroid/preference/SeekBarVolumizer$Observer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/preference/SeekBarVolumizer;->DUAL_SIM:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/net/Uri;Landroid/preference/SeekBarVolumizer$Callback;)V
    .locals 7

    const/4 v6, 0x5

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/preference/SeekBarVolumizer$H;

    invoke-direct {v1, p0, v4}, Landroid/preference/SeekBarVolumizer$H;-><init>(Landroid/preference/SeekBarVolumizer;Landroid/preference/SeekBarVolumizer$1;)V

    iput-object v1, p0, Landroid/preference/SeekBarVolumizer;->mUiHandler:Landroid/preference/SeekBarVolumizer$H;

    new-instance v1, Landroid/preference/SeekBarVolumizer$Receiver;

    invoke-direct {v1, p0, v4}, Landroid/preference/SeekBarVolumizer$Receiver;-><init>(Landroid/preference/SeekBarVolumizer;Landroid/preference/SeekBarVolumizer$1;)V

    iput-object v1, p0, Landroid/preference/SeekBarVolumizer;->mReceiver:Landroid/preference/SeekBarVolumizer$Receiver;

    iput v2, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    iput v2, p0, Landroid/preference/SeekBarVolumizer;->mVolumeBeforeMute:I

    iput v2, p0, Landroid/preference/SeekBarVolumizer;->mLastWaitingToneVolume:I

    iput-object v4, p0, Landroid/preference/SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    iput-object v1, p0, Landroid/preference/SeekBarVolumizer;->VOLUME_CHANGED_ACTION:Ljava/lang/String;

    const-string v1, "com.samsung.intent.action.DEFAULT_CS_SIM_CHANGED"

    iput-object v1, p0, Landroid/preference/SeekBarVolumizer;->SIM_CHANGED_ACTION:Ljava/lang/String;

    const-string v1, "com.android.systemui.action.dnd_off"

    iput-object v1, p0, Landroid/preference/SeekBarVolumizer;->ACTION_DND_OFF:Ljava/lang/String;

    iput-object p1, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v1, "vibrator"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Landroid/preference/SeekBarVolumizer;->mVibrator:Landroid/os/Vibrator;

    new-instance v1, Landroid/media/SamsungAudioManager;

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/media/SamsungAudioManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/preference/SeekBarVolumizer;->mSamsungAudioManager:Landroid/media/SamsungAudioManager;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1120053

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Landroid/preference/SeekBarVolumizer;->mVoiceCapable:Z

    iput p2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    if-ne v1, v5, :cond_4

    const/16 v1, 0x96

    iput v1, p0, Landroid/preference/SeekBarVolumizer;->mMaxStreamVolume:I

    :goto_0
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->isStreamAffectedByRingerMode(I)Z

    move-result v1

    iput-boolean v1, p0, Landroid/preference/SeekBarVolumizer;->mAffectedByRingerMode:Z

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-direct {p0, v1}, Landroid/preference/SeekBarVolumizer;->isNotificationOrRing(I)Z

    move-result v1

    iput-boolean v1, p0, Landroid/preference/SeekBarVolumizer;->mNotificationOrRing:Z

    iget-boolean v1, p0, Landroid/preference/SeekBarVolumizer;->mNotificationOrRing:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v1

    iput v1, p0, Landroid/preference/SeekBarVolumizer;->mRingerMode:I

    :cond_0
    iput-object p4, p0, Landroid/preference/SeekBarVolumizer;->mCallback:Landroid/preference/SeekBarVolumizer$Callback;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    if-ne v1, v5, :cond_5

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mSamsungAudioManager:Landroid/media/SamsungAudioManager;

    invoke-virtual {v1}, Landroid/media/SamsungAudioManager;->getFineMediaVolume()I

    move-result v0

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v1, v0

    iput v1, p0, Landroid/preference/SeekBarVolumizer;->mOriginalStreamVolume:I

    :goto_1
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "volume_waiting_tone"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/preference/SeekBarVolumizer;->mLastWaitingToneVolume:I

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    iput v1, p0, Landroid/preference/SeekBarVolumizer;->mOriginalRingerMode:I

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v1

    iput-boolean v1, p0, Landroid/preference/SeekBarVolumizer;->mMuted:Z

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mCallback:Landroid/preference/SeekBarVolumizer$Callback;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mCallback:Landroid/preference/SeekBarVolumizer$Callback;

    iget-boolean v2, p0, Landroid/preference/SeekBarVolumizer;->mMuted:Z

    invoke-interface {v1, v2}, Landroid/preference/SeekBarVolumizer$Callback;->onMuted(Z)V

    :cond_1
    if-nez p3, :cond_2

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    if-ne v1, v3, :cond_6

    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->getDefaultRingtoneUri()Landroid/net/Uri;

    move-result-object p3

    :cond_2
    :goto_2
    iput-object p3, p0, Landroid/preference/SeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    if-ne v1, v6, :cond_8

    iget-boolean v1, p0, Landroid/preference/SeekBarVolumizer;->mMuted:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v1

    iput v1, p0, Landroid/preference/SeekBarVolumizer;->mOriginalNotificationVolume:I

    :cond_3
    :goto_3
    return-void

    :cond_4
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    iput v1, p0, Landroid/preference/SeekBarVolumizer;->mMaxStreamVolume:I

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    iput v1, p0, Landroid/preference/SeekBarVolumizer;->mOriginalStreamVolume:I

    goto :goto_1

    :cond_6
    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    if-ne v1, v6, :cond_7

    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->getDefaultNotificationUri()Landroid/net/Uri;

    move-result-object p3

    goto :goto_2

    :cond_7
    sget-object p3, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    goto :goto_2

    :cond_8
    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    iget-boolean v1, p0, Landroid/preference/SeekBarVolumizer;->mMuted:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v1

    iput v1, p0, Landroid/preference/SeekBarVolumizer;->mOriginalSystemVolume:I

    goto :goto_3

    :cond_9
    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    if-ne v1, v3, :cond_3

    iget-boolean v1, p0, Landroid/preference/SeekBarVolumizer;->mMuted:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v1

    iput v1, p0, Landroid/preference/SeekBarVolumizer;->mOriginalLastAudibleStreamVolume:I

    goto :goto_3
.end method

.method static synthetic access$1002(Landroid/preference/SeekBarVolumizer;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    iput-object p1, p0, Landroid/preference/SeekBarVolumizer;->mActualRingtoneUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$200(Landroid/preference/SeekBarVolumizer;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/preference/SeekBarVolumizer;->mMuted:Z

    return v0
.end method

.method static synthetic access$202(Landroid/preference/SeekBarVolumizer;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/preference/SeekBarVolumizer;->mMuted:Z

    return p1
.end method

.method static synthetic access$300(Landroid/preference/SeekBarVolumizer;)Landroid/preference/SeekBarVolumizer$Callback;
    .locals 1

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mCallback:Landroid/preference/SeekBarVolumizer$Callback;

    return-object v0
.end method

.method static synthetic access$400(Landroid/preference/SeekBarVolumizer;)I
    .locals 1

    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    return v0
.end method

.method static synthetic access$500(Landroid/preference/SeekBarVolumizer;)V
    .locals 0

    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->updateSlider()V

    return-void
.end method

.method static synthetic access$600(Landroid/preference/SeekBarVolumizer;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$702(Landroid/preference/SeekBarVolumizer;I)I
    .locals 0

    iput p1, p0, Landroid/preference/SeekBarVolumizer;->mRingerMode:I

    return p1
.end method

.method static synthetic access$800(Landroid/preference/SeekBarVolumizer;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$900()Z
    .locals 1

    sget-boolean v0, Landroid/preference/SeekBarVolumizer;->DUAL_SIM:Z

    return v0
.end method

.method private checkDefaultNotificationUri()V
    .locals 4

    const/4 v1, 0x0

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v0

    sget-boolean v3, Landroid/preference/SeekBarVolumizer;->DUAL_SIM:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI_2:Landroid/net/Uri;

    iput-object v3, p0, Landroid/preference/SeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    :goto_0
    return-void

    :cond_0
    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    iput-object v3, p0, Landroid/preference/SeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    goto :goto_0

    :cond_1
    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    iput-object v3, p0, Landroid/preference/SeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method private checkDefaultRingtoneUri()V
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v0

    sget-boolean v3, Landroid/preference/SeekBarVolumizer;->DUAL_SIM:Z

    if-eqz v3, :cond_2

    if-ne v0, v4, :cond_1

    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI_2:Landroid/net/Uri;

    iput-object v3, p0, Landroid/preference/SeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    iput-object v3, p0, Landroid/preference/SeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    goto :goto_0

    :cond_2
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mActualRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    iput-object v3, p0, Landroid/preference/SeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method private getDefaultNotificationUri()Landroid/net/Uri;
    .locals 3

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v0

    sget-boolean v2, Landroid/preference/SeekBarVolumizer;->DUAL_SIM:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI_2:Landroid/net/Uri;

    :goto_0
    return-object v2

    :cond_0
    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_1
    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method private getDefaultRingtoneUri()Landroid/net/Uri;
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v0

    sget-boolean v2, Landroid/preference/SeekBarVolumizer;->DUAL_SIM:Z

    if-eqz v2, :cond_1

    if-ne v0, v3, :cond_0

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    const/16 v3, 0x8

    invoke-static {v2, v3}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Landroid/preference/SeekBarVolumizer;->mActualRingtoneUri:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI_2:Landroid/net/Uri;

    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Landroid/preference/SeekBarVolumizer;->mActualRingtoneUri:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Landroid/preference/SeekBarVolumizer;->mActualRingtoneUri:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method private getTelephonyService()Lcom/android/internal/telephony/ITelephony;
    .locals 3

    const-string/jumbo v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "SeekBarVolumizer"

    const-string v2, "Unable to find ITelephony interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method private isEnableAOBLE()Z
    .locals 3

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isNotificationOrRing(I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Landroid/preference/SeekBarVolumizer;->mVoiceCapable:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v2, 0x5

    if-eq p1, v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private onInitSample()V
    .locals 2

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setStreamType(I)V

    :cond_0
    return-void
.end method

.method private onStartSample()V
    .locals 5

    invoke-virtual {p0}, Landroid/preference/SeekBarVolumizer;->isSamplePlaying()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mCallback:Landroid/preference/SeekBarVolumizer$Callback;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mCallback:Landroid/preference/SeekBarVolumizer$Callback;

    invoke-interface {v2, p0}, Landroid/preference/SeekBarVolumizer$Callback;->onSampleStarting(Landroid/preference/SeekBarVolumizer;)V

    :cond_0
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v2, :cond_2

    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-eqz v1, :cond_3

    :try_start_0
    const-string v2, "SeekBarVolumizer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isRinging : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "SeekBarVolumizer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isOffhook : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    const-string v2, "SeekBarVolumizer"

    const-string v3, "don\'t play ringtone in volumepreference: return called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "SeekBarVolumizer"

    const-string v3, "ITelephony threw RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/16 v3, 0x8

    if-eq v2, v3, :cond_2

    const-string v2, "SeekBarVolumizer"

    const-string/jumbo v3, "sample : mRingtone.play()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mActualRingtoneUri:Landroid/net/Uri;

    if-eqz v2, :cond_5

    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->checkDefaultRingtoneUri()V

    :cond_4
    :goto_1
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->onInitSample()V

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v2}, Landroid/media/Ringtone;->play()V

    goto :goto_0

    :cond_5
    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->checkDefaultNotificationUri()V

    goto :goto_1
.end method

.method private onStopSample()V
    .locals 1

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    :cond_0
    return-void
.end method

.method private postSetVolume(I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private postStartSample()V
    .locals 4

    const/4 v1, 0x1

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0}, Landroid/preference/SeekBarVolumizer;->isSamplePlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x3e8

    :goto_1
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1
.end method

.method private postStopSample()V
    .locals 3

    const/4 v2, 0x2

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private stopToneGenerator()V
    .locals 2

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->setVolume(F)V

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    :cond_0
    return-void
.end method

.method private updateSlider()V
    .locals 3

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mUiHandler:Landroid/preference/SeekBarVolumizer$H;

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2, v0}, Landroid/preference/SeekBarVolumizer$H;->postUpdateSlider(IZ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public changeVolumeBy(I)V
    .locals 1

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/preference/SeekBarVolumizer;->postSetVolume(I)V

    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->postStartSample()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/preference/SeekBarVolumizer;->mVolumeBeforeMute:I

    return-void
.end method

.method public getSeekBar()Landroid/widget/SeekBar;
    .locals 1

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    const/4 v4, 0x0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    const-string v1, "SeekBarVolumizer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid SeekBarVolumizer message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    :pswitch_0
    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    rem-int/lit8 v0, v1, 0xa

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    iget v3, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    div-int/lit8 v3, v3, 0xa

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mSamsungAudioManager:Landroid/media/SamsungAudioManager;

    invoke-virtual {v1, v0}, Landroid/media/SamsungAudioManager;->setFineMediaVolume(I)V

    :goto_1
    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    iget v3, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_1

    :cond_2
    iget-boolean v1, p0, Landroid/preference/SeekBarVolumizer;->mVoiceCapable:Z

    if-nez v1, :cond_0

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->onStartSample()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->onStopSample()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->onInitSample()V

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

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

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

.method public muteVolume()V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, -0x1

    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mVolumeBeforeMute:I

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mVolumeBeforeMute:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mVolumeBeforeMute:I

    invoke-direct {p0, v0}, Landroid/preference/SeekBarVolumizer;->postSetVolume(I)V

    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->postStartSample()V

    iput v2, p0, Landroid/preference/SeekBarVolumizer;->mVolumeBeforeMute:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Landroid/preference/SeekBarVolumizer;->mVolumeBeforeMute:I

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->postStopSample()V

    invoke-direct {p0, v1}, Landroid/preference/SeekBarVolumizer;->postSetVolume(I)V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 11

    const/16 v5, 0x8

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    if-eqz p3, :cond_5

    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->stopToneGenerator()V

    iget v3, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    if-ne v3, v10, :cond_7

    const-string v3, "CTC"

    const-string/jumbo v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "CHM"

    const-string/jumbo v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget v3, p0, Landroid/preference/SeekBarVolumizer;->mDisplayType:I

    if-ne v3, v8, :cond_1

    if-ge p2, v8, :cond_1

    const/4 p2, 0x1

    :cond_1
    invoke-virtual {p0, p2}, Landroid/preference/SeekBarVolumizer;->setSeekBarVolume(I)V

    iput p2, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    :goto_0
    invoke-virtual {p0}, Landroid/preference/SeekBarVolumizer;->isSamplePlaying()Z

    move-result v3

    if-nez v3, :cond_5

    iget v3, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    if-ne v3, v10, :cond_4

    const-string v3, "CTC"

    const-string/jumbo v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "CHM"

    const-string/jumbo v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget v3, p0, Landroid/preference/SeekBarVolumizer;->mDisplayType:I

    if-ne v3, v8, :cond_3

    if-ge p2, v8, :cond_3

    const/4 p2, 0x1

    :cond_3
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v4, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v3, v4, p2, v9}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_4
    invoke-virtual {p0}, Landroid/preference/SeekBarVolumizer;->startSample()V

    :cond_5
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mCallback:Landroid/preference/SeekBarVolumizer$Callback;

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mCallback:Landroid/preference/SeekBarVolumizer$Callback;

    invoke-interface {v3, p1, p2, p3}, Landroid/preference/SeekBarVolumizer$Callback;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    :cond_6
    return-void

    :cond_7
    iget v3, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_9

    if-nez p2, :cond_8

    invoke-virtual {p0}, Landroid/preference/SeekBarVolumizer;->stopSample()V

    :cond_8
    invoke-direct {p0, p2}, Landroid/preference/SeekBarVolumizer;->postSetVolume(I)V

    goto :goto_0

    :cond_9
    iget v3, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    if-ne v3, v8, :cond_d

    const-string v3, "SeekBarVolumizer"

    const-string v4, "******onProgressChanged*****"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mCallback:Landroid/preference/SeekBarVolumizer$Callback;

    if-eqz v3, :cond_a

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mCallback:Landroid/preference/SeekBarVolumizer$Callback;

    invoke-interface {v3, p0}, Landroid/preference/SeekBarVolumizer$Callback;->onSampleStarting(Landroid/preference/SeekBarVolumizer;)V

    :cond_a
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v8, p2, v9}, Landroid/media/AudioManager;->setStreamVolume(III)V

    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-eqz v1, :cond_c

    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v3

    if-nez v3, :cond_b

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_b
    const-string v3, "SeekBarVolumizer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isRinging : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "SeekBarVolumizer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isOffhook : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "SeekBarVolumizer"

    const-string v4, "don\'t play STREAM_SYSTEM in volumepreference."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string v3, "SeekBarVolumizer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onProgressChanged : AudioManager.STREAM_SYSTEM["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v8}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p2, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    goto/16 :goto_0

    :cond_c
    :try_start_1
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    const/16 v4, 0xa

    int-to-float v5, p2

    invoke-virtual {v3, v4, v5}, Landroid/media/AudioManager;->playSoundEffect(IF)V

    const-string v3, "SeekBarVolumizer"

    const-string/jumbo v4, "sample : playSoundEffect()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v3, "SeekBarVolumizer"

    const-string v4, "ITelephony threw RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_d
    iget v3, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    if-ne v3, v5, :cond_f

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "volume_waiting_tone"

    invoke-static {v3, v4, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v3, :cond_e

    new-instance v3, Landroid/media/ToneGenerator;

    invoke-direct {v3, v5, v9}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v3, p0, Landroid/preference/SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    :cond_e
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    add-int/lit8 v3, p2, -0x2

    int-to-double v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v2, v4

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    iget-object v4, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v5, "situation=15;device=0"

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    mul-float/2addr v4, v2

    invoke-virtual {v3, v4}, Landroid/media/ToneGenerator;->setVolume(F)V

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    const/16 v4, 0x16

    const/16 v5, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/media/ToneGenerator;->startTone(II)Z

    iput p2, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    goto/16 :goto_0

    :cond_f
    iget v3, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_10

    invoke-direct {p0, p2}, Landroid/preference/SeekBarVolumizer;->postSetVolume(I)V

    goto/16 :goto_0

    :cond_10
    invoke-direct {p0, p2}, Landroid/preference/SeekBarVolumizer;->postSetVolume(I)V

    goto/16 :goto_0
.end method

.method public onRestoreInstanceState(Landroid/preference/VolumePreference$VolumeStore;)V
    .locals 2

    iget v0, p1, Landroid/preference/VolumePreference$VolumeStore;->volume:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/preference/VolumePreference$VolumeStore;->originalVolume:I

    iput v0, p0, Landroid/preference/SeekBarVolumizer;->mOriginalStreamVolume:I

    iget v0, p1, Landroid/preference/VolumePreference$VolumeStore;->volume:I

    iput v0, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    invoke-direct {p0, v0}, Landroid/preference/SeekBarVolumizer;->postSetVolume(I)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/preference/VolumePreference$VolumeStore;)V
    .locals 1

    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    iput v0, p1, Landroid/preference/VolumePreference$VolumeStore;->volume:I

    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mOriginalStreamVolume:I

    iput v0, p1, Landroid/preference/VolumePreference$VolumeStore;->originalVolume:I

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public revertVolume()V
    .locals 5

    const/high16 v4, 0x4000000

    const/4 v2, 0x2

    const/4 v3, 0x0

    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "volume_waiting_tone"

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mLastWaitingToneVolume:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/preference/SeekBarVolumizer;->mVoiceCapable:Z

    if-nez v0, :cond_2

    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mOriginalStreamVolume:I

    if-nez v0, :cond_2

    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mOriginalRingerMode:I

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mOriginalRingerMode:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mOriginalRingerMode:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    :cond_1
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mOriginalNotificationVolume:I

    invoke-virtual {v0, v1, v2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mOriginalNotificationVolume:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    :cond_3
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mOriginalSystemVolume:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    :cond_4
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mOriginalStreamVolume:I

    if-nez v0, :cond_6

    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mOriginalRingerMode:I

    if-eq v0, v2, :cond_6

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mOriginalRingerMode:I

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mOriginalRingerMode:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    :cond_5
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mOriginalLastAudibleStreamVolume:I

    invoke-virtual {v0, v1, v2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mOriginalStreamVolume:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto/16 :goto_0
.end method

.method public setDisplayType(I)V
    .locals 3

    const-string v0, "SeekBarVolumizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDisplayType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Landroid/preference/SeekBarVolumizer;->mDisplayType:I

    return-void
.end method

.method public setSeekBar(Landroid/widget/SeekBar;)V
    .locals 3

    iput-object p1, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    const/4 v2, -0x1

    if-le v0, v2, :cond_0

    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    :goto_1
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void

    :cond_0
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mLastWaitingToneVolume:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mMaxStreamVolume:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    invoke-virtual {p0}, Landroid/preference/SeekBarVolumizer;->updateSeekBar()V

    goto :goto_1
.end method

.method public setSeekBarVolume(I)V
    .locals 1

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    invoke-direct {p0, p1}, Landroid/preference/SeekBarVolumizer;->postSetVolume(I)V

    return-void
.end method

.method public start()V
    .locals 5

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SeekBarVolumizer.CallbackHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    new-instance v1, Landroid/preference/SeekBarVolumizer$Observer;

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Landroid/preference/SeekBarVolumizer$Observer;-><init>(Landroid/preference/SeekBarVolumizer;Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/preference/SeekBarVolumizer;->mVolumeObserver:Landroid/preference/SeekBarVolumizer$Observer;

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget v3, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    aget-object v2, v2, v3

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/preference/SeekBarVolumizer;->mVolumeObserver:Landroid/preference/SeekBarVolumizer$Observer;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mReceiver:Landroid/preference/SeekBarVolumizer$Receiver;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/SeekBarVolumizer$Receiver;->setListening(Z)V

    goto :goto_0
.end method

.method public startSample()V
    .locals 5

    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    const-string v2, "SeekBarVolumizer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isRinging : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "SeekBarVolumizer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isOffhook : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v2, "SeekBarVolumizer"

    const-string v3, "don\'t play ringtone in volumepreference: return called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "SeekBarVolumizer"

    const-string v3, "ITelephony threw RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->postStartSample()V

    goto :goto_0
.end method

.method public stop()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->postStopSample()V

    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->stopToneGenerator()V

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    iput-object v2, p0, Landroid/preference/SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    :cond_1
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mVolumeObserver:Landroid/preference/SeekBarVolumizer$Observer;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mReceiver:Landroid/preference/SeekBarVolumizer$Receiver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SeekBarVolumizer$Receiver;->setListening(Z)V

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    iput-object v2, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    iput-object v2, p0, Landroid/preference/SeekBarVolumizer;->mVolumeObserver:Landroid/preference/SeekBarVolumizer$Observer;

    goto :goto_0
.end method

.method public stopSample()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->postStopSample()V

    return-void
.end method

.method protected updateSeekBar()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v3, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v2

    iput-boolean v2, p0, Landroid/preference/SeekBarVolumizer;->mMuted:Z

    iget-boolean v2, p0, Landroid/preference/SeekBarVolumizer;->mNotificationOrRing:Z

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mRingerMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v5}, Landroid/widget/SeekBar;->setEnabled(Z)V

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v2, p0, Landroid/preference/SeekBarVolumizer;->mMuted:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/preference/SeekBarVolumizer;->mNotificationOrRing:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v4}, Landroid/widget/SeekBar;->setEnabled(Z)V

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    :cond_1
    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    if-ne v2, v5, :cond_2

    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->isEnableAOBLE()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v4}, Landroid/widget/SeekBar;->setEnabled(Z)V

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v5}, Landroid/widget/SeekBar;->setEnabled(Z)V

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mSamsungAudioManager:Landroid/media/SamsungAudioManager;

    invoke-virtual {v2}, Landroid/media/SamsungAudioManager;->getFineMediaVolume()I

    move-result v0

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v3, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    mul-int/lit8 v3, v1, 0xa

    add-int/2addr v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    iput v2, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    goto :goto_0

    :cond_3
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v4, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    iput v2, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    goto :goto_0
.end method

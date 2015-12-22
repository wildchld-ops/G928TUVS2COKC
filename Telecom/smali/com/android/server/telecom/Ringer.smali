.class public final Lcom/android/server/telecom/Ringer;
.super Lcom/android/server/telecom/CallsManagerListenerBase;
.source "Ringer.java"

# interfaces
.implements Lcom/android/server/telecom/WiredHeadsetManager$Listener;


# static fields
.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static final VIBRATION_PATTERN:[J


# instance fields
.field private final EVENT_STOP:I

.field private final LIVE_CALL_STATES:[I

.field private final NOTIFY_FLASH:I

.field private final mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

.field public mCallMotionMgr:Lcom/android/server/telecom/secutils/CallMotionMgr;

.field private mCallWaitingPlayer:Lcom/android/server/telecom/InCallTonePlayer;

.field private final mCallsManager:Lcom/android/server/telecom/CallsManager;

.field private final mContext:Landroid/content/Context;

.field mCustomRingtoneUri:Landroid/net/Uri;

.field mCustomVibration:Lcom/android/server/telecom/secutils/CustomVibration;

.field public mFlashNoti:Lcom/android/server/telecom/secutils/FlashNoti;

.field private mHandler:Landroid/os/Handler;

.field private mHeadsetRingtonePlayer:Lcom/android/server/telecom/secutils/SecHeadsetRingtonePlayer;

.field private mIsVibrating:Z

.field private final mPlayerFactory:Lcom/android/server/telecom/InCallTonePlayer$Factory;

.field private final mRingingCalls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/telecom/Call;",
            ">;"
        }
    .end annotation
.end field

.field mRingtone:Landroid/media/Ringtone;

.field private mRingtonePlayer:Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;

.field private mSamsungAudioManager:Landroid/media/SamsungAudioManager;

.field private final mVibrator:Landroid/os/Vibrator;

.field private final mWiredHeadsetManager:Lcom/android/server/telecom/WiredHeadsetManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/telecom/Ringer;->VIBRATION_PATTERN:[J

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/telecom/Ringer;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    return-void

    :array_0
    .array-data 8
        0x0
        0x3e8
        0x3e8
    .end array-data
.end method

.method constructor <init>(Lcom/android/server/telecom/CallAudioManager;Lcom/android/server/telecom/CallsManager;Lcom/android/server/telecom/InCallTonePlayer$Factory;Landroid/content/Context;Lcom/android/server/telecom/WiredHeadsetManager;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/telecom/CallsManagerListenerBase;-><init>()V

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/server/telecom/Ringer;->NOTIFY_FLASH:I

    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/server/telecom/Ringer;->EVENT_STOP:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/telecom/Ringer;->mRingingCalls:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/telecom/Ringer;->mIsVibrating:Z

    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/server/telecom/Ringer;->mCustomRingtoneUri:Landroid/net/Uri;

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/server/telecom/Ringer;->LIVE_CALL_STATES:[I

    new-instance v0, Lcom/android/server/telecom/Ringer$1;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/Ringer$1;-><init>(Lcom/android/server/telecom/Ringer;)V

    iput-object v0, p0, Lcom/android/server/telecom/Ringer;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/telecom/Ringer;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    iput-object p2, p0, Lcom/android/server/telecom/Ringer;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    iput-object p3, p0, Lcom/android/server/telecom/Ringer;->mPlayerFactory:Lcom/android/server/telecom/InCallTonePlayer$Factory;

    iput-object p4, p0, Lcom/android/server/telecom/Ringer;->mContext:Landroid/content/Context;

    iput-object p5, p0, Lcom/android/server/telecom/Ringer;->mWiredHeadsetManager:Lcom/android/server/telecom/WiredHeadsetManager;

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mWiredHeadsetManager:Lcom/android/server/telecom/WiredHeadsetManager;

    invoke-virtual {v0, p0}, Lcom/android/server/telecom/WiredHeadsetManager;->addListener(Lcom/android/server/telecom/WiredHeadsetManager$Listener;)V

    new-instance v0, Landroid/os/SystemVibrator;

    invoke-direct {v0, p4}, Landroid/os/SystemVibrator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/telecom/Ringer;->mVibrator:Landroid/os/Vibrator;

    new-instance v0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;

    invoke-direct {v0, p4}, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/telecom/Ringer;->mRingtonePlayer:Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;

    new-instance v0, Lcom/android/server/telecom/secutils/FlashNoti;

    invoke-direct {v0, p4}, Lcom/android/server/telecom/secutils/FlashNoti;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/telecom/Ringer;->mFlashNoti:Lcom/android/server/telecom/secutils/FlashNoti;

    new-instance v0, Lcom/android/server/telecom/secutils/CallMotionMgr;

    invoke-direct {v0, p4, p0}, Lcom/android/server/telecom/secutils/CallMotionMgr;-><init>(Landroid/content/Context;Lcom/android/server/telecom/Ringer;)V

    iput-object v0, p0, Lcom/android/server/telecom/Ringer;->mCallMotionMgr:Lcom/android/server/telecom/secutils/CallMotionMgr;

    invoke-static {p4}, Lcom/android/server/telecom/secutils/CustomVibration;->getInstance(Landroid/content/Context;)Lcom/android/server/telecom/secutils/CustomVibration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/Ringer;->mCustomVibration:Lcom/android/server/telecom/secutils/CustomVibration;

    new-instance v0, Landroid/media/SamsungAudioManager;

    invoke-direct {v0, p4}, Landroid/media/SamsungAudioManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/telecom/Ringer;->mSamsungAudioManager:Landroid/media/SamsungAudioManager;

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x5
    .end array-data
.end method

.method private getTopMostUnansweredCall()Lcom/android/server/telecom/Call;
    .locals 2

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mRingingCalls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mRingingCalls:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    goto :goto_0
.end method

.method private getVibrateWhenRinging(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/telecom/Ringer;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCarModeOn()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "vibrate_when_ringing"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private onRespondedToIncomingCall(Lcom/android/server/telecom/Call;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/telecom/Ringer;->getTopMostUnansweredCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    if-ne v0, p1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/telecom/Ringer;->removeFromUnansweredCall(Lcom/android/server/telecom/Call;)V

    :cond_0
    return-void
.end method

.method private removeFromUnansweredCall(Lcom/android/server/telecom/Call;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mRingingCalls:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/server/telecom/Ringer;->updateRinging()V

    return-void
.end method

.method private shouldRingForContact(Landroid/net/Uri;)Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_0

    const-string v2, "android.people"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->matchesCallFilter(Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method private startHeadsetRingtone()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "start HeadsetRingtone."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "support_mobilecarrier"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneRelaxMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isOllehPhoneRelaxMode()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "carrier-phone RelaxMode: Don\'t startHeadsetRingtone."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mHeadsetRingtonePlayer:Lcom/android/server/telecom/secutils/SecHeadsetRingtonePlayer;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/server/telecom/secutils/SecHeadsetRingtonePlayer;

    invoke-direct {v0}, Lcom/android/server/telecom/secutils/SecHeadsetRingtonePlayer;-><init>()V

    iput-object v0, p0, Lcom/android/server/telecom/Ringer;->mHeadsetRingtonePlayer:Lcom/android/server/telecom/secutils/SecHeadsetRingtonePlayer;

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mHeadsetRingtonePlayer:Lcom/android/server/telecom/secutils/SecHeadsetRingtonePlayer;

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/SecHeadsetRingtonePlayer;->start()V

    goto :goto_0
.end method

.method private startHedsetMusicStream()V
    .locals 6

    const/4 v5, 0x1

    const/4 v1, 0x0

    const-string v0, "startHedsetMusicStream."

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "support_mobilecarrier"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneRelaxMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isOllehPhoneRelaxMode()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "carrier-phone RelaxMode: Don\'t startHedsetMusicStream."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mRingtonePlayer:Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->isRingtonePlaying()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->hasActiveOrHoldingCall()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isGearVrConnecting()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_7

    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getTargetPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_3

    if-ne v0, v5, :cond_4

    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI_2:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/server/telecom/Ringer;->mCustomRingtoneUri:Landroid/net/Uri;

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mRingtone:Landroid/media/Ringtone;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mRingtonePlayer:Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;

    iget-object v2, p0, Lcom/android/server/telecom/Ringer;->mCustomRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->getRintoneOffset(Landroid/net/Uri;)I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/telecom/Ringer;->mRingtonePlayer:Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;

    iget-object v3, p0, Lcom/android/server/telecom/Ringer;->mCustomRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->getCustomRingtoneUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/Ringer;->mRingtone:Landroid/media/Ringtone;

    :goto_3
    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isUriTrue()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mRingtone:Landroid/media/Ringtone;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setStreamType(I)V

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0, v5}, Landroid/media/Ringtone;->setRepeat(Z)V

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPhoneId failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    goto :goto_1

    :cond_4
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI_3:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/server/telecom/Ringer;->mCustomRingtoneUri:Landroid/net/Uri;

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/android/server/telecom/Ringer;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/telecom/Ringer;->mRingtonePlayer:Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;

    iget-object v4, p0, Lcom/android/server/telecom/Ringer;->mCustomRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->getCustomRingtoneUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v0, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;ILandroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/Ringer;->mRingtone:Landroid/media/Ringtone;

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/telecom/Ringer;->mRingtone:Landroid/media/Ringtone;

    const-string v0, "mRingtone null error"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_7
    move v0, v1

    goto/16 :goto_1
.end method

.method private startRingingOrCallWaiting()V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, -0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getHeldCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/telecom/CallsManager;->getCalls()Ljava/util/Collection;

    move-result-object v2

    const-string v3, "startRingingOrCallWaiting, foregroundCall: %s."

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {p0, v3, v4}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v3, "startRingingOrCallWaiting, backgroundCall: %s."

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {p0, v3, v4}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v3, "support_mobilecarrier"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneRelaxMode()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isOllehPhoneRelaxMode()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const-string v0, "carrier-phone RelaxMode: Don\'t Start the ringtone and/or vibrator."

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v3, "usa_cdma_smc_fac_req"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "ctc_cdma_smc_fac_req"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "no_alert_tone_signal"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    invoke-static {}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->getSilence()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_4
    invoke-direct {p0}, Lcom/android/server/telecom/Ringer;->updateFlashNotification()V

    const-string v3, "voip_interworking"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isVoIPActivated()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v0, "voip is activated - starting call waiting tone..."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v1, :cond_1

    const-string v0, "Playing call-waiting tone."

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/server/telecom/Ringer;->stopCallWaiting()V

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mCallWaitingPlayer:Lcom/android/server/telecom/InCallTonePlayer;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mPlayerFactory:Lcom/android/server/telecom/InCallTonePlayer$Factory;

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->getWaitingTonePlayer(Lcom/android/server/telecom/InCallTonePlayer$Factory;)Lcom/android/server/telecom/InCallTonePlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/Ringer;->mCallWaitingPlayer:Lcom/android/server/telecom/InCallTonePlayer;

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mCallWaitingPlayer:Lcom/android/server/telecom/InCallTonePlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mCallWaitingPlayer:Lcom/android/server/telecom/InCallTonePlayer;

    invoke-virtual {v0}, Lcom/android/server/telecom/InCallTonePlayer;->startTone()V

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->startWaitingTone()V

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/android/server/telecom/Ringer;->mRingingCalls:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    if-nez v0, :cond_13

    const-string v0, "feature_multisim_dsda"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/telecom/Ringer;->LIVE_CALL_STATES:[I

    invoke-virtual {v0, v3}, Lcom/android/server/telecom/CallsManager;->getFirstCallWithState([I)Lcom/android/server/telecom/Call;

    move-result-object v0

    if-nez v0, :cond_13

    :cond_6
    const-string v0, "feature_multisim_dsda"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {v2}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->isDualCallRinging(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/android/server/telecom/Ringer;->stopRinging()V

    invoke-direct {p0}, Lcom/android/server/telecom/Ringer;->updateFlashNotification()V

    :cond_7
    invoke-direct {p0}, Lcom/android/server/telecom/Ringer;->stopCallWaiting()V

    invoke-virtual {v1}, Lcom/android/server/telecom/Call;->getContactUri()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/telecom/Ringer;->shouldRingForContact(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "Telecom"

    const-string v1, "Ringer : do not start ringtone during Zen mode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/telecom/secutils/RingTTS;->getInstance(Landroid/content/Context;)Lcom/android/server/telecom/secutils/RingTTS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/RingTTS;->checkTTS()V

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const-string v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/server/telecom/Ringer;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    invoke-virtual {v2, v6, v1}, Lcom/android/server/telecom/CallAudioManager;->setIsRinging(ZLcom/android/server/telecom/Call;)V

    :goto_1
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/telecom/Ringer;->mRingtonePlayer:Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;

    invoke-virtual {v3}, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->checkingRecoding()Z

    move-result v3

    if-eqz v3, :cond_e

    if-eq v2, v6, :cond_9

    if-nez v2, :cond_9

    invoke-virtual {v0, v8}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-lez v0, :cond_d

    :cond_9
    iget-boolean v0, p0, Lcom/android/server/telecom/Ringer;->mIsVibrating:Z

    if-nez v0, :cond_d

    const-string v0, "- starting vibrator...for voice recording"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mCustomVibration:Lcom/android/server/telecom/secutils/CustomVibration;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mCustomVibration:Lcom/android/server/telecom/secutils/CustomVibration;

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/CustomVibration;->isVibrating()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "all_sound_off"

    invoke-static {v0, v1, v5, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_a

    if-ne v2, v6, :cond_b

    :cond_a
    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mCustomVibration:Lcom/android/server/telecom/secutils/CustomVibration;

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/CustomVibration;->startVibration()V

    :cond_b
    iput-boolean v6, p0, Lcom/android/server/telecom/Ringer;->mIsVibrating:Z

    goto/16 :goto_0

    :cond_c
    iget-object v2, p0, Lcom/android/server/telecom/Ringer;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    invoke-virtual {v2, v6}, Lcom/android/server/telecom/CallAudioManager;->setIsRinging(Z)V

    goto :goto_1

    :cond_d
    const-string v0, "skipping ring because volume is zero for voice recording"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_e
    invoke-virtual {v0, v8}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-lez v0, :cond_10

    const-string v0, "startRingingOrCallWaiting"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p0, v0, v3}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mRingtonePlayer:Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;

    invoke-virtual {v1}, Lcom/android/server/telecom/Call;->getRingtone()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->play(Landroid/net/Uri;)V

    :goto_2
    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mCustomVibration:Lcom/android/server/telecom/secutils/CustomVibration;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mCustomVibration:Lcom/android/server/telecom/secutils/CustomVibration;

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/CustomVibration;->isVibrating()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "all_sound_off"

    invoke-static {v0, v1, v5, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_f

    if-ne v2, v6, :cond_1

    :cond_f
    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mCustomVibration:Lcom/android/server/telecom/secutils/CustomVibration;

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/CustomVibration;->startVibration()V

    goto/16 :goto_0

    :cond_10
    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mWiredHeadsetManager:Lcom/android/server/telecom/WiredHeadsetManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/WiredHeadsetManager;->isPluggedIn()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "audio_global_effect"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-direct {p0}, Lcom/android/server/telecom/Ringer;->startHedsetMusicStream()V

    goto :goto_2

    :cond_11
    invoke-direct {p0}, Lcom/android/server/telecom/Ringer;->startHeadsetRingtone()V

    goto :goto_2

    :cond_12
    const-string v0, "startRingingOrCallWaiting, skipping because volume is 0"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_13
    if-eqz v1, :cond_1

    const-string v0, "Playing call-waiting tone."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/android/server/telecom/Call;->getState()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_14

    invoke-virtual {v1}, Lcom/android/server/telecom/Call;->getState()I

    move-result v0

    if-eq v0, v6, :cond_14

    invoke-virtual {v1}, Lcom/android/server/telecom/Call;->getState()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_15

    :cond_14
    const-string v0, "DIALING or DISCONNECTED return"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_15
    invoke-direct {p0}, Lcom/android/server/telecom/Ringer;->stopRinging()V

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isPlayingWaitingToneByNetwork()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mCallWaitingPlayer:Lcom/android/server/telecom/InCallTonePlayer;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mPlayerFactory:Lcom/android/server/telecom/InCallTonePlayer$Factory;

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->getWaitingTonePlayer(Lcom/android/server/telecom/InCallTonePlayer$Factory;)Lcom/android/server/telecom/InCallTonePlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/Ringer;->mCallWaitingPlayer:Lcom/android/server/telecom/InCallTonePlayer;

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mCallWaitingPlayer:Lcom/android/server/telecom/InCallTonePlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mCallWaitingPlayer:Lcom/android/server/telecom/InCallTonePlayer;

    invoke-virtual {v0}, Lcom/android/server/telecom/InCallTonePlayer;->startTone()V

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->startWaitingTone()V

    goto/16 :goto_0
.end method

.method private stopCallWaiting()V
    .locals 2

    const-string v0, "stop call waiting."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mCallWaitingPlayer:Lcom/android/server/telecom/InCallTonePlayer;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->stopWaitingTone()V

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mCallWaitingPlayer:Lcom/android/server/telecom/InCallTonePlayer;

    invoke-virtual {v0}, Lcom/android/server/telecom/InCallTonePlayer;->stopTone()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/telecom/Ringer;->mCallWaitingPlayer:Lcom/android/server/telecom/InCallTonePlayer;

    :cond_0
    return-void
.end method

.method private stopHeadsetRingtone()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "stop HeadsetRingtone."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mHeadsetRingtonePlayer:Lcom/android/server/telecom/secutils/SecHeadsetRingtonePlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mHeadsetRingtonePlayer:Lcom/android/server/telecom/secutils/SecHeadsetRingtonePlayer;

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/SecHeadsetRingtonePlayer;->stopRingtone()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "- cleaning up headsetRingtone thread..."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/telecom/Ringer;->mHeadsetRingtonePlayer:Lcom/android/server/telecom/secutils/SecHeadsetRingtonePlayer;

    :cond_1
    return-void
.end method

.method private stopHedsetMusicStream()V
    .locals 6

    const/16 v3, 0x1e

    const/4 v0, 0x0

    const-string v1, "stop HedsetMusicStream."

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/telecom/Ringer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/telecom/Ringer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/telecom/Ringer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/telecom/Ringer;->mSamsungAudioManager:Landroid/media/SamsungAudioManager;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mSamsungAudioManager:Landroid/media/SamsungAudioManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/SamsungAudioManager;->playMySpaceEffect(I)I

    move-result v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/telecom/Ringer;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/telecom/Ringer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void
.end method

.method private stopRinging()V
    .locals 5

    const/16 v4, 0x14

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v0, "stopRinging"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mRingtonePlayer:Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->stop()V

    const-string v0, "audio_global_effect"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/android/server/telecom/Ringer;->stopHedsetMusicStream()V

    :goto_0
    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    const-string v0, "-stop flash.handler..."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mFlashNoti:Lcom/android/server/telecom/secutils/FlashNoti;

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/FlashNoti;->stopNotiFlash()V

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mCallMotionMgr:Lcom/android/server/telecom/secutils/CallMotionMgr;

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/CallMotionMgr;->stopFlashCallMotion()V

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mCallMotionMgr:Lcom/android/server/telecom/secutils/CallMotionMgr;

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/CallMotionMgr;->stopCallMotion()V

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/telecom/secutils/RingTTS;->getInstance(Landroid/content/Context;)Lcom/android/server/telecom/secutils/RingTTS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/RingTTS;->stopTTS()V

    iget-boolean v0, p0, Lcom/android/server/telecom/Ringer;->mIsVibrating:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    iput-boolean v3, p0, Lcom/android/server/telecom/Ringer;->mIsVibrating:Z

    :cond_1
    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mCustomVibration:Lcom/android/server/telecom/secutils/CustomVibration;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mCustomVibration:Lcom/android/server/telecom/secutils/CustomVibration;

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/CustomVibration;->stopVibration()V

    :cond_2
    const-string v0, "feature_multisim_dsda"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->hasRingingCallOnly()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    invoke-virtual {v0, v3}, Lcom/android/server/telecom/CallAudioManager;->setIsRinging(Z)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mRingtonePlayer:Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->returnOriginVolume()V

    :cond_4
    return-void

    :cond_5
    invoke-direct {p0}, Lcom/android/server/telecom/Ringer;->stopHeadsetRingtone()V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    invoke-virtual {v0, v3}, Lcom/android/server/telecom/CallAudioManager;->setIsRinging(Z)V

    goto :goto_1
.end method

.method private updateFlashNotification()V
    .locals 4

    const/16 v1, 0x14

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/Ringer;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mCallMotionMgr:Lcom/android/server/telecom/secutils/CallMotionMgr;

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/CallMotionMgr;->checkFlashCallMotion()V

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mCallMotionMgr:Lcom/android/server/telecom/secutils/CallMotionMgr;

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/CallMotionMgr;->checkCallMotion()V

    return-void
.end method

.method private updateRinging()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mRingingCalls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/telecom/Ringer;->stopRinging()V

    invoke-direct {p0}, Lcom/android/server/telecom/Ringer;->stopCallWaiting()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/telecom/Ringer;->startRingingOrCallWaiting()V

    goto :goto_0
.end method


# virtual methods
.method public earlyStopRinging()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/telecom/Ringer;->stopRinging()V

    return-void
.end method

.method public onCallAdded(Lcom/android/server/telecom/Call;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->isIncoming()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mRingingCalls:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "New ringing call is already in list of unanswered calls"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mRingingCalls:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/server/telecom/Ringer;->updateRinging()V

    :cond_1
    return-void
.end method

.method public onCallRemoved(Lcom/android/server/telecom/Call;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/telecom/Ringer;->removeFromUnansweredCall(Lcom/android/server/telecom/Call;)V

    return-void
.end method

.method public onCallStateChanged(Lcom/android/server/telecom/Call;II)V
    .locals 1

    const/4 v0, 0x4

    if-eq p3, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/telecom/Ringer;->removeFromUnansweredCall(Lcom/android/server/telecom/Call;)V

    :cond_0
    return-void
.end method

.method public onForegroundCallChanged(Lcom/android/server/telecom/Call;Lcom/android/server/telecom/Call;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mRingingCalls:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mRingingCalls:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/server/telecom/Ringer;->updateRinging()V

    :cond_1
    return-void
.end method

.method public onIncomingCallAnswered(Lcom/android/server/telecom/Call;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/telecom/Ringer;->onRespondedToIncomingCall(Lcom/android/server/telecom/Call;)V

    return-void
.end method

.method public onIncomingCallRejected(Lcom/android/server/telecom/Call;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/telecom/Ringer;->onRespondedToIncomingCall(Lcom/android/server/telecom/Call;)V

    return-void
.end method

.method public onWiredHeadsetPluggedInChanged(ZZ)V
    .locals 2

    const/16 v1, 0x1e

    invoke-direct {p0}, Lcom/android/server/telecom/Ringer;->getTopMostUnansweredCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/server/telecom/Ringer;->getTopMostUnansweredCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getContactUri()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/telecom/Ringer;->shouldRingForContact(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "WiredHeadsetPluggedInChanged - do not start ringtone for Zen mode"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_4

    const-string v0, "audio_global_effect"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/server/telecom/Ringer;->startHedsetMusicStream()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/server/telecom/Ringer;->startHeadsetRingtone()V

    goto :goto_0

    :cond_4
    const-string v0, "audio_global_effect"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_5
    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/telecom/Ringer;->mRingtone:Landroid/media/Ringtone;

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/android/server/telecom/Ringer;->stopHeadsetRingtone()V

    goto :goto_0
.end method

.method public restartRingingOrCallWaiting()V
    .locals 2

    const-string v0, "restartRingingOrCallWaiting"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/server/telecom/Ringer;->stopRinging()V

    invoke-direct {p0}, Lcom/android/server/telecom/Ringer;->stopCallWaiting()V

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mRingingCalls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/telecom/Ringer;->startRingingOrCallWaiting()V

    :cond_0
    return-void
.end method

.method public shouldVibrate(Landroid/content/Context;)Z
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/server/telecom/Ringer;->getVibrateWhenRinging(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_2

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public silence()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/Ringer;->mRingingCalls:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mRingingCalls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-string v0, "S_RI"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/android/server/telecom/wearable/BluetoothVendorCommand;->sendSecBluetoothATCommand(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/server/telecom/Ringer;->updateRinging()V

    return-void
.end method

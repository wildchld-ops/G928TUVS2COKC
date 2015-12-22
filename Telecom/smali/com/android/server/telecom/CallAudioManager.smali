.class public final Lcom/android/server/telecom/CallAudioManager;
.super Lcom/android/server/telecom/CallsManagerListenerBase;
.source "CallAudioManager.java"

# interfaces
.implements Lcom/android/server/telecom/WiredHeadsetManager$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/telecom/CallAudioManager$AudioParamForCallState;,
        Lcom/android/server/telecom/CallAudioManager$RouteRequester;
    }
.end annotation


# static fields
.field public static mIsInCallUIFocused:Z

.field public static mRequestOpenSpeaker:Z


# instance fields
.field mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioFocusStreamType:I

.field public final mAudioManager:Landroid/media/AudioManager;

.field private final mAudioParamForCallState:Lcom/android/server/telecom/CallAudioManager$AudioParamForCallState;

.field public mAudioState:Landroid/telecom/AudioState;

.field private final mBluetoothManager:Lcom/android/server/telecom/BluetoothManager;

.field private mCallToSpeedUpMTAudio:Lcom/android/server/telecom/Call;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mIsModifyCall:Z

.field private mIsRinging:Z

.field private mIsTonePlaying:Z

.field private mMostRecentlyUsedMode:I

.field private final mStatusBarNotifier:Lcom/android/server/telecom/StatusBarNotifier;

.field public mWasSpeakerOn:Z

.field private final mWiredHeadsetManager:Lcom/android/server/telecom/WiredHeadsetManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/telecom/CallAudioManager;->mIsInCallUIFocused:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/telecom/CallAudioManager;->mRequestOpenSpeaker:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/telecom/StatusBarNotifier;Lcom/android/server/telecom/WiredHeadsetManager;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/telecom/CallsManagerListenerBase;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/telecom/CallAudioManager;->mMostRecentlyUsedMode:I

    iput-object v2, p0, Lcom/android/server/telecom/CallAudioManager;->mCallToSpeedUpMTAudio:Lcom/android/server/telecom/Call;

    new-instance v0, Lcom/android/server/telecom/CallAudioManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/CallAudioManager$1;-><init>(Lcom/android/server/telecom/CallAudioManager;)V

    iput-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/telecom/CallAudioManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/CallAudioManager$2;-><init>(Lcom/android/server/telecom/CallAudioManager;)V

    iput-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    iput-object p2, p0, Lcom/android/server/telecom/CallAudioManager;->mStatusBarNotifier:Lcom/android/server/telecom/StatusBarNotifier;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioManager:Landroid/media/AudioManager;

    new-instance v0, Lcom/android/server/telecom/BluetoothManager;

    invoke-direct {v0, p1, p0}, Lcom/android/server/telecom/BluetoothManager;-><init>(Landroid/content/Context;Lcom/android/server/telecom/CallAudioManager;)V

    iput-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mBluetoothManager:Lcom/android/server/telecom/BluetoothManager;

    new-instance v0, Lcom/android/server/telecom/CallAudioManager$AudioParamForCallState;

    iget-object v1, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-direct {v0, p0, v1}, Lcom/android/server/telecom/CallAudioManager$AudioParamForCallState;-><init>(Lcom/android/server/telecom/CallAudioManager;Landroid/media/AudioManager;)V

    iput-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioParamForCallState:Lcom/android/server/telecom/CallAudioManager$AudioParamForCallState;

    iput-object p3, p0, Lcom/android/server/telecom/CallAudioManager;->mWiredHeadsetManager:Lcom/android/server/telecom/WiredHeadsetManager;

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mWiredHeadsetManager:Lcom/android/server/telecom/WiredHeadsetManager;

    invoke-virtual {v0, p0}, Lcom/android/server/telecom/WiredHeadsetManager;->addListener(Lcom/android/server/telecom/WiredHeadsetManager$Listener;)V

    iput-object p1, p0, Lcom/android/server/telecom/CallAudioManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/android/server/telecom/CallAudioManager;->getInitialAudioState(Lcom/android/server/telecom/Call;)Landroid/telecom/AudioState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/telecom/CallAudioManager;->saveAudioState(Landroid/telecom/AudioState;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioFocusStreamType:I

    return-void
.end method

.method private abandonAudioFocus()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/server/telecom/CallAudioManager;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "change_request_audio_focus_function"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "abandoning audio focus not only call"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioFocusStreamType:I

    :cond_0
    return-void

    :cond_1
    const-string v0, "abandoning audio focus"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->abandonAudioFocusForCall()V

    goto :goto_0
.end method

.method private audioModeToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "MODE_INVALID"

    goto :goto_0

    :pswitch_1
    const-string v0, "MODE_CURRENT"

    goto :goto_0

    :pswitch_2
    const-string v0, "MODE_NORMAL"

    goto :goto_0

    :pswitch_3
    const-string v0, "MODE_RINGTONE"

    goto :goto_0

    :pswitch_4
    const-string v0, "MODE_IN_CALL"

    goto :goto_0

    :pswitch_5
    const-string v0, "MODE_IN_VIDEOCALL"

    goto :goto_0

    :pswitch_6
    const-string v0, "MODE_IN_COMMUNICATION"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method private calculateSupportedRoutes()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mWiredHeadsetManager:Lcom/android/server/telecom/WiredHeadsetManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/WiredHeadsetManager;->isPluggedIn()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xc

    :goto_0
    iget-object v1, p0, Lcom/android/server/telecom/CallAudioManager;->mBluetoothManager:Lcom/android/server/telecom/BluetoothManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/telecom/CallAudioManager;->mBluetoothManager:Lcom/android/server/telecom/BluetoothManager;

    invoke-virtual {v1}, Lcom/android/server/telecom/BluetoothManager;->isBluetoothAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    return v0

    :cond_1
    const/16 v0, 0x9

    goto :goto_0
.end method

.method private getForegroundCall()Lcom/android/server/telecom/Call;
    .locals 3

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isIncomingCallAnswered()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method private getInitialAudioState(Lcom/android/server/telecom/Call;)Landroid/telecom/AudioState;
    .locals 7

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/telecom/CallAudioManager;->calculateSupportedRoutes()I

    move-result v5

    const/4 v0, 0x5

    invoke-direct {p0, v0, v5}, Lcom/android/server/telecom/CallAudioManager;->selectWiredOrEarpiece(II)I

    move-result v0

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCarModeOn()Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "no_proximity_sensor"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/telecom/CallAudioManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/telecom/secutils/TelecomUtils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    iget-object v4, p0, Lcom/android/server/telecom/CallAudioManager;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/telecom/CallAudioManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/telecom/secutils/TelecomUtils;->isDrivingModeOn(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isDockOn()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getStartWithSpeakerphoneOn()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isHardKeyboardClosed()Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_2
    move v4, v1

    :goto_0
    if-eqz v4, :cond_4

    if-ne v0, v1, :cond_3

    const/16 v0, 0x8

    :cond_3
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getStartWithSpeakerphoneOn()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0, v1}, Lcom/android/server/telecom/CallAudioManager;->storeSpeakerState(Z)V

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getState()I

    move-result v4

    const/4 v6, 0x4

    if-eq v4, v6, :cond_4

    invoke-virtual {p1, v2}, Lcom/android/server/telecom/Call;->setStartWithSpeakerphoneOn(Z)V

    :cond_4
    iget-object v4, p0, Lcom/android/server/telecom/CallAudioManager;->mBluetoothManager:Lcom/android/server/telecom/BluetoothManager;

    invoke-virtual {v4}, Lcom/android/server/telecom/BluetoothManager;->isBluetoothWatchSingleConnected()Z

    move-result v4

    iget-object v6, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    iget v6, v6, Landroid/telecom/AudioState;->route:I

    if-ne v6, v3, :cond_8

    :goto_1
    if-eqz p1, :cond_6

    iget-object v6, p0, Lcom/android/server/telecom/CallAudioManager;->mBluetoothManager:Lcom/android/server/telecom/BluetoothManager;

    invoke-virtual {v6}, Lcom/android/server/telecom/BluetoothManager;->isBluetoothAvailable()Z

    move-result v6

    if-eqz v6, :cond_6

    if-eqz v4, :cond_5

    if-eqz v1, :cond_6

    :cond_5
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_6
    :goto_2
    :pswitch_0
    new-instance v1, Landroid/telecom/AudioState;

    invoke-direct {v1, v2, v0, v5}, Landroid/telecom/AudioState;-><init>(ZII)V

    return-object v1

    :cond_7
    move v4, v2

    goto :goto_0

    :cond_8
    move v1, v2

    goto :goto_1

    :pswitch_1
    move v0, v3

    goto :goto_2

    :cond_9
    move v1, v2

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private hasCallFocus()Z
    .locals 2

    iget v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioFocusStreamType:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioFocusStreamType:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasFocus()Z
    .locals 2

    iget v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioFocusStreamType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needToKeepAudioStreamAndMode()Z
    .locals 3

    const/4 v0, 0x1

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->playingSecCallEndTone()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    iget-boolean v2, p0, Lcom/android/server/telecom/CallAudioManager;->mIsTonePlaying:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onCallUpdated(Lcom/android/server/telecom/Call;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/telecom/CallAudioManager;->secUpdateAudioStreamAndMode(Lcom/android/server/telecom/Call;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mCallToSpeedUpMTAudio:Lcom/android/server/telecom/Call;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mCallToSpeedUpMTAudio:Lcom/android/server/telecom/Call;

    :cond_0
    return-void
.end method

.method private requestAudioFocus(I)V
    .locals 6

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "requestAudioFocus, stream: %d -> %d"

    new-array v3, v5, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioFocusStreamType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p0, v0, v3}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioFocusStreamType:I

    if-eq v0, p1, :cond_0

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->checkVoiceRecorder()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "change_request_audio_focus_function"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "requesting audio focus for stream not only call: %d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1, p1, v5}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    :cond_0
    :goto_1
    iput p1, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioFocusStreamType:I

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    const-string v0, "requesting audio focus for stream: %d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1, v5}, Landroid/media/AudioManager;->requestAudioFocusForCall(II)V

    goto :goto_1
.end method

.method private saveAudioState(Landroid/telecom/AudioState;)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mStatusBarNotifier:Lcom/android/server/telecom/StatusBarNotifier;

    iget-object v1, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    invoke-virtual {v1}, Landroid/telecom/AudioState;->isMuted()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/StatusBarNotifier;->notifyMute(Z)V

    const-string v0, "no_earpiece_in_tablet"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/server/telecom/CallAudioManager;->mStatusBarNotifier:Lcom/android/server/telecom/StatusBarNotifier;

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    invoke-virtual {v0}, Landroid/telecom/AudioState;->getRoute()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/server/telecom/StatusBarNotifier;->notifySpeakerphone(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private secUpdateAudioStreamAndMode()V
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/telecom/CallsManager;->getCalls()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/telecom/CallAudioManager;->secUpdateAudioStreamAndMode(Lcom/android/server/telecom/Call;)V

    return-void
.end method

.method private secUpdateAudioStreamAndMode(Lcom/android/server/telecom/Call;)V
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/telecom/CallAudioManager;->needToKeepAudioStreamAndMode()Z

    move-result v0

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->checkVoiceRecorder()Z

    move-result v3

    const-string v4, "secUpdateAudioStreamAndMode, mIsRinging: %b, mIsTonePlaying: %b, playingSecCallEndTone: %b, isRecording: %b"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    iget-boolean v6, p0, Lcom/android/server/telecom/CallAudioManager;->mIsRinging:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v2

    iget-boolean v6, p0, Lcom/android/server/telecom/CallAudioManager;->mIsTonePlaying:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->playingSecCallEndTone()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {p0, v4, v5}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    const-string v0, "Telecom"

    const-string v1, "CallAudioManager : secUpdateAudioStreamAndMode, need to keep current audio environment"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    if-nez v3, :cond_17

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    if-eqz p1, :cond_14

    const-string v3, "Telecom"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CallAudioManager : secUpdateAudioStreamAndMode call State : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getState()I

    move-result v5

    invoke-static {v5}, Landroid/telecom/CallState;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p0, Lcom/android/server/telecom/CallAudioManager;->mIsRinging:Z

    if-nez v3, :cond_1

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getState()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_9

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/telecom/CallsManager;->getCalls()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    :cond_1
    const-string v3, "support_mobilecarrier"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneRelaxMode()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isOllehPhoneRelaxMode()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const-string v0, "Telecom"

    const-string v1, "carrier-phone RelaxMode: don\'t update audio mode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getActiveCall()Lcom/android/server/telecom/Call;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getHeldCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    if-nez v3, :cond_5

    if-nez v0, :cond_5

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isIncomingCallAnswered()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/android/server/telecom/CallAudioManager;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->getAudioStream(Lcom/android/server/telecom/Call;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/telecom/CallAudioManager;->requestAudioFocus(I)V

    :cond_4
    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->getAudioMode(Lcom/android/server/telecom/Call;)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/telecom/CallAudioManager;->setMode(ILcom/android/server/telecom/Call;)V

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    if-eq v0, v1, :cond_6

    invoke-static {v2}, Lcom/android/server/telecom/secutils/TelecomUtils;->setIncomingCallAnswered(Z)V

    :cond_6
    const-string v0, "Telecom"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CallAudioManager : secUpdateAudioStreamAndMode - mAudioFocusStreamType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioFocusStreamType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    iget v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioFocusStreamType:I

    if-eq v0, v7, :cond_1d

    move v0, v1

    :goto_2
    invoke-direct {p0, v7}, Lcom/android/server/telecom/CallAudioManager;->requestAudioFocus(I)V

    if-eqz v0, :cond_8

    invoke-direct {p0, p1, v1}, Lcom/android/server/telecom/CallAudioManager;->setInitialAudioState(Lcom/android/server/telecom/Call;Z)V

    :cond_8
    invoke-direct {p0, v1, p1}, Lcom/android/server/telecom/CallAudioManager;->setMode(ILcom/android/server/telecom/Call;)V

    goto :goto_1

    :cond_9
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getState()I

    move-result v3

    if-eq v3, v1, :cond_a

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getState()I

    move-result v3

    if-eq v3, v9, :cond_a

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getState()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_a

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getState()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_10

    :cond_a
    invoke-direct {p0}, Lcom/android/server/telecom/CallAudioManager;->hasCallFocus()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    move v0, v1

    :goto_3
    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->getAudioStream(Lcom/android/server/telecom/Call;)I

    move-result v3

    iget v4, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioFocusStreamType:I

    if-eq v3, v4, :cond_b

    invoke-direct {p0, v3}, Lcom/android/server/telecom/CallAudioManager;->requestAudioFocus(I)V

    iget-boolean v3, p0, Lcom/android/server/telecom/CallAudioManager;->mIsTonePlaying:Z

    if-eqz v3, :cond_b

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getState()I

    move-result v3

    if-ne v3, v1, :cond_b

    invoke-direct {p0, p1, v1}, Lcom/android/server/telecom/CallAudioManager;->setInitialAudioState(Lcom/android/server/telecom/Call;Z)V

    :cond_b
    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getState()I

    move-result v0

    if-ne v0, v1, :cond_f

    invoke-direct {p0, p1, v1}, Lcom/android/server/telecom/CallAudioManager;->setInitialAudioState(Lcom/android/server/telecom/Call;Z)V

    :cond_c
    :goto_4
    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->getAudioMode(Lcom/android/server/telecom/Call;)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/telecom/CallAudioManager;->setMode(ILcom/android/server/telecom/Call;)V

    goto/16 :goto_1

    :cond_d
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getStartWithSpeakerphoneOn()Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "support_folder_hardkey"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getState()I

    move-result v0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_1c

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isHardKeyboardClosed()Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_e
    move v0, v1

    goto :goto_3

    :cond_f
    invoke-direct {p0, p1}, Lcom/android/server/telecom/CallAudioManager;->setInitialAudioState(Lcom/android/server/telecom/Call;)V

    goto :goto_4

    :cond_10
    iget-boolean v3, p0, Lcom/android/server/telecom/CallAudioManager;->mIsTonePlaying:Z

    if-eqz v3, :cond_11

    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->getAudioStream(Lcom/android/server/telecom/Call;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/telecom/CallAudioManager;->requestAudioFocus(I)V

    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->getAudioMode(Lcom/android/server/telecom/Call;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/telecom/CallAudioManager;->setMode(I)V

    goto/16 :goto_1

    :cond_11
    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getActiveCall()Lcom/android/server/telecom/Call;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getHeldCall()Lcom/android/server/telecom/Call;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getRingingCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_12

    const-string v0, "Telecom"

    const-string v3, "CallAudioManager : Do noting"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_12
    if-nez v3, :cond_5

    if-nez v4, :cond_5

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getState()I

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getState()I

    move-result v0

    if-ne v0, v7, :cond_5

    :cond_13
    invoke-direct {p0}, Lcom/android/server/telecom/CallAudioManager;->hasCallFocus()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, v8}, Lcom/android/server/telecom/CallAudioManager;->setInitialAudioState(Lcom/android/server/telecom/Call;)V

    goto/16 :goto_1

    :cond_14
    iget-boolean v0, p0, Lcom/android/server/telecom/CallAudioManager;->mIsTonePlaying:Z

    if-eqz v0, :cond_15

    iget v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioFocusStreamType:I

    invoke-direct {p0, v0}, Lcom/android/server/telecom/CallAudioManager;->requestAudioFocus(I)V

    invoke-direct {p0, v2}, Lcom/android/server/telecom/CallAudioManager;->setMode(I)V

    goto/16 :goto_1

    :cond_15
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getCalls()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-static {}, Lcom/android/server/telecom/TelecomGlobals;->getInstance()Lcom/android/server/telecom/TelecomGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomGlobals;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->needPlaySecCallEndTone(Landroid/content/Context;)Z

    move-result v0

    :goto_5
    const-string v3, "Telecom"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CallAudioManager : secUpdateAudioStreamAndMode call is null keepAudioFocus : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/android/server/telecom/CallAudioManager;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    invoke-direct {p0, v8}, Lcom/android/server/telecom/CallAudioManager;->setInitialAudioState(Lcom/android/server/telecom/Call;)V

    invoke-direct {p0, v2, p1}, Lcom/android/server/telecom/CallAudioManager;->setMode(ILcom/android/server/telecom/Call;)V

    :cond_16
    invoke-direct {p0}, Lcom/android/server/telecom/CallAudioManager;->abandonAudioFocus()V

    goto/16 :goto_1

    :cond_17
    if-eqz p1, :cond_18

    const-string v0, "Update audio focus stream in recording condition"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v3}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getState()I

    move-result v0

    const/4 v3, 0x7

    if-eq v0, v3, :cond_5

    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->getAudioStream(Lcom/android/server/telecom/Call;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/telecom/CallAudioManager;->requestAudioFocus(I)V

    goto/16 :goto_1

    :cond_18
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getCalls()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-static {}, Lcom/android/server/telecom/TelecomGlobals;->getInstance()Lcom/android/server/telecom/TelecomGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomGlobals;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->needPlaySecCallEndTone(Landroid/content/Context;)Z

    move-result v0

    :goto_6
    const-string v3, "Telecom"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CallAudioManager : secUpdateAudioStreamAndMode call is null keepAudioFocus : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/android/server/telecom/CallAudioManager;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    invoke-direct {p0, v8}, Lcom/android/server/telecom/CallAudioManager;->setInitialAudioState(Lcom/android/server/telecom/Call;)V

    invoke-direct {p0, v2, p1}, Lcom/android/server/telecom/CallAudioManager;->setMode(ILcom/android/server/telecom/Call;)V

    :cond_19
    invoke-direct {p0}, Lcom/android/server/telecom/CallAudioManager;->abandonAudioFocus()V

    goto/16 :goto_1

    :cond_1a
    move v0, v2

    goto :goto_6

    :cond_1b
    move v0, v2

    goto/16 :goto_5

    :cond_1c
    move v0, v2

    goto/16 :goto_3

    :cond_1d
    move v0, v2

    goto/16 :goto_2
.end method

.method private selectWiredOrEarpiece(II)I
    .locals 2

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    and-int/lit8 p1, p2, 0x5

    if-nez p1, :cond_0

    const-string v0, "One of wired headset or earpiece should always be valid."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x1

    :cond_0
    return p1
.end method

.method private setInitialAudioState(Lcom/android/server/telecom/Call;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/telecom/CallAudioManager;->getInitialAudioState(Lcom/android/server/telecom/Call;)Landroid/telecom/AudioState;

    move-result-object v0

    iget v1, v0, Landroid/telecom/AudioState;->route:I

    if-ne v1, v4, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/server/telecom/CallAudioManager;->storeSpeakerState(Z)V

    :cond_0
    const-string v1, "setInitialAudioState %s, %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    aput-object p1, v2, v4

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v1, v0, Landroid/telecom/AudioState;->isMuted:Z

    iget v2, v0, Landroid/telecom/AudioState;->route:I

    iget v0, v0, Landroid/telecom/AudioState;->supportedRouteMask:I

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/telecom/CallAudioManager;->setSystemAudioState(ZII)V

    return-void
.end method

.method private setInitialAudioState(Lcom/android/server/telecom/Call;Z)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/telecom/CallAudioManager;->getInitialAudioState(Lcom/android/server/telecom/Call;)Landroid/telecom/AudioState;

    move-result-object v0

    const-string v1, "setInitialAudioState %s, %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p2, :cond_1

    iget-boolean v1, p0, Lcom/android/server/telecom/CallAudioManager;->mIsTonePlaying:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->playingSecCallEndTone()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isVoIPRingOrOffhook()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/telecom/CallsManager;->hasRingingCallOnly()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "trying to initialize audio state while tone is playing, abort."

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/telecom/AudioState;->isMuted()Z

    move-result v1

    invoke-virtual {v0}, Landroid/telecom/AudioState;->getRoute()I

    move-result v2

    invoke-virtual {v0}, Landroid/telecom/AudioState;->getSupportedRouteMask()I

    move-result v0

    invoke-direct {p0, p2, v1, v2, v0}, Lcom/android/server/telecom/CallAudioManager;->setSystemAudioState(ZZII)V

    goto :goto_0
.end method

.method private setMode(I)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/telecom/CallAudioManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/telecom/CallAudioManager;->setModeInternal(ILcom/android/server/telecom/Call;)V

    return-void
.end method

.method private setMode(ILcom/android/server/telecom/Call;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/telecom/CallAudioManager;->setModeInternal(ILcom/android/server/telecom/Call;)V

    return-void
.end method

.method private setModeInternal(ILcom/android/server/telecom/Call;)V
    .locals 12

    const/4 v11, 0x5

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/telecom/CallAudioManager;->hasFocus()Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v5}, Lcom/android/server/telecom/CallAudioManager;->audioModeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " -> "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/server/telecom/CallAudioManager;->audioModeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v0, "Telecom"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CallAudioManager : Request to change audio mode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "use_callstate_audio_param"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p2, v0, p1}, Lcom/android/server/telecom/CallAudioManager;->needToChangeMode(Lcom/android/server/telecom/Call;Landroid/media/AudioManager;I)Z

    move-result v0

    move v4, v0

    :goto_0
    if-eqz p2, :cond_f

    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "feature_ctc"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {p2}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->isNetworkRoaming(Lcom/android/server/telecom/Call;)Z

    move-result v0

    move v3, v0

    :goto_1
    if-eqz p2, :cond_e

    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p2}, Lcom/android/server/telecom/Call;->isIncoming()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p2}, Lcom/android/server/telecom/Call;->getState()I

    move-result v0

    if-ne v10, v0, :cond_e

    move v0, v1

    :goto_2
    if-eqz p2, :cond_2

    if-ne v5, v1, :cond_2

    const/4 v7, 0x4

    if-ne p1, v7, :cond_2

    invoke-virtual {p2}, Lcom/android/server/telecom/Call;->getState()I

    move-result v7

    if-eq v7, v11, :cond_2

    const-string v0, "No change: case 1"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_3
    iput-boolean v2, p0, Lcom/android/server/telecom/CallAudioManager;->mIsModifyCall:Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {p2, v0, p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->getNeedtoSetMode(Lcom/android/server/telecom/Call;Landroid/media/AudioManager;I)Z

    move-result v0

    move v4, v0

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_4

    if-ne p1, v9, :cond_4

    invoke-virtual {p2}, Lcom/android/server/telecom/Call;->getState()I

    move-result v7

    const/16 v8, 0x9

    if-eq v7, v8, :cond_3

    invoke-virtual {p2}, Lcom/android/server/telecom/Call;->getState()I

    move-result v7

    const/4 v8, 0x7

    if-ne v7, v8, :cond_4

    :cond_3
    const-string v0, "No change: case 2"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    if-eqz p2, :cond_5

    if-ne v5, v1, :cond_5

    if-ne p1, v9, :cond_5

    invoke-virtual {p2}, Lcom/android/server/telecom/Call;->getState()I

    move-result v7

    if-eq v7, v11, :cond_5

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isIncomingCallAnswered()Z

    move-result v7

    if-nez v7, :cond_5

    const-string v0, "No change: case 3"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    if-eqz p2, :cond_7

    if-ne v5, v1, :cond_7

    if-ne p1, v10, :cond_7

    invoke-virtual {p2}, Lcom/android/server/telecom/Call;->getState()I

    move-result v7

    const/16 v8, 0x9

    if-eq v7, v8, :cond_6

    invoke-virtual {p2}, Lcom/android/server/telecom/Call;->getState()I

    move-result v7

    const/4 v8, 0x7

    if-ne v7, v8, :cond_7

    :cond_6
    const-string v0, "No change: case 4"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_7
    if-ne v5, p1, :cond_9

    iget-boolean v7, p0, Lcom/android/server/telecom/CallAudioManager;->mIsModifyCall:Z

    if-eqz v7, :cond_8

    invoke-static {p2}, Lcom/android/server/telecom/secutils/TelecomUtils;->isEpdgCall(Lcom/android/server/telecom/Call;)Z

    move-result v7

    if-eqz v7, :cond_9

    :cond_8
    if-nez v4, :cond_9

    if-nez v0, :cond_9

    if-eqz v3, :cond_0

    :cond_9
    if-ne v5, v9, :cond_b

    if-ne p1, v1, :cond_b

    const-string v0, "use_callstate_audio_param"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "Transition from IN_CALL -> RINGTONE. Resetting to NORMAL first."

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v3}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "feature_multisim_dsda"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {p2, v0, v2}, Lcom/android/server/telecom/secutils/TelecomUtils;->setAudioParameters(Lcom/android/server/telecom/Call;Landroid/media/AudioManager;I)V

    :cond_a
    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setMode(I)V

    :cond_b
    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    if-eqz p2, :cond_c

    invoke-virtual {p2}, Lcom/android/server/telecom/Call;->getState()I

    move-result v0

    const/4 v3, 0x6

    if-eq v0, v3, :cond_c

    const-string v0, "call.getState() : %d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/android/server/telecom/Call;->getState()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {p2, v0, p1}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->setAudioParameters(Lcom/android/server/telecom/Call;Landroid/media/AudioManager;I)V

    :cond_c
    const-string v0, "use_callstate_audio_param"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p2, v0, p1}, Lcom/android/server/telecom/CallAudioManager;->setAudioParametersForMode(Lcom/android/server/telecom/Call;Landroid/media/AudioManager;I)V

    :goto_4
    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setMode(I)V

    iput p1, p0, Lcom/android/server/telecom/CallAudioManager;->mMostRecentlyUsedMode:I

    const-string v0, "Telecom"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CallAudioManager : Completed to change audio mode : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_d
    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {p2, v0, p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->setAudioParameters(Lcom/android/server/telecom/Call;Landroid/media/AudioManager;I)V

    goto :goto_4

    :cond_e
    move v0, v2

    goto/16 :goto_2

    :cond_f
    move v3, v2

    goto/16 :goto_1
.end method

.method private setSystemAudioState(ZII)V
    .locals 6

    const/4 v1, 0x0

    sget-object v5, Lcom/android/server/telecom/CallAudioManager$RouteRequester;->INTERNAL:Lcom/android/server/telecom/CallAudioManager$RouteRequester;

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/telecom/CallAudioManager;->setSystemAudioState(ZZIILcom/android/server/telecom/CallAudioManager$RouteRequester;)V

    return-void
.end method

.method private setSystemAudioState(ZIILcom/android/server/telecom/CallAudioManager$RouteRequester;)V
    .locals 6

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/telecom/CallAudioManager;->setSystemAudioState(ZZIILcom/android/server/telecom/CallAudioManager$RouteRequester;)V

    return-void
.end method

.method private setSystemAudioState(ZZII)V
    .locals 6

    sget-object v5, Lcom/android/server/telecom/CallAudioManager$RouteRequester;->INTERNAL:Lcom/android/server/telecom/CallAudioManager$RouteRequester;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/telecom/CallAudioManager;->setSystemAudioState(ZZIILcom/android/server/telecom/CallAudioManager$RouteRequester;)V

    return-void
.end method

.method private setSystemAudioState(ZZIILcom/android/server/telecom/CallAudioManager$RouteRequester;)V
    .locals 8

    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/server/telecom/CallAudioManager;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "force_initial_audiostate"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/telecom/CallsManager;->getCalls()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    new-instance v3, Landroid/telecom/AudioState;

    invoke-direct {v3, p2, p3, p4}, Landroid/telecom/AudioState;-><init>(ZII)V

    invoke-direct {p0, v3}, Lcom/android/server/telecom/CallAudioManager;->saveAudioState(Landroid/telecom/AudioState;)V

    if-nez p1, :cond_2

    iget-object v3, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    const-string v3, "Telecom"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CallAudioManager : changing audio state from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    invoke-virtual {v3}, Landroid/telecom/AudioState;->isMuted()Z

    move-result v3

    iget-object v4, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v4

    if-eq v3, v4, :cond_3

    const-string v3, "Telecom"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CallAudioManager : changing microphone mute state to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    invoke-virtual {v5}, Landroid/telecom/AudioState;->isMuted()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioManager:Landroid/media/AudioManager;

    iget-object v4, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    invoke-virtual {v4}, Landroid/telecom/AudioState;->isMuted()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    :cond_3
    iget-object v3, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    invoke-virtual {v3}, Landroid/telecom/AudioState;->getRoute()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_9

    const-string v3, "incoming_call_popup_osup"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "support_sync_call"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_4
    iget v3, v2, Landroid/telecom/AudioState;->route:I

    if-ne v3, v7, :cond_7

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isDockOn()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCarModeOn()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isMirrorLinkModeOn()Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/android/server/telecom/CallAudioManager;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/server/telecom/CallAudioManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/telecom/secutils/TelecomUtils;->isDrivingModeOn(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->hasInCallUIWindowFocus()Z

    move-result v3

    if-nez v3, :cond_7

    new-instance v3, Landroid/telecom/AudioState;

    iget v4, v2, Landroid/telecom/AudioState;->route:I

    invoke-direct {v3, p2, v4, p4}, Landroid/telecom/AudioState;-><init>(ZII)V

    invoke-direct {p0, v3}, Lcom/android/server/telecom/CallAudioManager;->saveAudioState(Landroid/telecom/AudioState;)V

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/CallAudioManager;->turnOnSpeaker(Z)V

    :goto_1
    sget-object v3, Lcom/android/server/telecom/CallAudioManager$RouteRequester;->EXTERNAL:Lcom/android/server/telecom/CallAudioManager$RouteRequester;

    if-ne p5, v3, :cond_8

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/CallAudioManager;->turnOnSecBluetoothForSec(Z)V

    :cond_5
    :goto_2
    iget-object v3, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    invoke-virtual {v2, v3}, Landroid/telecom/AudioState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    invoke-virtual {v3, v2, v4}, Lcom/android/server/telecom/CallsManager;->onAudioStateChanged(Landroid/telecom/AudioState;Landroid/telecom/AudioState;)V

    invoke-direct {p0}, Lcom/android/server/telecom/CallAudioManager;->updateAudioForForegroundCall()V

    :cond_6
    const-string v2, "support_function_sound_tuning"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    iget v2, v2, Landroid/telecom/AudioState;->route:I

    if-ne v2, v6, :cond_e

    :goto_3
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/telecom/CallsManager;->getRingbackPlayer()Lcom/android/server/telecom/RingbackPlayer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/telecom/RingbackPlayer;->updateSituationVolume(Landroid/media/AudioManager;Z)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0, v1}, Lcom/android/server/telecom/CallAudioManager;->turnOnSpeaker(Z)V

    goto :goto_1

    :cond_8
    invoke-virtual {p0, v0}, Lcom/android/server/telecom/CallAudioManager;->turnOnBluetooth(Z)V

    goto :goto_2

    :cond_9
    iget-object v3, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    invoke-virtual {v3}, Landroid/telecom/AudioState;->getRoute()I

    move-result v3

    if-ne v3, v7, :cond_b

    sget-object v3, Lcom/android/server/telecom/CallAudioManager$RouteRequester;->EXTERNAL:Lcom/android/server/telecom/CallAudioManager$RouteRequester;

    if-ne p5, v3, :cond_a

    invoke-virtual {p0, v1}, Lcom/android/server/telecom/CallAudioManager;->turnOnSecBluetoothForSec(Z)V

    :goto_4
    invoke-virtual {p0, v0}, Lcom/android/server/telecom/CallAudioManager;->turnOnSpeaker(Z)V

    goto :goto_2

    :cond_a
    invoke-virtual {p0, v1}, Lcom/android/server/telecom/CallAudioManager;->turnOnBluetooth(Z)V

    goto :goto_4

    :cond_b
    iget-object v3, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    invoke-virtual {v3}, Landroid/telecom/AudioState;->getRoute()I

    move-result v3

    if-eq v3, v0, :cond_c

    iget-object v3, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    invoke-virtual {v3}, Landroid/telecom/AudioState;->getRoute()I

    move-result v3

    if-ne v3, v6, :cond_5

    :cond_c
    sget-object v3, Lcom/android/server/telecom/CallAudioManager$RouteRequester;->EXTERNAL:Lcom/android/server/telecom/CallAudioManager$RouteRequester;

    if-ne p5, v3, :cond_d

    invoke-virtual {p0, v1}, Lcom/android/server/telecom/CallAudioManager;->turnOnSecBluetoothForSec(Z)V

    :goto_5
    invoke-virtual {p0, v1}, Lcom/android/server/telecom/CallAudioManager;->turnOnSpeaker(Z)V

    goto :goto_2

    :cond_d
    invoke-virtual {p0, v1}, Lcom/android/server/telecom/CallAudioManager;->turnOnBluetooth(Z)V

    goto :goto_5

    :cond_e
    move v0, v1

    goto :goto_3
.end method

.method private updateAudioForForegroundCall()V
    .locals 3

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getConnectionService()Lcom/android/server/telecom/ConnectionServiceWrapper;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getConnectionService()Lcom/android/server/telecom/ConnectionServiceWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    invoke-virtual {v1, v0, v2}, Lcom/android/server/telecom/ConnectionServiceWrapper;->onAudioStateChanged(Lcom/android/server/telecom/Call;Landroid/telecom/AudioState;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAudioState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "mBluetoothManager:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mBluetoothManager:Lcom/android/server/telecom/BluetoothManager;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/BluetoothManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mWiredHeadsetManager:Lcom/android/server/telecom/WiredHeadsetManager;

    if-eqz v0, :cond_0

    const-string v0, "mWiredHeadsetManager:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mWiredHeadsetManager:Lcom/android/server/telecom/WiredHeadsetManager;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/WiredHeadsetManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAudioFocusStreamType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioFocusStreamType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsRinging: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/telecom/CallAudioManager;->mIsRinging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsTonePlaying: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/telecom/CallAudioManager;->mIsTonePlaying:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPlayingSecCallEndTone: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->playingSecCallEndTone()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mWasSpeakerOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/telecom/CallAudioManager;->mWasSpeakerOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMostRecentlyUsedMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/telecom/CallAudioManager;->mMostRecentlyUsedMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDockOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isDockOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isCarModeOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCarModeOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDrivingModeOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/CallAudioManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/telecom/secutils/TelecomUtils;->isDrivingModeOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isMirrorLinkModeOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isMirrorLinkModeOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "mWiredHeadsetManager: null"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method getAudioState()Landroid/telecom/AudioState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    return-object v0
.end method

.method public final getBluetoothManager()Lcom/android/server/telecom/BluetoothManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mBluetoothManager:Lcom/android/server/telecom/BluetoothManager;

    return-object v0
.end method

.method public isBluetoothAudioOn()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mBluetoothManager:Lcom/android/server/telecom/BluetoothManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/BluetoothManager;->isBluetoothAudioConnected()Z

    move-result v0

    return v0
.end method

.method public isBluetoothDeviceAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mBluetoothManager:Lcom/android/server/telecom/BluetoothManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/BluetoothManager;->isBluetoothAvailable()Z

    move-result v0

    return v0
.end method

.method public isBluetoothWatchSingleConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mBluetoothManager:Lcom/android/server/telecom/BluetoothManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/BluetoothManager;->isBluetoothWatchSingleConnected()Z

    move-result v0

    return v0
.end method

.method public isWiredHeadsetPluggedIn()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mWiredHeadsetManager:Lcom/android/server/telecom/WiredHeadsetManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/WiredHeadsetManager;->isPluggedIn()Z

    move-result v0

    return v0
.end method

.method public mute(Z)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/telecom/CallAudioManager;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "Telecom"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CallAudioManager : should Mute "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/telecom/CallsManager;->hasEmergencyCall()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "ignoring mute for emergency call"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move p1, v0

    :cond_2
    iget-object v1, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    invoke-virtual {v1}, Landroid/telecom/AudioState;->isMuted()Z

    move-result v1

    if-eq v1, p1, :cond_3

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    invoke-virtual {v0}, Landroid/telecom/AudioState;->getRoute()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    invoke-virtual {v1}, Landroid/telecom/AudioState;->getSupportedRouteMask()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/telecom/CallAudioManager;->setSystemAudioState(ZII)V

    goto :goto_0

    :cond_3
    const-string v1, "feature_multisim_dsda"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "force mute, shouldMute: %b for DSDA"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    goto :goto_0
.end method

.method public needToChangeMode(Lcom/android/server/telecom/Call;Landroid/media/AudioManager;I)Z
    .locals 8

    const/16 v7, 0x202

    const/16 v6, 0x100

    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioParamForCallState:Lcom/android/server/telecom/CallAudioManager$AudioParamForCallState;

    invoke-virtual {v0}, Lcom/android/server/telecom/CallAudioManager$AudioParamForCallState;->getAudioParam()I

    move-result v4

    if-ne p3, v5, :cond_3

    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->isCSDomain(Lcom/android/server/telecom/Call;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v3, v2

    :goto_0
    if-ne p3, v5, :cond_4

    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->isPSVoiceCall(Lcom/android/server/telecom/Call;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    :goto_1
    if-eqz v3, :cond_7

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioParamForCallState:Lcom/android/server/telecom/CallAudioManager$AudioParamForCallState;

    if-ne v4, v7, :cond_6

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->isConference()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v0

    if-nez v0, :cond_5

    const-string v0, "getNeedtoSetMode call is conference and not setted secCallExtra yet."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    :goto_2
    iget-object v3, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioParamForCallState:Lcom/android/server/telecom/CallAudioManager$AudioParamForCallState;

    const/16 v3, 0x402

    if-ne v4, v3, :cond_0

    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->isPSVoiceCall(Lcom/android/server/telecom/Call;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioParamForCallState:Lcom/android/server/telecom/CallAudioManager$AudioParamForCallState;

    if-ne v4, v7, :cond_2

    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->isPSVideoCall(Lcom/android/server/telecom/Call;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const-string v0, "needToChangeMode : volte voice <-> volte video"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    :cond_2
    return v0

    :cond_3
    move v3, v1

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioParamForCallState:Lcom/android/server/telecom/CallAudioManager$AudioParamForCallState;

    invoke-virtual {v0, v6, v1}, Lcom/android/server/telecom/CallAudioManager$AudioParamForCallState;->setAudioParam(IZ)V

    const-string v0, "needToChangeMode : volte -> cs (voice)"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioParamForCallState:Lcom/android/server/telecom/CallAudioManager$AudioParamForCallState;

    const/16 v0, 0x402

    if-ne v4, v0, :cond_8

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioParamForCallState:Lcom/android/server/telecom/CallAudioManager$AudioParamForCallState;

    invoke-virtual {v0, v6, v1}, Lcom/android/server/telecom/CallAudioManager$AudioParamForCallState;->setAudioParam(IZ)V

    const-string v0, "needToChangeMode : volte -> cs (video)"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    goto :goto_2

    :cond_7
    if-eqz v0, :cond_8

    const-string v0, "needToChangeMode : cs -> volte (voice)"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    goto :goto_2

    :cond_8
    move v0, v1

    goto :goto_2
.end method

.method onBluetoothStateChange(Lcom/android/server/telecom/BluetoothManager;)V
    .locals 8

    const/4 v7, 0x5

    const/4 v0, 0x2

    const/16 v1, 0x8

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/android/server/telecom/CallAudioManager;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v0, "onBluetoothStateChange: no focus"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/telecom/CallAudioManager;->calculateSupportedRoutes()I

    move-result v3

    iget-object v2, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    invoke-virtual {v2}, Landroid/telecom/AudioState;->getRoute()I

    move-result v2

    invoke-direct {p0}, Lcom/android/server/telecom/CallAudioManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v4

    const-string v5, "incoming_call_popup_osup"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    iget v5, v5, Landroid/telecom/AudioState;->route:I

    if-ne v5, v1, :cond_1

    if-eqz v4, :cond_1

    invoke-static {v4}, Lcom/android/server/telecom/secutils/TelecomUtils;->isVideoCall(Lcom/android/server/telecom/Call;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-boolean v5, Lcom/android/server/telecom/CallAudioManager;->mRequestOpenSpeaker:Z

    if-eqz v5, :cond_1

    invoke-virtual {p0, v6}, Lcom/android/server/telecom/CallAudioManager;->turnOnSecBluetoothForSec(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/CallAudioManager;->turnOnSpeaker(Z)V

    sput-boolean v6, Lcom/android/server/telecom/CallAudioManager;->mRequestOpenSpeaker:Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/telecom/BluetoothManager;->isBluetoothAudioConnectedOrPending()Z

    move-result v5

    if-eqz v5, :cond_2

    :goto_1
    iget-object v1, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    invoke-virtual {v1}, Landroid/telecom/AudioState;->isMuted()Z

    move-result v1

    invoke-direct {p0, v1, v0, v3}, Lcom/android/server/telecom/CallAudioManager;->setSystemAudioState(ZII)V

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    invoke-virtual {v5}, Landroid/telecom/AudioState;->getRoute()I

    move-result v5

    if-ne v5, v0, :cond_7

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/android/server/telecom/Call;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v4}, Lcom/android/server/telecom/secutils/TelecomUtils;->isVideoCall(Lcom/android/server/telecom/Call;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCarModeOn()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    iget-boolean v0, p0, Lcom/android/server/telecom/CallAudioManager;->mWasSpeakerOn:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/server/telecom/CallAudioManager;->isWiredHeadsetPluggedIn()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, v7, v3}, Lcom/android/server/telecom/CallAudioManager;->selectWiredOrEarpiece(II)I

    move-result v0

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/android/server/telecom/Call;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isHardKeyboardClosed()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/server/telecom/CallAudioManager;->isWiredHeadsetPluggedIn()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    goto :goto_1

    :cond_6
    invoke-direct {p0, v7, v3}, Lcom/android/server/telecom/CallAudioManager;->selectWiredOrEarpiece(II)I

    move-result v0

    iput-boolean v6, p0, Lcom/android/server/telecom/CallAudioManager;->mWasSpeakerOn:Z

    goto :goto_1

    :cond_7
    move v0, v2

    goto :goto_1
.end method

.method public onCallAdded(Lcom/android/server/telecom/Call;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/server/telecom/CallAudioManager;->onCallUpdated(Lcom/android/server/telecom/Call;)V

    invoke-direct {p0}, Lcom/android/server/telecom/CallAudioManager;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/telecom/CallAudioManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    if-ne v0, p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->isIncoming()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    invoke-virtual {v1}, Landroid/telecom/AudioState;->getRoute()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    invoke-virtual {v2}, Landroid/telecom/AudioState;->getSupportedRouteMask()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/telecom/CallAudioManager;->setSystemAudioState(ZII)V

    :cond_0
    return-void
.end method

.method public onCallRemoved(Lcom/android/server/telecom/Call;)V
    .locals 2

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/telecom/CallsManager;->mCalledListenerForRemove:Lcom/android/server/telecom/CallsManager$CalledListener;

    sget-object v1, Lcom/android/server/telecom/CallsManager$CalledListener;->PHONESTATE:Lcom/android/server/telecom/CallsManager$CalledListener;

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/telecom/CallsManager;->mPhoneStateBroadcaster:Lcom/android/server/telecom/PhoneStateBroadcaster;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/PhoneStateBroadcaster;->onCallRemoved(Lcom/android/server/telecom/Call;)V

    :cond_0
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->playingSecCallEndTone()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/telecom/CallAudioManager;->resetAudioStateAfterDisconnect()V

    const-string v0, "feature_multisim_dsda"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->updateAudioPathAfterDisconnected(Lcom/android/server/telecom/Call;)V

    :cond_1
    return-void
.end method

.method public onCallStateChanged(Lcom/android/server/telecom/Call;II)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/telecom/CallAudioManager;->onCallUpdated(Lcom/android/server/telecom/Call;)V

    return-void
.end method

.method public onEpdgStateChanged()V
    .locals 2

    const-string v0, "Telecom"

    const-string v1, "CallAudioManager : onEpdgStateChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/telecom/CallAudioManager;->secUpdateAudioStreamAndMode()V

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    iget-boolean v1, v1, Landroid/telecom/AudioState;->isMuted:Z

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    return-void
.end method

.method public onForegroundCallChanged(Lcom/android/server/telecom/Call;Lcom/android/server/telecom/Call;)V
    .locals 3

    invoke-direct {p0, p2}, Lcom/android/server/telecom/CallAudioManager;->onCallUpdated(Lcom/android/server/telecom/Call;)V

    invoke-direct {p0}, Lcom/android/server/telecom/CallAudioManager;->calculateSupportedRoutes()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    iget-object v2, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    invoke-virtual {v2}, Landroid/telecom/AudioState;->getSupportedRouteMask()I

    move-result v2

    if-eq v0, v2, :cond_0

    const-string v0, "tablet_l_osup_vt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lcom/android/server/telecom/secutils/TelecomUtils;->isCSVideoCall(Lcom/android/server/telecom/Call;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/telecom/CallAudioManager;->isBluetoothDeviceAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->hasRingingCallOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/server/telecom/CallAudioManager;->updateAudioForForegroundCall()V

    return-void

    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/telecom/CallAudioManager;->getInitialAudioState(Lcom/android/server/telecom/Call;)Landroid/telecom/AudioState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onForegroundCallChanged -changed mAudioState.getSupportedRouteMask() "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    invoke-virtual {v2}, Landroid/telecom/AudioState;->getSupportedRouteMask()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "keep_incallui_bind_service"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    invoke-virtual {v0}, Landroid/telecom/AudioState;->getRoute()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    invoke-virtual {v1}, Landroid/telecom/AudioState;->getSupportedRouteMask()I

    move-result v0

    iget-object v2, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    invoke-virtual {v2}, Landroid/telecom/AudioState;->getSupportedRouteMask()I

    move-result v2

    if-eq v0, v2, :cond_0

    :cond_2
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/telecom/CallsManager;->onAudioStateChanged(Landroid/telecom/AudioState;Landroid/telecom/AudioState;)V

    goto :goto_0
.end method

.method public onIncomingCallAnswered(Lcom/android/server/telecom/Call;)V
    .locals 10

    const/16 v5, 0x8

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    invoke-virtual {v0}, Landroid/telecom/AudioState;->getRoute()I

    move-result v4

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getCalls()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isDockOn()Z

    move-result v6

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCarModeOn()Z

    move-result v7

    iget-object v8, p0, Lcom/android/server/telecom/CallAudioManager;->mBluetoothManager:Lcom/android/server/telecom/BluetoothManager;

    invoke-virtual {v8}, Lcom/android/server/telecom/BluetoothManager;->isBluetoothWatchSingleConnected()Z

    move-result v8

    if-eqz v0, :cond_2

    iget-object v9, p0, Lcom/android/server/telecom/CallAudioManager;->mBluetoothManager:Lcom/android/server/telecom/BluetoothManager;

    invoke-virtual {v9}, Lcom/android/server/telecom/BluetoothManager;->isBluetoothAvailable()Z

    move-result v9

    if-eqz v9, :cond_2

    if-nez v8, :cond_2

    move v0, v3

    :goto_1
    if-ne v0, v5, :cond_5

    iget-object v3, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    iget v3, v3, Landroid/telecom/AudioState;->supportedRouteMask:I

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/android/server/telecom/CallAudioManager;->setSystemAudioState(ZZII)V

    :goto_2
    const v0, 0x8000

    invoke-virtual {p1, v0}, Lcom/android/server/telecom/Call;->can(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Speed up audio setup for IMS MT call."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/server/telecom/CallAudioManager;->mCallToSpeedUpMTAudio:Lcom/android/server/telecom/Call;

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_6

    if-nez v7, :cond_4

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lcom/android/server/telecom/CallAudioManager;->isWiredHeadsetPluggedIn()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isHardKeyboardClosed()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_4
    if-eq v4, v3, :cond_6

    const/4 v0, 0x4

    if-eq v4, v0, :cond_6

    const-string v0, "Telecom"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CallAudioManager : set to speaker: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v5

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    iget v1, v1, Landroid/telecom/AudioState;->supportedRouteMask:I

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/telecom/CallAudioManager;->setSystemAudioState(ZII)V

    goto :goto_2

    :cond_6
    move v0, v4

    goto :goto_1
.end method

.method public onIsVoipAudioModeChanged(Lcom/android/server/telecom/Call;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/telecom/CallAudioManager;->secUpdateAudioStreamAndMode(Lcom/android/server/telecom/Call;)V

    return-void
.end method

.method public onModifiedCall()V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "onModifiedCall"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v2, p0, Lcom/android/server/telecom/CallAudioManager;->mIsModifyCall:Z

    invoke-direct {p0}, Lcom/android/server/telecom/CallAudioManager;->secUpdateAudioStreamAndMode()V

    const-string v0, "common_volte_hk"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/telecom/CallAudioManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isVideoCall(Lcom/android/server/telecom/Call;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/telecom/CallAudioManager;->getAudioState()Landroid/telecom/AudioState;

    move-result-object v0

    iget v0, v0, Landroid/telecom/AudioState;->route:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/telecom/CallAudioManager;->isBluetoothAudioOn()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/telecom/CallAudioManager;->isWiredHeadsetPluggedIn()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iput-boolean v2, p0, Lcom/android/server/telecom/CallAudioManager;->mWasSpeakerOn:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/CallAudioManager;->setAudioRoute(I)V

    goto :goto_0
.end method

.method public onWiredHeadsetPluggedInChanged(ZZ)V
    .locals 6

    const/16 v3, 0x8

    const/4 v5, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/telecom/CallAudioManager;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    invoke-virtual {v0}, Landroid/telecom/AudioState;->getRoute()I

    move-result v0

    if-ne v0, v5, :cond_2

    move v0, v1

    :goto_1
    iget-object v4, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    invoke-virtual {v4}, Landroid/telecom/AudioState;->getRoute()I

    move-result v4

    if-eqz p2, :cond_3

    move v1, v5

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    invoke-virtual {v0}, Landroid/telecom/AudioState;->isMuted()Z

    move-result v0

    invoke-direct {p0}, Lcom/android/server/telecom/CallAudioManager;->calculateSupportedRoutes()I

    move-result v2

    sget-object v3, Lcom/android/server/telecom/CallAudioManager$RouteRequester;->EXTERNAL:Lcom/android/server/telecom/CallAudioManager$RouteRequester;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/telecom/CallAudioManager;->setSystemAudioState(ZIILcom/android/server/telecom/CallAudioManager$RouteRequester;)V

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    const-string v0, "onWiredHeadsetPluggedInChanged : keep ROUTE_BLUETOOTH"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/android/server/telecom/CallAudioManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_5

    move v2, v1

    :cond_5
    if-eqz v2, :cond_9

    iget-boolean v0, p0, Lcom/android/server/telecom/CallAudioManager;->mWasSpeakerOn:Z

    if-nez v0, :cond_6

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isHardKeyboardClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_6
    move v1, v3

    goto :goto_2

    :cond_7
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isDockOn()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCarModeOn()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isDrivingModeOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isHardKeyboardClosed()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    move v1, v3

    goto :goto_2

    :cond_9
    move v1, v4

    goto :goto_2
.end method

.method public resetAudioStateAfterDisconnect()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "Telecom"

    const-string v1, "CallAudioManager : resetAudioStateAfterDisconnect... "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/telecom/CallAudioManager;->secUpdateAudioStreamAndMode()V

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getCalls()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/android/server/telecom/CallAudioManager;->mWasSpeakerOn:Z

    :cond_0
    const-string v0, "separate_ringback_gain"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "ringbacktone=off"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    :cond_1
    const-string v0, "mute_music_stream_during_call"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {v0, v2}, Lcom/android/server/telecom/secutils/TelecomUtils;->muteMusicStream(Landroid/media/AudioManager;Z)V

    :cond_2
    return-void
.end method

.method public setAudioParametersForMode(Lcom/android/server/telecom/Call;Landroid/media/AudioManager;I)V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/16 v5, 0x20

    const/4 v4, 0x2

    const/4 v3, 0x0

    const-string v0, "Telecom"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CallAudioManager : setAudioParametersForMode : mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p3}, Lcom/android/server/telecom/CallAudioManager;->audioModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p3, :pswitch_data_0

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->isInCall()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->isRinging()Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "Telecom"

    const-string v1, "CallAudioManager : isInCall alive "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isEpdgW2L(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v6}, Lcom/android/server/telecom/secutils/TelecomUtils;->changeEPDGAudioPath(I)V

    :cond_1
    invoke-virtual {p2}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    if-ne v0, v7, :cond_2

    const-string v0, "Telecom"

    const-string v1, "CallAudioManager : reset before MODE_IN_CALL"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioParamForCallState:Lcom/android/server/telecom/CallAudioManager$AudioParamForCallState;

    invoke-virtual {v0}, Lcom/android/server/telecom/CallAudioManager$AudioParamForCallState;->setOffAudioParam()V

    invoke-virtual {p2, v3}, Landroid/media/AudioManager;->setMode(I)V

    :cond_2
    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->isPSVoiceCall(Lcom/android/server/telecom/Call;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioParamForCallState:Lcom/android/server/telecom/CallAudioManager$AudioParamForCallState;

    const/16 v1, 0x202

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/CallAudioManager$AudioParamForCallState;->setAudioParam(I)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->isPSVideoCall(Lcom/android/server/telecom/Call;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioParamForCallState:Lcom/android/server/telecom/CallAudioManager$AudioParamForCallState;

    const/16 v1, 0x402

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/CallAudioManager$AudioParamForCallState;->setAudioParam(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioParamForCallState:Lcom/android/server/telecom/CallAudioManager$AudioParamForCallState;

    invoke-virtual {v0, v4}, Lcom/android/server/telecom/CallAudioManager$AudioParamForCallState;->setAudioParam(I)V

    goto :goto_0

    :pswitch_1
    const-string v0, "psvt_audio_processing_on_ap"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->isPSVideoCall(Lcom/android/server/telecom/Call;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioParamForCallState:Lcom/android/server/telecom/CallAudioManager$AudioParamForCallState;

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/CallAudioManager$AudioParamForCallState;->setAudioParam(I)V

    goto :goto_0

    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isEpdgCall(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "Telecom"

    const-string v1, "CallAudioManager : reset before MODE_IN_COMMUNICATION"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioParamForCallState:Lcom/android/server/telecom/CallAudioManager$AudioParamForCallState;

    invoke-virtual {v0}, Lcom/android/server/telecom/CallAudioManager$AudioParamForCallState;->setOffAudioParam()V

    invoke-virtual {p2, v3}, Landroid/media/AudioManager;->setMode(I)V

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioParamForCallState:Lcom/android/server/telecom/CallAudioManager$AudioParamForCallState;

    invoke-virtual {v0, v5}, Lcom/android/server/telecom/CallAudioManager$AudioParamForCallState;->setAudioParam(I)V

    invoke-virtual {p2, v7}, Landroid/media/AudioManager;->setMode(I)V

    invoke-static {v3}, Lcom/android/server/telecom/secutils/TelecomUtils;->changeEPDGAudioPath(I)V

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_Sprint_Vowifi"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isWFCRegistered()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "Telecom"

    const-string v1, "CallAudioManager : Set Audio Parameter to voipWifiCalling=on"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioParamForCallState:Lcom/android/server/telecom/CallAudioManager$AudioParamForCallState;

    invoke-virtual {v0, v6}, Lcom/android/server/telecom/CallAudioManager$AudioParamForCallState;->setAudioParam(I)V

    invoke-virtual {p2, v3}, Landroid/media/AudioManager;->setMode(I)V

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioParamForCallState:Lcom/android/server/telecom/CallAudioManager$AudioParamForCallState;

    invoke-virtual {v0, v5}, Lcom/android/server/telecom/CallAudioManager$AudioParamForCallState;->setAudioParam(I)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioParamForCallState:Lcom/android/server/telecom/CallAudioManager$AudioParamForCallState;

    invoke-virtual {v0, v5}, Lcom/android/server/telecom/CallAudioManager$AudioParamForCallState;->setAudioParam(I)V

    goto/16 :goto_0

    :pswitch_2
    const-string v0, "audio_vt_support_by_ap"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioParamForCallState:Lcom/android/server/telecom/CallAudioManager$AudioParamForCallState;

    invoke-virtual {v0, v4}, Lcom/android/server/telecom/CallAudioManager$AudioParamForCallState;->setAudioParam(I)V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p2}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioParamForCallState:Lcom/android/server/telecom/CallAudioManager$AudioParamForCallState;

    invoke-virtual {v0}, Lcom/android/server/telecom/CallAudioManager$AudioParamForCallState;->setOffAudioParam()V

    invoke-virtual {p2, v3}, Landroid/media/AudioManager;->setMode(I)V

    goto/16 :goto_0

    :cond_8
    const-string v0, "Telecom"

    const-string v1, "CallAudioManager : init Audio Parameters: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioParamForCallState:Lcom/android/server/telecom/CallAudioManager$AudioParamForCallState;

    invoke-virtual {v0}, Lcom/android/server/telecom/CallAudioManager$AudioParamForCallState;->setOffAudioParam()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setAudioRoute(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/telecom/CallAudioManager;->setAudioRoute(IZ)V

    return-void
.end method

.method public setAudioRoute(IZ)V
    .locals 6

    const/16 v0, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/telecom/CallAudioManager;->hasFocus()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v0, "setAudioRoute has not focus"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "tablet_l_osup_vt"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    iget v3, v3, Landroid/telecom/AudioState;->route:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    invoke-direct {p0}, Lcom/android/server/telecom/CallAudioManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/android/server/telecom/Call;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v3}, Lcom/android/server/telecom/secutils/TelecomUtils;->isVideoCall(Lcom/android/server/telecom/Call;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/server/telecom/CallAudioManager;->mWasSpeakerOn:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/server/telecom/CallAudioManager;->isWiredHeadsetPluggedIn()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, " TABLET_L_OSUP_VT : setAudioRoute changed to : ROUTE_SPEAKER ..."

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move p1, v0

    :cond_2
    const-string v3, "setAudioRoute, route: %s"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1}, Landroid/telecom/AudioState;->audioRouteToString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {p0, v3, v4}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    invoke-virtual {v3}, Landroid/telecom/AudioState;->getSupportedRouteMask()I

    move-result v3

    invoke-direct {p0, p1, v3}, Lcom/android/server/telecom/CallAudioManager;->selectWiredOrEarpiece(II)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    invoke-virtual {v4}, Landroid/telecom/AudioState;->getSupportedRouteMask()I

    move-result v4

    or-int/2addr v4, v3

    if-nez v4, :cond_3

    const-string v0, "Asking to set to a route that is unsupported: %d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    invoke-virtual {v4}, Landroid/telecom/AudioState;->getRoute()I

    move-result v4

    if-eq v4, v3, :cond_0

    if-ne v3, v0, :cond_4

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/server/telecom/CallAudioManager;->mWasSpeakerOn:Z

    if-eqz p2, :cond_5

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    invoke-virtual {v0}, Landroid/telecom/AudioState;->isMuted()Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    invoke-virtual {v1}, Landroid/telecom/AudioState;->getSupportedRouteMask()I

    move-result v1

    sget-object v2, Lcom/android/server/telecom/CallAudioManager$RouteRequester;->EXTERNAL:Lcom/android/server/telecom/CallAudioManager$RouteRequester;

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/android/server/telecom/CallAudioManager;->setSystemAudioState(ZIILcom/android/server/telecom/CallAudioManager$RouteRequester;)V

    goto/16 :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    invoke-virtual {v0}, Landroid/telecom/AudioState;->isMuted()Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    invoke-virtual {v1}, Landroid/telecom/AudioState;->getSupportedRouteMask()I

    move-result v1

    invoke-direct {p0, v0, v3, v1}, Lcom/android/server/telecom/CallAudioManager;->setSystemAudioState(ZII)V

    goto/16 :goto_0
.end method

.method setIsRinging(Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/telecom/CallAudioManager;->mIsRinging:Z

    if-eq v0, p1, :cond_0

    const-string v0, "setIsRinging %b -> %b"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/android/server/telecom/CallAudioManager;->mIsRinging:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean p1, p0, Lcom/android/server/telecom/CallAudioManager;->mIsRinging:Z

    invoke-direct {p0}, Lcom/android/server/telecom/CallAudioManager;->secUpdateAudioStreamAndMode()V

    :cond_0
    return-void
.end method

.method setIsRinging(ZLcom/android/server/telecom/Call;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/telecom/CallAudioManager;->setIsRinging(Z)V

    return-void
.end method

.method setIsTonePlaying(ZI)V
    .locals 4

    invoke-static {}, Lcom/android/server/telecom/ThreadUtil;->checkOnMainThread()V

    iget-boolean v0, p0, Lcom/android/server/telecom/CallAudioManager;->mIsTonePlaying:Z

    if-eq v0, p1, :cond_0

    const-string v0, "mIsTonePlaying %b -> %b."

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/android/server/telecom/CallAudioManager;->mIsTonePlaying:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean p1, p0, Lcom/android/server/telecom/CallAudioManager;->mIsTonePlaying:Z

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/telecom/CallAudioManager;->mIsTonePlaying:Z

    invoke-virtual {v0, v1, p2}, Lcom/android/server/telecom/CallsManager;->setToneState(ZI)V

    invoke-direct {p0}, Lcom/android/server/telecom/CallAudioManager;->secUpdateAudioStreamAndMode()V

    :cond_0
    return-void
.end method

.method public storeSpeakerState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/telecom/CallAudioManager;->mWasSpeakerOn:Z

    return-void
.end method

.method public turnOnBluetooth(Z)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mBluetoothManager:Lcom/android/server/telecom/BluetoothManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/BluetoothManager;->isBluetoothAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mBluetoothManager:Lcom/android/server/telecom/BluetoothManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/BluetoothManager;->isBluetoothAudioConnectedOrPending()Z

    move-result v0

    if-eq p1, v0, :cond_0

    const-string v0, "connecting bluetooth %s"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "but ignore that for gear concept"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    :cond_0
    return-void
.end method

.method public turnOnSecBluetoothForSec(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mBluetoothManager:Lcom/android/server/telecom/BluetoothManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/BluetoothManager;->isBluetoothAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mBluetoothManager:Lcom/android/server/telecom/BluetoothManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/BluetoothManager;->isBluetoothAudioConnectedOrPending()Z

    move-result v0

    if-eq p1, v0, :cond_0

    const-string v0, "Telecom"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CallAudioManager : set bluetooth"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mBluetoothManager:Lcom/android/server/telecom/BluetoothManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/BluetoothManager;->connectBluetoothAudio()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mBluetoothManager:Lcom/android/server/telecom/BluetoothManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/BluetoothManager;->disconnectBluetoothAudio()V

    goto :goto_0
.end method

.method public turnOnSecBluetoothFromEx(Z)V
    .locals 6

    const/4 v5, 0x5

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mBluetoothManager:Lcom/android/server/telecom/BluetoothManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/BluetoothManager;->isBluetoothAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "turnOnSecBluetoothFromEx(): bluetooth is available"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mBluetoothManager:Lcom/android/server/telecom/BluetoothManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/BluetoothManager;->isBluetoothAudioConnectedOrPending()Z

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    iget v0, v0, Landroid/telecom/AudioState;->route:I

    if-ne v0, v3, :cond_1

    invoke-virtual {p0, v5, v2}, Lcom/android/server/telecom/CallAudioManager;->setAudioRoute(IZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v3, v2}, Lcom/android/server/telecom/CallAudioManager;->setAudioRoute(IZ)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_0

    const-string v0, "turnOnSecBluetoothFromEx(): bluetooth is unavailable"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.devicepicker.action.LAUNCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "android.bluetooth.FromHeadsetActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_0
    invoke-static {}, Lcom/android/server/telecom/TelecomGlobals;->getInstance()Lcom/android/server/telecom/TelecomGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/telecom/TelecomGlobals;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Telecom"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ActivityNotFoundException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public turnOnSpeaker(Z)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    if-eq v0, p1, :cond_2

    const-string v0, "Telecom"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CallAudioManager : turning speaker : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-static {v3, v3}, Lcom/android/server/telecom/secutils/TelecomUtils;->setAudioEffect(ZZ)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    if-nez p1, :cond_1

    const/4 v0, 0x1

    invoke-static {v0, v3}, Lcom/android/server/telecom/secutils/TelecomUtils;->setAudioEffect(ZZ)V

    :cond_1
    const-string v0, "support_tphone"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneMode()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "turnOnSpeaker... sendBroadcast intent"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.skt.prod.phone.action.CHANGED_SPEAKER_INFO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/telecom/TelecomGlobals;->getInstance()Lcom/android/server/telecom/TelecomGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/telecom/TelecomGlobals;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method

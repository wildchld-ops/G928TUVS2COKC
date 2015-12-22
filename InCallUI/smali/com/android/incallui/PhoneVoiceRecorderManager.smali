.class public Lcom/android/incallui/PhoneVoiceRecorderManager;
.super Ljava/lang/Object;
.source "PhoneVoiceRecorderManager.java"

# interfaces
.implements Lcom/android/incallui/CallList$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/PhoneVoiceRecorderManager$1;,
        Lcom/android/incallui/PhoneVoiceRecorderManager$RecorderServiceCallback;,
        Lcom/android/incallui/PhoneVoiceRecorderManager$RecorderServiceConnection;
    }
.end annotation


# static fields
.field private static mCall:Lcom/android/incallui/Call;


# instance fields
.field private mInCallActivity:Lcom/android/incallui/SecInCallActivity;

.field private mIsPaused:Z

.field private mIsRecording:Z

.field private mRecorderCallback:Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;

.field private mRecorderConnection:Landroid/content/ServiceConnection;

.field private mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

.field private mSecTabletInCallService:Lcom/android/incallui/SecTabletInCallService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mCall:Lcom/android/incallui/Call;

    return-void
.end method

.method public constructor <init>(Lcom/android/incallui/SecInCallActivity;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mInCallActivity:Lcom/android/incallui/SecInCallActivity;

    iput-object v0, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mSecTabletInCallService:Lcom/android/incallui/SecTabletInCallService;

    iput-object v0, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mRecorderConnection:Landroid/content/ServiceConnection;

    iput-object v0, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    iput-object v0, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mRecorderCallback:Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;

    iput-boolean v1, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mIsRecording:Z

    iput-boolean v1, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mIsPaused:Z

    iput-object p1, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mInCallActivity:Lcom/android/incallui/SecInCallActivity;

    iput-object v0, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mRecorderConnection:Landroid/content/ServiceConnection;

    iput-object v0, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    iput-object v0, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mRecorderCallback:Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;

    iput-boolean v1, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mIsRecording:Z

    iput-boolean v1, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mIsPaused:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/incallui/SecTabletInCallService;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mInCallActivity:Lcom/android/incallui/SecInCallActivity;

    iput-object v0, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mSecTabletInCallService:Lcom/android/incallui/SecTabletInCallService;

    iput-object v0, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mRecorderConnection:Landroid/content/ServiceConnection;

    iput-object v0, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    iput-object v0, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mRecorderCallback:Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;

    iput-boolean v1, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mIsRecording:Z

    iput-boolean v1, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mIsPaused:Z

    iput-object p1, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mSecTabletInCallService:Lcom/android/incallui/SecTabletInCallService;

    iput-object v0, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mRecorderConnection:Landroid/content/ServiceConnection;

    iput-object v0, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    iput-object v0, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mRecorderCallback:Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;

    iput-boolean v1, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mIsRecording:Z

    iput-boolean v1, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mIsPaused:Z

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/PhoneVoiceRecorderManager;)Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mRecorderCallback:Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/incallui/PhoneVoiceRecorderManager;Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;)Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mRecorderCallback:Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/incallui/PhoneVoiceRecorderManager;)Lcom/android/phone/IPhoneVoiceRecorderService;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/incallui/PhoneVoiceRecorderManager;Lcom/android/phone/IPhoneVoiceRecorderService;)Lcom/android/phone/IPhoneVoiceRecorderService;
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/incallui/PhoneVoiceRecorderManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mIsRecording:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/incallui/PhoneVoiceRecorderManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mIsRecording:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/incallui/PhoneVoiceRecorderManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mIsPaused:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/incallui/PhoneVoiceRecorderManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mIsPaused:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/incallui/PhoneVoiceRecorderManager;)Lcom/android/incallui/SecInCallActivity;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mInCallActivity:Lcom/android/incallui/SecInCallActivity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/incallui/PhoneVoiceRecorderManager;)Lcom/android/incallui/SecTabletInCallService;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mSecTabletInCallService:Lcom/android/incallui/SecTabletInCallService;

    return-object v0
.end method


# virtual methods
.method public getRecordTime()J
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    invoke-interface {v1}, Lcom/android/phone/IPhoneVoiceRecorderService;->getRecordTime()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    :goto_0
    return-wide v2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRecordTime() -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public isPaused()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mIsPaused:Z

    return v0
.end method

.method public isRecording()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mIsRecording:Z

    return v0
.end method

.method public onCallListChange(Lcom/android/incallui/CallList;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/incallui/PhoneVoiceRecorderManager;->onRecorderStateChanged()V

    return-void
.end method

.method public onDisconnect(Lcom/android/incallui/Call;)V
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    sget-object v4, Lcom/android/incallui/PhoneVoiceRecorderManager;->mCall:Lcom/android/incallui/Call;

    if-ne p1, v4, :cond_2

    move v1, v2

    :goto_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-static {v4, p1, v2}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_3

    :goto_1
    or-int/2addr v1, v2

    if-eqz v1, :cond_1

    iget-boolean v2, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mIsRecording:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/PhoneVoiceRecorderManager;->stopRecord()V

    :cond_0
    const/4 v2, 0x0

    sput-object v2, Lcom/android/incallui/PhoneVoiceRecorderManager;->mCall:Lcom/android/incallui/Call;

    :cond_1
    return-void

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1
.end method

.method public onIncomingCall(Lcom/android/incallui/Call;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/incallui/PhoneVoiceRecorderManager;->onRecorderStateChanged()V

    return-void
.end method

.method public onRecorderStateChanged()V
    .locals 12

    const/4 v11, 0x3

    const/16 v10, 0x8

    const/4 v9, 0x6

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v7, "voice_call_recording"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v5, "blocked when not defined VOICE_CALL_RECORDING feature"

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v7, "support_mobilecarrier"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isCarrierPhoneMode()Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v5, "blocked in the carrier-phone mode."

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mCall:Lcom/android/incallui/Call;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8, v5}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v2

    sget-object v7, Lcom/android/incallui/PhoneVoiceRecorderManager;->mCall:Lcom/android/incallui/Call;

    if-nez v7, :cond_3

    move-object v0, v2

    :cond_3
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onRecorderStateChanged - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v7

    if-eq v7, v11, :cond_4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v7

    const/16 v8, 0xb

    if-eq v7, v8, :cond_4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v7

    if-eq v7, v9, :cond_4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v7

    if-ne v7, v10, :cond_14

    :cond_4
    move v1, v6

    :goto_1
    const-string v7, "feature_chn"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    if-ne v1, v6, :cond_5

    invoke-static {}, Lcom/android/incallui/InCallUtils;->checkPrimaryEmergencyCall()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v7

    if-ne v7, v9, :cond_5

    const-string v7, "CHN emergency call state is dialing, disable record button"

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_5
    iget-boolean v7, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mIsRecording:Z

    if-nez v7, :cond_6

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v7

    if-ne v7, v10, :cond_6

    const-string v7, "can not start record during onHold"

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_6
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isCallForwardingState()Z

    move-result v7

    if-nez v7, :cond_7

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isKioskMode()Z

    move-result v7

    if-eqz v7, :cond_8

    :cond_7
    const-string v7, "callForwarding is enabled, disable record button"

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_8
    const-string v7, "support_nsri_secure"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isNsriSecureCallMode()Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 v1, 0x0

    iget-boolean v7, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mIsRecording:Z

    if-eqz v7, :cond_9

    invoke-virtual {p0}, Lcom/android/incallui/PhoneVoiceRecorderManager;->stopRecord()V

    :cond_9
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isEncryptionMode()Z

    move-result v7

    if-eqz v7, :cond_a

    const-string v7, "isEncryptionMode, disable record button"

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_a
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/incallui/CallList;->isNotUpdatingCall(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_b

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/incallui/CallList;->isNotUpdatingCall(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    :cond_b
    const-string v7, "isNotUpdatingCall - when conference call is disconnecting, disable record button"

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_c
    iget-boolean v7, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mIsRecording:Z

    if-eqz v7, :cond_d

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v7

    if-ne v7, v11, :cond_15

    iget-boolean v7, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mIsPaused:Z

    if-eqz v7, :cond_d

    invoke-virtual {p0}, Lcom/android/incallui/PhoneVoiceRecorderManager;->resumeRecord()V

    :cond_d
    :goto_2
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v7

    if-eq v7, v9, :cond_e

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v7

    if-ne v7, v10, :cond_17

    :cond_e
    move v3, v6

    :goto_3
    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v7

    if-eq v7, v11, :cond_f

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v7

    const/16 v8, 0xb

    if-eq v7, v8, :cond_f

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v7

    if-ne v7, v9, :cond_18

    :cond_f
    move v4, v6

    :goto_4
    if-nez v4, :cond_10

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMultipartyCall()Z

    move-result v7

    if-nez v7, :cond_10

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v7

    if-ne v7, v10, :cond_19

    move v7, v6

    :goto_5
    or-int/2addr v4, v7

    :cond_10
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "canRecord = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", showRecordInfo="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isPaused="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mInCallActivity:Lcom/android/incallui/SecInCallActivity;

    if-eqz v7, :cond_1b

    iget-object v7, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mInCallActivity:Lcom/android/incallui/SecInCallActivity;

    invoke-virtual {v7}, Lcom/android/incallui/SecInCallActivity;->getSecCallCardFragment()Lcom/android/incallui/SecCallCardUi;

    move-result-object v7

    if-eqz v7, :cond_11

    iget-object v7, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mInCallActivity:Lcom/android/incallui/SecInCallActivity;

    invoke-virtual {v7}, Lcom/android/incallui/SecInCallActivity;->getSecCallCardFragment()Lcom/android/incallui/SecCallCardUi;

    move-result-object v7

    if-eqz v1, :cond_1a

    if-eqz v4, :cond_1a

    :goto_6
    invoke-interface {v7, v6, v3}, Lcom/android/incallui/SecCallCardUi;->manageRecordInfo(ZZ)V

    :cond_11
    const-string v5, "voice_call_recording_menu"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v5

    if-eqz v5, :cond_13

    :cond_12
    iget-object v5, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mInCallActivity:Lcom/android/incallui/SecInCallActivity;

    invoke-virtual {v5}, Lcom/android/incallui/SecInCallActivity;->getSecCallButtonFragment()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v5

    if-eqz v5, :cond_13

    iget-object v5, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mInCallActivity:Lcom/android/incallui/SecInCallActivity;

    invoke-virtual {v5}, Lcom/android/incallui/SecInCallActivity;->getSecCallButtonFragment()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v5

    invoke-interface {v5, v1}, Lcom/android/incallui/SecCallButtonUi;->updateRecordButton(Z)V

    :cond_13
    :goto_7
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->updateNotification()V

    goto/16 :goto_0

    :cond_14
    move v1, v5

    goto/16 :goto_1

    :cond_15
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v7

    if-eq v7, v9, :cond_16

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v7

    if-ne v7, v10, :cond_d

    :cond_16
    iget-boolean v7, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mIsPaused:Z

    if-nez v7, :cond_d

    invoke-virtual {p0}, Lcom/android/incallui/PhoneVoiceRecorderManager;->pauseRecord()V

    goto/16 :goto_2

    :cond_17
    move v3, v5

    goto/16 :goto_3

    :cond_18
    move v4, v5

    goto/16 :goto_4

    :cond_19
    move v7, v5

    goto/16 :goto_5

    :cond_1a
    move v6, v5

    goto :goto_6

    :cond_1b
    iget-object v7, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mSecTabletInCallService:Lcom/android/incallui/SecTabletInCallService;

    if-eqz v7, :cond_1f

    iget-object v7, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mSecTabletInCallService:Lcom/android/incallui/SecTabletInCallService;

    invoke-virtual {v7}, Lcom/android/incallui/SecTabletInCallService;->getSecCallCardFragment()Lcom/android/incallui/SecCallCardUi;

    move-result-object v7

    if-eqz v7, :cond_1c

    iget-object v7, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mSecTabletInCallService:Lcom/android/incallui/SecTabletInCallService;

    invoke-virtual {v7}, Lcom/android/incallui/SecTabletInCallService;->getSecCallCardFragment()Lcom/android/incallui/SecCallCardUi;

    move-result-object v7

    if-eqz v1, :cond_1e

    if-eqz v4, :cond_1e

    :goto_8
    invoke-interface {v7, v6, v3}, Lcom/android/incallui/SecCallCardUi;->manageRecordInfo(ZZ)V

    :cond_1c
    const-string v5, "voice_call_recording_menu"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v5

    if-eqz v5, :cond_13

    :cond_1d
    iget-object v5, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mSecTabletInCallService:Lcom/android/incallui/SecTabletInCallService;

    invoke-virtual {v5}, Lcom/android/incallui/SecTabletInCallService;->getSecCallButtonFragment()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v5

    if-eqz v5, :cond_13

    iget-object v5, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mSecTabletInCallService:Lcom/android/incallui/SecTabletInCallService;

    invoke-virtual {v5}, Lcom/android/incallui/SecTabletInCallService;->getSecCallButtonFragment()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v5

    invoke-interface {v5, v1}, Lcom/android/incallui/SecCallButtonUi;->updateRecordButton(Z)V

    goto :goto_7

    :cond_1e
    move v6, v5

    goto :goto_8

    :cond_1f
    const-string v5, "instance is null"

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_7
.end method

.method public pauseRecord()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mIsRecording:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mIsPaused:Z

    if-nez v1, :cond_0

    const-string v1, "pauseRecord"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    invoke-interface {v1}, Lcom/android/phone/IPhoneVoiceRecorderService;->pauseRecord()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pauseRecord() -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public resumeRecord()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mIsRecording:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mIsPaused:Z

    if-eqz v1, :cond_0

    const-string v1, "resumeRecord"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    invoke-interface {v1}, Lcom/android/phone/IPhoneVoiceRecorderService;->resumeRecord()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumeRecord() -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startRecord(Lcom/android/incallui/Call;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mIsRecording:Z

    if-nez v1, :cond_0

    sput-object p1, Lcom/android/incallui/PhoneVoiceRecorderManager;->mCall:Lcom/android/incallui/Call;

    const-string v1, "startRecord"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    invoke-interface {v1}, Lcom/android/phone/IPhoneVoiceRecorderService;->startRecord()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRecord() -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startService()V
    .locals 11

    iget-object v7, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    if-eqz v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v4, Landroid/content/Intent;

    const-string v7, "com.samsung.phone.PhoneVoiceRecorderService"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/InCallApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v7}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v6, :cond_2

    new-instance v0, Landroid/content/ComponentName;

    iget-object v7, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v8, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_1

    :cond_3
    new-instance v7, Lcom/android/incallui/PhoneVoiceRecorderManager$RecorderServiceConnection;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/android/incallui/PhoneVoiceRecorderManager$RecorderServiceConnection;-><init>(Lcom/android/incallui/PhoneVoiceRecorderManager;Lcom/android/incallui/PhoneVoiceRecorderManager$1;)V

    iput-object v7, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mRecorderConnection:Landroid/content/ServiceConnection;

    :try_start_0
    iget-object v7, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mInCallActivity:Lcom/android/incallui/SecInCallActivity;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mInCallActivity:Lcom/android/incallui/SecInCallActivity;

    sget-object v8, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v7, v4, v8}, Lcom/android/incallui/SecInCallActivity;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v7

    if-eqz v7, :cond_6

    const-string v7, "startService()"

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mInCallActivity:Lcom/android/incallui/SecInCallActivity;

    iget-object v8, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mRecorderConnection:Landroid/content/ServiceConnection;

    const/4 v9, 0x1

    sget-object v10, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v7, v4, v8, v9, v10}, Lcom/android/incallui/SecInCallActivity;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "bindService()"

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    invoke-virtual {v7, p0}, Lcom/android/incallui/CallList;->addListener(Lcom/android/incallui/CallList$Listener;)V

    :cond_4
    :goto_2
    iget-object v7, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mSecTabletInCallService:Lcom/android/incallui/SecTabletInCallService;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mSecTabletInCallService:Lcom/android/incallui/SecTabletInCallService;

    sget-object v8, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v7, v4, v8}, Lcom/android/incallui/SecTabletInCallService;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v7

    if-eqz v7, :cond_8

    const-string v7, "InCallService-startService()"

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mSecTabletInCallService:Lcom/android/incallui/SecTabletInCallService;

    iget-object v8, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mRecorderConnection:Landroid/content/ServiceConnection;

    const/4 v9, 0x1

    sget-object v10, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v7, v4, v8, v9, v10}, Lcom/android/incallui/SecTabletInCallService;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v7, "InCallService-bindService()"

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    invoke-virtual {v7, p0}, Lcom/android/incallui/CallList;->addListener(Lcom/android/incallui/CallList$Listener;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "can not start service - IllegalArgumentException : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    :try_start_1
    const-string v7, "can not bind service"

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const-string v7, "can not start service"

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    const-string v7, "can not bind service"

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string v7, "can not start service"

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public stopRecord()V
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mIsRecording:Z

    if-eqz v1, :cond_0

    const-string v1, "stopRecord"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    invoke-interface {v1}, Lcom/android/phone/IPhoneVoiceRecorderService;->stopRecord()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    sput-object v3, Lcom/android/incallui/PhoneVoiceRecorderManager;->mCall:Lcom/android/incallui/Call;

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopRecord() -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sput-object v3, Lcom/android/incallui/PhoneVoiceRecorderManager;->mCall:Lcom/android/incallui/Call;

    goto :goto_0

    :catchall_0
    move-exception v1

    sput-object v3, Lcom/android/incallui/PhoneVoiceRecorderManager;->mCall:Lcom/android/incallui/Call;

    throw v1
.end method

.method public stopService()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/PhoneVoiceRecorderManager;->stopService(Z)V

    return-void
.end method

.method public stopService(Z)V
    .locals 10

    const/4 v9, 0x0

    new-instance v4, Landroid/content/Intent;

    const-string v7, "com.samsung.phone.PhoneVoiceRecorderService"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/InCallApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v7}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v6, :cond_0

    new-instance v0, Landroid/content/ComponentName;

    iget-object v7, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v8, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v7, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    if-eqz v7, :cond_4

    if-eqz p1, :cond_5

    const-string v7, "stopService()"

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    iget-object v8, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mRecorderCallback:Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;

    invoke-interface {v7, v8}, Lcom/android/phone/IPhoneVoiceRecorderService;->unregisterCallback(Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;)V

    iget-object v7, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mInCallActivity:Lcom/android/incallui/SecInCallActivity;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mInCallActivity:Lcom/android/incallui/SecInCallActivity;

    iget-object v8, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mRecorderConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v7, v8}, Lcom/android/incallui/SecInCallActivity;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v7, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mInCallActivity:Lcom/android/incallui/SecInCallActivity;

    invoke-virtual {v7, v4}, Lcom/android/incallui/SecInCallActivity;->stopService(Landroid/content/Intent;)Z

    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mInCallActivity:Lcom/android/incallui/SecInCallActivity;

    :cond_2
    iget-object v7, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mSecTabletInCallService:Lcom/android/incallui/SecTabletInCallService;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mSecTabletInCallService:Lcom/android/incallui/SecTabletInCallService;

    iget-object v8, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mRecorderConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v7, v8}, Lcom/android/incallui/SecTabletInCallService;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v7, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mSecTabletInCallService:Lcom/android/incallui/SecTabletInCallService;

    invoke-virtual {v7, v4}, Lcom/android/incallui/SecTabletInCallService;->stopService(Landroid/content/Intent;)Z

    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mSecTabletInCallService:Lcom/android/incallui/SecTabletInCallService;

    :cond_3
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    invoke-virtual {v7, p0}, Lcom/android/incallui/CallList;->removeListener(Lcom/android/incallui/CallList$Listener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_1
    sput-object v9, Lcom/android/incallui/PhoneVoiceRecorderManager;->mCall:Lcom/android/incallui/Call;

    :goto_2
    return-void

    :cond_5
    :try_start_1
    iget-object v7, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mSecTabletInCallService:Lcom/android/incallui/SecTabletInCallService;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mSecTabletInCallService:Lcom/android/incallui/SecTabletInCallService;

    iget-object v8, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mRecorderConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v7, v8}, Lcom/android/incallui/SecTabletInCallService;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v7, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mSecTabletInCallService:Lcom/android/incallui/SecTabletInCallService;

    invoke-virtual {v7, v4}, Lcom/android/incallui/SecTabletInCallService;->stopService(Landroid/content/Intent;)Z

    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mSecTabletInCallService:Lcom/android/incallui/SecTabletInCallService;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "stopService() -"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sput-object v9, Lcom/android/incallui/PhoneVoiceRecorderManager;->mCall:Lcom/android/incallui/Call;

    goto :goto_2

    :catchall_0
    move-exception v7

    sput-object v9, Lcom/android/incallui/PhoneVoiceRecorderManager;->mCall:Lcom/android/incallui/Call;

    throw v7
.end method

.method public toggleRecord()V
    .locals 6

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toggleRecord(): state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/incallui/PhoneVoiceRecorderManager;->mIsRecording:Z

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/PhoneVoiceRecorderManager;->getRecordTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    cmp-long v1, v2, v4

    if-gez v1, :cond_2

    const-string v1, "in active state ignore under 1000ms"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/PhoneVoiceRecorderManager;->onRecorderStateChanged()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/PhoneVoiceRecorderManager;->stopRecord()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/incallui/PhoneVoiceRecorderManager;->startRecord(Lcom/android/incallui/Call;)V

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    :cond_4
    const v1, 0x7f0d0222

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->displayToast(I)V

    goto :goto_0
.end method

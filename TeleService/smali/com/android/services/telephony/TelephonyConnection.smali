.class public abstract Lcom/android/services/telephony/TelephonyConnection;
.super Landroid/telecom/Connection;
.source "TelephonyConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/services/telephony/TelephonyConnection$4;,
        Lcom/android/services/telephony/TelephonyConnection$TelephonyConnectionListener;
    }
.end annotation


# instance fields
.field private mAudioQuality:I

.field private mCallId:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field protected mHasBeenVideoCall:Z

.field private mIsMultiParty:Z

.field private mLocalVideoCapable:Z

.field private mNeedHangupWhenConnected:Z

.field protected mOriginalConnection:Lcom/android/internal/telephony/Connection;

.field private final mOriginalConnectionListener:Lcom/android/internal/telephony/Connection$Listener;

.field protected mOriginalConnectionState:Lcom/android/internal/telephony/Call$State;

.field private final mPostDialListener:Lcom/android/internal/telephony/Connection$PostDialListener;

.field private mRemoteVideoCapable:Z

.field private mSecModifyCallHandler:Lcom/android/services/utils/SecModifyCallHandler;

.field private final mTelephonyListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/services/telephony/TelephonyConnection$TelephonyConnectionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mVoicePrivacyState:Z

.field private mWasImsConnection:Z


# direct methods
.method protected constructor <init>(Lcom/android/internal/telephony/Connection;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Landroid/telecom/Connection;-><init>()V

    iput-boolean v4, p0, Lcom/android/services/telephony/TelephonyConnection;->mVoicePrivacyState:Z

    iput-boolean v4, p0, Lcom/android/services/telephony/TelephonyConnection;->mNeedHangupWhenConnected:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mSecModifyCallHandler:Lcom/android/services/utils/SecModifyCallHandler;

    new-instance v0, Lcom/android/services/telephony/TelephonyConnection$1;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/TelephonyConnection$1;-><init>(Lcom/android/services/telephony/TelephonyConnection;)V

    iput-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/services/telephony/TelephonyConnection$2;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/TelephonyConnection$2;-><init>(Lcom/android/services/telephony/TelephonyConnection;)V

    iput-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mPostDialListener:Lcom/android/internal/telephony/Connection$PostDialListener;

    new-instance v0, Lcom/android/services/telephony/TelephonyConnection$3;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/TelephonyConnection$3;-><init>(Lcom/android/services/telephony/TelephonyConnection;)V

    iput-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnectionListener:Lcom/android/internal/telephony/Connection$Listener;

    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnectionState:Lcom/android/internal/telephony/Call$State;

    iput-boolean v4, p0, Lcom/android/services/telephony/TelephonyConnection;->mIsMultiParty:Z

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mTelephonyListeners:Ljava/util/Set;

    iput-boolean v4, p0, Lcom/android/services/telephony/TelephonyConnection;->mHasBeenVideoCall:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/services/telephony/TelephonyConnection;->setOriginalConnection(Lcom/android/internal/telephony/Connection;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/services/telephony/TelephonyConnection;)Lcom/android/internal/telephony/Connection;
    .locals 1

    invoke-direct {p0}, Lcom/android/services/telephony/TelephonyConnection;->getForegroundConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/services/telephony/TelephonyConnection;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mVoicePrivacyState:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/services/telephony/TelephonyConnection;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/services/telephony/TelephonyConnection;->mVoicePrivacyState:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/services/telephony/TelephonyConnection;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/services/telephony/TelephonyConnection;->updateConferenceParticipants(Ljava/util/List;)V

    return-void
.end method

.method private applyAudioQualityCapabilities(I)I
    .locals 4

    const/16 v3, 0x400

    move v0, p1

    iget v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mAudioQuality:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-direct {p0, v0, v3}, Lcom/android/services/telephony/TelephonyConnection;->applyCapability(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, v0, v3}, Lcom/android/services/telephony/TelephonyConnection;->removeCapability(II)I

    move-result v0

    goto :goto_0
.end method

.method private applyCapability(II)I
    .locals 1

    or-int v0, p1, p2

    return v0
.end method

.method private applyConferenceTerminationCapabilities(I)I
    .locals 2

    move v0, p1

    invoke-direct {p0}, Lcom/android/services/telephony/TelephonyConnection;->isDomainPS()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "not_support_ims_conference_split"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    or-int/lit16 v0, v0, 0x1000

    :cond_0
    const-string v1, "not_support_ims_conference_disconnect"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    or-int/lit16 v0, v0, 0x2000

    :cond_1
    :goto_0
    return v0

    :cond_2
    const-string v1, "ims_voice_conference_kddi"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    or-int/lit16 v0, v0, 0x2000

    or-int/lit16 v0, v0, 0x1000

    goto :goto_0
.end method

.method private applyVideoCapabilities(I)I
    .locals 4

    const/16 v3, 0x200

    const/16 v2, 0x100

    move v0, p1

    iget-boolean v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mRemoteVideoCapable:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, v0, v3}, Lcom/android/services/telephony/TelephonyConnection;->applyCapability(II)I

    move-result v0

    :goto_0
    iget-boolean v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mLocalVideoCapable:Z

    if-eqz v1, :cond_1

    invoke-direct {p0, v0, v2}, Lcom/android/services/telephony/TelephonyConnection;->applyCapability(II)I

    move-result v0

    :goto_1
    return v0

    :cond_0
    invoke-direct {p0, v0, v3}, Lcom/android/services/telephony/TelephonyConnection;->removeCapability(II)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0, v2}, Lcom/android/services/telephony/TelephonyConnection;->removeCapability(II)I

    move-result v0

    goto :goto_1
.end method

.method private applyVoicePrivacyCapabilities(I)I
    .locals 3

    const/high16 v2, 0x200000

    move v0, p1

    iget-boolean v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mVoicePrivacyState:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, v0, v2}, Lcom/android/services/telephony/TelephonyConnection;->applyCapability(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, v0, v2}, Lcom/android/services/telephony/TelephonyConnection;->removeCapability(II)I

    move-result v0

    goto :goto_0
.end method

.method private close()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v0, "close"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForRingbackTone(Landroid/os/Handler;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForHandoverStateChanged(Landroid/os/Handler;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, v0, v1}, Lcom/android/services/telephony/TelephonyConnection;->unregisterSecPhoneNotification(Lcom/android/internal/telephony/Phone;Landroid/os/Handler;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->clearDisconnected()V

    :cond_0
    const-string v0, "enabled"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mSecModifyCallHandler:Lcom/android/services/utils/SecModifyCallHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mSecModifyCallHandler:Lcom/android/services/utils/SecModifyCallHandler;

    invoke-virtual {v0}, Lcom/android/services/utils/SecModifyCallHandler;->unRegisterForNotifications()V

    iput-object v3, p0, Lcom/android/services/telephony/TelephonyConnection;->mSecModifyCallHandler:Lcom/android/services/utils/SecModifyCallHandler;

    :cond_1
    iput-object v3, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    iput-boolean v2, p0, Lcom/android/services/telephony/TelephonyConnection;->mNeedHangupWhenConnected:Z

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->destroy()V

    return-void
.end method

.method private final fireOnOriginalConnectionConfigured()V
    .locals 3

    iget-object v2, p0, Lcom/android/services/telephony/TelephonyConnection;->mTelephonyListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/services/telephony/TelephonyConnection$TelephonyConnectionListener;

    invoke-virtual {v1, p0}, Lcom/android/services/telephony/TelephonyConnection$TelephonyConnectionListener;->onOriginalConnectionConfigured(Lcom/android/services/telephony/TelephonyConnection;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static getAddressFromNumber(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    const-string v0, "tel"

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private getForegroundConnection()Lcom/android/internal/telephony/Connection;
    .locals 1

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDomainPS()Z
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v3, v1, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isValidRingingCall()Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, "isValidRingingCall, phone is null"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "isValidRingingCall, ringing call is not in ringing state"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    iget-object v3, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-eq v2, v3, :cond_2

    const-string v2, "isValidRingingCall, ringing call connection does not match"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string v2, "isValidRingingCall, returning true"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v2, v1}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private registerSecPhoneNotification(Lcom/android/internal/telephony/Phone;Landroid/os/Handler;)V
    .locals 2

    const-string v0, "ctc_call_time_duration"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x64

    const/4 v1, 0x0

    invoke-interface {p1, p2, v0, v1}, Lcom/android/internal/telephony/Phone;->registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private removeCapability(II)I
    .locals 1

    xor-int/lit8 v0, p2, -0x1

    and-int/2addr v0, p1

    return v0
.end method

.method private setActiveInternal()V
    .locals 5

    const/4 v4, 0x4

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getState()I

    move-result v3

    if-ne v3, v4, :cond_0

    const-string v3, "Should not be called if this is already ACTIVE"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/android/services/telephony/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getConnectionService()Landroid/telecom/ConnectionService;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getConnectionService()Landroid/telecom/ConnectionService;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telecom/ConnectionService;->getAllConnections()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection;

    if-eq v0, p0, :cond_1

    instance-of v3, v0, Lcom/android/services/telephony/TelephonyConnection;

    if-eqz v3, :cond_1

    move-object v2, v0

    check-cast v2, Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v2}, Lcom/android/services/telephony/TelephonyConnection;->getState()I

    move-result v3

    if-ne v3, v4, :cond_1

    invoke-virtual {v2}, Lcom/android/services/telephony/TelephonyConnection;->updateState()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->setActive()V

    goto :goto_0
.end method

.method private unregisterSecPhoneNotification(Lcom/android/internal/telephony/Phone;Landroid/os/Handler;)V
    .locals 1

    const-string v0, "ctc_call_time_duration"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p2}, Lcom/android/internal/telephony/Phone;->unregisterForLineControlInfo(Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method private updateMultiparty()V
    .locals 2

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mIsMultiParty:Z

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->isMultiparty()Z

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isMultiparty()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mIsMultiParty:Z

    iget-boolean v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mIsMultiParty:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->notifyConferenceStarted()V

    goto :goto_0
.end method


# virtual methods
.method public final addTelephonyConnectionListener(Lcom/android/services/telephony/TelephonyConnection$TelephonyConnectionListener;)Lcom/android/services/telephony/TelephonyConnection;
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mTelephonyListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/services/telephony/TelephonyConnection;->fireOnOriginalConnectionConfigured()V

    :cond_0
    return-object p0
.end method

.method protected buildConnectionCapabilities()I
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->isImsConnection()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x8000

    or-int/2addr v0, v1

    :cond_0
    or-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    :cond_1
    or-int/lit8 v0, v0, 0x1

    :cond_2
    return v0
.end method

.method clearOriginalConnection()V
    .locals 2

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForRingbackTone(Landroid/os/Handler;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForHandoverStateChanged(Landroid/os/Handler;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForDisconnect(Landroid/os/Handler;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, v0, v1}, Lcom/android/services/telephony/TelephonyConnection;->unregisterSecPhoneNotification(Lcom/android/internal/telephony/Phone;Landroid/os/Handler;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    :cond_0
    return-void
.end method

.method public abstract cloneConnection()Lcom/android/services/telephony/TelephonyConnection;
.end method

.method protected getCall()Lcom/android/internal/telephony/Call;
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCallId()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCallId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mCallId:Ljava/lang/String;

    return-object v0
.end method

.method public getHasBeenVideoCall()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mHasBeenVideoCall:Z

    return v0
.end method

.method protected getOrigDialStringFromNumber(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "tel"

    invoke-static {v1, p1, v0}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public getOriginalConnection()Lcom/android/internal/telephony/Connection;
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    return-object v0
.end method

.method getPhone()Lcom/android/internal/telephony/Phone;
    .locals 2

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSecModifyCallHandler()Lcom/android/services/utils/SecModifyCallHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mSecModifyCallHandler:Lcom/android/services/utils/SecModifyCallHandler;

    return-object v0
.end method

.method protected hangup(I)V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v2, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/android/services/telephony/TelephonyConnection;->isValidRingingCall()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v2, "change_hangup_ipc_in_auto_reject"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/services/telephony/TelephonyConnectionUtils;->isAutoRejectCall(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "isAutoRejectCall - connection.hangup()"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->hangup()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Call to Connection.hangup failed with exception"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0, v1, v2, v3}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v2, "Attempting to hangup a connection without backing call."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/android/services/telephony/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getConference()Landroid/telecom/Conference;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isAnswerCallAfterThisDisconnect()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-static {v2}, Lcom/android/services/telephony/TelephonyConnectionUtils;->hasRingingVideoCallWithMultipartyCall(Lcom/android/internal/telephony/Phone;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->hangup()V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected hasMultipleTopLevelCalls()Z
    .locals 4

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    if-le v0, v2, :cond_3

    :goto_0
    return v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected isImsConnection()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    instance-of v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    return v0
.end method

.method public onAbort()V
    .locals 2

    const-string v0, "onAbort"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/TelephonyConnection;->hangup(I)V

    return-void
.end method

.method public onAnswer(I)V
    .locals 4

    const/4 v3, 0x0

    const-string v1, "onAnswer"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/services/telephony/TelephonyConnection;->isValidRingingCall()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    const-string v1, "enabled_boost_cpu"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/services/utils/SecTelephonyUtil;->boostCPU()V

    const-string v1, "onAnswer : boostCPU"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/Phone;->acceptCall(I)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to accept call."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onAudioStateChanged(Landroid/telecom/AudioState;)V
    .locals 4

    const-string v1, "tmo_echolocate_logger"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/telecom/AudioState;->isMuted()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x9

    :goto_0
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getAddress()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v1, v2, v0, v3}, Lcom/android/services/telephony/TelephonyConnectionUtils;->setEcholocateCallState(ILandroid/net/Uri;II)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->setEchoSuppressionEnabled()V

    :cond_1
    return-void

    :cond_2
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public onDisconnect()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "onDisconnect"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-nez v0, :cond_0

    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "mOriginalConnection == null, set flag to hangup when connection created"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mNeedHangupWhenConnected:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/TelephonyConnection;->hangup(I)V

    goto :goto_0
.end method

.method onDisconnect(Landroid/os/AsyncResult;)V
    .locals 0

    return-void
.end method

.method public onDisconnectConferenceParticipant(Landroid/net/Uri;)V
    .locals 3

    const-string v0, "onDisconnectConferenceParticipant %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Connection;->onDisconnectConferenceParticipant(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public onHold()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->performHold()V

    return-void
.end method

.method public onPostDialContinue(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPostDialContinue, proceed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->proceedAfterWaitChar()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->cancelPostDial()V

    goto :goto_0
.end method

.method public onReject()V
    .locals 2

    const-string v0, "onReject"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/services/telephony/TelephonyConnection;->isValidRingingCall()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/TelephonyConnection;->hangup(I)V

    :cond_0
    invoke-super {p0}, Landroid/telecom/Connection;->onReject()V

    return-void
.end method

.method public onSeparate()V
    .locals 4

    const/4 v3, 0x0

    const-string v1, "onSeparate"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->separate()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Call to Connection.separate failed with exception"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onStateChanged(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStateChanged, state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "tmo_echolocate_logger"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getAddress()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v0, v1, p1, v2}, Lcom/android/services/telephony/TelephonyConnectionUtils;->setEcholocateCallState(ILandroid/net/Uri;II)V

    :cond_0
    const-string v0, "wifi_disable_during_emergency_call"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getAddress()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/android/services/telephony/operator/usa/TeleServiceExtension;->disableWifiInEmergencyCall(Lcom/android/internal/telephony/Phone;ILandroid/net/Uri;)V

    :cond_1
    return-void
.end method

.method public onUnhold()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->performUnhold()V

    return-void
.end method

.method public performConference(Lcom/android/services/telephony/TelephonyConnection;)V
    .locals 4

    const/4 v3, 0x0

    const-string v1, "performConference - %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->conference()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to conference call."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public performHold()V
    .locals 6

    const/4 v5, 0x0

    const-string v3, "performHold"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    iget-object v4, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnectionState:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_1

    const-string v3, "Holding active call"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    iget-object v3, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_0

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v3, "Exception occurred while trying to put call on hold."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p0, v0, v3, v4}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v3, "Cannot put a call that is not currently active on hold."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/android/services/telephony/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public performUnhold()V
    .locals 5

    const/4 v4, 0x0

    const-string v1, "performUnhold"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    iget-object v2, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnectionState:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->hasMultipleTopLevelCalls()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    :goto_0
    return-void

    :cond_0
    const-string v1, "Skipping unhold command for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Exception occurred while trying to release call from hold."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v1, "Cannot release a call that is not already on hold from hold."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final removeTelephonyConnectionListener(Lcom/android/services/telephony/TelephonyConnection$TelephonyConnectionListener;)Lcom/android/services/telephony/TelephonyConnection;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mTelephonyListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public resetStateForConference()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->setActive()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendPreciseCallStateChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setAudioQuality(I)V
    .locals 0

    iput p1, p0, Lcom/android/services/telephony/TelephonyConnection;->mAudioQuality:I

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->updateConnectionCapabilities()V

    return-void
.end method

.method public setCallId(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCallId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/services/telephony/TelephonyConnection;->mCallId:Ljava/lang/String;

    return-void
.end method

.method public setHasBeenVideoCall(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/services/telephony/TelephonyConnection;->mHasBeenVideoCall:Z

    return-void
.end method

.method public setHoldingForConference()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->setOnHold()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLocalVideoCapable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/services/telephony/TelephonyConnection;->mLocalVideoCapable:Z

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->updateConnectionCapabilities()V

    return-void
.end method

.method setOriginalConnection(Lcom/android/internal/telephony/Connection;)V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "new TelephonyConnection, originalConnection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->clearOriginalConnection()V

    iput-object p1, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1, v5, v3}, Lcom/android/internal/telephony/Phone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1, v6, v3}, Lcom/android/internal/telephony/Phone;->registerForHandoverStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, v0, v1}, Lcom/android/services/telephony/TelephonyConnection;->registerSecPhoneNotification(Lcom/android/internal/telephony/Phone;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mPostDialListener:Lcom/android/internal/telephony/Connection$PostDialListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Connection;->addPostDialListener(Lcom/android/internal/telephony/Connection$PostDialListener;)V

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnectionListener:Lcom/android/internal/telephony/Connection$Listener;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Connection;->addListener(Lcom/android/internal/telephony/Connection$Listener;)V

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getVideoState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/TelephonyConnection;->setVideoState(I)V

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isLocalVideoCapable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/TelephonyConnection;->setLocalVideoCapable(Z)V

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isRemoteVideoCapable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/TelephonyConnection;->setRemoteVideoCapable(Z)V

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/TelephonyConnection;->setVideoProvider(Landroid/telecom/Connection$VideoProvider;)V

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAudioQuality()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/TelephonyConnection;->setAudioQuality(I)V

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->isImsConnection()Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v5, p0, Lcom/android/services/telephony/TelephonyConnection;->mWasImsConnection:Z

    :cond_2
    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isMultiparty()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mIsMultiParty:Z

    invoke-direct {p0}, Lcom/android/services/telephony/TelephonyConnection;->fireOnOriginalConnectionConfigured()V

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->updateAddress()V

    iget-boolean v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mNeedHangupWhenConnected:Z

    if-eqz v0, :cond_0

    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "mNeedHangupWhenConnected is true, hangup call"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v6}, Lcom/android/services/telephony/TelephonyConnection;->hangup(I)V

    iput-boolean v4, p0, Lcom/android/services/telephony/TelephonyConnection;->mNeedHangupWhenConnected:Z

    goto/16 :goto_0
.end method

.method public setRemoteVideoCapable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/services/telephony/TelephonyConnection;->mRemoteVideoCapable:Z

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->updateConnectionCapabilities()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[TelephonyConnection objId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->isImsConnection()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ims"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getState()I

    move-result v1

    invoke-static {v1}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " capabilities:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getConnectionCapabilities()I

    move-result v1

    invoke-static {v1}, Lcom/android/services/telephony/TelephonyConnection;->capabilitiesToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " address:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getAddress()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/android/services/telephony/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " originalConnection:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " partOfConf:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getConference()Landroid/telecom/Conference;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v1, "N"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    instance-of v1, p0, Lcom/android/services/telephony/GsmConnection;

    if-eqz v1, :cond_2

    const-string v1, "gsm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    instance-of v1, p0, Lcom/android/services/telephony/CdmaConnection;

    if-eqz v1, :cond_0

    const-string v1, "cdma"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const-string v1, "Y"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method protected final updateAddress()V
    .locals 11

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->updateConnectionCapabilities()V

    iget-object v8, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v8, :cond_9

    const/4 v2, 0x0

    iget-object v8, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getOrigDialString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(Ljava/lang/String;)Z

    move-result v2

    iget-object v8, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/services/telephony/TelephonyConnection;->getAddressFromNumber(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v7, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v7

    :cond_0
    const-string v8, "Conference call"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v1, 0x1

    :cond_1
    const-string v8, "get_orig_dial_string_enable"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneUtils;->phoneIsCdma()Z

    move-result v8

    if-nez v8, :cond_4

    :cond_2
    const-string v8, "feature_can"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    const-string v8, "feature_kdi"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "feature_chn"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-static {}, Lcom/android/phone/PhoneUtils;->phoneIsCdma()Z

    move-result v8

    if-eqz v8, :cond_5

    :cond_4
    iget-object v8, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getOrigDialString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/services/telephony/TelephonyConnection;->getOrigDialStringFromNumber(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/services/telephony/operator/usa/TeleServiceExtension;->getOriginalConnectionFromNumber(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    :cond_5
    iget-object v8, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getAddress()Landroid/net/Uri;

    move-result-object v8

    invoke-static {v0, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getAddressPresentation()I

    move-result v8

    if-eq v6, v8, :cond_7

    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateAddress, address changed. isVoiceMailNumber = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {p0, v8, v9}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v2, :cond_7

    invoke-virtual {p0, v0, v6}, Lcom/android/services/telephony/TelephonyConnection;->setAddress(Landroid/net/Uri;I)V

    :cond_7
    iget-object v8, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v3

    iget-object v8, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getCallerDisplayNamePresentation()I

    move-result v8

    if-eq v4, v8, :cond_9

    :cond_8
    const-string v8, "updateAddress, caller display name changed"

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {p0, v8, v9}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v3, v4}, Lcom/android/services/telephony/TelephonyConnection;->setCallerDisplayName(Ljava/lang/String;I)V

    :cond_9
    return-void
.end method

.method protected final updateConnectionCapabilities()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->buildConnectionCapabilities()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/services/telephony/TelephonyConnection;->applyVideoCapabilities(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/services/telephony/TelephonyConnection;->applyAudioQualityCapabilities(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/services/telephony/TelephonyConnection;->applyConferenceTerminationCapabilities(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/services/telephony/TelephonyConnection;->applyVoicePrivacyCapabilities(I)I

    move-result v0

    invoke-static {v0, p0}, Lcom/android/services/telephony/TelephonyConnectionUtils;->applyOperatorCapabilities(ILcom/android/services/telephony/TelephonyConnection;)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getConnectionCapabilities()I

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/TelephonyConnection;->setConnectionCapabilities(I)V

    :cond_0
    return-void
.end method

.method updateState()V
    .locals 13

    const/4 v12, -0x1

    const/4 v6, 0x1

    const/4 v11, 0x2

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-nez v8, :cond_2

    const-string v6, "handle_alerting_state"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "singapore_volte_ui"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    invoke-static {v7}, Lcom/android/services/telephony/common/SystemDBInterface;->setAlerting(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {p0}, Lcom/android/services/telephony/TelephonyConnectionUtils;->isPhoneTypeChanged(Lcom/android/services/telephony/TelephonyConnection;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v6, "updateState : isPhoneTypeChanged"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p0, v6, v7}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/services/telephony/TelephonyConnection;->close()V

    goto :goto_0

    :cond_3
    iget-object v8, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    const-string v8, "Update state from %s to %s"

    new-array v9, v11, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnectionState:Lcom/android/internal/telephony/Call$State;

    aput-object v10, v9, v7

    aput-object v3, v9, v6

    invoke-static {p0, v8, v9}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isVideoCall: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/android/services/telephony/TelephonyConnectionUtils;->isCSVideoCall()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - Ringbacktone Played: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->isRingbackRequested()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v7, [Ljava/lang/Object;

    invoke-static {p0, v8, v9}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/services/telephony/TelephonyConnectionUtils;->isCSVideoCall()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->isRingbackRequested()Z

    move-result v8

    if-nez v8, :cond_4

    iget-object v8, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnectionState:Lcom/android/internal/telephony/Call$State;

    sget-object v9, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v8, v9, :cond_4

    sget-object v8, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v8, :cond_4

    const-string v8, "Sending the ringtone Message"

    new-array v9, v7, [Ljava/lang/Object;

    invoke-static {p0, v8, v9}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v8, "hk_local_ringback_tone"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {p0, v6}, Lcom/android/services/telephony/TelephonyConnection;->setRingbackRequested(Z)V

    :cond_4
    iget-object v8, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnectionState:Lcom/android/internal/telephony/Call$State;

    if-eq v8, v3, :cond_5

    iput-object v3, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnectionState:Lcom/android/internal/telephony/Call$State;

    invoke-static {p0}, Lcom/android/services/telephony/TelephonyConnectionUtils;->setSecCallExtraFromCallDetails(Lcom/android/services/telephony/TelephonyConnection;)V

    sget-object v8, Lcom/android/services/telephony/TelephonyConnection$4;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    :cond_5
    :goto_1
    :pswitch_0
    invoke-static {p0}, Lcom/android/services/telephony/TelephonyConnectionUtils;->checkAndUpdate(Lcom/android/services/telephony/TelephonyConnection;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->updateConnectionCapabilities()V

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->updateAddress()V

    invoke-direct {p0}, Lcom/android/services/telephony/TelephonyConnection;->updateMultiparty()V

    const-string v8, "handle_alerting_state"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string v8, "singapore_volte_ui"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_6
    sget-object v8, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v8, :cond_18

    :goto_2
    invoke-static {v6}, Lcom/android/services/telephony/common/SystemDBInterface;->setAlerting(Z)V

    goto/16 :goto_0

    :pswitch_1
    const-string v8, "enabled"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/services/telephony/TelephonyConnection;->mSecModifyCallHandler:Lcom/android/services/utils/SecModifyCallHandler;

    if-nez v8, :cond_7

    new-instance v8, Lcom/android/services/utils/SecModifyCallHandler;

    invoke-direct {v8, p0}, Lcom/android/services/utils/SecModifyCallHandler;-><init>(Lcom/android/services/telephony/TelephonyConnection;)V

    iput-object v8, p0, Lcom/android/services/telephony/TelephonyConnection;->mSecModifyCallHandler:Lcom/android/services/utils/SecModifyCallHandler;

    :cond_7
    iget-object v8, p0, Lcom/android/services/telephony/TelephonyConnection;->mSecModifyCallHandler:Lcom/android/services/utils/SecModifyCallHandler;

    invoke-virtual {v8}, Lcom/android/services/utils/SecModifyCallHandler;->registerForNotifications()V

    :cond_8
    const-string v8, "j_device"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_9

    invoke-static {v6}, Lcom/android/services/telephony/TelephonyConnectionUtils;->setAudioEffect(Z)V

    :cond_9
    const-string v8, "video_conference"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_a

    const-string v8, "ims_voice_conference"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    :cond_a
    invoke-static {p0}, Lcom/android/services/telephony/TelephonyConnectionUtils;->updateIMSConferencCallMgr(Lcom/android/services/telephony/TelephonyConnection;)V

    :cond_b
    const-string v8, "ims_capability_service"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-static {p0}, Lcom/android/services/telephony/TelephonyConnectionUtils;->updateIMSCapabilities(Lcom/android/services/telephony/TelephonyConnection;)V

    :cond_c
    invoke-direct {p0}, Lcom/android/services/telephony/TelephonyConnection;->setActiveInternal()V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->setOnHold()V

    goto :goto_1

    :pswitch_3
    const-string v8, "tmo_echolocate_logger"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getAddress()Landroid/net/Uri;

    move-result-object v8

    invoke-static {v11, v8, v11, v12}, Lcom/android/services/telephony/TelephonyConnectionUtils;->setEcholocateCallState(ILandroid/net/Uri;II)V

    :cond_d
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->setDialing()V

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->setRinging()V

    goto/16 :goto_1

    :pswitch_6
    const-string v8, "voice_call_recording"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-static {}, Lcom/android/phone/PhoneVoiceRecorder;->getInstance()Lcom/android/phone/PhoneVoiceRecorder;

    move-result-object v5

    if-eqz v5, :cond_e

    invoke-virtual {v5}, Lcom/android/phone/PhoneVoiceRecorder;->isVoiceRecording()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-virtual {v5}, Lcom/android/phone/PhoneVoiceRecorder;->getRecordedCallId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_e

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getCallId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-virtual {v5}, Lcom/android/phone/PhoneVoiceRecorder;->stopRecord()V

    :cond_e
    const-string v8, "video_conference"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_f

    const-string v8, "ims_voice_conference"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_10

    :cond_f
    invoke-static {p0}, Lcom/android/services/telephony/TelephonyConnectionUtils;->updateIMSConferencCallMgr(Lcom/android/services/telephony/TelephonyConnection;)V

    :cond_10
    iget-object v8, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()I

    move-result v8

    iget-object v9, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-static {v9}, Lcom/android/services/telephony/TelephonyConnectionUtils;->createDisconnecCausetReason(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(ILjava/lang/String;)Landroid/telecom/DisconnectCause;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/services/telephony/TelephonyConnection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    invoke-static {}, Lcom/android/phone/PhoneUtils;->showHidedMmiDialog()V

    const-string v8, "automatic_answering_machine"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_12

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/PhoneGlobals;->getCallManager()Lcom/android/internal/telephony/CallManager;

    move-result-object v8

    if-eqz v8, :cond_11

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/PhoneGlobals;->getCallManager()Lcom/android/internal/telephony/CallManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v2

    :cond_11
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AM: isVoiceRecording() "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/android/phone/AnswerMemoRecorder;->getInstance()Lcom/android/phone/AnswerMemoRecorder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/phone/AnswerMemoRecorder;->isVoiceRecording()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " AM: isStopRecordCalled() "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/android/phone/AnswerMemoRecorder;->getInstance()Lcom/android/phone/AnswerMemoRecorder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/phone/AnswerMemoRecorder;->isStopRecordCalled()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v7, [Ljava/lang/Object;

    invoke-static {p0, v8, v9}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "hasActiveCall "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v7, [Ljava/lang/Object;

    invoke-static {p0, v8, v9}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/phone/AnswerMemoRecorder;->getInstance()Lcom/android/phone/AnswerMemoRecorder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/AnswerMemoRecorder;->isVoiceRecording()Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-static {}, Lcom/android/phone/AnswerMemoRecorder;->getInstance()Lcom/android/phone/AnswerMemoRecorder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/AnswerMemoRecorder;->isStopRecordCalled()Z

    move-result v8

    if-nez v8, :cond_12

    if-nez v2, :cond_12

    invoke-static {}, Lcom/android/phone/AnswerMemoRecorder;->getInstance()Lcom/android/phone/AnswerMemoRecorder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/AnswerMemoRecorder;->stopRecord()V

    :cond_12
    const-string v8, "modify_call_us"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_13

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getSecModifyCallHandler()Lcom/android/services/utils/SecModifyCallHandler;

    move-result-object v8

    if-eqz v8, :cond_13

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getSecModifyCallHandler()Lcom/android/services/utils/SecModifyCallHandler;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/services/utils/SecModifyCallHandler;->ReleaseUpgradeTonePlayer()V

    :cond_13
    invoke-static {v7}, Lcom/android/services/telephony/TelephonyConnectionUtils;->setAudioEffect(Z)V

    const-string v8, "vzw_volte_ui"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_14

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->setHasVzwVideoCall(Z)V

    :cond_14
    const-string v8, "tmo_echolocate_logger"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_17

    const/4 v1, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EcholocateDetailedCallStateMgr getDisconnectCause "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()I

    move-result v9

    invoke-static {v9}, Landroid/telephony/DisconnectCause;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v7, [Ljava/lang/Object;

    invoke-static {p0, v8, v9}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EcholocateDetailedCallStateMgr getSipErrorCode "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getSipErrorCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v7, [Ljava/lang/Object;

    invoke-static {p0, v8, v9}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v8, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v8, :cond_15

    iget-object v8, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    instance-of v8, v8, Lcom/android/internal/telephony/gsm/GsmConnection;

    if-eqz v8, :cond_15

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    check-cast v1, Lcom/android/internal/telephony/gsm/GsmConnection;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EcholocateDetailedCallStateMgr getCallFailCause "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->getCallFailCause()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v7, [Ljava/lang/Object;

    invoke-static {p0, v8, v9}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EcholocateDetailedCallStateMgr getRawDisconnectCause "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->getRawDisconnectCause()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v7, [Ljava/lang/Object;

    invoke-static {p0, v8, v9}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    const/4 v0, 0x0

    iget-object v8, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()I

    move-result v8

    packed-switch v8, :pswitch_data_1

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->getCallFailCause()I

    move-result v0

    :cond_16
    :goto_3
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getAddress()Landroid/net/Uri;

    move-result-object v8

    const/4 v9, 0x7

    invoke-static {v11, v8, v9, v0}, Lcom/android/services/telephony/TelephonyConnectionUtils;->setEcholocateCallState(ILandroid/net/Uri;II)V

    :cond_17
    invoke-direct {p0}, Lcom/android/services/telephony/TelephonyConnection;->close()V

    goto/16 :goto_1

    :pswitch_7
    iget-object v8, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getSipErrorCode()I

    move-result v0

    goto :goto_3

    :pswitch_8
    const-string v8, "tmo_echolocate_logger"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getAddress()Landroid/net/Uri;

    move-result-object v8

    const/4 v9, 0x4

    invoke-static {v11, v8, v9, v12}, Lcom/android/services/telephony/TelephonyConnectionUtils;->setEcholocateCallState(ILandroid/net/Uri;II)V

    goto/16 :goto_1

    :cond_18
    move v6, v7

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x65
        :pswitch_7
    .end packed-switch
.end method

.method public wasImsConnection()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mWasImsConnection:Z

    return v0
.end method

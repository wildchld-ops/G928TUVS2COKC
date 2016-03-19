.class public Lcom/android/phone/OllehPhoneService;
.super Landroid/app/Service;
.source "OllehPhoneService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/OllehPhoneService$OllehPhoneBroadcastReceiver;,
        Lcom/android/phone/OllehPhoneService$IOllehPhoneServiceAdapter;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/phone/OllehPhoneService;


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private apps:Lcom/android/phone/PhoneGlobals;

.field private conferenceCallMgr:Lcom/android/phone/ims/IMSConferenceCallMgr;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mCarrierManager:Lcom/android/phone/CarrierManager;

.field private mHandler:Landroid/os/Handler;

.field private final mICallOEMEventListener:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/android/phone/ICallOEMEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mIOllehPhoneServiceAdapter:Lcom/android/phone/OllehPhoneService$IOllehPhoneServiceAdapter;

.field private mIsSKTReady:Ljava/lang/Boolean;

.field private mReceiver:Lcom/android/phone/OllehPhoneService$OllehPhoneBroadcastReceiver;

.field private mSyncListener:Ljava/lang/Object;

.field private mWindowManager:Landroid/view/IWindowManager;

.field private recorder:Lcom/android/phone/PhoneVoiceRecorder;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-string v0, "[carrier-phone] OllehPhoneService"

    iput-object v0, p0, Lcom/android/phone/OllehPhoneService;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/OllehPhoneService;->mIsSKTReady:Ljava/lang/Boolean;

    new-instance v0, Lcom/android/phone/OllehPhoneService$IOllehPhoneServiceAdapter;

    invoke-direct {v0, p0}, Lcom/android/phone/OllehPhoneService$IOllehPhoneServiceAdapter;-><init>(Lcom/android/phone/OllehPhoneService;)V

    iput-object v0, p0, Lcom/android/phone/OllehPhoneService;->mIOllehPhoneServiceAdapter:Lcom/android/phone/OllehPhoneService$IOllehPhoneServiceAdapter;

    new-instance v0, Lcom/android/phone/OllehPhoneService$OllehPhoneBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/OllehPhoneService$OllehPhoneBroadcastReceiver;-><init>(Lcom/android/phone/OllehPhoneService;Lcom/android/phone/OllehPhoneService$1;)V

    iput-object v0, p0, Lcom/android/phone/OllehPhoneService;->mReceiver:Lcom/android/phone/OllehPhoneService$OllehPhoneBroadcastReceiver;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/phone/OllehPhoneService;->mSyncListener:Ljava/lang/Object;

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/OllehPhoneService;->mICallOEMEventListener:Landroid/os/RemoteCallbackList;

    new-instance v0, Lcom/android/phone/OllehPhoneService$1;

    invoke-direct {v0, p0}, Lcom/android/phone/OllehPhoneService$1;-><init>(Lcom/android/phone/OllehPhoneService;)V

    iput-object v0, p0, Lcom/android/phone/OllehPhoneService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/OllehPhoneService;)Lcom/android/phone/PhoneGlobals;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/OllehPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/OllehPhoneService;)Lcom/android/phone/CarrierManager;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/OllehPhoneService;->mCarrierManager:Lcom/android/phone/CarrierManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/phone/OllehPhoneService;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/OllehPhoneService;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/phone/OllehPhoneService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/OllehPhoneService;->updateAutoRejectNotification()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/OllehPhoneService;)Lcom/android/internal/telephony/CallManager;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/OllehPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/OllehPhoneService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/OllehPhoneService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/OllehPhoneService;Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/phone/OllehPhoneService;->getConnection(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/OllehPhoneService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/OllehPhoneService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/OllehPhoneService;)Lcom/android/phone/PhoneVoiceRecorder;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/OllehPhoneService;->recorder:Lcom/android/phone/PhoneVoiceRecorder;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/OllehPhoneService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/OllehPhoneService;->mSyncListener:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/OllehPhoneService;)Landroid/os/RemoteCallbackList;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/OllehPhoneService;->mICallOEMEventListener:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/OllehPhoneService;Lcom/android/phone/ICallOEMEventListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/OllehPhoneService;->initRegisterListener(Lcom/android/phone/ICallOEMEventListener;)V

    return-void
.end method

.method private canStartOllehPhoneService()Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "support_ollehphone"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "[carrier-phone] OllehPhoneService"

    const-string v3, "can not Start OllehPhoneService - not enabled support_ollehphone feature"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "[carrier-phone] OllehPhoneService"

    const-string v3, "can not start OllehPhoneService - not owner mode"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private getCallInfo(Lcom/android/internal/telephony/Connection;)Lcom/kt/ollehcall/phoneinterface/KtCall;
    .locals 6

    const/4 v2, 0x0

    new-instance v0, Lcom/kt/ollehcall/phoneinterface/KtCall;

    invoke-direct {v0}, Lcom/kt/ollehcall/phoneinterface/KtCall;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    iput v1, v0, Lcom/kt/ollehcall/phoneinterface/KtCall;->mState:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()I

    move-result v1

    iput v1, v0, Lcom/kt/ollehcall/phoneinterface/KtCall;->mDisconnectCause:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()I

    move-result v1

    invoke-static {v1}, Lcom/android/phone/CarrierUtils;->getDisconnectCause(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kt/ollehcall/phoneinterface/KtCall;->mDisconnectCauseMessage:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/kt/ollehcall/phoneinterface/KtCall;->mCreateTime:J

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getConnectTime()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/kt/ollehcall/phoneinterface/KtCall;->mConnectTime:J

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kt/ollehcall/phoneinterface/KtCall;->mNumber:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v1

    iput v1, v0, Lcom/kt/ollehcall/phoneinterface/KtCall;->mNumberPresentation:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kt/ollehcall/phoneinterface/KtCall;->mSimpleGreeting:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    iput v1, v0, Lcom/kt/ollehcall/phoneinterface/KtCall;->mCallDirection:I

    invoke-virtual {p0, p1}, Lcom/android/phone/OllehPhoneService;->getConstCallType(Lcom/android/internal/telephony/Connection;)I

    move-result v1

    iput v1, v0, Lcom/kt/ollehcall/phoneinterface/KtCall;->mCallMode:I

    invoke-static {p1}, Lcom/android/services/utils/SecModifyCallHandler;->isSessionModifyPossible(Lcom/android/internal/telephony/Connection;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/kt/ollehcall/phoneinterface/KtCall;->mSupportVT:Z

    iput-boolean v2, v0, Lcom/kt/ollehcall/phoneinterface/KtCall;->mIsInternationalIncomingCall:Z

    :cond_0
    if-eqz v0, :cond_1

    iget v1, v0, Lcom/kt/ollehcall/phoneinterface/KtCall;->mState:I

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/kt/ollehcall/phoneinterface/KtCall;->mState:I

    invoke-static {v2}, Lcom/android/phone/carrier/CarrierConst;->callStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/OllehPhoneService;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDisconnectCause : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/kt/ollehcall/phoneinterface/KtCall;->mDisconnectCause:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/OllehPhoneService;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDisconnectCauseMessage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/kt/ollehcall/phoneinterface/KtCall;->mDisconnectCauseMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/OllehPhoneService;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNumber : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/kt/ollehcall/phoneinterface/KtCall;->mNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/OllehPhoneService;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNumberPresentation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/kt/ollehcall/phoneinterface/KtCall;->mNumberPresentation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/OllehPhoneService;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSimpleGreeting : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/kt/ollehcall/phoneinterface/KtCall;->mSimpleGreeting:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/OllehPhoneService;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCallDirection : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/kt/ollehcall/phoneinterface/KtCall;->mCallDirection:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/OllehPhoneService;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCallMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/kt/ollehcall/phoneinterface/KtCall;->mCallMode:I

    invoke-static {v2}, Lcom/android/phone/carrier/CarrierConst;->callTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/OllehPhoneService;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSupportVT : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v0, Lcom/kt/ollehcall/phoneinterface/KtCall;->mSupportVT:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/OllehPhoneService;->log(Ljava/lang/String;)V

    :cond_1
    return-object v0

    :cond_2
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method private getConnection(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/android/phone/OllehPhoneService;
    .locals 2

    const-class v1, Lcom/android/phone/OllehPhoneService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/phone/OllehPhoneService;->sInstance:Lcom/android/phone/OllehPhoneService;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/OllehPhoneService;

    invoke-direct {v0}, Lcom/android/phone/OllehPhoneService;-><init>()V

    sput-object v0, Lcom/android/phone/OllehPhoneService;->sInstance:Lcom/android/phone/OllehPhoneService;

    :cond_0
    sget-object v0, Lcom/android/phone/OllehPhoneService;->sInstance:Lcom/android/phone/OllehPhoneService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initRegisterListener(Lcom/android/phone/ICallOEMEventListener;)V
    .locals 7

    iget-object v3, p0, Lcom/android/phone/OllehPhoneService;->mSyncListener:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/OllehPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    const-string v2, "[carrier-phone] OllehPhoneService"

    const-string v4, "initRegisterListener() : "

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/phone/OllehPhoneService;->mICallOEMEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isOllehPhoneMode()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneConstants$State;->ordinal()I

    move-result v2

    invoke-interface {p1, v2}, Lcom/android/phone/ICallOEMEventListener;->onPhoneStateChanged(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/android/phone/OllehPhoneService;->mICallOEMEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    const-string v2, "[carrier-phone] OllehPhoneService"

    const-string v4, "initRegisterListener() Exception"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v2, v0, v4, v5}, Lcom/android/services/telephony/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v2, p0, Lcom/android/phone/OllehPhoneService;->mICallOEMEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    :catchall_1
    move-exception v2

    :try_start_5
    iget-object v4, p0, Lcom/android/phone/OllehPhoneService;->mICallOEMEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 2

    const-string v0, "[carrier-phone] OllehPhoneService"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 4

    const-string v0, "[carrier-phone] OllehPhoneService"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, p1, v1}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private registerForBroadcast()V
    .locals 3

    const-string v1, "registerForBroadcast()"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/phone/OllehPhoneService;->log(Ljava/lang/String;Z)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.incallui.action.START_CALLEND_ACTIVITY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.kt.ollehphone.FINISH_CALLEND_ACTIVITY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.kt.ollehphone.CLEAR_LOCKSCREEN_NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.kt.ollehphone.CHANGE_MODE_SETTING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "support_safetycare"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/phone/OllehPhoneService;->mReceiver:Lcom/android/phone/OllehPhoneService$OllehPhoneBroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/phone/OllehPhoneService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private unregisterForBroadcast()V
    .locals 2

    const-string v0, "unregisterForBroadcast()"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/OllehPhoneService;->log(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/OllehPhoneService;->mReceiver:Lcom/android/phone/OllehPhoneService$OllehPhoneBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/OllehPhoneService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private updateAutoRejectNotification()V
    .locals 14

    const-string v9, "notification"

    invoke-virtual {p0, v9}, Lcom/android/phone/OllehPhoneService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    const/16 v0, 0x64

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isOllehPhoneMode()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v7, v0}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v9, p0, Lcom/android/phone/OllehPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v9}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "autoreject_mode"

    const/4 v11, 0x2

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v9, p0, Lcom/android/phone/OllehPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v9}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "autoreject_mode_enable_sharedpref"

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const/4 v9, 0x1

    if-ne v1, v9, :cond_0

    if-eqz v5, :cond_0

    new-instance v6, Landroid/app/Notification;

    const v9, 0x7f0200e7

    const v10, 0x7f0a0298

    invoke-virtual {v3, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-wide/16 v12, 0x0

    invoke-direct {v6, v9, v10, v12, v13}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v3, v9, v4, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    const v9, 0x7f0a0299

    invoke-virtual {v3, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f0a0298

    invoke-virtual {v3, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v3, v9, v10, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v7, v0, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method


# virtual methods
.method public getBgCall()Lcom/kt/ollehcall/phoneinterface/KtCall;
    .locals 4

    iget-object v3, p0, Lcom/android/phone/OllehPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/phone/OllehPhoneService;->getConnection(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/OllehPhoneService;->getCallInfo(Lcom/android/internal/telephony/Connection;)Lcom/kt/ollehcall/phoneinterface/KtCall;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public getConstCallType(Lcom/android/internal/telephony/Connection;)I
    .locals 6

    const/4 v5, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v2, v0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    iget v1, v0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    const/4 v3, 0x0

    if-nez v2, :cond_4

    if-ne v1, v5, :cond_2

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isWBMode()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v3, 0x3

    goto :goto_0

    :cond_3
    const/4 v3, 0x2

    goto :goto_0

    :cond_4
    invoke-static {p1}, Lcom/android/services/utils/SecModifyCallHandler;->isSessionModifyPossible(Lcom/android/internal/telephony/Connection;)Z

    move-result v4

    if-nez v4, :cond_5

    const/4 v3, 0x1

    goto :goto_0

    :cond_5
    if-ne v1, v5, :cond_6

    const/4 v3, 0x1

    goto :goto_0

    :cond_6
    const/4 v3, 0x4

    goto :goto_0
.end method

.method public getFgCall()Lcom/kt/ollehcall/phoneinterface/KtCall;
    .locals 4

    iget-object v3, p0, Lcom/android/phone/OllehPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    const/4 v0, 0x0

    if-eqz v2, :cond_0

    invoke-direct {p0, v2}, Lcom/android/phone/OllehPhoneService;->getConnection(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/OllehPhoneService;->getCallInfo(Lcom/android/internal/telephony/Connection;)Lcom/kt/ollehcall/phoneinterface/KtCall;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getKeyMappingTable(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    const-string v2, "block_showme"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/OllehPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "photoring_reject_all"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v5, :cond_1

    const-string v1, "all"

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-static {}, Lcom/android/phone/photoring/PhotoringUtil;->isPhotoringBlockNumber()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "list"

    goto :goto_0

    :cond_2
    const-string v1, "off"

    goto :goto_0

    :cond_3
    const-string v2, "incoming_it_call_block"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/phone/OllehPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "incoming_intcall_lock"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v5, :cond_4

    const-string v1, "on"

    :goto_1
    goto :goto_0

    :cond_4
    const-string v1, "off"

    goto :goto_1

    :cond_5
    const-string v2, "outgoing_it_call_block"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/phone/OllehPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "outging_intcall_lock"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v5, :cond_6

    const-string v1, "on"

    :goto_2
    goto :goto_0

    :cond_6
    const-string v1, "off"

    goto :goto_2

    :cond_7
    const-string v2, "ollehcall"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/OllehPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "kt_ollehphone_enabled"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v5, :cond_8

    const-string v1, "on"

    :goto_3
    goto :goto_0

    :cond_8
    const-string v1, "off"

    goto :goto_3
.end method

.method public getRingingCall()Lcom/kt/ollehcall/phoneinterface/KtCall;
    .locals 4

    iget-object v3, p0, Lcom/android/phone/OllehPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    const/4 v0, 0x0

    if-eqz v2, :cond_0

    invoke-direct {p0, v2}, Lcom/android/phone/OllehPhoneService;->getConnection(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/OllehPhoneService;->getCallInfo(Lcom/android/internal/telephony/Connection;)Lcom/kt/ollehcall/phoneinterface/KtCall;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    const/4 v1, 0x0

    const-string v2, "onBind()"

    invoke-direct {p0, v2}, Lcom/android/phone/OllehPhoneService;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/phone/OllehPhoneService;->canStartOllehPhoneService()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "com.samsung.phone.ICallOEMService"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "OllehPhoneService binding success"

    invoke-direct {p0, v1}, Lcom/android/phone/OllehPhoneService;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/OllehPhoneService;->mIOllehPhoneServiceAdapter:Lcom/android/phone/OllehPhoneService$IOllehPhoneServiceAdapter;

    goto :goto_0

    :cond_1
    const-string v2, "OllehPhoneService binding failed"

    invoke-direct {p0, v2}, Lcom/android/phone/OllehPhoneService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 2

    const-string v0, "onCreate()"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/OllehPhoneService;->log(Ljava/lang/String;Z)V

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-direct {p0}, Lcom/android/phone/OllehPhoneService;->canStartOllehPhoneService()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sput-object p0, Lcom/android/phone/OllehPhoneService;->sInstance:Lcom/android/phone/OllehPhoneService;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/OllehPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    iget-object v0, p0, Lcom/android/phone/OllehPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/OllehPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {}, Lcom/android/phone/PhoneVoiceRecorder;->getInstance()Lcom/android/phone/PhoneVoiceRecorder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/OllehPhoneService;->recorder:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-static {}, Lcom/android/phone/CarrierManager;->getInstance()Lcom/android/phone/CarrierManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/OllehPhoneService;->mCarrierManager:Lcom/android/phone/CarrierManager;

    invoke-static {}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getInstance()Lcom/android/phone/ims/IMSConferenceCallMgr;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/OllehPhoneService;->conferenceCallMgr:Lcom/android/phone/ims/IMSConferenceCallMgr;

    invoke-direct {p0}, Lcom/android/phone/OllehPhoneService;->registerForBroadcast()V

    iget-object v0, p0, Lcom/android/phone/OllehPhoneService;->mCarrierManager:Lcom/android/phone/CarrierManager;

    invoke-virtual {v0}, Lcom/android/phone/CarrierManager;->registerForAll()V

    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/OllehPhoneService;->mWindowManager:Landroid/view/IWindowManager;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "onDestroy()"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/OllehPhoneService;->log(Ljava/lang/String;Z)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    invoke-direct {p0}, Lcom/android/phone/OllehPhoneService;->canStartOllehPhoneService()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/OllehPhoneService;->unregisterForBroadcast()V

    iget-object v0, p0, Lcom/android/phone/OllehPhoneService;->mCarrierManager:Lcom/android/phone/CarrierManager;

    invoke-virtual {v0}, Lcom/android/phone/CarrierManager;->unregisterForAll()V

    goto :goto_0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    const-string v0, "onUnbind()"

    invoke-direct {p0, v0}, Lcom/android/phone/OllehPhoneService;->log(Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public sendCoverStateChanged(II)V
    .locals 8

    iget-object v4, p0, Lcom/android/phone/OllehPhoneService;->mSyncListener:Ljava/lang/Object;

    monitor-enter v4

    if-nez p2, :cond_0

    :try_start_0
    const-string v3, "[carrier-phone] OllehPhoneService"

    const-string v5, "sendCoverStateChanged : CLOSE"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v5, v6}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    iget-object v3, p0, Lcom/android/phone/OllehPhoneService;->mICallOEMEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    :try_start_1
    iget-object v3, p0, Lcom/android/phone/OllehPhoneService;->mICallOEMEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/android/phone/ICallOEMEventListener;

    invoke-interface {v3, p1, p2}, Lcom/android/phone/ICallOEMEventListener;->onViewCoverStatusChanged(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    :try_start_2
    const-string v3, "[carrier-phone] OllehPhoneService"

    const-string v5, "sendCoverStateChanged : OPEN"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v5, v6}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    :cond_1
    :try_start_3
    iget-object v3, p0, Lcom/android/phone/OllehPhoneService;->mICallOEMEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :goto_2
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    :catch_0
    move-exception v1

    :try_start_4
    const-string v3, "[carrier-phone] OllehPhoneService"

    const-string v5, "sendCoverStateChanged() Exception"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-static {v3, v1, v5, v6}, Lcom/android/services/telephony/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-object v3, p0, Lcom/android/phone/OllehPhoneService;->mICallOEMEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_2

    :catchall_1
    move-exception v3

    iget-object v5, p0, Lcom/android/phone/OllehPhoneService;->mICallOEMEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public sendDisconnectCall(Landroid/os/AsyncResult;)V
    .locals 10

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v6, p0, Lcom/android/phone/OllehPhoneService;->mSyncListener:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/Connection;

    invoke-direct {p0, v2}, Lcom/android/phone/OllehPhoneService;->getCallInfo(Lcom/android/internal/telephony/Connection;)Lcom/kt/ollehcall/phoneinterface/KtCall;

    move-result-object v1

    const-string v5, "[carrier-phone] OllehPhoneService"

    const-string v7, "sendDisconnectCall : "

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v5, v7, v8}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/android/phone/OllehPhoneService;->mICallOEMEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_1

    :try_start_1
    iget-object v5, p0, Lcom/android/phone/OllehPhoneService;->mICallOEMEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Lcom/android/phone/ICallOEMEventListener;

    const/4 v7, 0x0

    invoke-interface {v5, v1, v7}, Lcom/android/phone/ICallOEMEventListener;->onDisconnect(Lcom/kt/ollehcall/phoneinterface/KtCall;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    :try_start_2
    iget-object v5, p0, Lcom/android/phone/OllehPhoneService;->mICallOEMEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :goto_2
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    :catch_0
    move-exception v3

    :try_start_3
    const-string v5, "[carrier-phone] OllehPhoneService"

    const-string v7, "sendDisconnectCall() Exception"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    invoke-static {v5, v3, v7, v8}, Lcom/android/services/telephony/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v5, p0, Lcom/android/phone/OllehPhoneService;->mICallOEMEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_2

    :catchall_1
    move-exception v5

    iget-object v7, p0, Lcom/android/phone/OllehPhoneService;->mICallOEMEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v7}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public sendNewIncomingCall(Landroid/os/AsyncResult;)V
    .locals 10

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v6, p0, Lcom/android/phone/OllehPhoneService;->mSyncListener:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/Connection;

    invoke-direct {p0, v2}, Lcom/android/phone/OllehPhoneService;->getCallInfo(Lcom/android/internal/telephony/Connection;)Lcom/kt/ollehcall/phoneinterface/KtCall;

    move-result-object v1

    const-string v5, "[carrier-phone] OllehPhoneService"

    const-string v7, "sendNewIncomingCall : "

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v5, v7, v8}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/android/phone/OllehPhoneService;->mICallOEMEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_1

    :try_start_1
    iget-object v5, p0, Lcom/android/phone/OllehPhoneService;->mICallOEMEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Lcom/android/phone/ICallOEMEventListener;

    invoke-interface {v5, v1}, Lcom/android/phone/ICallOEMEventListener;->onIncoming(Lcom/kt/ollehcall/phoneinterface/KtCall;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    :try_start_2
    iget-object v5, p0, Lcom/android/phone/OllehPhoneService;->mICallOEMEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :goto_2
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    :catch_0
    move-exception v3

    :try_start_3
    const-string v5, "[carrier-phone] OllehPhoneService"

    const-string v7, "sendPhoneState() Exception"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    invoke-static {v5, v3, v7, v8}, Lcom/android/services/telephony/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v5, p0, Lcom/android/phone/OllehPhoneService;->mICallOEMEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_2

    :catchall_1
    move-exception v5

    iget-object v7, p0, Lcom/android/phone/OllehPhoneService;->mICallOEMEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v7}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public sendPhoneState()V
    .locals 9

    iget-object v5, p0, Lcom/android/phone/OllehPhoneService;->mSyncListener:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/phone/OllehPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    const-string v4, "[carrier-phone] OllehPhoneService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendPhoneState : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v6, v7}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/phone/OllehPhoneService;->mICallOEMEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    :try_start_1
    iget-object v4, p0, Lcom/android/phone/OllehPhoneService;->mICallOEMEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/android/phone/ICallOEMEventListener;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneConstants$State;->ordinal()I

    move-result v6

    invoke-interface {v4, v6}, Lcom/android/phone/ICallOEMEventListener;->onPhoneStateChanged(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :try_start_2
    iget-object v4, p0, Lcom/android/phone/OllehPhoneService;->mICallOEMEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :goto_1
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catch_0
    move-exception v1

    :try_start_3
    const-string v4, "[carrier-phone] OllehPhoneService"

    const-string v6, "sendPhoneState() Exception"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-static {v4, v1, v6, v7}, Lcom/android/services/telephony/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v4, p0, Lcom/android/phone/OllehPhoneService;->mICallOEMEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    :catchall_1
    move-exception v4

    :try_start_5
    iget-object v6, p0, Lcom/android/phone/OllehPhoneService;->mICallOEMEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public sendPostOnDialChars(Landroid/os/AsyncResult;C)V
    .locals 10

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v6, p0, Lcom/android/phone/OllehPhoneService;->mSyncListener:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/Connection;

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    iget-object v4, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/Connection$PostDialState;

    :cond_1
    iget-object v5, p0, Lcom/android/phone/OllehPhoneService;->mICallOEMEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_3

    if-eqz v4, :cond_2

    :try_start_1
    iget-object v5, p0, Lcom/android/phone/OllehPhoneService;->mICallOEMEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Lcom/android/phone/ICallOEMEventListener;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection$PostDialState;->ordinal()I

    move-result v7

    invoke-interface {v5, v7, p2}, Lcom/android/phone/ICallOEMEventListener;->onPostDialCharacter(IC)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    :try_start_2
    iget-object v5, p0, Lcom/android/phone/OllehPhoneService;->mICallOEMEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :goto_2
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    :catch_0
    move-exception v2

    :try_start_3
    const-string v5, "[carrier-phone] OllehPhoneService"

    const-string v7, "sendPostOnDialChars() Exception"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    invoke-static {v5, v2, v7, v8}, Lcom/android/services/telephony/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v5, p0, Lcom/android/phone/OllehPhoneService;->mICallOEMEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_2

    :catchall_1
    move-exception v5

    iget-object v7, p0, Lcom/android/phone/OllehPhoneService;->mICallOEMEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v7}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public sendRequestVideoCall(Lcom/android/internal/telephony/Connection;)V
    .locals 9

    iget-object v5, p0, Lcom/android/phone/OllehPhoneService;->mSyncListener:Ljava/lang/Object;

    monitor-enter v5

    if-eqz p1, :cond_0

    :try_start_0
    const-string v4, "[carrier-phone] OllehPhoneService"

    const-string v6, "sendRequestVideoCall : "

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v6, v7}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    invoke-direct {p0, p1}, Lcom/android/phone/OllehPhoneService;->getCallInfo(Lcom/android/internal/telephony/Connection;)Lcom/kt/ollehcall/phoneinterface/KtCall;

    move-result-object v1

    iget-object v4, p0, Lcom/android/phone/OllehPhoneService;->mICallOEMEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_1

    :try_start_1
    iget-object v4, p0, Lcom/android/phone/OllehPhoneService;->mICallOEMEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/android/phone/ICallOEMEventListener;

    invoke-interface {v4, v1}, Lcom/android/phone/ICallOEMEventListener;->onVTSwitchRequest(Lcom/kt/ollehcall/phoneinterface/KtCall;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    :try_start_2
    const-string v4, " - RequestVideoCall is null"

    const/4 v6, 0x1

    invoke-direct {p0, v4, v6}, Lcom/android/phone/OllehPhoneService;->log(Ljava/lang/String;Z)V

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    :cond_1
    :try_start_3
    iget-object v4, p0, Lcom/android/phone/OllehPhoneService;->mICallOEMEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :goto_2
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    :catch_0
    move-exception v2

    :try_start_4
    const-string v4, "[carrier-phone] OllehPhoneService"

    const-string v6, "sendRequestVideoCall() Exception"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-static {v4, v2, v6, v7}, Lcom/android/services/telephony/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-object v4, p0, Lcom/android/phone/OllehPhoneService;->mICallOEMEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_2

    :catchall_1
    move-exception v4

    iget-object v6, p0, Lcom/android/phone/OllehPhoneService;->mICallOEMEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public sendShowMeContentsReceived(Landroid/os/Bundle;)V
    .locals 8

    iget-object v4, p0, Lcom/android/phone/OllehPhoneService;->mSyncListener:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/phone/OllehPhoneService;->mICallOEMEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    :try_start_1
    iget-object v3, p0, Lcom/android/phone/OllehPhoneService;->mICallOEMEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/android/phone/ICallOEMEventListener;

    invoke-interface {v3, p1}, Lcom/android/phone/ICallOEMEventListener;->onShowMeContentsReceived(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/android/phone/OllehPhoneService;->mICallOEMEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :goto_1
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catch_0
    move-exception v1

    :try_start_3
    const-string v3, "[carrier-phone] OllehPhoneService"

    const-string v5, "sendShowMeContentsReceived() Exception"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-static {v3, v1, v5, v6}, Lcom/android/services/telephony/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v3, p0, Lcom/android/phone/OllehPhoneService;->mICallOEMEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    :catchall_1
    move-exception v3

    :try_start_5
    iget-object v5, p0, Lcom/android/phone/OllehPhoneService;->mICallOEMEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public sendSuppServiceFailed(Landroid/os/AsyncResult;)V
    .locals 9

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/phone/OllehPhoneService;->mSyncListener:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/Phone$SuppService;

    iget-object v4, p0, Lcom/android/phone/OllehPhoneService;->mICallOEMEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    :try_start_1
    iget-object v4, p0, Lcom/android/phone/OllehPhoneService;->mICallOEMEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/android/phone/ICallOEMEventListener;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone$SuppService;->ordinal()I

    move-result v6

    invoke-interface {v4, v6}, Lcom/android/phone/ICallOEMEventListener;->onSuppServiceFailed(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :try_start_2
    iget-object v4, p0, Lcom/android/phone/OllehPhoneService;->mICallOEMEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :goto_2
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    :catch_0
    move-exception v1

    :try_start_3
    const-string v4, "[carrier-phone] OllehPhoneService"

    const-string v6, "sendSuppServiceFailed() Exception"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-static {v4, v1, v6, v7}, Lcom/android/services/telephony/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v4, p0, Lcom/android/phone/OllehPhoneService;->mICallOEMEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_2

    :catchall_1
    move-exception v4

    iget-object v6, p0, Lcom/android/phone/OllehPhoneService;->mICallOEMEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public sendSuppServiceNotification(Landroid/os/AsyncResult;)V
    .locals 9

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/phone/OllehPhoneService;->mSyncListener:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    const-string v4, "[carrier-phone] OllehPhoneService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendSuppServiceNotification() notificationType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", code="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v6, v7}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/phone/OllehPhoneService;->mICallOEMEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_1

    :try_start_1
    iget-object v4, p0, Lcom/android/phone/OllehPhoneService;->mICallOEMEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/android/phone/ICallOEMEventListener;

    iget v6, v1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    iget v7, v1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    invoke-interface {v4, v6, v7}, Lcom/android/phone/ICallOEMEventListener;->onSuppServiceNotification(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    :try_start_2
    iget-object v4, p0, Lcom/android/phone/OllehPhoneService;->mICallOEMEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :goto_2
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    :catch_0
    move-exception v2

    :try_start_3
    const-string v4, "[carrier-phone] OllehPhoneService"

    const-string v6, "sendSuppServiceFailed() Exception"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-static {v4, v2, v6, v7}, Lcom/android/services/telephony/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v4, p0, Lcom/android/phone/OllehPhoneService;->mICallOEMEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_2

    :catchall_1
    move-exception v4

    iget-object v6, p0, Lcom/android/phone/OllehPhoneService;->mICallOEMEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public sendVideoCallResult(I)V
    .locals 8

    iget-object v4, p0, Lcom/android/phone/OllehPhoneService;->mSyncListener:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string v3, "[carrier-phone] OllehPhoneService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendVideoCallResult : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v5, v6}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/phone/OllehPhoneService;->mICallOEMEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    :try_start_1
    iget-object v3, p0, Lcom/android/phone/OllehPhoneService;->mICallOEMEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/android/phone/ICallOEMEventListener;

    invoke-interface {v3, p1}, Lcom/android/phone/ICallOEMEventListener;->onVTResult(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/android/phone/OllehPhoneService;->mICallOEMEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :goto_1
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catch_0
    move-exception v1

    :try_start_3
    const-string v3, "[carrier-phone] OllehPhoneService"

    const-string v5, "sendVideoCallResult() Exception"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-static {v3, v1, v5, v6}, Lcom/android/services/telephony/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v3, p0, Lcom/android/phone/OllehPhoneService;->mICallOEMEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    :catchall_1
    move-exception v3

    :try_start_5
    iget-object v5, p0, Lcom/android/phone/OllehPhoneService;->mICallOEMEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public setKeyMappingTable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "block_showme"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/OllehPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "photoring_reject_all"

    const-string v4, "all"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const-string v2, "incoming_it_call_block"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/phone/OllehPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "incoming_intcall_lock"

    const-string v4, "on"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_2
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    const-string v2, "outgoing_it_call_block"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/phone/OllehPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "outging_intcall_lock"

    const-string v4, "on"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    :goto_3
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_3

    :cond_6
    const-string v2, "ollehcall"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/OllehPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "kt_ollehphone_enabled"

    const-string v4, "on"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    :goto_4
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_7
    move v0, v1

    goto :goto_4
.end method

.class public Lcom/android/phone/TPhoneService;
.super Landroid/app/Service;
.source "TPhoneService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/TPhoneService$PackageInstallObserver;,
        Lcom/android/phone/TPhoneService$TBroadcastReceiver;,
        Lcom/android/phone/TPhoneService$ITPhoneServiceAdapter;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/phone/TPhoneService;


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private apps:Lcom/android/phone/PhoneGlobals;

.field private conferenceCallMgr:Lcom/android/phone/ims/IMSConferenceCallMgr;

.field private context:Landroid/content/Context;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mCarrierManager:Lcom/android/phone/CarrierManager;

.field private mHandler:Landroid/os/Handler;

.field private final mITPhoneEventListener:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/android/phone/ITPhoneEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mITPhoneServiceAdapter:Lcom/android/phone/TPhoneService$ITPhoneServiceAdapter;

.field private mInstallState:I

.field private mIsAppSwitchSystemKeyEvent:Z

.field private mIsSKTReady:Ljava/lang/Boolean;

.field private mSyncListener:Ljava/lang/Object;

.field private mTBroadcastReceiver:Lcom/android/phone/TPhoneService$TBroadcastReceiver;

.field private mTDialPath:Ljava/lang/String;

.field private mTPhonePath:Ljava/lang/String;

.field private recorder:Lcom/android/phone/PhoneVoiceRecorder;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-string v0, "[carrier-phone] TPhoneService"

    iput-object v0, p0, Lcom/android/phone/TPhoneService;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/TPhoneService;->mIsSKTReady:Ljava/lang/Boolean;

    new-instance v0, Lcom/android/phone/TPhoneService$ITPhoneServiceAdapter;

    invoke-direct {v0, p0}, Lcom/android/phone/TPhoneService$ITPhoneServiceAdapter;-><init>(Lcom/android/phone/TPhoneService;)V

    iput-object v0, p0, Lcom/android/phone/TPhoneService;->mITPhoneServiceAdapter:Lcom/android/phone/TPhoneService$ITPhoneServiceAdapter;

    new-instance v0, Lcom/android/phone/TPhoneService$TBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/TPhoneService$TBroadcastReceiver;-><init>(Lcom/android/phone/TPhoneService;Lcom/android/phone/TPhoneService$1;)V

    iput-object v0, p0, Lcom/android/phone/TPhoneService;->mTBroadcastReceiver:Lcom/android/phone/TPhoneService$TBroadcastReceiver;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/phone/TPhoneService;->mSyncListener:Ljava/lang/Object;

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/TPhoneService;->mITPhoneEventListener:Landroid/os/RemoteCallbackList;

    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/phone/TPhoneService;->mInstallState:I

    new-instance v0, Lcom/android/phone/TPhoneService$1;

    invoke-direct {v0, p0}, Lcom/android/phone/TPhoneService$1;-><init>(Lcom/android/phone/TPhoneService;)V

    iput-object v0, p0, Lcom/android/phone/TPhoneService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private CancelTphoneInstallNotification()V
    .locals 2

    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/android/phone/TPhoneService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0x190

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method private CreateTphoneInstallNotification()V
    .locals 9

    const v8, 0x7f0a06dc

    const v7, 0x7f0a06db

    const v6, 0x7f0200c0

    const/4 v5, 0x1

    new-instance v3, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v3, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/phone/TPhoneService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/phone/TPhoneService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v0, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Lcom/android/phone/TPhoneService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Lcom/android/phone/TPhoneService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v3, "notification"

    invoke-virtual {p0, v3}, Lcom/android/phone/TPhoneService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    const/16 v3, 0x190

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private InstallTDialPkg()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/phone/TPhoneService$3;

    invoke-direct {v1, p0}, Lcom/android/phone/TPhoneService$3;-><init>(Lcom/android/phone/TPhoneService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private InstallTPhonePkg()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/phone/TPhoneService$2;

    invoke-direct {v1, p0}, Lcom/android/phone/TPhoneService$2;-><init>(Lcom/android/phone/TPhoneService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/TPhoneService;)Lcom/android/internal/telephony/CallManager;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/TPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/TPhoneService;)Lcom/android/phone/CarrierManager;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/TPhoneService;->mCarrierManager:Lcom/android/phone/CarrierManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/phone/TPhoneService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/TPhoneService;->InstallTDialPkg()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/phone/TPhoneService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/TPhoneService;->CancelTphoneInstallNotification()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/phone/TPhoneService;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1402(Lcom/android/phone/TPhoneService;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/TPhoneService;->mIsSKTReady:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/phone/TPhoneService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/TPhoneService;->updateAutoRejectNotification()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/phone/TPhoneService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/TPhoneService;->InstallTPhonePkg()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/phone/TPhoneService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/TPhoneService;->CreateTphoneInstallNotification()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/TPhoneService;)Lcom/android/phone/PhoneGlobals;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/TPhoneService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/TPhoneService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/TPhoneService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/TPhoneService;Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/phone/TPhoneService;->getConnection(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/TPhoneService;)Lcom/android/phone/PhoneVoiceRecorder;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/TPhoneService;->recorder:Lcom/android/phone/PhoneVoiceRecorder;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/TPhoneService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/TPhoneService;->mSyncListener:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/TPhoneService;)Landroid/os/RemoteCallbackList;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/TPhoneService;->mITPhoneEventListener:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/TPhoneService;Lcom/android/phone/ITPhoneEventListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/TPhoneService;->initRegisterListener(Lcom/android/phone/ITPhoneEventListener;)V

    return-void
.end method

.method private canStartTPhoneService()Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "support_tphone"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "[carrier-phone] TPhoneService"

    const-string v3, "can not Start TPhoneService - not enabled support_tphone feature"

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

    const-string v2, "[carrier-phone] TPhoneService"

    const-string v3, "can not start TPhoneService - not owner mode"

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

.method private getCallInfo(Lcom/android/internal/telephony/Connection;)Lcom/skt/prod/phone/TCall;
    .locals 7

    const/4 v6, 0x1

    invoke-static {}, Lcom/skt/prod/phone/TCall;->obtain()Lcom/skt/prod/phone/TCall;

    move-result-object v0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getConnectTime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/skt/prod/phone/TCall;->connectTime:J

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/skt/prod/phone/TCall;->creatTime:J

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v1

    iput-boolean v1, v0, Lcom/skt/prod/phone/TCall;->isInComing:Z

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/skt/prod/phone/TCall;->lettering:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v1

    iput v1, v0, Lcom/skt/prod/phone/TCall;->numberPresentation:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    iput v1, v0, Lcom/skt/prod/phone/TCall;->state:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCdnipNumber()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/skt/prod/phone/TCall;->virtualAddress:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()I

    move-result v1

    iput v1, v0, Lcom/skt/prod/phone/TCall;->disconnectCause:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()I

    move-result v1

    invoke-static {v1}, Lcom/android/phone/CarrierUtils;->getDisconnectCause(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/skt/prod/phone/TCall;->disconnectCasueMessage:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/services/utils/SecModifyCallHandler;->isSessionModifyPossible(Lcom/android/internal/telephony/Connection;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/skt/prod/phone/TCall;->supportVideoCall:Z

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/skt/prod/phone/TCall;->address:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/phone/TPhoneService;->conferenceCallMgr:Lcom/android/phone/ims/IMSConferenceCallMgr;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/TPhoneService;->conferenceCallMgr:Lcom/android/phone/ims/IMSConferenceCallMgr;

    invoke-virtual {v1}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v1

    iput v1, v0, Lcom/skt/prod/phone/TCall;->callerCount:I

    iget-object v1, p0, Lcom/android/phone/TPhoneService;->conferenceCallMgr:Lcom/android/phone/ims/IMSConferenceCallMgr;

    invoke-static {p1}, Lcom/android/phone/ims/IMSConferenceCallMgr;->isIMSConfCall(Lcom/android/internal/telephony/Connection;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/TPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/phone/TPhoneService;->conferenceCallMgr:Lcom/android/phone/ims/IMSConferenceCallMgr;

    iget-object v1, v1, Lcom/android/phone/ims/IMSConferenceCallMgr;->lastLogNumber:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/TPhoneService;->conferenceCallMgr:Lcom/android/phone/ims/IMSConferenceCallMgr;

    iget-object v1, v1, Lcom/android/phone/ims/IMSConferenceCallMgr;->lastLogNumber:Ljava/lang/String;

    iput-object v1, v0, Lcom/skt/prod/phone/TCall;->address:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lcom/android/phone/TPhoneService;->conferenceCallMgr:Lcom/android/phone/ims/IMSConferenceCallMgr;

    iget v1, v1, Lcom/android/phone/ims/IMSConferenceCallMgr;->lastLogCount:I

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/TPhoneService;->conferenceCallMgr:Lcom/android/phone/ims/IMSConferenceCallMgr;

    iget v1, v1, Lcom/android/phone/ims/IMSConferenceCallMgr;->lastLogCount:I

    iput v1, v0, Lcom/skt/prod/phone/TCall;->callerCount:I

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/phone/TPhoneService;->getConstCallType(Lcom/android/internal/telephony/Connection;)I

    move-result v1

    iput v1, v0, Lcom/skt/prod/phone/TCall;->callType:I

    :cond_2
    if-eqz v0, :cond_3

    iget v1, v0, Lcom/skt/prod/phone/TCall;->state:I

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "address : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/skt/prod/phone/TCall;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isInComing : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v0, Lcom/skt/prod/phone/TCall;->isInComing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lettering : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/skt/prod/phone/TCall;->lettering:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "numberPresentation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/skt/prod/phone/TCall;->numberPresentation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/skt/prod/phone/TCall;->state:I

    invoke-static {v2}, Lcom/android/phone/carrier/CarrierConst;->callStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v6}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/skt/prod/phone/TCall;->callType:I

    invoke-static {v2}, Lcom/android/phone/carrier/CarrierConst;->callTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v6}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnectCause : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/skt/prod/phone/TCall;->disconnectCause:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnectCasueMessage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/skt/prod/phone/TCall;->disconnectCasueMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callerCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/skt/prod/phone/TCall;->callerCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "supportVideoCall : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v0, Lcom/skt/prod/phone/TCall;->supportVideoCall:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    :cond_3
    return-object v0

    :cond_4
    const-string v1, "[carrier-phone] TPhoneService"

    const-string v2, "conferenceCallMgr() - null"

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/services/telephony/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

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

.method public static declared-synchronized getInstance()Lcom/android/phone/TPhoneService;
    .locals 2

    const-class v1, Lcom/android/phone/TPhoneService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/phone/TPhoneService;->sInstance:Lcom/android/phone/TPhoneService;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/TPhoneService;

    invoke-direct {v0}, Lcom/android/phone/TPhoneService;-><init>()V

    sput-object v0, Lcom/android/phone/TPhoneService;->sInstance:Lcom/android/phone/TPhoneService;

    :cond_0
    sget-object v0, Lcom/android/phone/TPhoneService;->sInstance:Lcom/android/phone/TPhoneService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initRegisterListener(Lcom/android/phone/ITPhoneEventListener;)V
    .locals 7

    iget-object v3, p0, Lcom/android/phone/TPhoneService;->mSyncListener:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/TPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    const-string v2, "[carrier-phone] TPhoneService"

    const-string v4, "initRegisterListener() : "

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/phone/TPhoneService;->mITPhoneEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneMode()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneConstants$State;->ordinal()I

    move-result v2

    invoke-interface {p1, v2}, Lcom/android/phone/ITPhoneEventListener;->onPhoneStateChanged(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/phone/TPhoneService;->mCarrierManager:Lcom/android/phone/CarrierManager;

    iget v2, v2, Lcom/android/phone/CarrierManager;->mCoverState:I

    iget-object v4, p0, Lcom/android/phone/TPhoneService;->mCarrierManager:Lcom/android/phone/CarrierManager;

    iget v4, v4, Lcom/android/phone/CarrierManager;->mCoverType:I

    invoke-interface {p1, v2, v4}, Lcom/android/phone/ITPhoneEventListener;->onCoverStateChanged(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v2, p0, Lcom/android/phone/TPhoneService;->mITPhoneEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    const-string v2, "[carrier-phone] TPhoneService"

    const-string v4, "RemoteException"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v2, v0, v4, v5}, Lcom/android/services/telephony/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v2, p0, Lcom/android/phone/TPhoneService;->mITPhoneEventListener:Landroid/os/RemoteCallbackList;

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
    iget-object v4, p0, Lcom/android/phone/TPhoneService;->mITPhoneEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 2

    const-string v0, "[carrier-phone] TPhoneService"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 4

    const-string v0, "[carrier-phone] TPhoneService"

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

    invoke-direct {p0, v1, v2}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;Z)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.skt.prod.phone.TPHONE_SERVICE_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.skt.prod.phone.TPHONE_SERVICE_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.incallui.action.START_CALLEND_ACTIVITY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.skt.prod.phone.action.FINISH_CALLEND_ACTIVITY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.skt.prod.phone.TPHONE_CLEAR_LOCKSCREEN_NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.skt.prod.dialer.CHANGE_TPHONE_MODE_SETTING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.skt.prod.dialer.TPHONE_UPDATE_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "support_safetycare"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    const-string v1, "com.skt.prod.phone.intent.action.HOME_BUTTON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.skt.prod.phone.action.CHANGED_SPEAKER_INFO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/TPhoneService;->mTBroadcastReceiver:Lcom/android/phone/TPhoneService$TBroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/phone/TPhoneService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private requestSystemKeyEvent(IZ)Z
    .locals 6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestSystemKeyEvent : buttons="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", request="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/16 v2, 0xbb

    :goto_0
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.skt.prod.phone"

    const-string v5, "com.skt.prod.phone.activities.phone.TPhoneActivity"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "window"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    invoke-interface {v3, v2, v0, p2}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    :goto_1
    return v4

    :pswitch_1
    const/16 v2, 0xbb

    goto :goto_0

    :pswitch_2
    const/4 v2, 0x3

    goto :goto_0

    :pswitch_3
    const/4 v2, 0x4

    goto :goto_0

    :pswitch_4
    const/16 v2, 0x52

    goto :goto_0

    :pswitch_5
    const/16 v2, 0xbb

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestSystemKeyEvent - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    const/4 v4, 0x0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private unregisterForBroadcast()V
    .locals 2

    const-string v0, "unregisterForBroadcast()"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/TPhoneService;->mTBroadcastReceiver:Lcom/android/phone/TPhoneService$TBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/TPhoneService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private updateAutoRejectNotification()V
    .locals 14

    const v13, 0x7f0a0298

    const/4 v11, 0x1

    const/4 v12, 0x0

    const-string v8, "notification"

    invoke-virtual {p0, v8}, Lcom/android/phone/TPhoneService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    const/16 v0, 0x64

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneMode()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v6, v0}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v8, p0, Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v8}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "autoreject_mode"

    const/4 v10, 0x2

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v8, p0, Lcom/android/phone/TPhoneService;->context:Landroid/content/Context;

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "autoreject_mode_enable_sharedpref"

    invoke-interface {v7, v8, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-ne v1, v11, :cond_0

    if-eqz v4, :cond_0

    new-instance v5, Landroid/app/Notification;

    const v8, 0x7f0200e7

    iget-object v9, p0, Lcom/android/phone/TPhoneService;->context:Landroid/content/Context;

    invoke-virtual {v9, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-wide/16 v10, 0x0

    invoke-direct {v5, v8, v9, v10, v11}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iget-object v8, p0, Lcom/android/phone/TPhoneService;->context:Landroid/content/Context;

    invoke-static {v8, v12, v3, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iget-object v8, p0, Lcom/android/phone/TPhoneService;->context:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/phone/TPhoneService;->context:Landroid/content/Context;

    const v10, 0x7f0a0299

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/TPhoneService;->context:Landroid/content/Context;

    invoke-virtual {v10, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v8, v9, v10, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v6, v0, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method


# virtual methods
.method public GetTDialPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/TPhoneService;->mTDialPath:Ljava/lang/String;

    return-object v0
.end method

.method public GetTPhoneInstallState()I
    .locals 1

    iget v0, p0, Lcom/android/phone/TPhoneService;->mInstallState:I

    return v0
.end method

.method public GetTPhonePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/TPhoneService;->mTPhonePath:Ljava/lang/String;

    return-object v0
.end method

.method public SetTDialPath(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/phone/TPhoneService;->mTDialPath:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public SetTPhoneInstallState(I)V
    .locals 0

    iput p1, p0, Lcom/android/phone/TPhoneService;->mInstallState:I

    return-void
.end method

.method public SetTPhonePath(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/phone/TPhoneService;->mTPhonePath:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public completeTPhoneInstall()V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "[carrier-phone] TPhoneService"

    const-string v1, "[TPhone] completeTPhoneInstall : "

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/phone/TPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_0

    invoke-static {v3}, Lcom/android/services/telephony/common/SystemDBInterface;->setTPhoneUpgradeInstallingState(I)V

    :cond_0
    return-void
.end method

.method public getBgCall()Lcom/skt/prod/phone/TCall;
    .locals 4

    iget-object v3, p0, Lcom/android/phone/TPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/phone/TPhoneService;->getConnection(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/TPhoneService;->getCallInfo(Lcom/android/internal/telephony/Connection;)Lcom/skt/prod/phone/TCall;

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

    iget-object v4, p0, Lcom/android/phone/TPhoneService;->conferenceCallMgr:Lcom/android/phone/ims/IMSConferenceCallMgr;

    invoke-static {p1}, Lcom/android/phone/ims/IMSConferenceCallMgr;->isIMSConfCall(Lcom/android/internal/telephony/Connection;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x5

    goto :goto_0

    :cond_2
    if-nez v2, :cond_5

    if-ne v1, v5, :cond_3

    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isWBMode()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v3, 0x3

    goto :goto_0

    :cond_4
    const/4 v3, 0x2

    goto :goto_0

    :cond_5
    invoke-static {p1}, Lcom/android/services/utils/SecModifyCallHandler;->isSessionModifyPossible(Lcom/android/internal/telephony/Connection;)Z

    move-result v4

    if-nez v4, :cond_6

    const/4 v3, 0x1

    goto :goto_0

    :cond_6
    if-ne v1, v5, :cond_7

    const/4 v3, 0x1

    goto :goto_0

    :cond_7
    const/4 v3, 0x4

    goto :goto_0
.end method

.method public getFgCall()Lcom/skt/prod/phone/TCall;
    .locals 4

    iget-object v3, p0, Lcom/android/phone/TPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    const/4 v0, 0x0

    if-eqz v2, :cond_0

    invoke-direct {p0, v2}, Lcom/android/phone/TPhoneService;->getConnection(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/TPhoneService;->getCallInfo(Lcom/android/internal/telephony/Connection;)Lcom/skt/prod/phone/TCall;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getKeyMappingTable(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    const-string v5, "HDVOICE_SETTING"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v5, p0, Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "voicecall_type"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    const-string v5, "HDVOICE_AVAILABLE_NOTIFICATION"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v3, p0, Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "volte_noti_settings"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    const-string v5, "CALL_IS_CAPABLE_VOLTE"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isVoLTESettingEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    :goto_1
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_4
    move v3, v4

    goto :goto_1

    :cond_5
    const-string v5, "RECEIVE_CALL_BY_HARD_KEY"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v3, p0, Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "anykey_mode"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_6
    const-string v5, "EARMIC_BT_CALL_RECEIVING"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v3, p0, Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "automatic_answering_enable_sharedpref"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_7
    const-string v5, "CALL_ACCEPTANCE_REJECTION"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v3, p0, Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "autoreject_mode"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_8
    const-string v5, "USE_AUTO_AREA"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v3, p0, Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "area_code_enabled"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_9
    const-string v5, "AUTO_AREA_NUMBER"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v3, p0, Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "area_code_value"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_a
    const-string v5, "OUTGOING_INTERNATIONAL"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    const-string v3, "extended_restrict_international_call"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "outging_intcall_lock"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_b
    iget-object v3, p0, Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "internationalcall_settings"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_c
    const-string v5, "OUTGOING_060_070"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "CALL_CONNECTION"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v3, p0, Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "call_conn_tone"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_d
    const-string v5, "PROTECT_VOICE_DURING_CALL"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v3, p0, Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "enable_call_protect_when_calling"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_e
    const-string v5, "CALL_WAITING_VIB_SET"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "CALL_WAITING_SOUND_VOLUME"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "END_CALL_BY_POWER_KEY"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "incall_power_button_behavior"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_f

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_f
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_10
    const-string v5, "VIDEOCALL_MASK"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    iget-object v3, p0, Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preset_name"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_11
    const-string v5, "VIDEOCALL_AUDIO"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    iget-object v4, p0, Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "videocall_speaker"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_12
    const-string v5, "VIDEOCALL_FAIL"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    iget-object v3, p0, Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "videocall_settings"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_13
    const-string v5, "SKT_CALL_MODE"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    iget-object v3, p0, Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "skt_phone20_settings"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_14
    const-string v5, "DORMANT_MODE"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    iget-object v3, p0, Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "dormant_switch_onoff"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_15
    const-string v5, "DORMANT_DISABLE_INCOMING_CALL"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    iget-object v3, p0, Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "dormant_disable_incoming_calls"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_16
    const-string v5, "CALL_REJECT_PRIVATE"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    iget-object v3, p0, Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "unknown_mode"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_17
    const-string v5, "NUMBERPLUS_NUMBER"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "NUMBERPLUS_RINGTONE_URI"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "FIND_LOST_PHONE_SERVICE"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-static {}, Lcom/android/phone/CarrierUtils;->isFindService()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_18

    :goto_2
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_18
    move v3, v4

    goto :goto_2

    :cond_19
    const-string v5, "USE_SMART_COVER"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "USE_PRIVATE_MODE"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "CALL_IS_ROAMING_AREA"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isRoamingArea()Z

    move-result v5

    if-eqz v5, :cond_1a

    :goto_3
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_1a
    move v3, v4

    goto :goto_3

    :cond_1b
    const-string v5, "DATA_ROAMING"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    iget-object v3, p0, Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "data_roaming"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_1c
    const-string v5, "ROAMING_AUTO_DIAL"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    iget-object v3, p0, Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "roaming_auto_dial"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_1d
    const-string v4, "PROXIMITY_SENSOR"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    iget-object v4, p0, Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "proximity_sensor"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_1e
    const-string v4, "INTERNATIONAL_SERVICE"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    iget-object v4, p0, Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "int_call_svc_enabled"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_1f
    const-string v3, "INTERNATIONAL_SERVICE_VALUE"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "int_call_svc_value"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0
.end method

.method public getRingingCall()Lcom/skt/prod/phone/TCall;
    .locals 4

    iget-object v3, p0, Lcom/android/phone/TPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    const/4 v0, 0x0

    if-eqz v2, :cond_0

    invoke-direct {p0, v2}, Lcom/android/phone/TPhoneService;->getConnection(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/TPhoneService;->getCallInfo(Lcom/android/internal/telephony/Connection;)Lcom/skt/prod/phone/TCall;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/phone/TPhoneService;->canStartTPhoneService()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "com.samsung.phone.ITPhoneService"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "TPhoneService binding success"

    invoke-direct {p0, v1}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/TPhoneService;->mITPhoneServiceAdapter:Lcom/android/phone/TPhoneService$ITPhoneServiceAdapter;

    goto :goto_0

    :cond_1
    const-string v2, "TPhoneService binding failed"

    invoke-direct {p0, v2}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 2

    const-string v0, "onCreate()"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;Z)V

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-direct {p0}, Lcom/android/phone/TPhoneService;->canStartTPhoneService()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sput-object p0, Lcom/android/phone/TPhoneService;->sInstance:Lcom/android/phone/TPhoneService;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    iget-object v0, p0, Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/TPhoneService;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/TPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {}, Lcom/android/phone/PhoneVoiceRecorder;->getInstance()Lcom/android/phone/PhoneVoiceRecorder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/TPhoneService;->recorder:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-static {}, Lcom/android/phone/CarrierManager;->getInstance()Lcom/android/phone/CarrierManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/TPhoneService;->mCarrierManager:Lcom/android/phone/CarrierManager;

    invoke-static {}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getInstance()Lcom/android/phone/ims/IMSConferenceCallMgr;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/TPhoneService;->conferenceCallMgr:Lcom/android/phone/ims/IMSConferenceCallMgr;

    invoke-direct {p0}, Lcom/android/phone/TPhoneService;->registerForBroadcast()V

    iget-object v0, p0, Lcom/android/phone/TPhoneService;->mCarrierManager:Lcom/android/phone/CarrierManager;

    invoke-virtual {v0}, Lcom/android/phone/CarrierManager;->registerForAll()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "onDestroy()"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;Z)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    invoke-direct {p0}, Lcom/android/phone/TPhoneService;->canStartTPhoneService()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/TPhoneService;->unregisterForBroadcast()V

    iget-object v0, p0, Lcom/android/phone/TPhoneService;->mCarrierManager:Lcom/android/phone/CarrierManager;

    invoke-virtual {v0}, Lcom/android/phone/CarrierManager;->unregisterForAll()V

    goto :goto_0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    const-string v0, "onUnbind()"

    invoke-direct {p0, v0}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public sendCoverStateChanged(II)V
    .locals 9

    iget-object v4, p0, Lcom/android/phone/TPhoneService;->mSyncListener:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string v3, "[carrier-phone] TPhoneService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendCoverStateChanged : type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v5, v6}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/phone/TPhoneService;->mITPhoneEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    :try_start_1
    iget-object v3, p0, Lcom/android/phone/TPhoneService;->mITPhoneEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/android/phone/ITPhoneEventListener;

    invoke-interface {v3, p2, p1}, Lcom/android/phone/ITPhoneEventListener;->onCoverStateChanged(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/android/phone/TPhoneService;->mITPhoneEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :goto_1
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catch_0
    move-exception v1

    :try_start_3
    const-string v3, "[carrier-phone] TPhoneService"

    const-string v5, "RemoteException"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-static {v3, v1, v5, v6}, Lcom/android/services/telephony/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v3, p0, Lcom/android/phone/TPhoneService;->mITPhoneEventListener:Landroid/os/RemoteCallbackList;

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
    iget-object v5, p0, Lcom/android/phone/TPhoneService;->mITPhoneEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public sendDisconnectCall(Landroid/os/AsyncResult;)V
    .locals 11

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v6, p0, Lcom/android/phone/TPhoneService;->mSyncListener:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/Connection;

    invoke-direct {p0, v2}, Lcom/android/phone/TPhoneService;->getCallInfo(Lcom/android/internal/telephony/Connection;)Lcom/skt/prod/phone/TCall;

    move-result-object v1

    const-string v5, "[carrier-phone] TPhoneService"

    const-string v7, "sendDisconnectCall : "

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v5, v7, v8}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/android/phone/TPhoneService;->mITPhoneEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_1

    :try_start_1
    iget-object v5, p0, Lcom/android/phone/TPhoneService;->mITPhoneEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Lcom/android/phone/ITPhoneEventListener;

    const/4 v7, 0x0

    invoke-interface {v5, v1, v7}, Lcom/android/phone/ITPhoneEventListener;->onDisconnect(Lcom/skt/prod/phone/TCall;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    :try_start_2
    iget-object v5, p0, Lcom/android/phone/TPhoneService;->mITPhoneEventListener:Landroid/os/RemoteCallbackList;

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
    const-string v5, "[carrier-phone] TPhoneService"

    const-string v7, "RemoteException"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    invoke-static {v5, v3, v7, v8}, Lcom/android/services/telephony/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v5, p0, Lcom/android/phone/TPhoneService;->mITPhoneEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_2

    :catchall_1
    move-exception v5

    iget-object v7, p0, Lcom/android/phone/TPhoneService;->mITPhoneEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v7}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public sendNewIncomingCall(Landroid/os/AsyncResult;)V
    .locals 11

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v6, p0, Lcom/android/phone/TPhoneService;->mSyncListener:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/Connection;

    invoke-direct {p0, v2}, Lcom/android/phone/TPhoneService;->getCallInfo(Lcom/android/internal/telephony/Connection;)Lcom/skt/prod/phone/TCall;

    move-result-object v1

    const-string v5, "[carrier-phone] TPhoneService"

    const-string v7, "sendNewIncomingCall : "

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v5, v7, v8}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/android/phone/TPhoneService;->mITPhoneEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_1

    :try_start_1
    iget-object v5, p0, Lcom/android/phone/TPhoneService;->mITPhoneEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Lcom/android/phone/ITPhoneEventListener;

    invoke-interface {v5, v1}, Lcom/android/phone/ITPhoneEventListener;->onNewIncomingCall(Lcom/skt/prod/phone/TCall;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    :try_start_2
    iget-object v5, p0, Lcom/android/phone/TPhoneService;->mITPhoneEventListener:Landroid/os/RemoteCallbackList;

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
    const-string v5, "[carrier-phone] TPhoneService"

    const-string v7, "RemoteException"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    invoke-static {v5, v3, v7, v8}, Lcom/android/services/telephony/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v5, p0, Lcom/android/phone/TPhoneService;->mITPhoneEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_2

    :catchall_1
    move-exception v5

    iget-object v7, p0, Lcom/android/phone/TPhoneService;->mITPhoneEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v7}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public sendPhoneState()V
    .locals 10

    iget-object v5, p0, Lcom/android/phone/TPhoneService;->mSyncListener:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/phone/TPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    const-string v4, "[carrier-phone] TPhoneService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendPhoneState : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v6, v7}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/phone/TPhoneService;->mITPhoneEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    :try_start_1
    iget-object v4, p0, Lcom/android/phone/TPhoneService;->mITPhoneEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/android/phone/ITPhoneEventListener;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneConstants$State;->ordinal()I

    move-result v6

    invoke-interface {v4, v6}, Lcom/android/phone/ITPhoneEventListener;->onPhoneStateChanged(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :try_start_2
    iget-object v4, p0, Lcom/android/phone/TPhoneService;->mITPhoneEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :goto_1
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catch_0
    move-exception v1

    :try_start_3
    const-string v4, "[carrier-phone] TPhoneService"

    const-string v6, "RemoteException"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-static {v4, v1, v6, v7}, Lcom/android/services/telephony/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v4, p0, Lcom/android/phone/TPhoneService;->mITPhoneEventListener:Landroid/os/RemoteCallbackList;

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
    iget-object v6, p0, Lcom/android/phone/TPhoneService;->mITPhoneEventListener:Landroid/os/RemoteCallbackList;

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
    iget-object v6, p0, Lcom/android/phone/TPhoneService;->mSyncListener:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/Connection;

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    iget-object v4, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/Connection$PostDialState;

    :cond_1
    iget-object v5, p0, Lcom/android/phone/TPhoneService;->mITPhoneEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_3

    if-eqz v4, :cond_2

    :try_start_1
    iget-object v5, p0, Lcom/android/phone/TPhoneService;->mITPhoneEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Lcom/android/phone/ITPhoneEventListener;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection$PostDialState;->ordinal()I

    move-result v7

    invoke-interface {v5, v7, p2}, Lcom/android/phone/ITPhoneEventListener;->onPostDialCharacter(IC)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    :try_start_2
    iget-object v5, p0, Lcom/android/phone/TPhoneService;->mITPhoneEventListener:Landroid/os/RemoteCallbackList;

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
    const-string v5, "[carrier-phone] TPhoneService"

    const-string v7, "RemoteException"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    invoke-static {v5, v2, v7, v8}, Lcom/android/services/telephony/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v5, p0, Lcom/android/phone/TPhoneService;->mITPhoneEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_2

    :catchall_1
    move-exception v5

    iget-object v7, p0, Lcom/android/phone/TPhoneService;->mITPhoneEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v7}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public sendRecordStateChanged(Lcom/android/internal/telephony/Connection;Landroid/os/Bundle;)V
    .locals 10

    iget-object v5, p0, Lcom/android/phone/TPhoneService;->mSyncListener:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    const-string v4, "[carrier-phone] TPhoneService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendRecordStateChanged : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v6, v7}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/android/phone/TPhoneService;->getCallInfo(Lcom/android/internal/telephony/Connection;)Lcom/skt/prod/phone/TCall;

    move-result-object v1

    iget-object v4, p0, Lcom/android/phone/TPhoneService;->mITPhoneEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    :try_start_1
    iget-object v4, p0, Lcom/android/phone/TPhoneService;->mITPhoneEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/android/phone/ITPhoneEventListener;

    invoke-interface {v4, v1, p2}, Lcom/android/phone/ITPhoneEventListener;->onRecordStateChanged(Lcom/skt/prod/phone/TCall;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :try_start_2
    iget-object v4, p0, Lcom/android/phone/TPhoneService;->mITPhoneEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :goto_1
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catch_0
    move-exception v2

    :try_start_3
    const-string v4, "[carrier-phone] TPhoneService"

    const-string v6, "RemoteException"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-static {v4, v2, v6, v7}, Lcom/android/services/telephony/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v4, p0, Lcom/android/phone/TPhoneService;->mITPhoneEventListener:Landroid/os/RemoteCallbackList;

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
    iget-object v6, p0, Lcom/android/phone/TPhoneService;->mITPhoneEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public sendRequestVideoCall(Lcom/android/internal/telephony/Connection;)V
    .locals 10

    iget-object v5, p0, Lcom/android/phone/TPhoneService;->mSyncListener:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    const-string v4, "[carrier-phone] TPhoneService"

    const-string v6, "sendRequestVideoCall : "

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v6, v7}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/android/phone/TPhoneService;->getCallInfo(Lcom/android/internal/telephony/Connection;)Lcom/skt/prod/phone/TCall;

    move-result-object v1

    iget-object v4, p0, Lcom/android/phone/TPhoneService;->mITPhoneEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    :try_start_1
    iget-object v4, p0, Lcom/android/phone/TPhoneService;->mITPhoneEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/android/phone/ITPhoneEventListener;

    invoke-interface {v4, v1}, Lcom/android/phone/ITPhoneEventListener;->onRequestVideoCall(Lcom/skt/prod/phone/TCall;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :try_start_2
    iget-object v4, p0, Lcom/android/phone/TPhoneService;->mITPhoneEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :goto_1
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catch_0
    move-exception v2

    :try_start_3
    const-string v4, "[carrier-phone] TPhoneService"

    const-string v6, "RemoteException"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-static {v4, v2, v6, v7}, Lcom/android/services/telephony/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v4, p0, Lcom/android/phone/TPhoneService;->mITPhoneEventListener:Landroid/os/RemoteCallbackList;

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
    iget-object v6, p0, Lcom/android/phone/TPhoneService;->mITPhoneEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public sendSuppServiceFailed(Landroid/os/AsyncResult;)V
    .locals 10

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/phone/TPhoneService;->mSyncListener:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    const-string v4, "[carrier-phone] TPhoneService"

    const-string v6, "sendSuppServiceFailed : "

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v6, v7}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/Phone$SuppService;

    iget-object v4, p0, Lcom/android/phone/TPhoneService;->mITPhoneEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    :try_start_1
    iget-object v4, p0, Lcom/android/phone/TPhoneService;->mITPhoneEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/android/phone/ITPhoneEventListener;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone$SuppService;->ordinal()I

    move-result v6

    invoke-interface {v4, v6}, Lcom/android/phone/ITPhoneEventListener;->onSuppServiceFailed(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :try_start_2
    iget-object v4, p0, Lcom/android/phone/TPhoneService;->mITPhoneEventListener:Landroid/os/RemoteCallbackList;

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
    const-string v4, "[carrier-phone] TPhoneService"

    const-string v6, "RemoteException"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-static {v4, v1, v6, v7}, Lcom/android/services/telephony/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v4, p0, Lcom/android/phone/TPhoneService;->mITPhoneEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_2

    :catchall_1
    move-exception v4

    iget-object v6, p0, Lcom/android/phone/TPhoneService;->mITPhoneEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public sendSuppServiceNotification(Landroid/os/AsyncResult;)V
    .locals 10

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/phone/TPhoneService;->mSyncListener:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    const-string v4, "[carrier-phone] TPhoneService"

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

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v6, v7}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/phone/TPhoneService;->mITPhoneEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_1

    :try_start_1
    iget-object v4, p0, Lcom/android/phone/TPhoneService;->mITPhoneEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/android/phone/ITPhoneEventListener;

    iget v6, v1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    iget v7, v1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    invoke-interface {v4, v6, v7}, Lcom/android/phone/ITPhoneEventListener;->onSuppServiceNotification(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    :try_start_2
    iget-object v4, p0, Lcom/android/phone/TPhoneService;->mITPhoneEventListener:Landroid/os/RemoteCallbackList;

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
    const-string v4, "[carrier-phone] TPhoneService"

    const-string v6, "RemoteException"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-static {v4, v2, v6, v7}, Lcom/android/services/telephony/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v4, p0, Lcom/android/phone/TPhoneService;->mITPhoneEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_2

    :catchall_1
    move-exception v4

    iget-object v6, p0, Lcom/android/phone/TPhoneService;->mITPhoneEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public sendVideoCallResult(I)V
    .locals 9

    iget-object v4, p0, Lcom/android/phone/TPhoneService;->mSyncListener:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string v3, "[carrier-phone] TPhoneService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendVideoCallResult : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v5, v6}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/phone/TPhoneService;->mITPhoneEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    :try_start_1
    iget-object v3, p0, Lcom/android/phone/TPhoneService;->mITPhoneEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/android/phone/ITPhoneEventListener;

    invoke-interface {v3, p1}, Lcom/android/phone/ITPhoneEventListener;->onVideoCallResult(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/android/phone/TPhoneService;->mITPhoneEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :goto_1
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catch_0
    move-exception v1

    :try_start_3
    const-string v3, "[carrier-phone] TPhoneService"

    const-string v5, "RemoteException"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-static {v3, v1, v5, v6}, Lcom/android/services/telephony/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v3, p0, Lcom/android/phone/TPhoneService;->mITPhoneEventListener:Landroid/os/RemoteCallbackList;

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
    iget-object v5, p0, Lcom/android/phone/TPhoneService;->mITPhoneEventListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public setKeyMappingTable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    const-string v2, "HDVOICE_SETTING"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "voicecall_type"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "voicecall_type"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    const-string v2, "HDVOICE_AVAILABLE_NOTIFICATION"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "volte_noti_settings"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_3
    const-string v2, "CALL_IS_CAPABLE_VOLTE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "RECEIVE_CALL_BY_HARD_KEY"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "anykey_mode"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_4
    const-string v2, "EARMIC_BT_CALL_RECEIVING"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "automatic_answering_enable_sharedpref"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_5
    const-string v2, "CALL_ACCEPTANCE_REJECTION"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "autoreject_mode"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_6
    const-string v2, "USE_AUTO_AREA"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "area_code_enabled"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_7
    const-string v2, "AUTO_AREA_NUMBER"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "area_code_value"

    invoke-static {v2, v3, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_8
    const-string v2, "OUTGOING_INTERNATIONAL"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "extended_restrict_international_call"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "outging_intcall_lock"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_9
    iget-object v2, p0, Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "internationalcall_settings"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_a
    const-string v2, "OUTGOING_060_070"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CALL_CONNECTION"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "call_conn_tone"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_b
    const-string v2, "PROTECT_VOICE_DURING_CALL"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enable_call_protect_when_calling"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_c
    const-string v2, "CALL_WAITING_VIB_SET"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CALL_WAITING_SOUND_VOLUME"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "END_CALL_BY_POWER_KEY"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_d

    iget-object v2, p0, Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "incall_power_button_behavior"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_d
    iget-object v2, p0, Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "incall_power_button_behavior"

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_e
    const-string v2, "VIDEOCALL_MASK"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preset_name"

    invoke-static {v2, v3, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_f
    const-string v2, "VIDEOCALL_AUDIO"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "videocall_speaker"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_10
    const-string v2, "VIDEOCALL_FAIL"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "videocall_settings"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_11
    const-string v2, "SKT_CALL_MODE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "skt_phone20_settings"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_12
    const-string v2, "DORMANT_MODE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dormant_switch_onoff"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_13
    const-string v2, "DORMANT_DISABLE_INCOMING_CALL"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dormant_disable_incoming_calls"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_14
    const-string v2, "CALL_REJECT_PRIVATE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "unknown_mode"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_15
    const-string v2, "NUMBERPLUS_NUMBER"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NUMBERPLUS_RINGTONE_URI"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "FIND_LOST_PHONE_SERVICE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "USE_SMART_COVER"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "USE_PRIVATE_MODE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CALL_IS_ROAMING_AREA"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "DATA_ROAMING"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "data_roaming"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_16
    const-string v2, "ROAMING_AUTO_DIAL"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "roaming_auto_dial"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_17
    const-string v2, "PROXIMITY_SENSOR"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "proximity_sensor"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_18
    const-string v2, "INTERNATIONAL_SERVICE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "int_call_svc_enabled"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_19
    const-string v2, "INTERNATIONAL_SERVICE_VALUE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "int_call_svc_value"

    invoke-static {v2, v3, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0
.end method

.method public updateSystemKeyEvent(ZI)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/phone/TPhoneService;->mIsAppSwitchSystemKeyEvent:Z

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAppSwitchSystemKeyEvent("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/phone/TPhoneService;->mIsAppSwitchSystemKeyEvent:Z

    invoke-direct {p0, p2, p1}, Lcom/android/phone/TPhoneService;->requestSystemKeyEvent(IZ)Z

    :cond_0
    return-void
.end method

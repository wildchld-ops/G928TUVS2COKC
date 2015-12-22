.class public Lcom/android/phone/CarrierManager;
.super Ljava/lang/Object;
.source "CarrierManager.java"


# static fields
.field private static sInstance:Lcom/android/phone/CarrierManager;


# instance fields
.field private apps:Lcom/android/phone/PhoneGlobals;

.field private cm:Lcom/android/internal/telephony/CallManager;

.field private context:Landroid/content/Context;

.field private coverState:Lcom/samsung/android/sdk/cover/ScoverState;

.field private mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

.field public mCoverState:I

.field private mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

.field public mCoverType:I

.field private mHandler:Landroid/os/Handler;

.field private mICallKtClientService:Lcom/kt/ollehcall/phoneinterface/ICallKtClientService;

.field public mICallKtClientServiceConn:Landroid/content/ServiceConnection;

.field private mScover:Lcom/samsung/android/sdk/cover/Scover;

.field private mTInCallScreen:Lcom/skt/prod/phone/ITInCallScreen;

.field public mTInCallScreenConn:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CarrierManager;->apps:Lcom/android/phone/PhoneGlobals;

    iput-object v0, p0, Lcom/android/phone/CarrierManager;->cm:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/CarrierManager;->context:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/phone/CarrierManager;->mTInCallScreen:Lcom/skt/prod/phone/ITInCallScreen;

    iput-object v0, p0, Lcom/android/phone/CarrierManager;->mICallKtClientService:Lcom/kt/ollehcall/phoneinterface/ICallKtClientService;

    iput v1, p0, Lcom/android/phone/CarrierManager;->mCoverState:I

    iput v1, p0, Lcom/android/phone/CarrierManager;->mCoverType:I

    new-instance v0, Lcom/android/phone/CarrierManager$1;

    invoke-direct {v0, p0}, Lcom/android/phone/CarrierManager$1;-><init>(Lcom/android/phone/CarrierManager;)V

    iput-object v0, p0, Lcom/android/phone/CarrierManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/CarrierManager$3;

    invoke-direct {v0, p0}, Lcom/android/phone/CarrierManager$3;-><init>(Lcom/android/phone/CarrierManager;)V

    iput-object v0, p0, Lcom/android/phone/CarrierManager;->mTInCallScreenConn:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/android/phone/CarrierManager$4;

    invoke-direct {v0, p0}, Lcom/android/phone/CarrierManager$4;-><init>(Lcom/android/phone/CarrierManager;)V

    iput-object v0, p0, Lcom/android/phone/CarrierManager;->mICallKtClientServiceConn:Landroid/content/ServiceConnection;

    const-string v0, "[carrier-phone] CarrierManager"

    const-string v1, "create... "

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CarrierManager;->apps:Lcom/android/phone/PhoneGlobals;

    iget-object v0, p0, Lcom/android/phone/CarrierManager;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CarrierManager;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/phone/CarrierManager;->apps:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/CarrierManager;->cm:Lcom/android/internal/telephony/CallManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/CarrierManager;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0    # Lcom/android/phone/CarrierManager;
    .param p1    # Landroid/os/AsyncResult;

    invoke-direct {p0, p1}, Lcom/android/phone/CarrierManager;->onIncomingModifyCall(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/CarrierManager;)Lcom/samsung/android/sdk/cover/ScoverState;
    .locals 1
    .param p0    # Lcom/android/phone/CarrierManager;

    iget-object v0, p0, Lcom/android/phone/CarrierManager;->coverState:Lcom/samsung/android/sdk/cover/ScoverState;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/phone/CarrierManager;Lcom/samsung/android/sdk/cover/ScoverState;)Lcom/samsung/android/sdk/cover/ScoverState;
    .locals 0
    .param p0    # Lcom/android/phone/CarrierManager;
    .param p1    # Lcom/samsung/android/sdk/cover/ScoverState;

    iput-object p1, p0, Lcom/android/phone/CarrierManager;->coverState:Lcom/samsung/android/sdk/cover/ScoverState;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/phone/CarrierManager;)Lcom/samsung/android/sdk/cover/ScoverManager;
    .locals 1
    .param p0    # Lcom/android/phone/CarrierManager;

    iget-object v0, p0, Lcom/android/phone/CarrierManager;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/phone/CarrierManager;Lcom/skt/prod/phone/ITInCallScreen;)Lcom/skt/prod/phone/ITInCallScreen;
    .locals 0
    .param p0    # Lcom/android/phone/CarrierManager;
    .param p1    # Lcom/skt/prod/phone/ITInCallScreen;

    iput-object p1, p0, Lcom/android/phone/CarrierManager;->mTInCallScreen:Lcom/skt/prod/phone/ITInCallScreen;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/phone/CarrierManager;)Lcom/android/internal/telephony/CallManager;
    .locals 1
    .param p0    # Lcom/android/phone/CarrierManager;

    iget-object v0, p0, Lcom/android/phone/CarrierManager;->cm:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method static synthetic access$500(Ljava/lang/String;)V
    .locals 0
    .param p0    # Ljava/lang/String;

    invoke-static {p0}, Lcom/android/phone/CarrierManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$602(Lcom/android/phone/CarrierManager;Lcom/kt/ollehcall/phoneinterface/ICallKtClientService;)Lcom/kt/ollehcall/phoneinterface/ICallKtClientService;
    .locals 0
    .param p0    # Lcom/android/phone/CarrierManager;
    .param p1    # Lcom/kt/ollehcall/phoneinterface/ICallKtClientService;

    iput-object p1, p0, Lcom/android/phone/CarrierManager;->mICallKtClientService:Lcom/kt/ollehcall/phoneinterface/ICallKtClientService;

    return-object p1
.end method

.method public static getInstance()Lcom/android/phone/CarrierManager;
    .locals 2

    const-class v1, Lcom/android/phone/CarrierManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/phone/CarrierManager;->sInstance:Lcom/android/phone/CarrierManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/CarrierManager;

    invoke-direct {v0}, Lcom/android/phone/CarrierManager;-><init>()V

    sput-object v0, Lcom/android/phone/CarrierManager;->sInstance:Lcom/android/phone/CarrierManager;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/android/phone/CarrierManager;->sInstance:Lcom/android/phone/CarrierManager;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/String;

    const-string v0, "[carrier-phone] CarrierManager"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static log(Ljava/lang/String;Z)V
    .locals 4
    .param p0    # Ljava/lang/String;
    .param p1    # Z

    const-string v0, "[carrier-phone] CarrierManager"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, p0, v1}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private onIncomingModifyCall(Landroid/os/AsyncResult;)V
    .locals 6
    .param p1    # Landroid/os/AsyncResult;

    :try_start_0
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    iget-object v3, p0, Lcom/android/phone/CarrierManager;->cm:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/CallManager;->getProposedConnectionType(Lcom/android/internal/telephony/Connection;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const-string v3, "onIncomingModifyCall : request CALL_TYPE_VT -> CALL_TYPE_VOICE"

    invoke-static {v3}, Lcom/android/phone/CarrierManager;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/services/utils/SecTelecomAdapter;->isLowBatt()Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f0a0605

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->displayToast(I)V

    iget-object v3, p0, Lcom/android/phone/CarrierManager;->cm:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/CallManager;->rejectConnectionTypeChange(Lcom/android/internal/telephony/Connection;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/phone/TPhoneService;->getInstance()Lcom/android/phone/TPhoneService;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/phone/TPhoneService;->sendRequestVideoCall(Lcom/android/internal/telephony/Connection;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "[carrier-phone] CarrierManager"

    const-string v4, "onIncomingModifyCall : CallStateException:"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v1, v4, v5}, Lcom/android/services/telephony/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isOllehPhoneEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/phone/OllehPhoneService;->getInstance()Lcom/android/phone/OllehPhoneService;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/phone/OllehPhoneService;->sendRequestVideoCall(Lcom/android/internal/telephony/Connection;)V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public connectICallKtClientService()V
    .locals 6

    const/4 v5, 0x0

    const-string v2, "support_ollehphone"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "[carrier-phone] CarrierManager"

    const-string v3, "connect ICallKtClientService blocked - do not support ollehphone"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isOllehPhoneEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "[carrier-phone] CarrierManager"

    const-string v3, "connect ICallKtClientService blocked - is not ollehphone enabled"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/CarrierManager;->mICallKtClientService:Lcom/kt/ollehcall/phoneinterface/ICallKtClientService;

    if-nez v2, :cond_3

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.kt.ollehcall.phoneinterface.ICallKtClientService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.kt.ollehphone"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CarrierManager;->apps:Lcom/android/phone/PhoneGlobals;

    iget-object v3, p0, Lcom/android/phone/CarrierManager;->mICallKtClientServiceConn:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/phone/PhoneGlobals;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "[carrier-phone] CarrierManager"

    const-string v3, "connect ICallKtClientService()... "

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "[carrier-phone] CarrierManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can not connect ICallKtClientService - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    :try_start_1
    const-string v2, "[carrier-phone] CarrierManager"

    const-string v3, "connect ICallKtClientService blocked - already did it"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public connectTInCallScreen()V
    .locals 6

    const/4 v5, 0x0

    const-string v2, "support_tphone"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "[carrier-phone] CarrierManager"

    const-string v3, "connect TInCallScreen blocked - do not support tphone"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "[carrier-phone] CarrierManager"

    const-string v3, "connect TInCallScreen blocked - is not tphone enabled"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/CarrierManager;->mTInCallScreen:Lcom/skt/prod/phone/ITInCallScreen;

    if-nez v2, :cond_3

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/skt/prod/phone/ITInCallScreen;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.skt.prod.phone"

    const-string v4, "com.skt.prod.phone.service.TPhoneService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/phone/CarrierManager;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2, v1}, Lcom/android/phone/PhoneGlobals;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/CarrierManager;->apps:Lcom/android/phone/PhoneGlobals;

    iget-object v3, p0, Lcom/android/phone/CarrierManager;->mTInCallScreenConn:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/phone/PhoneGlobals;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "[carrier-phone] CarrierManager"

    const-string v3, "connect TInCallScreen()... "

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "[carrier-phone] CarrierManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can not connect TInCallScreen - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    :try_start_1
    const-string v2, "[carrier-phone] CarrierManager"

    const-string v3, "connect TInCallScreen blocked - already did it"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public disconnectICallKtClientService()V
    .locals 5

    const/4 v4, 0x0

    const-string v1, "support_ollehphone"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "disconnect ICallKtClientService blocked - do not support ollehphone"

    invoke-static {v1}, Lcom/android/phone/CarrierManager;->log(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/CarrierManager;->mICallKtClientServiceConn:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/CarrierManager;->apps:Lcom/android/phone/PhoneGlobals;

    iget-object v2, p0, Lcom/android/phone/CarrierManager;->mICallKtClientServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneGlobals;->unbindService(Landroid/content/ServiceConnection;)V

    const-string v1, "[carrier-phone] CarrierManager"

    const-string v2, "disconnect ICallKtClientService()... "

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/services/telephony/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "[carrier-phone] CarrierManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not disconnect ICallKtClientService() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/services/telephony/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public disconnectTInCallScreen()V
    .locals 6

    const/4 v5, 0x0

    const-string v2, "support_tphone"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "disconnect TInCallScreen blocked - do not support tphone"

    invoke-static {v2}, Lcom/android/phone/CarrierManager;->log(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/skt/prod/phone/ITInCallScreen;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.skt.prod.phone"

    const-string v4, "com.skt.prod.phone.service.TPhoneService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/CarrierManager;->mTInCallScreenConn:Landroid/content/ServiceConnection;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/CarrierManager;->apps:Lcom/android/phone/PhoneGlobals;

    iget-object v3, p0, Lcom/android/phone/CarrierManager;->mTInCallScreenConn:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Lcom/android/phone/PhoneGlobals;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v2, p0, Lcom/android/phone/CarrierManager;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2, v1}, Lcom/android/phone/PhoneGlobals;->stopService(Landroid/content/Intent;)Z

    const-string v2, "[carrier-phone] CarrierManager"

    const-string v3, "disconnect TInCallScreen()..."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "[carrier-phone] CarrierManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can not disconnect TInCallScreen - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public displayOllehPhone(I)V
    .locals 1
    .param p1    # I

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/phone/CarrierManager;->startOllehPhone(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public displayTPhone(I)V
    .locals 2
    .param p1    # I

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/phone/CarrierManager;->startTPhone(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getCallFilterType(Ljava/lang/String;I)I
    .locals 7
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/CarrierManager;->mTInCallScreen:Lcom/skt/prod/phone/ITInCallScreen;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/CarrierManager;->connectTInCallScreen()V

    const-string v2, "[carrier-phone] CarrierManager"

    const-string v3, "getCallFilterType : connectTInCallScreen()... "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v2, p0, Lcom/android/phone/CarrierManager;->mTInCallScreen:Lcom/skt/prod/phone/ITInCallScreen;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/CarrierManager;->mTInCallScreen:Lcom/skt/prod/phone/ITInCallScreen;

    invoke-interface {v2, p1, p2}, Lcom/skt/prod/phone/ITInCallScreen;->getCallFilterType(Ljava/lang/String;I)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " getCallFilterType() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/phone/CarrierManager;->log(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getRejectCallType(Ljava/lang/String;)I
    .locals 7
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/CarrierManager;->mICallKtClientService:Lcom/kt/ollehcall/phoneinterface/ICallKtClientService;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/CarrierManager;->connectICallKtClientService()V

    const-string v2, "[carrier-phone] CarrierManager"

    const-string v3, "getRejectCallType : connectICallKtClientService()... "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v2, p0, Lcom/android/phone/CarrierManager;->mICallKtClientService:Lcom/kt/ollehcall/phoneinterface/ICallKtClientService;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/CarrierManager;->mICallKtClientService:Lcom/kt/ollehcall/phoneinterface/ICallKtClientService;

    invoke-interface {v2, p1}, Lcom/kt/ollehcall/phoneinterface/ICallKtClientService;->isRejectCall(Ljava/lang/String;)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " getRejectCallType() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/phone/CarrierManager;->log(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getRingtoneUri()Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/phone/CarrierManager;->getRingtoneUri(Lcom/skt/prod/phone/TCall;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getRingtoneUri(Lcom/skt/prod/phone/TCall;)Ljava/lang/String;
    .locals 7
    .param p1    # Lcom/skt/prod/phone/TCall;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/CarrierManager;->mTInCallScreen:Lcom/skt/prod/phone/ITInCallScreen;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/CarrierManager;->connectTInCallScreen()V

    const-string v2, "[carrier-phone] CarrierManager"

    const-string v3, "getRingtoneUri : connectTInCallScreen()... "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v2, p0, Lcom/android/phone/CarrierManager;->mTInCallScreen:Lcom/skt/prod/phone/ITInCallScreen;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/CarrierManager;->mTInCallScreen:Lcom/skt/prod/phone/ITInCallScreen;

    invoke-interface {v2, p1}, Lcom/skt/prod/phone/ITInCallScreen;->getRingtoneUri(Lcom/skt/prod/phone/TCall;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRingtoneUri() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/phone/CarrierManager;->log(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public registerForAll()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/phone/CarrierManager;->registerForNotifications()V

    invoke-virtual {p0}, Lcom/android/phone/CarrierManager;->registerScoverListener()V

    const-string v0, "support_tphone"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/CarrierManager;->connectTInCallScreen()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "support_ollehphone"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/CarrierManager;->connectICallKtClientService()V

    goto :goto_0
.end method

.method public registerForNotifications()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "registerForNotifications()"

    invoke-static {v0, v4}, Lcom/android/phone/CarrierManager;->log(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/CarrierManager;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CarrierManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6e

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/phone/CarrierManager;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CarrierManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6f

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/phone/CarrierManager;->cm:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/CarrierManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/phone/CarrierManager;->cm:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/CarrierManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v4, v3}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/phone/CarrierManager;->cm:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/CarrierManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/phone/CarrierManager;->cm:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/CarrierManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/phone/CarrierManager;->cm:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/CarrierManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/phone/CarrierManager;->cm:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/CarrierManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForConnectionTypeChangeRequest(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerScoverListener()V
    .locals 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v3, "[carrier-phone] CarrierManager"

    const-string v4, "registerScoverListener : "

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v3, v4, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v3, Lcom/samsung/android/sdk/cover/Scover;

    invoke-direct {v3}, Lcom/samsung/android/sdk/cover/Scover;-><init>()V

    iput-object v3, p0, Lcom/android/phone/CarrierManager;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    :try_start_0
    iget-object v3, p0, Lcom/android/phone/CarrierManager;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    iget-object v4, p0, Lcom/android/phone/CarrierManager;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/cover/Scover;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_1

    new-instance v3, Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v4, p0, Lcom/android/phone/CarrierManager;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-direct {v3, v4}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/phone/CarrierManager;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v3, p0, Lcom/android/phone/CarrierManager;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/CarrierManager;->coverState:Lcom/samsung/android/sdk/cover/ScoverState;

    iget-object v3, p0, Lcom/android/phone/CarrierManager;->coverState:Lcom/samsung/android/sdk/cover/ScoverState;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/CarrierManager;->coverState:Lcom/samsung/android/sdk/cover/ScoverState;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_0
    iput v1, p0, Lcom/android/phone/CarrierManager;->mCoverState:I

    iget-object v1, p0, Lcom/android/phone/CarrierManager;->coverState:Lcom/samsung/android/sdk/cover/ScoverState;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v1

    iput v1, p0, Lcom/android/phone/CarrierManager;->mCoverType:I

    :cond_0
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/phone/TPhoneService;->getInstance()Lcom/android/phone/TPhoneService;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/CarrierManager;->mCoverType:I

    iget v3, p0, Lcom/android/phone/CarrierManager;->mCoverState:I

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/TPhoneService;->sendCoverStateChanged(II)V

    :cond_1
    :goto_1
    new-instance v1, Lcom/android/phone/CarrierManager$2;

    invoke-direct {v1, p0}, Lcom/android/phone/CarrierManager$2;-><init>(Lcom/android/phone/CarrierManager;)V

    iput-object v1, p0, Lcom/android/phone/CarrierManager;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    iget-object v1, p0, Lcom/android/phone/CarrierManager;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/CarrierManager;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    if-eqz v1, :cond_2

    const-string v1, "register Scover listener "

    invoke-static {v1}, Lcom/android/phone/CarrierManager;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/CarrierManager;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v2, p0, Lcom/android/phone/CarrierManager;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/cover/ScoverManager;->registerListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    :cond_2
    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isOllehPhoneEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/phone/OllehPhoneService;->getInstance()Lcom/android/phone/OllehPhoneService;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/CarrierManager;->mCoverType:I

    iget v3, p0, Lcom/android/phone/CarrierManager;->mCoverState:I

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/OllehPhoneService;->sendCoverStateChanged(II)V

    goto :goto_1
.end method

.method public setCallFilterType(Lcom/android/internal/telephony/Connection;)V
    .locals 7
    .param p1    # Lcom/android/internal/telephony/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/phone/CarrierManager;->getCallFilterType(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const-string v2, "[carrier-phone] CarrierManager"

    const-string v3, "onNewRingingConnection : RELAXATION"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/services/telephony/common/SystemDBInterface;->setTPhoneRejectMode(I)V

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/services/telephony/common/SystemDBInterface;->setTPhoneRelaxMode(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    const-string v2, "[carrier-phone] CarrierManager"

    const-string v3, "onNewRingingConnection : REJECT"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/services/telephony/common/SystemDBInterface;->setTPhoneRejectMode(I)V

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/services/telephony/common/SystemDBInterface;->setTPhoneRelaxMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v2, "[carrier-phone] CarrierManager"

    const-string v3, "onNewRingingConnection : ALLOW"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/services/telephony/common/SystemDBInterface;->setTPhoneRejectMode(I)V

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/services/telephony/common/SystemDBInterface;->setTPhoneRelaxMode(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public setRejectCallType(Lcom/android/internal/telephony/Connection;)V
    .locals 7
    .param p1    # Lcom/android/internal/telephony/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/phone/CarrierManager;->getRejectCallType(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_1

    const-string v2, "[carrier-phone] CarrierManager"

    const-string v3, "onNewRingingConnection : RELAXATION"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/services/telephony/common/SystemDBInterface;->setOllehPhoneRejectMode(I)V

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/services/telephony/common/SystemDBInterface;->setOllehPhoneRelaxMode(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    const-string v2, "[carrier-phone] CarrierManager"

    const-string v3, "onNewRingingConnection : REJECT"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/services/telephony/common/SystemDBInterface;->setOllehPhoneRejectMode(I)V

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/services/telephony/common/SystemDBInterface;->setOllehPhoneRelaxMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v2, "[carrier-phone] CarrierManager"

    const-string v3, "onNewRingingConnection : ALLOW"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/services/telephony/common/SystemDBInterface;->setOllehPhoneRejectMode(I)V

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/services/telephony/common/SystemDBInterface;->setOllehPhoneRelaxMode(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public startOllehPhone(I)V
    .locals 6
    .param p1    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/CarrierManager;->mICallKtClientService:Lcom/kt/ollehcall/phoneinterface/ICallKtClientService;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startOllehPhone() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/phone/CarrierManager;->log(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/phone/CarrierManager;->mICallKtClientService:Lcom/kt/ollehcall/phoneinterface/ICallKtClientService;

    invoke-interface {v1, p1}, Lcom/kt/ollehcall/phoneinterface/ICallKtClientService;->startActivity(I)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "[carrier-phone] CarrierManager"

    const-string v2, "startOllehPhone : connectICallKtClientService()... "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/services/telephony/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/phone/CarrierManager;->connectICallKtClientService()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public startTPhone(ILjava/lang/String;)V
    .locals 6
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/CarrierManager;->mTInCallScreen:Lcom/skt/prod/phone/ITInCallScreen;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startTPhone() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/phone/CarrierManager;->log(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/phone/CarrierManager;->mTInCallScreen:Lcom/skt/prod/phone/ITInCallScreen;

    invoke-interface {v1, p1, p2}, Lcom/skt/prod/phone/ITInCallScreen;->startTPhone(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "[carrier-phone] CarrierManager"

    const-string v2, "startTPhone : connectTInCallScreen()... "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/services/telephony/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/phone/CarrierManager;->connectTInCallScreen()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public unregisterForAll()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/CarrierManager;->sInstance:Lcom/android/phone/CarrierManager;

    invoke-virtual {p0}, Lcom/android/phone/CarrierManager;->unregisterForNotifications()V

    invoke-virtual {p0}, Lcom/android/phone/CarrierManager;->unregisterScoverListener()V

    const-string v0, "support_tphone"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/CarrierManager;->disconnectTInCallScreen()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "support_ollehphone"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/CarrierManager;->disconnectICallKtClientService()V

    goto :goto_0
.end method

.method public unregisterForNotifications()V
    .locals 2

    const-string v0, "unregisterForNotifications()"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/CarrierManager;->log(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/CarrierManager;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CarrierManager;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForSuppServiceFailed(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/phone/CarrierManager;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CarrierManager;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForSuppServiceNotification(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/phone/CarrierManager;->cm:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/CarrierManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForNewRingingConnection(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/phone/CarrierManager;->cm:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/CarrierManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/phone/CarrierManager;->cm:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/CarrierManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForDisconnect(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/phone/CarrierManager;->cm:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/CarrierManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForIncomingRing(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/phone/CarrierManager;->cm:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/CarrierManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForPostDialCharacter(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/phone/CarrierManager;->cm:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/CarrierManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForConnectionTypeChangeRequest(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterScoverListener()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/CarrierManager;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CarrierManager;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    if-eqz v0, :cond_0

    const-string v0, "unregist Scover listener "

    invoke-static {v0}, Lcom/android/phone/CarrierManager;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/CarrierManager;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v1, p0, Lcom/android/phone/CarrierManager;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->unregisterListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    :cond_0
    return-void
.end method

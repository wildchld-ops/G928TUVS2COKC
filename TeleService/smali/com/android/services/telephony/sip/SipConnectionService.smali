.class public final Lcom/android/services/telephony/sip/SipConnectionService;
.super Landroid/telecom/ConnectionService;
.source "SipConnectionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/services/telephony/sip/SipConnectionService$IProfileFinderCallback;
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mSipProfileDb:Lcom/android/services/telephony/sip/SipProfileDb;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/telecom/ConnectionService;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/services/telephony/sip/SipConnectionService;Landroid/net/sip/SipProfile;Landroid/telecom/ConnectionRequest;)Lcom/android/internal/telephony/Connection;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/services/telephony/sip/SipConnectionService;->createConnectionForProfile(Landroid/net/sip/SipProfile;Landroid/telecom/ConnectionRequest;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/services/telephony/sip/SipConnectionService;)Lcom/android/services/telephony/sip/SipProfileDb;
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/sip/SipConnectionService;->mSipProfileDb:Lcom/android/services/telephony/sip/SipProfileDb;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/services/telephony/sip/SipConnectionService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/sip/SipConnectionService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private createConnectionForProfile(Landroid/net/sip/SipProfile;Landroid/telecom/ConnectionRequest;)Lcom/android/internal/telephony/Connection;
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/services/telephony/sip/SipConnectionService;->findPhoneForProfile(Landroid/net/sip/SipProfile;)Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/services/telephony/sip/SipConnectionService;->createPhoneForProfile(Landroid/net/sip/SipProfile;)Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-direct {p0, v0, p2}, Lcom/android/services/telephony/sip/SipConnectionService;->startCallWithPhone(Lcom/android/internal/telephony/sip/SipPhone;Landroid/telecom/ConnectionRequest;)Lcom/android/internal/telephony/Connection;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private createPhoneForProfile(Landroid/net/sip/SipProfile;)Lcom/android/internal/telephony/sip/SipPhone;
    .locals 1

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->makeSipPhone(Ljava/lang/String;)Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v0

    return-object v0
.end method

.method private findPhoneForProfile(Landroid/net/sip/SipProfile;)Lcom/android/internal/telephony/sip/SipPhone;
    .locals 5

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnectionService;->getAllConnections()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection;

    instance-of v3, v0, Lcom/android/services/telephony/sip/SipConnection;

    if-eqz v3, :cond_0

    check-cast v0, Lcom/android/services/telephony/sip/SipConnection;

    invoke-virtual {v0}, Lcom/android/services/telephony/sip/SipConnection;->getPhone()Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/sip/SipPhone;->getSipUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private findProfile(Ljava/lang/String;Lcom/android/services/telephony/sip/SipConnectionService$IProfileFinderCallback;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/services/telephony/sip/SipConnectionService$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/services/telephony/sip/SipConnectionService$2;-><init>(Lcom/android/services/telephony/sip/SipConnectionService;Ljava/lang/String;Lcom/android/services/telephony/sip/SipConnectionService$IProfileFinderCallback;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private isNetworkConnected()Z
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/android/services/telephony/sip/SipConnectionService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-eq v4, v3, :cond_0

    invoke-static {p0}, Landroid/net/sip/SipManager;->isSipWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move v2, v3

    :cond_1
    return v2
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SIP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SipConnectionService] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private startCallWithPhone(Lcom/android/internal/telephony/sip/SipPhone;Landroid/telecom/ConnectionRequest;)Lcom/android/internal/telephony/Connection;
    .locals 5

    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getAddress()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getVideoState()I

    move-result v3

    invoke-virtual {p1, v1, v3}, Lcom/android/internal/telephony/sip/SipPhone;->dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startCallWithPhone, exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/services/telephony/sip/SipConnectionService;->log(Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    new-instance v0, Lcom/android/services/telephony/sip/SipProfileDb;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/sip/SipProfileDb;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/services/telephony/sip/SipConnectionService;->mSipProfileDb:Lcom/android/services/telephony/sip/SipProfileDb;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/services/telephony/sip/SipConnectionService;->mHandler:Landroid/os/Handler;

    invoke-super {p0}, Landroid/telecom/ConnectionService;->onCreate()V

    return-void
.end method

.method public onCreateIncomingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;
    .locals 9

    const/16 v8, 0x24

    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    if-nez v6, :cond_1

    const-string v6, "No extras on request."

    invoke-static {v8, v6}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(ILjava/lang/String;)Landroid/telecom/DisconnectCause;

    move-result-object v6

    invoke-static {v6}, Landroid/telecom/Connection;->createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;

    move-result-object v4

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "com.android.services.telephony.sip.incoming_call_intent"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    if-nez v5, :cond_2

    const-string v6, "No SIP intent."

    invoke-static {v8, v6}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(ILjava/lang/String;)Landroid/telecom/DisconnectCause;

    move-result-object v6

    invoke-static {v6}, Landroid/telecom/Connection;->createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;

    move-result-object v4

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-static {p0}, Landroid/net/sip/SipManager;->newInstance(Landroid/content/Context;)Landroid/net/sip/SipManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Landroid/net/sip/SipManager;->takeAudioCall(Landroid/content/Intent;Landroid/net/sip/SipAudioCall$Listener;)Landroid/net/sip/SipAudioCall;
    :try_end_0
    .catch Landroid/net/sip/SipException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/sip/SipAudioCall;->getLocalProfile()Landroid/net/sip/SipProfile;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/services/telephony/sip/SipConnectionService;->findPhoneForProfile(Landroid/net/sip/SipProfile;)Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-virtual {v3}, Landroid/net/sip/SipAudioCall;->getLocalProfile()Landroid/net/sip/SipProfile;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/services/telephony/sip/SipConnectionService;->createPhoneForProfile(Landroid/net/sip/SipProfile;)Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v2

    :cond_3
    if-eqz v2, :cond_5

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/sip/SipPhone;->takeIncomingCall(Ljava/lang/Object;)Lcom/android/internal/telephony/Connection;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v4, Lcom/android/services/telephony/sip/SipConnection;

    invoke-direct {v4}, Lcom/android/services/telephony/sip/SipConnection;-><init>()V

    invoke-virtual {v4, v1}, Lcom/android/services/telephony/sip/SipConnection;->initialize(Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v4}, Lcom/android/services/telephony/sip/SipConnection;->onAddedToCallService()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/sip/SipPhone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/sip/SipPhone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/android/services/telephony/sip/SipConnection;->onReject()V

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreateIncomingConnection, takeAudioCall exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/services/telephony/sip/SipConnectionService;->log(Ljava/lang/String;)V

    invoke-static {}, Landroid/telecom/Connection;->createCanceledConnection()Landroid/telecom/Connection;

    move-result-object v4

    goto :goto_0

    :cond_4
    invoke-static {}, Landroid/telecom/Connection;->createCanceledConnection()Landroid/telecom/Connection;

    move-result-object v4

    goto/16 :goto_0

    :cond_5
    invoke-static {v8}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(I)Landroid/telecom/DisconnectCause;

    move-result-object v6

    invoke-static {v6}, Landroid/telecom/Connection;->createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;

    move-result-object v4

    goto/16 :goto_0
.end method

.method public onCreateOutgoingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x1

    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnectionService;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_0
    if-eqz v4, :cond_2

    const-string v8, "android.telecom.extra.GATEWAY_PROVIDER_PACKAGE"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    const/16 v8, 0x14

    const-string v9, "Cannot make a SIP call with a gateway number."

    invoke-static {v8, v9}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(ILjava/lang/String;)Landroid/telecom/DisconnectCause;

    move-result-object v8

    invoke-static {v8}, Landroid/telecom/Connection;->createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;

    move-result-object v2

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    new-instance v6, Landroid/content/ComponentName;

    const-class v8, Lcom/android/services/telephony/sip/SipConnectionService;

    invoke-direct {v6, p0, v8}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    invoke-static {v8, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const/16 v8, 0x2b

    const-string v9, "Did not match service connection"

    invoke-static {v8, v9}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(ILjava/lang/String;)Landroid/telecom/DisconnectCause;

    move-result-object v8

    invoke-static {v8}, Landroid/telecom/Connection;->createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;

    move-result-object v2

    goto :goto_0

    :cond_3
    new-instance v2, Lcom/android/services/telephony/sip/SipConnection;

    invoke-direct {v2}, Lcom/android/services/telephony/sip/SipConnection;-><init>()V

    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getAddress()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v2, v8, v10}, Lcom/android/services/telephony/sip/SipConnection;->setAddress(Landroid/net/Uri;I)V

    invoke-virtual {v2}, Lcom/android/services/telephony/sip/SipConnection;->setInitializing()V

    invoke-virtual {v2}, Lcom/android/services/telephony/sip/SipConnection;->onAddedToCallService()V

    const/4 v1, 0x1

    invoke-static {p0}, Lcom/android/services/telephony/sip/SipUtil;->isVoipSupported(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_4

    const v8, 0x7f0a0038

    invoke-virtual {p0, v8}, Lcom/android/services/telephony/sip/SipConnectionService;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v8, Landroid/telecom/DisconnectCause;

    const-string v9, "VoIP unsupported"

    invoke-direct {v8, v10, v11, v3, v9}, Landroid/telecom/DisconnectCause;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Lcom/android/services/telephony/sip/SipConnection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    const/4 v1, 0x0

    :cond_4
    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/android/services/telephony/sip/SipConnectionService;->isNetworkConnected()Z

    move-result v8

    if-nez v8, :cond_5

    invoke-static {p0}, Landroid/net/sip/SipManager;->isSipWifiOnly(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_6

    const v8, 0x7f0a0037

    :goto_1
    invoke-virtual {p0, v8}, Lcom/android/services/telephony/sip/SipConnectionService;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v8, Landroid/telecom/DisconnectCause;

    const-string v9, "Network not connected"

    invoke-direct {v8, v10, v11, v3, v9}, Landroid/telecom/DisconnectCause;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Lcom/android/services/telephony/sip/SipConnection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    const/4 v1, 0x0

    :cond_5
    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v5

    new-instance v8, Lcom/android/services/telephony/sip/SipConnectionService$1;

    invoke-direct {v8, p0, v2, p2}, Lcom/android/services/telephony/sip/SipConnectionService$1;-><init>(Lcom/android/services/telephony/sip/SipConnectionService;Lcom/android/services/telephony/sip/SipConnection;Landroid/telecom/ConnectionRequest;)V

    invoke-direct {p0, v5, v8}, Lcom/android/services/telephony/sip/SipConnectionService;->findProfile(Ljava/lang/String;Lcom/android/services/telephony/sip/SipConnectionService$IProfileFinderCallback;)V

    goto :goto_0

    :cond_6
    const v8, 0x7f0a0036

    goto :goto_1
.end method

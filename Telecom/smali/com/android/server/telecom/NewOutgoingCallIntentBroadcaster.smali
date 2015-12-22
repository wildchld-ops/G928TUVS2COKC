.class Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;
.super Ljava/lang/Object;
.source "NewOutgoingCallIntentBroadcaster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster$NewOutgoingCallBroadcastIntentReceiver;
    }
.end annotation


# instance fields
.field private final mCall:Lcom/android/server/telecom/Call;

.field private final mCallsManager:Lcom/android/server/telecom/CallsManager;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mIntent:Landroid/content/Intent;

.field private final mIsDefaultOrSystemPhoneApp:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/telecom/CallsManager;Lcom/android/server/telecom/Call;Landroid/content/Intent;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster$1;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster$1;-><init>(Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;)V

    iput-object v0, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    iput-object p3, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mCall:Lcom/android/server/telecom/Call;

    iput-object p4, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mIntent:Landroid/content/Intent;

    iput-boolean p5, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mIsDefaultOrSystemPhoneApp:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;)Lcom/android/server/telecom/Call;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mCall:Lcom/android/server/telecom/Call;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;)Lcom/android/server/telecom/CallsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->launchSystemDialer(Landroid/net/Uri;)V

    return-void
.end method

.method private broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Z)V
    .locals 9

    const/4 v5, 0x0

    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string v0, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "Broadcasting intent: %s."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {p0, v0, v2}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->checkAndCopyProviderExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    invoke-static {p1, v1}, Lcom/android/server/telecom/secutils/TelecomUtils;->checkAndCopyExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v3, "android.permission.PROCESS_OUTGOING_CALLS"

    if-eqz p3, :cond_1

    new-instance v4, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster$NewOutgoingCallBroadcastIntentReceiver;

    invoke-direct {v4, p0, v5}, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster$NewOutgoingCallBroadcastIntentReceiver;-><init>(Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster$1;)V

    :goto_0
    const/4 v6, -0x1

    move-object v7, p2

    move-object v8, v5

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void

    :cond_1
    move-object v4, v5

    goto :goto_0
.end method

.method public static getGateWayInfoFromIntent(Landroid/content/Intent;Landroid/net/Uri;)Landroid/telecom/GatewayInfo;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "com.android.phone.extra.GATEWAY_PROVIDER_PACKAGE"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.phone.extra.GATEWAY_URI"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->getGatewayUriFromString(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v2, :cond_0

    new-instance v0, Landroid/telecom/GatewayInfo;

    invoke-direct {v0, v1, v2, p1}, Landroid/telecom/GatewayInfo;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)V

    goto :goto_0
.end method

.method private static getGatewayUriFromString(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method private hasGatewayProviderExtras(Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "com.android.phone.extra.GATEWAY_PROVIDER_PACKAGE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.phone.extra.GATEWAY_URI"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPotentialEmergencyNumber(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "Checking restrictions for number : %s"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/android/server/telecom/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p0, v2, v3}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Landroid/telephony/PhoneNumberUtils;->isPotentialLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isPotentialEmergencyNumber(Ljava/lang/String;I)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "Checking restrictions for number : %s, subId : %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/android/server/telecom/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {p0, v2, v3}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mContext:Landroid/content/Context;

    invoke-static {v2, p2, p1}, Landroid/telephony/PhoneNumberUtils;->isPotentialLocalEmergencyNumber(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private launchSystemDialer(Landroid/net/Uri;)V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f080005

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "calling startActivity for default dialer: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startActivity() failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private launchSystemDialerDelay(Landroid/net/Uri;J)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "launchSystemDialerDelay : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private rewriteCallIntentAction(Landroid/content/Intent;Z)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    const-string v0, "ACTION_CALL_PRIVILEGED is used while the number is a potential emergency number. Using ACTION_CALL_EMERGENCY as an action instead."

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "android.intent.action.CALL_EMERGENCY"

    :goto_0
    const-string v1, " - updating action from CALL_PRIVILEGED to %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_SupportSecWFC"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->setWfcLastMoCallIntent(Landroid/content/Intent;)V

    :cond_0
    return-void

    :cond_1
    const-string v0, "android.intent.action.CALL"

    goto :goto_0
.end method


# virtual methods
.method public checkAndCopyProviderExtras(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->hasGatewayProviderExtras(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.android.phone.extra.GATEWAY_PROVIDER_PACKAGE"

    const-string v1, "com.android.phone.extra.GATEWAY_PROVIDER_PACKAGE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.android.phone.extra.GATEWAY_URI"

    const-string v1, "com.android.phone.extra.GATEWAY_URI"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "Found and copied gateway provider extras to broadcast intent."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v0, "No provider extras found in call intent."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method processIntent()I
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->processIntent(I)I

    move-result v0

    return v0
.end method

.method processIntent(I)I
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Processing call intent in OutgoingCallIntentBroadcaster.- subId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v8, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mIntent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v0, "Empty handle obtained from the call intent."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x7

    :goto_0
    return v0

    :cond_0
    const-string v1, "voicemail"

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "android.intent.action.CALL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "Placing call immediately instead of waiting for  OutgoingCallBroadcastReceiver: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v1, v3

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mIntent:Landroid/content/Intent;

    const-string v1, "android.telecom.extra.START_CALL_WITH_SPEAKERPHONE"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iget-object v0, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    iget-object v1, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mCall:Lcom/android/server/telecom/Call;

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/telecom/CallsManager;->placeOutgoingCall(Lcom/android/server/telecom/Call;Landroid/net/Uri;Landroid/telecom/GatewayInfo;ZI)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const-string v0, "Unhandled intent %s. Ignoring and not placing call."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v8, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x2c

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mContext:Landroid/content/Context;

    invoke-static {v8, v0}, Landroid/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "Empty number obtained from the call intent."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x26

    goto :goto_0

    :cond_4
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_17

    const-string v1, "IS_CONF_CALL"

    const/4 v2, 0x0

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->formatNumberForVideoConference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    :goto_1
    invoke-direct {p0, v6}, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->isPotentialEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    if-ltz p1, :cond_16

    invoke-direct {p0, v6, p1}, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->isPotentialEmergencyNumber(Ljava/lang/String;I)Z

    move-result v0

    move v1, v0

    :goto_2
    const-string v0, "isPotentialEmergencyNumber = %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {p0, v0, v2}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v8, v1}, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->rewriteCallIntentAction(Landroid/content/Intent;Z)V

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mContext:Landroid/content/Context;

    const-string v7, "enterprise_policy"

    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/app/enterprise/PhoneRestrictionPolicy;

    move-result-object v0

    :goto_3
    if-eqz v0, :cond_6

    if-nez v1, :cond_6

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/enterprise/PhoneRestrictionPolicy;->getEmergencyCallOnly(Z)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10400ba

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/16 v0, 0x2c

    goto/16 :goto_0

    :cond_5
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_1

    :cond_6
    const-string v0, "voip_interworking"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isVoIPRingOrOffhook()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->canUseHoldInVoIP()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080072

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/16 v0, 0x2c

    goto/16 :goto_0

    :cond_7
    const-string v0, "android.intent.action.CALL"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    if-eqz v1, :cond_14

    iget-boolean v0, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mIsDefaultOrSystemPhoneApp:Z

    if-nez v0, :cond_8

    const-string v0, "Cannot call potential emergency number %s with CALL Intent %s unless caller is system or default dialer."

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v6, v1, v2

    const/4 v2, 0x1

    aput-object v8, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v8}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const-wide/16 v2, 0xfa

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->launchSystemDialerDelay(Landroid/net/Uri;J)V

    const/16 v0, 0x2c

    goto/16 :goto_0

    :cond_8
    const/4 v0, 0x1

    move v7, v0

    :goto_4
    invoke-static {v8}, Lcom/android/server/telecom/operator/OperatorUtils;->doWakeUpScreen(Landroid/content/Intent;)V

    const-string v0, "china_cdma_call"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mCall:Lcom/android/server/telecom/Call;

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->getPhoneTypeFromCall(Lcom/android/server/telecom/Call;)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_e

    if-nez v7, :cond_e

    iget-object v0, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mCall:Lcom/android/server/telecom/Call;

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isCdmaCallOutgoingBarringOn(Lcom/android/server/telecom/Call;)Z

    move-result v3

    iget-object v0, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mIntent:Landroid/content/Intent;

    const-string v5, "outbarringpwright"

    const/4 v9, 0x0

    invoke-virtual {v2, v5, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    const/4 v2, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cdma call barring nOutgoing = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {p0, v9, v10}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cdma call barring nPasswordRight = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {p0, v9, v10}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()I

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x1

    :goto_5
    const-string v2, "emergency_contact_item"

    invoke-virtual {v8, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "emergency_contact_item"

    const/4 v9, 0x0

    invoke-virtual {v8, v2, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "emergencyContactItem : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {p0, v2, v9}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "serviceInState : "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {p0, v2, v9}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v3, :cond_e

    if-nez v5, :cond_e

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mCall:Lcom/android/server/telecom/Call;

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setDisconnectForCallBarring(Z)V

    :cond_a
    const/16 v0, 0x2c

    goto/16 :goto_0

    :cond_b
    const-string v0, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    if-nez v1, :cond_c

    const-string v0, "Cannot call non-potential-emergency number %s with EMERGENCY_CALL Intent %s."

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v6, v1, v2

    const/4 v2, 0x1

    aput-object v8, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x2c

    goto/16 :goto_0

    :cond_c
    const/4 v0, 0x1

    move v7, v0

    goto/16 :goto_4

    :cond_d
    const-string v0, "Unhandled Intent %s. Ignoring and not placing call."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v8, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x7

    goto/16 :goto_0

    :cond_e
    if-eqz v1, :cond_f

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->setIMSPreRegState(Z)V

    :cond_f
    if-eqz v7, :cond_10

    const-string v0, "Placing call immediately instead of waiting for  OutgoingCallBroadcastReceiver: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v8, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v4, :cond_11

    const-string v0, "sip"

    move-object v2, v0

    :goto_6
    iget-object v0, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mIntent:Landroid/content/Intent;

    const-string v1, "android.telecom.extra.START_CALL_WITH_SPEAKERPHONE"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iget-object v0, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mIntent:Landroid/content/Intent;

    const-string v1, "android.telecom.extra.START_CALL_WITH_VIDEO_STATE"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iget-object v0, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    iget-object v1, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mCall:Lcom/android/server/telecom/Call;

    const/4 v3, 0x0

    invoke-static {v2, v6, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/telecom/CallsManager;->placeOutgoingCall(Lcom/android/server/telecom/Call;Landroid/net/Uri;Landroid/telecom/GatewayInfo;ZI)V

    :cond_10
    if-nez v7, :cond_12

    const/4 v0, 0x1

    :goto_7
    invoke-direct {p0, v8, v6, v0}, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_11
    const-string v0, "tel"

    move-object v2, v0

    goto :goto_6

    :cond_12
    const/4 v0, 0x0

    goto :goto_7

    :cond_13
    move v0, v2

    goto/16 :goto_5

    :cond_14
    move v7, v2

    goto/16 :goto_4

    :cond_15
    move-object v0, v3

    goto/16 :goto_3

    :cond_16
    move v1, v0

    goto/16 :goto_2

    :cond_17
    move-object v6, v0

    goto/16 :goto_1
.end method

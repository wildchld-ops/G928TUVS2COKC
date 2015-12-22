.class public final Lcom/android/server/telecom/operator/usa/ExtensionBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ExtensionBroadcastReceiver.java"


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Lcom/android/server/telecom/operator/usa/ExtensionBroadcastReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/operator/usa/ExtensionBroadcastReceiver$1;-><init>(Lcom/android/server/telecom/operator/usa/ExtensionBroadcastReceiver;)V

    iput-object v0, p0, Lcom/android/server/telecom/operator/usa/ExtensionBroadcastReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/telecom/operator/usa/ExtensionBroadcastReceiver;Landroid/os/Message;)Landroid/content/Intent;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/telecom/operator/usa/ExtensionBroadcastReceiver;->getIntent(Landroid/os/Message;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/telecom/operator/usa/ExtensionBroadcastReceiver;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/telecom/operator/usa/ExtensionBroadcastReceiver;->handleHdvoiceCall(Landroid/content/Intent;)V

    return-void
.end method

.method private autoRejectedCallNotification(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/server/telecom/operator/usa/ExtensionBroadcastReceiver;->closeSystemDialogs(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/android/server/telecom/operator/usa/ExtensionBroadcastReceiver;->clearAutoRejectedCalls(Landroid/content/Context;)V

    if-eqz p2, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.reject.ACTION_ACCEPT_CALL_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_0
    if-eqz p2, :cond_0

    const-string v1, "extra_auto_reject_call_number"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "extra_auto_reject_call_number"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "extra_auto_reject_call_number"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.reject.ACTION_AUTO_REJECT_LIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

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

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private autoRejectedCallsNotification(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/telecom/operator/usa/ExtensionBroadcastReceiver;->autoRejectedCallNotification(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private clearAutoRejectedCalls(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;->getInstance(Landroid/content/Context;)Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;->clearAutoRejectedCalls()V

    return-void
.end method

.method private closeSystemDialogs(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private getIntent(Landroid/os/Message;)Landroid/content/Intent;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Landroid/content/Intent;

    if-eqz v1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    :cond_0
    return-object v0
.end method

.method private handleHdvoiceCall(Landroid/content/Intent;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string v0, "HDVOICE_STATUS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "HDVOICE_STATUS"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hdVoiceStatus : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v1, v3

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getCalls()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    if-eqz v0, :cond_2

    if-eqz v4, :cond_3

    move v1, v2

    :goto_1
    invoke-static {v0, v1}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->updateHdvoiceCall(Lcom/android/server/telecom/Call;Z)V

    :cond_2
    invoke-static {v4}, Lcom/android/services/telephony/common/SystemDBInterface;->setWideBandAMR(I)V

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1

    :cond_4
    const-string v0, "EXTRA_STATE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "EXTRA_STATE"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "world hdVoiceStatus : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v1, v3

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getCalls()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    if-eqz v0, :cond_5

    if-eqz v4, :cond_6

    move v1, v2

    :goto_3
    invoke-static {v0, v1}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->updateHdvoiceCall(Lcom/android/server/telecom/Call;Z)V

    goto :goto_2

    :cond_6
    move v1, v3

    goto :goto_3
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Action received: %s."

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "android.intent.action.HDVOICE_CALL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/ExtensionBroadcastReceiver;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/telecom/operator/usa/ExtensionBroadcastReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "com.android.server.telecom.ACTION_CLEAR_AUTO_REJECTED_CALLS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/telecom/operator/usa/ExtensionBroadcastReceiver;->clearAutoRejectedCalls(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    const-string v1, "com.android.server.telecom.ACTION_AUTO_REJECTED_CALL_NOTIFICATION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/android/server/telecom/operator/usa/ExtensionBroadcastReceiver;->autoRejectedCallNotification(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const-string v1, "com.android.server.telecom.ACTION_AUTO_REJECTED_CALLS_NOTIFICATION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, p1}, Lcom/android/server/telecom/operator/usa/ExtensionBroadcastReceiver;->autoRejectedCallsNotification(Landroid/content/Context;)V

    goto :goto_0

    :cond_4
    const-string v1, "android.intent.action.WB_AMR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/ExtensionBroadcastReceiver;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/telecom/operator/usa/ExtensionBroadcastReceiver;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

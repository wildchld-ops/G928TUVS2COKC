.class public Lcom/android/phone/ATCommandReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ATCommandReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/ATCommandReceiver$1;,
        Lcom/android/phone/ATCommandReceiver$MyHandler;
    }
.end annotation


# static fields
.field private static mHandler:Lcom/android/phone/ATCommandReceiver$MyHandler;

.field private static mServiceClass:I

.field public static sIsATCommandExecuting:Z


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/ATCommandReceiver;->sIsATCommandExecuting:Z

    new-instance v0, Lcom/android/phone/ATCommandReceiver$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/phone/ATCommandReceiver$MyHandler;-><init>(Lcom/android/phone/ATCommandReceiver$1;)V

    sput-object v0, Lcom/android/phone/ATCommandReceiver;->mHandler:Lcom/android/phone/ATCommandReceiver$MyHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/phone/ATCommandReceiver;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/phone/ATCommandReceiver;->sendResponse(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private commandExecute(ILandroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, -0x1

    const/4 v4, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "commandExecute() request = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", data = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/ATCommandReceiver;->log(Ljava/lang/String;)V

    const-string v2, "parameter"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    const-string v2, "REQUEST_ANSWER_A_CALL"

    invoke-static {v2}, Lcom/android/phone/ATCommandReceiver;->log(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/android/phone/ATCommandReceiver;->setATcommandExecuting(Z)V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ata"

    const-string v3, "OK"

    invoke-static {v2, v3}, Lcom/android/phone/ATCommandReceiver;->sendResponse(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v2, "ata"

    const-string v3, "ERROR"

    invoke-static {v2, v3}, Lcom/android/phone/ATCommandReceiver;->sendResponse(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v2, "REQUEST_CALL_FORWARDING"

    invoke-static {v2}, Lcom/android/phone/ATCommandReceiver;->log(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/android/phone/ATCommandReceiver;->setATcommandExecuting(Z)V

    const-string v2, "mode"

    invoke-virtual {p2, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v6, v0, :cond_1

    invoke-static {p2}, Lcom/android/phone/ATCommandReceiver;->handleGetCallForwarding(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    if-eq v2, v0, :cond_2

    const/4 v2, 0x4

    if-ne v2, v0, :cond_3

    :cond_2
    invoke-static {p2}, Lcom/android/phone/ATCommandReceiver;->handleSetCallForwarding(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REQUEST_CALL_FORWARDING mode is not vaild - mode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/ATCommandReceiver;->log(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    const-string v2, "REQUEST_CALL_WAITING"

    invoke-static {v2}, Lcom/android/phone/ATCommandReceiver;->log(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/android/phone/ATCommandReceiver;->setATcommandExecuting(Z)V

    const-string v2, "mode"

    invoke-virtual {p2, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v6, v0, :cond_4

    invoke-static {p2}, Lcom/android/phone/ATCommandReceiver;->handleGetCallWaiting(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    if-ne v4, v0, :cond_6

    :cond_5
    invoke-static {p2}, Lcom/android/phone/ATCommandReceiver;->handleSetCallWaiting(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REQUEST_CALL_WAITING mode is not vaild - mode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/ATCommandReceiver;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0xb -> :sswitch_1
        0xc -> :sswitch_2
    .end sparse-switch
.end method

.method private static getPhone()Lcom/android/internal/telephony/Phone;
    .locals 4

    const-string v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getCurrentNetworkPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPhone, simId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/ATCommandReceiver;->log(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    goto :goto_0
.end method

.method public static handleGetCallForwarding(Landroid/os/Bundle;)V
    .locals 5

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/phone/ATCommandReceiver;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const-string v2, "reason"

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "class"

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/phone/ATCommandReceiver;->mServiceClass:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleGetCallForwarding() reason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mServiceClass = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/phone/ATCommandReceiver;->mServiceClass:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/ATCommandReceiver;->log(Ljava/lang/String;)V

    if-gez v1, :cond_0

    const/4 v1, 0x0

    :cond_0
    sget v2, Lcom/android/phone/ATCommandReceiver;->mServiceClass:I

    if-gez v2, :cond_1

    const/4 v2, 0x1

    sput v2, Lcom/android/phone/ATCommandReceiver;->mServiceClass:I

    :cond_1
    sget-object v2, Lcom/android/phone/ATCommandReceiver;->mHandler:Lcom/android/phone/ATCommandReceiver$MyHandler;

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v4, v4, v3}, Lcom/android/phone/ATCommandReceiver$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    return-void
.end method

.method public static handleGetCallWaiting(Landroid/os/Bundle;)V
    .locals 3

    const/16 v2, 0xb

    invoke-static {}, Lcom/android/phone/ATCommandReceiver;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const-string v1, "handleGetCallWaiting"

    invoke-static {v1}, Lcom/android/phone/ATCommandReceiver;->log(Ljava/lang/String;)V

    sget-object v1, Lcom/android/phone/ATCommandReceiver;->mHandler:Lcom/android/phone/ATCommandReceiver$MyHandler;

    invoke-virtual {v1, v2, v2, v2}, Lcom/android/phone/ATCommandReceiver$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getCallWaiting(Landroid/os/Message;)V

    return-void
.end method

.method public static handleSetCallForwarding(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, -0x1

    invoke-static {}, Lcom/android/phone/ATCommandReceiver;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const-string v5, "mode"

    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v5, "reason"

    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v5, "number"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "time"

    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "class"

    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    sput v5, Lcom/android/phone/ATCommandReceiver;->mServiceClass:I

    sget v5, Lcom/android/phone/ATCommandReceiver;->mServiceClass:I

    if-gez v5, :cond_0

    sput v7, Lcom/android/phone/ATCommandReceiver;->mServiceClass:I

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleSetCallForwarding() action = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", reason = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", number = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/ATCommandReceiver;->log(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleSetCallForwarding() number = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", time = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mServiceClass = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/phone/ATCommandReceiver;->mServiceClass:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/ATCommandReceiver;->log(Ljava/lang/String;)V

    const/4 v5, 0x2

    if-ne v2, v5, :cond_1

    if-gez v4, :cond_1

    const/16 v4, 0x14

    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "CCFC"

    const-string v6, "ERROR"

    invoke-static {v5, v6}, Lcom/android/phone/ATCommandReceiver;->sendResponse(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    sget v5, Lcom/android/phone/ATCommandReceiver;->mServiceClass:I

    sget-object v6, Lcom/android/phone/ATCommandReceiver;->mHandler:Lcom/android/phone/ATCommandReceiver$MyHandler;

    invoke-virtual {v6, v7, v1, v7}, Lcom/android/phone/ATCommandReceiver$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;IILandroid/os/Message;)V

    goto :goto_1
.end method

.method public static handleSetCallWaiting(Landroid/os/Bundle;)V
    .locals 5

    invoke-static {}, Lcom/android/phone/ATCommandReceiver;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    const-string v3, "mode"

    const/4 v4, -0x1

    invoke-virtual {p0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setCallWaiting(ZLandroid/os/Message;)V

    const-string v3, "CCWA"

    const-string v4, "OK"

    invoke-static {v3, v4}, Lcom/android/phone/ATCommandReceiver;->sendResponse(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const-string v3, "CCWA"

    const-string v4, "ERROR"

    invoke-static {v3, v4}, Lcom/android/phone/ATCommandReceiver;->sendResponse(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static isATcommandExecuting()Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isATcommandExecuting() sIsATCommandExecuting = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/phone/ATCommandReceiver;->sIsATCommandExecuting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/ATCommandReceiver;->log(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/phone/ATCommandReceiver;->sIsATCommandExecuting:Z

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "ATCommandReceiver"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static sendResponse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendResponse() command = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/ATCommandReceiver;->log(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.action.CUSTOMER_TEST_RESPONSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "command"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "result"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/phone/ATCommandReceiver;->isATcommandExecuting()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/phone/ATCommandReceiver;->setATcommandExecuting(Z)V

    return-void
.end method

.method private static setATcommandExecuting(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setATcommandExecuting() isExecuting = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/ATCommandReceiver;->log(Ljava/lang/String;)V

    sput-boolean p0, Lcom/android/phone/ATCommandReceiver;->sIsATCommandExecuting:Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const-string v4, "Received CUSTOMER_TEST_REQUSET"

    invoke-static {v4}, Lcom/android/phone/ATCommandReceiver;->log(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/phone/ATCommandReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v4, "There is no extras"

    invoke-static {v4}, Lcom/android/phone/ATCommandReceiver;->log(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v4, "command"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "parameter"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "command :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", parameter : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/ATCommandReceiver;->log(Ljava/lang/String;)V

    const-string v4, "support_at_command_for_cmcc_volte_test"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSupportATCommand : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/ATCommandReceiver;->log(Ljava/lang/String;)V

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    const-string v4, "ata"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x4

    invoke-direct {p0, v4, v1}, Lcom/android/phone/ATCommandReceiver;->commandExecute(ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    const-string v4, "CCFC"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0xb

    invoke-direct {p0, v4, v1}, Lcom/android/phone/ATCommandReceiver;->commandExecute(ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    const-string v4, "CCWA"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0xc

    invoke-direct {p0, v4, v1}, Lcom/android/phone/ATCommandReceiver;->commandExecute(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

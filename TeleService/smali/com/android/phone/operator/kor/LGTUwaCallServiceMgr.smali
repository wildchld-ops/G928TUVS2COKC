.class public Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;
.super Ljava/lang/Object;
.source "LGTUwaCallServiceMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$3;,
        Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtGroupCallState;,
        Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;,
        Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallType;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static sMe:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;

.field private static speakerOnOff:Z


# instance fields
.field final mApp:Lcom/android/phone/PhoneGlobals;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mEventReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mRmsIntentParam:Landroid/os/Bundle;

.field private mRmsVTCallIntentParam:Landroid/os/Bundle;

.field private mUwaCallModifyIntentParam:Landroid/os/Bundle;

.field private mUwaIntentParamBgCall:Landroid/os/Bundle;

.field private mUwaIntentParamFgCall:Landroid/os/Bundle;

.field private mUwaIntentParamGroupCall:Landroid/os/Bundle;

.field private mUwaIntentParamRingingCall:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->DBG:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->sMe:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->speakerOnOff:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mApp:Lcom/android/phone/PhoneGlobals;

    iput-object v1, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mUwaIntentParamFgCall:Landroid/os/Bundle;

    iput-object v1, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mUwaIntentParamBgCall:Landroid/os/Bundle;

    iput-object v1, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mUwaIntentParamRingingCall:Landroid/os/Bundle;

    iput-object v1, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mUwaIntentParamGroupCall:Landroid/os/Bundle;

    iput-object v1, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mUwaCallModifyIntentParam:Landroid/os/Bundle;

    iput-object v1, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mRmsIntentParam:Landroid/os/Bundle;

    iput-object v1, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mRmsVTCallIntentParam:Landroid/os/Bundle;

    new-instance v0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$1;

    invoke-direct {v0, p0}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$1;-><init>(Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;)V

    iput-object v0, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$2;

    invoke-direct {v0, p0}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$2;-><init>(Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;)V

    iput-object v0, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mEventReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;)V
    .locals 0
    .param p0    # Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;

    invoke-direct {p0}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->onPhoneStateChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0    # Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;
    .param p1    # Landroid/os/AsyncResult;

    invoke-direct {p0, p1}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->onDisconnect(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;)V
    .locals 0
    .param p0    # Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;

    invoke-direct {p0}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->actionAnswerCall()V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->speakerOnOff:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .param p0    # Z

    sput-boolean p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->speakerOnOff:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;Z)V
    .locals 0
    .param p0    # Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->actionTurnOnSpeker(Z)V

    return-void
.end method

.method static synthetic access$400(Ljava/lang/String;)V
    .locals 0
    .param p0    # Ljava/lang/String;

    invoke-static {p0}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;)V
    .locals 0
    .param p0    # Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;

    invoke-direct {p0}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->actionConvertCall()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;)V
    .locals 0
    .param p0    # Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;

    invoke-direct {p0}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->actionSwitchCall()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;Ljava/util/ArrayList;)V
    .locals 0
    .param p0    # Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;
    .param p1    # Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->actionOutgoingGroupCall(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->actionEndCall(Ljava/lang/String;)V

    return-void
.end method

.method private actionAnswerCall()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    :cond_0
    return-void
.end method

.method private actionConvertCall()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v4

    invoke-static {v4}, Lcom/android/services/utils/SecModifyCallHandler;->getInstance(Lcom/android/internal/telephony/Connection;)Lcom/android/services/utils/SecModifyCallHandler;

    move-result-object v2

    :cond_0
    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_1

    if-eqz v1, :cond_2

    iget v4, v1, Lcom/android/internal/telephony/CallDetails;->call_type:I

    if-ne v4, v7, :cond_1

    invoke-virtual {v2, v6}, Lcom/android/services/utils/SecModifyCallHandler;->requestModifyCall(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/android/services/telephony/TelephonyConnectionUtils;->isLowBatt()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v2, v7}, Lcom/android/services/utils/SecModifyCallHandler;->requestModifyCall(I)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    const v5, 0x7f0a0605

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private actionEndCall(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->getPhoneNumber(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->getPhoneNumber(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    goto :goto_0
.end method

.method private actionOutgoingGroupCall(Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v10, 0x0

    const/4 v9, 0x1

    invoke-static {}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getInstance()Lcom/android/phone/ims/IMSConferenceCallMgr;

    move-result-object v2

    iget-object v7, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getFgCallLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->makeConfNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getSIMNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v2, v4}, Lcom/android/phone/ims/IMSConferenceCallMgr;->alreadyAddedUser(Ljava/lang/String;)Lcom/android/phone/ims/Participant;

    move-result-object v7

    if-nez v7, :cond_0

    sget-object v7, Lcom/android/phone/ims/Participant$State;->IDLE:Lcom/android/phone/ims/Participant$State;

    invoke-virtual {v2, v4, v7, v10}, Lcom/android/phone/ims/IMSConferenceCallMgr;->addParticipant(Ljava/lang/String;Lcom/android/phone/ims/Participant$State;Lcom/android/internal/telephony/Connection;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getDialedParticipantNumberList()Ljava/util/ArrayList;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->makeConfNumber(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v5

    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->makeConfNumber(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "actionOutgoingGroupCall outgoingNumber :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->log(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v2, v0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->prepareDial(Lcom/android/internal/telephony/Connection;)V

    iget-object v7, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v7, v8, :cond_3

    invoke-static {v5, v9}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getAddUserToConfCall(Ljava/lang/String;Z)V

    :goto_1
    return-void

    :cond_3
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.CALL_PRIVILEGED"

    const-string v8, "tel"

    invoke-static {v8, v5, v10}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v7, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {v6, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "IS_CONF_CALL"

    invoke-virtual {v6, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v2, v9}, Lcom/android/phone/ims/IMSConferenceCallMgr;->setDirectConfCall(Z)V

    const/high16 v7, 0x10000000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/phone/PhoneGlobals;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ActivityNotFoundException: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private actionSwitchCall()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    :cond_0
    return-void
.end method

.method private actionTurnOnSpeker(Z)V
    .locals 3
    .param p1    # Z

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v2, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/services/utils/SecTelecomAdapter;->turnOnSpeaker(Z)V

    :cond_0
    return-void
.end method

.method private broadcastIsSessionModifyPossibleIntent()V
    .locals 7

    iget-object v5, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    iget-object v5, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    iget-object v5, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    const/4 v3, 0x0

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/services/utils/SecModifyCallHandler;->isSessionModifyPossible(Lcom/android/internal/telephony/Connection;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v3, 0x1

    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mUwaCallModifyIntentParam:Landroid/os/Bundle;

    const-string v6, "state"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v3, :cond_1

    iget-object v5, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mUwaCallModifyIntentParam:Landroid/os/Bundle;

    const-string v6, "state"

    invoke-virtual {v5, v6, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "com.uplus.agent.action.CHANGE_LTE_STATE"

    iget-object v6, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mUwaCallModifyIntentParam:Landroid/os/Bundle;

    invoke-direct {p0, v5, v6}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->sendBroadcastIntent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    return-void

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private broadcastRmsIntent()V
    .locals 14

    iget-object v12, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v12}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    iget-object v12, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v12}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    const/4 v6, 0x0

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v12

    sget-object v13, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v12, v13, :cond_9

    move-object v0, v10

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v12

    if-nez v12, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v12

    if-eqz v12, :cond_a

    :cond_0
    const/4 v6, 0x1

    :cond_1
    :goto_1
    if-eqz v6, :cond_b

    const/4 v11, 0x1

    :goto_2
    const-string v2, "VOIP"

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_3

    iget v12, v1, Lcom/android/internal/telephony/CallDetails;->call_type:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_c

    const-string v2, "VT"

    :cond_3
    :goto_3
    iget-object v12, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mRmsIntentParam:Landroid/os/Bundle;

    const-string v13, "state"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    if-ne v12, v11, :cond_4

    iget-object v12, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mRmsIntentParam:Landroid/os/Bundle;

    const-string v13, "svcType"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    :cond_4
    if-eqz v6, :cond_d

    iget-object v12, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mRmsIntentParam:Landroid/os/Bundle;

    const-string v13, "state"

    invoke-virtual {v12, v13, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v12, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mRmsIntentParam:Landroid/os/Bundle;

    const-string v13, "svcType"

    invoke-virtual {v12, v13, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    const-string v12, "com.lguplus.ims.action.CALL_STATE"

    iget-object v13, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mRmsIntentParam:Landroid/os/Bundle;

    invoke-direct {p0, v12, v13}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->sendBroadcastIntent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_5
    if-eqz v1, :cond_8

    iget v12, v1, Lcom/android/internal/telephony/CallDetails;->call_type:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_8

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    const/4 v7, 0x0

    if-eqz v3, :cond_6

    invoke-static {v3}, Lcom/android/services/utils/SecModifyCallHandler;->isSessionModifyPossible(Lcom/android/internal/telephony/Connection;)Z

    move-result v7

    :cond_6
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getCallType()Lcom/android/internal/telephony/Call$CallType;

    move-result-object v12

    sget-object v13, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_CONFERENCE:Lcom/android/internal/telephony/Call$CallType;

    if-ne v12, v13, :cond_e

    const/4 v5, 0x1

    :goto_5
    iget-object v12, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mRmsVTCallIntentParam:Landroid/os/Bundle;

    const-string v13, "com.lguplus.ltecall.videocall.extra.IsEnableVoLTE"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    iget-object v12, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mRmsVTCallIntentParam:Landroid/os/Bundle;

    const-string v13, "com.lguplus.ltecall.extra.IS_GROUPCALL"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-ne v9, v7, :cond_7

    if-eq v8, v5, :cond_8

    :cond_7
    iget-object v12, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mRmsVTCallIntentParam:Landroid/os/Bundle;

    const-string v13, "com.lguplus.ltecall.videocall.extra.IsEnableVoLTE"

    invoke-virtual {v12, v13, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v12, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mRmsVTCallIntentParam:Landroid/os/Bundle;

    const-string v13, "com.lguplus.ltecall.extra.IS_GROUPCALL"

    invoke-virtual {v12, v13, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v12, "com.lguplus.LTECall.intent.action.IN_VTCALL"

    iget-object v13, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mRmsVTCallIntentParam:Landroid/os/Bundle;

    invoke-direct {p0, v12, v13}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->sendBroadcastIntent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_8
    return-void

    :cond_9
    move-object v0, v4

    goto/16 :goto_0

    :cond_a
    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_b
    const/4 v11, 0x0

    goto/16 :goto_2

    :cond_c
    const-string v2, "VOIP"

    goto :goto_3

    :cond_d
    iget-object v12, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mRmsIntentParam:Landroid/os/Bundle;

    const-string v13, "state"

    invoke-virtual {v12, v13, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_4

    :cond_e
    const/4 v5, 0x0

    goto :goto_5
.end method

.method private convertToLgtCallState(Lcom/android/internal/telephony/Call$State;)Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;
    .locals 2
    .param p1    # Lcom/android/internal/telephony/Call$State;

    sget-object v0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$3;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;->IDLE:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;->IDLE:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;->ACTIVE:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;->HOLDING:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;->DIALING:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;->ALERTING:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;->INCOMING:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;->WAITING:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;

    goto :goto_0

    :pswitch_7
    sget-object v0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;->DISCONNECTED:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;

    goto :goto_0

    :pswitch_8
    sget-object v0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;->DISCONNECTING:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private convertToLgtCallType(I)Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallType;
    .locals 1
    .param p1    # I

    if-nez p1, :cond_0

    sget-object v0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallType;->VOICE_CALL:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallType;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallType;->VIDEO_CALL:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallType;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallType;->VIDEO_SHARE:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallType;

    goto :goto_0
.end method

.method private convertToLgtGroupCallState(Lcom/android/phone/ims/Participant$State;)Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtGroupCallState;
    .locals 2
    .param p1    # Lcom/android/phone/ims/Participant$State;

    sget-object v0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$3;->$SwitchMap$com$android$phone$ims$Participant$State:[I

    invoke-virtual {p1}, Lcom/android/phone/ims/Participant$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtGroupCallState;->NONE:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtGroupCallState;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtGroupCallState;->NONE:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtGroupCallState;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtGroupCallState;->INVITING:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtGroupCallState;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtGroupCallState;->JOIN:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtGroupCallState;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtGroupCallState;->LEFT:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtGroupCallState;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getInstance()Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;
    .locals 1

    sget-object v0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->sMe:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->init()Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->sMe:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;

    goto :goto_0
.end method

.method private getPhoneNumber(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;
    .locals 3
    .param p1    # Lcom/android/internal/telephony/Connection;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static init()Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;
    .locals 4

    const-class v1, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->sMe:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;

    invoke-direct {v0}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;-><init>()V

    sput-object v0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->sMe:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;

    :goto_0
    sget-object v0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->sMe:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;

    monitor-exit v1

    return-object v0

    :cond_0
    const-string v0, "LGTUwaCallServiceMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->sMe:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private initIntentParams()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mUwaIntentParamFgCall:Landroid/os/Bundle;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mUwaIntentParamBgCall:Landroid/os/Bundle;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mUwaIntentParamRingingCall:Landroid/os/Bundle;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mUwaIntentParamGroupCall:Landroid/os/Bundle;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mUwaCallModifyIntentParam:Landroid/os/Bundle;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mRmsIntentParam:Landroid/os/Bundle;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mRmsVTCallIntentParam:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mUwaIntentParamFgCall:Landroid/os/Bundle;

    const-string v1, "voiceType"

    sget-object v2, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallType;->VOICE_CALL:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallType;

    invoke-virtual {v2}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mUwaIntentParamFgCall:Landroid/os/Bundle;

    const-string v1, "callState"

    sget-object v2, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;->IDLE:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;

    invoke-virtual {v2}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mUwaIntentParamFgCall:Landroid/os/Bundle;

    const-string v1, "address"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mUwaIntentParamFgCall:Landroid/os/Bundle;

    const-string v1, "disconnectReason"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mUwaIntentParamFgCall:Landroid/os/Bundle;

    const-string v1, "textCall"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mUwaIntentParamFgCall:Landroid/os/Bundle;

    const-string v1, "isGroupCall"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mUwaIntentParamFgCall:Landroid/os/Bundle;

    const-string v1, "isVMS"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mUwaIntentParamFgCall:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mUwaIntentParamBgCall:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mUwaIntentParamFgCall:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mUwaIntentParamRingingCall:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mUwaIntentParamGroupCall:Landroid/os/Bundle;

    const-string v1, "com.uplus.agent.extra.GROUPCALL_RECIPIENTS"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mUwaIntentParamGroupCall:Landroid/os/Bundle;

    const-string v1, "com.uplus.agent.extra.GROUPCALL_STATUS"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mUwaCallModifyIntentParam:Landroid/os/Bundle;

    const-string v1, "state"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mRmsIntentParam:Landroid/os/Bundle;

    const-string v1, "svcType"

    const-string v2, "VOIP"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mRmsIntentParam:Landroid/os/Bundle;

    const-string v1, "state"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mRmsVTCallIntentParam:Landroid/os/Bundle;

    const-string v1, "com.lguplus.ltecall.videocall.extra.IsEnableVoLTE"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mRmsVTCallIntentParam:Landroid/os/Bundle;

    const-string v1, "com.lguplus.ltecall.extra.IS_GROUPCALL"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public static isAutoRejectCall(Lcom/android/internal/telephony/Connection;)Z
    .locals 2
    .param p0    # Lcom/android/internal/telephony/Connection;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-static {v0, p0}, Lcom/android/services/utils/AutoRejectUtils;->isAutoRejectCall(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Z

    move-result v1

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;

    sget-boolean v0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "LGTUwaCallServiceMgr"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static makeConfNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0    # Ljava/lang/String;

    const/4 v3, -0x1

    move-object v0, p0

    :goto_0
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    :goto_1
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_1

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_2
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_2

    const-string v1, ")"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    :goto_3
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_3

    const-string v1, "("

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static makeConfNumber(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->makeConfNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private onDisconnect(Landroid/os/AsyncResult;)V
    .locals 3
    .param p1    # Landroid/os/AsyncResult;

    const-string v1, "onDisconnect()..."

    invoke-static {v1}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->log(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mUwaIntentParamRingingCall:Landroid/os/Bundle;

    invoke-direct {p0, v1}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->sendUwaCallDisconnetIntent(Landroid/os/Bundle;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mUwaIntentParamBgCall:Landroid/os/Bundle;

    invoke-direct {p0, v1}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->sendUwaCallDisconnetIntent(Landroid/os/Bundle;)V

    const-string v1, "com.uplus.agent.action.CHANGE_CALL_STATE"

    iget-object v2, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mUwaIntentParamFgCall:Landroid/os/Bundle;

    invoke-direct {p0, v1, v2}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->sendBroadcastIntent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mUwaIntentParamFgCall:Landroid/os/Bundle;

    invoke-direct {p0, v1}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->sendUwaCallDisconnetIntent(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.uplus.agent.action.CHANGE_CALL_STATE"

    iget-object v2, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mUwaIntentParamRingingCall:Landroid/os/Bundle;

    invoke-direct {p0, v1, v2}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->sendBroadcastIntent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private onPhoneStateChanged()V
    .locals 8

    iget-object v6, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    iget-object v6, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    iget-object v6, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPhoneStateChanged() - fgcall state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", bgcall state:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", ringingcall state:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->log(Ljava/lang/String;)V

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mUwaIntentParamRingingCall:Landroid/os/Bundle;

    invoke-direct {p0, v5, v6}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->updateUwaCallStateIntentParams(Lcom/android/internal/telephony/Call;Landroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "send broadcast ringingcall intent"

    invoke-static {v6}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->log(Ljava/lang/String;)V

    const-string v6, "com.uplus.agent.action.CHANGE_CALL_STATE"

    iget-object v7, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mUwaIntentParamRingingCall:Landroid/os/Bundle;

    invoke-direct {p0, v6, v7}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->sendBroadcastIntent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    const/4 v2, 0x0

    iget-object v6, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mUwaIntentParamBgCall:Landroid/os/Bundle;

    invoke-direct {p0, v0, v6}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->updateUwaCallStateIntentParams(Lcom/android/internal/telephony/Call;Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "send broadcast bgcall intent"

    invoke-static {v6}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->log(Ljava/lang/String;)V

    const-string v6, "com.uplus.agent.action.CHANGE_CALL_STATE"

    iget-object v7, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mUwaIntentParamBgCall:Landroid/os/Bundle;

    invoke-direct {p0, v6, v7}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->sendBroadcastIntent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    const/4 v3, 0x0

    iget-object v6, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mUwaIntentParamFgCall:Landroid/os/Bundle;

    invoke-direct {p0, v1, v6}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->updateUwaCallStateIntentParams(Lcom/android/internal/telephony/Call;Landroid/os/Bundle;)Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "send broadcast fgcall intent"

    invoke-static {v6}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->log(Ljava/lang/String;)V

    const-string v6, "com.uplus.agent.action.CHANGE_CALL_STATE"

    iget-object v7, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mUwaIntentParamFgCall:Landroid/os/Bundle;

    invoke-direct {p0, v6, v7}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->sendBroadcastIntent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_3
    invoke-direct {p0}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->broadcastIsSessionModifyPossibleIntent()V

    invoke-direct {p0}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->broadcastRmsIntent()V

    return-void
.end method

.method private sendBroadcastIntent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/os/Bundle;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneGlobals;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send broadcast intent action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", extra : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->log(Ljava/lang/String;)V

    return-void
.end method

.method private sendUwaCallDisconnetIntent(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    const-string v0, "callState"

    sget-object v1, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;->DISCONNECTING:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;

    invoke-virtual {v1}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "com.uplus.agent.action.CHANGE_CALL_STATE"

    invoke-direct {p0, v0, p1}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->sendBroadcastIntent(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v0, "callState"

    sget-object v1, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;->DISCONNECTED:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;

    invoke-virtual {v1}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "com.uplus.agent.action.CHANGE_CALL_STATE"

    invoke-direct {p0, v0, p1}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->sendBroadcastIntent(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v0, "callState"

    sget-object v1, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;->IDLE:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;

    invoke-virtual {v1}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "com.uplus.agent.action.CHANGE_CALL_STATE"

    invoke-direct {p0, v0, p1}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->sendBroadcastIntent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private updateUwaCallStateIntentParams(Lcom/android/internal/telephony/Call;Landroid/os/Bundle;)Z
    .locals 11
    .param p1    # Lcom/android/internal/telephony/Call;
    .param p2    # Landroid/os/Bundle;

    const/4 v8, 0x0

    const/4 v5, 0x0

    if-nez p1, :cond_0

    move v6, v5

    :goto_0
    return v6

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v9, v10, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v9

    invoke-static {v9}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->isAutoRejectCall(Lcom/android/internal/telephony/Connection;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v8, "updateUwaCallStateIntentParams : isAutoReject !!!"

    invoke-static {v8}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->log(Ljava/lang/String;)V

    move v6, v5

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->convertToLgtCallState(Lcom/android/internal/telephony/Call$State;)Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;

    move-result-object v2

    const-string v9, "callState"

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;->ordinal()I

    move-result v10

    if-eq v9, v10, :cond_2

    const-string v9, "callState"

    invoke-virtual {v2}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;->ordinal()I

    move-result v10

    invoke-virtual {p2, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v5, 0x1

    :cond_2
    const/4 v3, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v1

    :cond_3
    if-eqz v1, :cond_4

    iget v9, v1, Lcom/android/internal/telephony/CallDetails;->call_type:I

    invoke-direct {p0, v9}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->convertToLgtCallType(I)Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallType;

    move-result-object v3

    const-string v9, "voiceType"

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v3}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallType;->ordinal()I

    move-result v10

    if-eq v9, v10, :cond_4

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v9, v10, :cond_4

    const-string v9, "voiceType"

    invoke-virtual {v3}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallType;->ordinal()I

    move-result v10

    invoke-virtual {p2, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v5, 0x1

    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->getPhoneNumber(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v9, "address"

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "address"

    invoke-virtual {p2, v9, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "textCall"

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    :cond_5
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getCallType()Lcom/android/internal/telephony/Call$CallType;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_CONFERENCE:Lcom/android/internal/telephony/Call$CallType;

    if-ne v9, v10, :cond_7

    const/4 v7, 0x1

    :goto_1
    const-string v9, "isGroupCall"

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eq v9, v7, :cond_6

    const-string v9, "isGroupCall"

    invoke-virtual {p2, v9, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v5, 0x1

    :cond_6
    const-string v9, "disconnectReason"

    invoke-virtual {p2, v9, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v9, "isVMS"

    invoke-virtual {p2, v9, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move v6, v5

    goto/16 :goto_0

    :cond_7
    move v7, v8

    goto :goto_1
.end method


# virtual methods
.method public broadcastUwaGroupCallStateIntent(Ljava/lang/String;Lcom/android/phone/ims/Participant$State;)V
    .locals 4
    .param p1    # Ljava/lang/String;
    .param p2    # Lcom/android/phone/ims/Participant$State;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p2}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->convertToLgtGroupCallState(Lcom/android/phone/ims/Participant$State;)Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtGroupCallState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtGroupCallState;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mUwaIntentParamGroupCall:Landroid/os/Bundle;

    const-string v3, "com.uplus.agent.extra.GROUPCALL_RECIPIENTS"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v2, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mUwaIntentParamGroupCall:Landroid/os/Bundle;

    const-string v3, "com.uplus.agent.extra.GROUPCALL_STATUS"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v2, "com.uplus.agent.action.CHANGE_GROUPCALL_STATUS"

    iget-object v3, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mUwaIntentParamGroupCall:Landroid/os/Bundle;

    invoke-direct {p0, v2, v3}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->sendBroadcastIntent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public registerCallServiceMgr()V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getCallManager()Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v2, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v2, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/CallManager;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.uplus.agent.action.CONVERT_CALL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.uplus.agent.action.SWITCH_CALL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.lguplus.ltecall.ACTION_SPEAKER_ON_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.uplus.agent.action.GROUPCALL_OUTGOING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.uplus.agent.action.END_CALL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.uplus.agent.action.CALL_ANSWER_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v2, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->mEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/android/phone/PhoneGlobals;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->initIntentParams()V

    return-void
.end method

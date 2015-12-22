.class public Lcom/android/phone/operator/jpn/SyncCallServiceMgr;
.super Ljava/lang/Object;
.source "SyncCallServiceMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/operator/jpn/SyncCallServiceMgr$5;,
        Lcom/android/phone/operator/jpn/SyncCallServiceMgr$StateCheckList;,
        Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;,
        Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallType;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String;

.field private static sMe:Lcom/android/phone/operator/jpn/SyncCallServiceMgr;


# instance fields
.field private CallDonditionParam:Landroid/os/Bundle;

.field final mApp:Lcom/android/phone/PhoneGlobals;

.field private mAutoReplyIntentHandler:Landroid/os/Handler;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

.field mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

.field private mEventReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mIntentParamBgCall:Landroid/os/Bundle;

.field private mIntentParamFgCall:Landroid/os/Bundle;

.field private mIntentParamRingingCall:Landroid/os/Bundle;

.field private mIntentParamVpCall:Landroid/os/Bundle;

.field mMergeCallNeedDisconnectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field mScover:Lcom/samsung/android/sdk/cover/Scover;

.field mStateCheckList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/operator/jpn/SyncCallServiceMgr$StateCheckList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->DBG:Z

    const-class v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->sMe:Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mApp:Lcom/android/phone/PhoneGlobals;

    iput-object v1, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamRingingCall:Landroid/os/Bundle;

    iput-object v1, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamFgCall:Landroid/os/Bundle;

    iput-object v1, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamBgCall:Landroid/os/Bundle;

    iput-object v1, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamVpCall:Landroid/os/Bundle;

    iput-object v1, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->CallDonditionParam:Landroid/os/Bundle;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mMergeCallNeedDisconnectList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mStateCheckList:Ljava/util/ArrayList;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mAutoReplyIntentHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$1;

    invoke-direct {v0, p0}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$1;-><init>(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;)V

    iput-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$2;

    invoke-direct {v0, p0}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$2;-><init>(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;)V

    iput-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mEventReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->onPhoneStateChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;Landroid/os/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->onDisconnect(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->restartSyncCall(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->CallDonditionParam:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->CallDonditionParam:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->sendBroadcastIntent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$500(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->actionTurnOnSpeker()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;)Lcom/android/internal/telephony/CallManager;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamFgCall:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mAutoReplyIntentHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private actionTurnOnSpeker()V
    .locals 4

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/services/utils/SecTelecomAdapter;->isSpeakerOn()Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSpeakerOn : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v2, v3, :cond_0

    invoke-virtual {v1, v0}, Lcom/android/services/utils/SecTelecomAdapter;->turnOnSpeaker(Z)V

    :cond_0
    return-void
.end method

.method private broadcastSyncCallMegeCallIntent()V
    .locals 5

    const-string v3, "broadcastSyncCallMegeCallIntent"

    invoke-static {v3}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    iget-object v3, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamFgCall:Landroid/os/Bundle;

    invoke-virtual {p0, v1, v0, v3}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->broadcastSyncCallMergeCallStateIntent(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "com.kddi.agent.action.CHANGE_CALL_STATE"

    iget-object v4, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamFgCall:Landroid/os/Bundle;

    invoke-direct {p0, v3, v4}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->sendBroadcastIntent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private convertParticipantToKDDICallState(Lcom/android/phone/ims/Participant$State;)Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;
    .locals 2

    sget-object v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$5;->$SwitchMap$com$android$phone$ims$Participant$State:[I

    invoke-virtual {p1}, Lcom/android/phone/ims/Participant$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->IDLE:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->ACTIVE:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->HOLDING:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->DIALING:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->ALERTING:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->WAITING:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->DISCONNECTED:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private convertToKDDICallState(Lcom/android/internal/telephony/Call$State;)Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;
    .locals 2

    sget-object v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$5;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->IDLE:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->IDLE:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->ACTIVE:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->HOLDING:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->DIALING:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->ALERTING:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->INCOMING:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->WAITING:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    goto :goto_0

    :pswitch_7
    sget-object v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->DISCONNECTED:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    goto :goto_0

    :pswitch_8
    sget-object v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->DISCONNECTING:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

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

.method private convertToKDDICallType(I)Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallType;
    .locals 1

    if-nez p1, :cond_0

    sget-object v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallType;->VOICE:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallType;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallType;->VIDEO:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallType;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallType;->OTHER_TYPE:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallType;

    goto :goto_0
.end method

.method private getDialingCount()I
    .locals 5

    const-string v3, "getDialingCount"

    invoke-static {v3}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mStateCheckList:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    const/4 v0, 0x0

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mStateCheckList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mStateCheckList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$StateCheckList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDialingCount scl.callState "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$StateCheckList;->callState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$StateCheckList;->callState:I

    sget-object v4, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->DIALING:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    invoke-virtual {v4}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->ordinal()I

    move-result v4

    if-ne v3, v4, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/phone/operator/jpn/SyncCallServiceMgr;
    .locals 1

    sget-object v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->sMe:Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->init()Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->sMe:Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    goto :goto_0
.end method

.method private getPhoneNumber(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v1, v0, v3

    if-eqz v1, :cond_0

    aget-object v1, v0, v3

    const-string v2, "+81"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    aget-object v1, v0, v3

    const-string v2, "\\+81"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    aget-object v1, v0, v3

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static init()Lcom/android/phone/operator/jpn/SyncCallServiceMgr;
    .locals 4

    const-class v1, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->sMe:Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    invoke-direct {v0}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;-><init>()V

    sput-object v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->sMe:Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    :goto_0
    sget-object v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->sMe:Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    monitor-exit v1

    return-object v0

    :cond_0
    sget-object v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times! sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->sMe:Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private initiateIntentParams()V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamRingingCall:Landroid/os/Bundle;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamFgCall:Landroid/os/Bundle;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamBgCall:Landroid/os/Bundle;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamVpCall:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamFgCall:Landroid/os/Bundle;

    const-string v1, "voiceType"

    sget-object v2, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallType;->VOICE:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallType;

    invoke-virtual {v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamFgCall:Landroid/os/Bundle;

    const-string v1, "callState"

    sget-object v2, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->IDLE:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    invoke-virtual {v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamFgCall:Landroid/os/Bundle;

    const-string v1, "address"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamFgCall:Landroid/os/Bundle;

    const-string v1, "isGroupCall"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamFgCall:Landroid/os/Bundle;

    const-string v1, "index"

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamFgCall:Landroid/os/Bundle;

    const-string v1, "dispNumber"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamFgCall:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamBgCall:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamFgCall:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamRingingCall:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamFgCall:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamVpCall:Landroid/os/Bundle;

    return-void
.end method

.method private initiateSCover(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x1

    new-instance v1, Lcom/samsung/android/sdk/cover/Scover;

    invoke-direct {v1}, Lcom/samsung/android/sdk/cover/Scover;-><init>()V

    iput-object v1, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/cover/Scover;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    new-instance v1, Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-direct {v1, p1}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    new-instance v1, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$4;

    invoke-direct {v1, p0}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$4;-><init>(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;)V

    iput-object v1, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    iget-object v1, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v2, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/cover/ScoverManager;->registerListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "initializeCover: IllegalArgumentException"

    invoke-direct {p0, v1, v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;Z)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "initializeCover: SsdkUnsupportedException"

    invoke-direct {p0, v1, v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static isAutoRejectCall(Lcom/android/internal/telephony/Connection;)Z
    .locals 2

    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/services/utils/AutoRejectUtils;->isAutoRejectCall(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Z

    move-result v1

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1

    sget-object v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->TAG:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method

.method private makeIndex(Ljava/lang/String;Lcom/android/internal/telephony/Connection;Z)J
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "makeIndex num is empty"

    invoke-static {v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "makeIndex index : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isVoiceParty : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    if-eqz p3, :cond_1

    invoke-static {}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getInstance()Lcom/android/phone/ims/IMSConferenceCallMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v2

    if-lez v2, :cond_1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    add-long/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "makeIndex voiceparty index : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-wide v0

    :cond_2
    const-string v2, "makeIndex connection is null"

    invoke-static {v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private needToBlockThisIntent(Landroid/os/Bundle;)Z
    .locals 12

    const/4 v9, 0x0

    const/4 v0, 0x1

    const-string v1, "callState"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v1, "index"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v1, "isGroupCall"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "needToBlockThisIntent index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , callState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    const/4 v7, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mStateCheckList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v7, v1, :cond_8

    iget-object v1, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mStateCheckList:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$StateCheckList;

    iget-wide v10, v8, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$StateCheckList;->index:J

    cmp-long v1, v4, v10

    if-nez v1, :cond_7

    iget v1, v8, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$StateCheckList;->callState:I

    if-ne v3, v1, :cond_0

    iget-boolean v1, v8, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$StateCheckList;->isGroupCall:Z

    if-ne v6, v1, :cond_0

    const-string v1, "Index and State are same as previous Intent."

    invoke-static {v1}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    :goto_1
    return v0

    :cond_0
    sget-object v1, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->DIALING:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    invoke-virtual {v1}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->ordinal()I

    move-result v1

    if-ne v3, v1, :cond_2

    iget v1, v8, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$StateCheckList;->callState:I

    sget-object v2, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->ACTIVE:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    invoke-virtual {v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_1

    iget v1, v8, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$StateCheckList;->callState:I

    sget-object v2, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->HOLDING:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    invoke-virtual {v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_2

    :cond_1
    const-string v1, "Dialing state intent should not be sent, if previous state is Active or Holding."

    invoke-direct {p0, v1, v0}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->DISCONNECTING:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    invoke-virtual {v1}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->ordinal()I

    move-result v1

    if-eq v3, v1, :cond_3

    sget-object v1, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->DISCONNECTED:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    invoke-virtual {v1}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->ordinal()I

    move-result v1

    if-ne v3, v1, :cond_4

    :cond_3
    iget v1, v8, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$StateCheckList;->callState:I

    sget-object v2, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->IDLE:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    invoke-virtual {v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_4

    const-string v1, "Previous callState is IDLE."

    invoke-direct {p0, v1, v0}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->HOLDING_AFTER_DIALING:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    invoke-virtual {v0}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->ordinal()I

    move-result v0

    if-ne v3, v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Change index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->HOLDING:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    invoke-virtual {v0}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->ordinal()I

    move-result v3

    const-string v0, "callState"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_5
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Change index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " state to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mStateCheckList:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$StateCheckList;

    const-string v1, "address"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$StateCheckList;-><init>(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;Ljava/lang/String;IJZ)V

    invoke-virtual {v10, v7, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v0, v9

    goto/16 :goto_1

    :cond_6
    sget-object v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->ACTIVE_AFTER_MERGECALL:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    invoke-virtual {v0}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->ordinal()I

    move-result v0

    if-ne v3, v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Change index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->ACTIVE:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    invoke-virtual {v0}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->ordinal()I

    move-result v3

    const-string v0, "callState"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_8
    iget-object v10, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mStateCheckList:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$StateCheckList;

    const-string v1, "address"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$StateCheckList;-><init>(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;Ljava/lang/String;IJZ)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v9

    goto/16 :goto_1
.end method

.method private onDisconnect(Landroid/os/AsyncResult;)V
    .locals 10

    const/4 v9, 0x1

    const-string v7, "onDisconnect()..."

    invoke-static {v7}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/Connection;

    iget-object v7, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    iget-object v7, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->isAutoRejectCall(Lcom/android/internal/telephony/Connection;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "onDisconnect isAutoReject !!!"

    invoke-direct {p0, v7, v9}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v7}, Lcom/android/phone/PhoneGlobals;->getMergeCallTriggered()Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mStateCheckList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "onDisconnect FirstActiveRingingCall"

    invoke-direct {p0, v7, v9}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;Z)V

    iget-object v7, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamRingingCall:Landroid/os/Bundle;

    invoke-direct {p0, v7}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->sendSyncCallDisconnetIntent(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "onDisconnect FirstActiveBgCall"

    invoke-direct {p0, v7, v9}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;Z)V

    iget-object v7, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamBgCall:Landroid/os/Bundle;

    invoke-direct {p0, v0, v7, v1}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->updateSyncCallStateIntentParams(Lcom/android/internal/telephony/Call;Landroid/os/Bundle;Lcom/android/internal/telephony/Connection;)Z

    iget-object v7, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamBgCall:Landroid/os/Bundle;

    invoke-direct {p0, v7}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->sendSyncCallDisconnetIntent(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "onDisconnect ActiveFgCall"

    invoke-direct {p0, v7, v9}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;Z)V

    iget-object v7, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v7}, Lcom/android/phone/PhoneGlobals;->getMergeCallTriggered()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onDisconnect connectionCnt "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    if-lez v2, :cond_6

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getCallType()Lcom/android/internal/telephony/Call$CallType;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_CONFERENCE:Lcom/android/internal/telephony/Call$CallType;

    if-ne v7, v8, :cond_6

    iget-object v7, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamFgCall:Landroid/os/Bundle;

    invoke-virtual {v7}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    invoke-virtual {p0, v3, v1, v6}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->broadcastSyncCallMergeCallStateIntent(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;Landroid/os/Bundle;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "onDisconnect intent is added to mMergeCallNeedDisconnectList"

    invoke-static {v7}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mMergeCallNeedDisconnectList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_1
    iget-object v7, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "com.kddi.agent.action.CHANGE_CALL_STATE"

    iget-object v8, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamRingingCall:Landroid/os/Bundle;

    invoke-direct {p0, v7, v8}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->sendBroadcastIntent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_6
    if-gtz v2, :cond_5

    iget-object v7, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mMergeCallNeedDisconnectList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    invoke-direct {p0, v5}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->sendSyncCallDisconnetIntent(Landroid/os/Bundle;)V

    goto :goto_2

    :cond_7
    iget-object v7, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamFgCall:Landroid/os/Bundle;

    invoke-virtual {v7}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    invoke-virtual {p0, v3, v1, v6}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->broadcastSyncCallMergeCallStateIntent(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;Landroid/os/Bundle;)Z

    move-result v7

    if-eqz v7, :cond_8

    const-string v7, "onDisconnect send last mergecall disconnectd intent"

    invoke-static {v7}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    invoke-direct {p0, v6}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->sendSyncCallDisconnetIntent(Landroid/os/Bundle;)V

    :cond_8
    iget-object v7, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mMergeCallNeedDisconnectList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    iget-object v7, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mStateCheckList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    :cond_9
    iget-object v7, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamFgCall:Landroid/os/Bundle;

    invoke-direct {p0, v3, v7, v1}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->updateSyncCallStateIntentParams(Lcom/android/internal/telephony/Call;Landroid/os/Bundle;Lcom/android/internal/telephony/Connection;)Z

    iget-object v7, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamFgCall:Landroid/os/Bundle;

    invoke-direct {p0, v7}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->sendSyncCallDisconnetIntent(Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method private onPhoneStateChanged()V
    .locals 28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v21

    if-eqz v9, :cond_1

    if-eqz v5, :cond_1

    if-eqz v21, :cond_1

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "onPhoneStateChanged() - fgcall state: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", bgcall state:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", ringingcall state:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;Z)V

    :goto_0
    const/4 v15, 0x0

    if-eqz v21, :cond_2

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v24

    sget-object v25, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamRingingCall:Landroid/os/Bundle;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->updateSyncCallStateIntentParams(Lcom/android/internal/telephony/Call;Landroid/os/Bundle;Lcom/android/internal/telephony/Connection;)Z

    move-result v15

    if-nez v15, :cond_2

    const-string v24, " isAutoReject or call is null or index is 0 "

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string v24, "onPhoneStateChanged() - some call state is null"

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    if-eqz v15, :cond_4

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v24

    if-eqz v24, :cond_4

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->isAutoRejectCall(Lcom/android/internal/telephony/Connection;)Z

    move-result v24

    if-eqz v24, :cond_3

    const-string v24, "ringingcall isAutoReject "

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_3
    const-string v24, "send broadcast ringingcall intent"

    invoke-static/range {v24 .. v24}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    const-string v24, "com.kddi.agent.action.CHANGE_CALL_STATE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamRingingCall:Landroid/os/Bundle;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->sendBroadcastIntent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_4
    const/16 v16, 0x0

    const/4 v14, 0x0

    if-eqz v5, :cond_11

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v24

    sget-object v25, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_11

    const/4 v6, 0x0

    if-eqz v9, :cond_5

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v6

    :cond_5
    if-eqz v6, :cond_6

    const-string v24, "isGroupCall"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v25, "true"

    invoke-static/range {v24 .. v25}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v16

    :cond_6
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v24

    sget-object v25, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_7

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getCallType()Lcom/android/internal/telephony/Call$CallType;

    move-result-object v24

    sget-object v25, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_CONFERENCE:Lcom/android/internal/telephony/Call$CallType;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-eq v0, v1, :cond_8

    :cond_7
    if-eqz v16, :cond_10

    :cond_8
    const/4 v14, 0x1

    :goto_2
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "onPhoneStateChanged isVoiceParty : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    :cond_9
    :goto_3
    if-nez v14, :cond_a

    if-eqz v9, :cond_16

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_16

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getCallType()Lcom/android/internal/telephony/Call$CallType;

    move-result-object v24

    sget-object v25, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_CONFERENCE:Lcom/android/internal/telephony/Call$CallType;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Lcom/android/phone/PhoneGlobals;->setMergeCallTriggered(Z)V

    :cond_a
    :goto_4
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "onPhoneStateChanged MergeCallTriggered "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/phone/PhoneGlobals;->getMergeCallTriggered()Z

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;Z)V

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "onPhoneStateChanged isGroupCallForVP : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;Z)V

    if-eqz v14, :cond_1e

    invoke-static {}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getInstance()Lcom/android/phone/ims/IMSConferenceCallMgr;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getAliveParticipantNumber()Ljava/lang/String;

    move-result-object v20

    const-string v24, ","

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    invoke-static {}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getInstance()Lcom/android/phone/ims/IMSConferenceCallMgr;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getAliveParticipantStateArray()[I

    move-result-object v22

    const/4 v11, 0x0

    const/4 v7, 0x0

    if-eqz v9, :cond_c

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v24

    sget-object v25, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_17

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    :goto_5
    if-eqz v7, :cond_b

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "onPhoneStateChanged fgCall : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v26

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    :cond_b
    if-nez v7, :cond_c

    if-eqz v5, :cond_c

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v24

    sget-object v25, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_18

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    :goto_6
    if-eqz v7, :cond_c

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "onPhoneStateChanged bgCall : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v26

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    :cond_c
    if-eqz v7, :cond_1d

    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v24

    if-eqz v24, :cond_1b

    const/4 v8, 0x0

    if-eqz v5, :cond_d

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v24

    sget-object v25, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_d

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v24

    sget-object v25, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_d

    const-string v24, "send broadcast getDialingCount(Call established A and B, Then Dialing A to C)"

    invoke-static/range {v24 .. v24}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->getDialingCount()I

    move-result v8

    :cond_d
    const/4 v13, 0x0

    if-eqz v9, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamFgCall:Landroid/os/Bundle;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v9, v1, v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->updateSyncCallStateIntentParams(Lcom/android/internal/telephony/Call;Landroid/os/Bundle;Lcom/android/internal/telephony/Connection;)Z

    move-result v13

    if-eqz v13, :cond_f

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v24

    if-nez v24, :cond_e

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v24

    sget-object v25, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_f

    :cond_e
    const-string v24, "send broadcast fgcall intent"

    invoke-static/range {v24 .. v24}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    const-string v24, "com.kddi.agent.action.CHANGE_CALL_STATE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamFgCall:Landroid/os/Bundle;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->sendBroadcastIntent(Ljava/lang/String;Landroid/os/Bundle;)V

    if-eqz v5, :cond_f

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v24

    sget-object v25, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_f

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v24

    sget-object v25, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_f

    const-string v24, "quickly send broadcast fgcall disconnected intent"

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamFgCall:Landroid/os/Bundle;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->sendSyncCallDisconnetIntent(Landroid/os/Bundle;)V

    :cond_f
    const/4 v12, 0x0

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamBgCall:Landroid/os/Bundle;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v5, v1, v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->updateSyncCallStateIntentParams(Lcom/android/internal/telephony/Call;Landroid/os/Bundle;Lcom/android/internal/telephony/Connection;)Z

    move-result v12

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v24

    if-eqz v24, :cond_0

    if-eqz v9, :cond_19

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v24

    sget-object v25, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_19

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v24

    sget-object v25, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_19

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "getDialingCount() : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    const/16 v24, 0x1

    move/from16 v0, v24

    if-ge v8, v0, :cond_0

    const-string v24, "send broadcast bgcall intent(Call established A and B, Then Dialing A to C)"

    invoke-static/range {v24 .. v24}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamBgCall:Landroid/os/Bundle;

    move-object/from16 v24, v0

    const-string v25, "callState"

    sget-object v26, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->HOLDING_AFTER_DIALING:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    invoke-virtual/range {v26 .. v26}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->ordinal()I

    move-result v26

    invoke-virtual/range {v24 .. v26}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v24, "com.kddi.agent.action.CHANGE_CALL_STATE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamBgCall:Landroid/os/Bundle;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->sendBroadcastIntent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_1

    :cond_10
    const/4 v14, 0x0

    goto/16 :goto_2

    :cond_11
    if-eqz v9, :cond_9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v6

    if-eqz v6, :cond_12

    const-string v24, "isGroupCall"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v25, "true"

    invoke-static/range {v24 .. v25}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v16

    :cond_12
    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v24

    sget-object v25, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_13

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getCallType()Lcom/android/internal/telephony/Call$CallType;

    move-result-object v24

    sget-object v25, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_CONFERENCE:Lcom/android/internal/telephony/Call$CallType;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-eq v0, v1, :cond_14

    :cond_13
    if-eqz v16, :cond_15

    invoke-static {}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getInstance()Lcom/android/phone/ims/IMSConferenceCallMgr;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v24

    if-lez v24, :cond_15

    :cond_14
    const/4 v14, 0x1

    :goto_7
    goto/16 :goto_3

    :cond_15
    const/4 v14, 0x0

    goto :goto_7

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/android/phone/PhoneGlobals;->setMergeCallTriggered(Z)V

    goto/16 :goto_4

    :cond_17
    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    goto/16 :goto_5

    :cond_18
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    goto/16 :goto_6

    :cond_19
    if-nez v12, :cond_1a

    if-eqz v13, :cond_0

    :cond_1a
    const-string v24, "send broadcast bgcall intent"

    invoke-static/range {v24 .. v24}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    const-string v24, "com.kddi.agent.action.CHANGE_CALL_STATE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamBgCall:Landroid/os/Bundle;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->sendBroadcastIntent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_1

    :cond_1b
    move-object/from16 v4, v19

    array-length v0, v4

    move/from16 v17, v0

    const/4 v10, 0x0

    :goto_8
    move/from16 v0, v17

    if-ge v10, v0, :cond_0

    aget-object v18, v4, v10

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "onPhoneStateChanged "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    aget v25, v22, v11

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getInstance()Lcom/android/phone/ims/IMSConferenceCallMgr;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getParticipantState(I)Lcom/android/phone/ims/Participant$State;

    move-result-object v23

    sget-object v24, Lcom/android/phone/ims/Participant$State;->DISCONNECTED:Lcom/android/phone/ims/Participant$State;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_1c

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2, v7}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->broadcastSyncCallGroupCallStateIntent(Ljava/lang/String;Lcom/android/phone/ims/Participant$State;Lcom/android/internal/telephony/Connection;)Z

    :cond_1c
    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_1d
    const-string v24, "onPhoneStateChanged conn is null"

    invoke-static/range {v24 .. v24}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/phone/PhoneGlobals;->getMergeCallTriggered()Z

    move-result v24

    if-eqz v24, :cond_1f

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v24

    sget-object v25, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-eq v0, v1, :cond_0

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v24

    sget-object v25, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-eq v0, v1, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->broadcastSyncCallMegeCallIntent()V

    goto/16 :goto_1

    :cond_1f
    const/4 v8, 0x0

    if-eqz v5, :cond_20

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v24

    sget-object v25, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_20

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v24

    sget-object v25, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_20

    const-string v24, "send broadcast getDialingCount(Call established A and B, Then Dialing A to C)"

    invoke-static/range {v24 .. v24}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->getDialingCount()I

    move-result v8

    :cond_20
    const/4 v13, 0x0

    if-eqz v9, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamFgCall:Landroid/os/Bundle;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v9, v1, v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->updateSyncCallStateIntentParams(Lcom/android/internal/telephony/Call;Landroid/os/Bundle;Lcom/android/internal/telephony/Connection;)Z

    move-result v13

    if-eqz v13, :cond_22

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v24

    if-nez v24, :cond_21

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v24

    sget-object v25, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_22

    :cond_21
    const-string v24, "send broadcast fgcall intent"

    invoke-static/range {v24 .. v24}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    const-string v24, "com.kddi.agent.action.CHANGE_CALL_STATE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamFgCall:Landroid/os/Bundle;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->sendBroadcastIntent(Ljava/lang/String;Landroid/os/Bundle;)V

    if-eqz v5, :cond_22

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v24

    sget-object v25, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_22

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v24

    sget-object v25, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_22

    const-string v24, "quickly send broadcast fgcall disconnected intent"

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamFgCall:Landroid/os/Bundle;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->sendSyncCallDisconnetIntent(Landroid/os/Bundle;)V

    :cond_22
    const/4 v12, 0x0

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamBgCall:Landroid/os/Bundle;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v5, v1, v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->updateSyncCallStateIntentParams(Lcom/android/internal/telephony/Call;Landroid/os/Bundle;Lcom/android/internal/telephony/Connection;)Z

    move-result v12

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v24

    if-eqz v24, :cond_0

    if-eqz v9, :cond_23

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v24

    sget-object v25, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_23

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v24

    sget-object v25, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_23

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "getDialingCount() : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    const/16 v24, 0x1

    move/from16 v0, v24

    if-ge v8, v0, :cond_0

    const-string v24, "send broadcast bgcall intent(Call established A and B, Then Dialing A to C)"

    invoke-static/range {v24 .. v24}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamBgCall:Landroid/os/Bundle;

    move-object/from16 v24, v0

    const-string v25, "callState"

    sget-object v26, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->HOLDING_AFTER_DIALING:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    invoke-virtual/range {v26 .. v26}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->ordinal()I

    move-result v26

    invoke-virtual/range {v24 .. v26}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v24, "com.kddi.agent.action.CHANGE_CALL_STATE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamBgCall:Landroid/os/Bundle;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->sendBroadcastIntent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_1

    :cond_23
    if-nez v12, :cond_24

    if-eqz v13, :cond_0

    :cond_24
    const-string v24, "send broadcast bgcall intent"

    invoke-static/range {v24 .. v24}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    const-string v24, "com.kddi.agent.action.CHANGE_CALL_STATE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamBgCall:Landroid/os/Bundle;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->sendBroadcastIntent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_1
.end method

.method private registerCallReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.kddi.agent.action.DISPLAY_PHONE_APP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.kddi.agent.action.ACTIVE_SPEAKER_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.synccall.action.answering_message"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1, p1, v0}, Lcom/android/phone/PhoneGlobals;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private restartSyncCall(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$3;

    invoke-direct {v1, p0}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$3;-><init>(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private sendBroadcastIntent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    const-string v2, "com.kddi.agent.action.CHANGE_CALL_STATE"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->needToBlockThisIntent(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

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

    invoke-static {v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CHANGE action : index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "index"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "callState"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "isGroupCall"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneGlobals;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private sendSyncCallDisconnetIntent(Landroid/os/Bundle;)V
    .locals 6

    const-string v2, "sendSyncCallDisconnetIntent"

    invoke-static {v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    const-string v2, "address"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, "sendSyncCallDisconnetIntent address is null"

    invoke-static {v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "index"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    const-string v2, "sendSyncCallDisconnetIntent index is 0"

    invoke-static {v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v2, "callState"

    sget-object v3, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->DISCONNECTING:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    invoke-virtual {v3}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->ordinal()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "com.kddi.agent.action.CHANGE_CALL_STATE"

    invoke-direct {p0, v2, p1}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->sendBroadcastIntent(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v2, "callState"

    sget-object v3, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->DISCONNECTED:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    invoke-virtual {v3}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->ordinal()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "com.kddi.agent.action.CHANGE_CALL_STATE"

    invoke-direct {p0, v2, p1}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->sendBroadcastIntent(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    const-string v2, "callState"

    sget-object v3, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->IDLE:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    invoke-virtual {v3}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->ordinal()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "isGroupCall"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "com.kddi.agent.action.CHANGE_CALL_STATE"

    invoke-direct {p0, v2, v1}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->sendBroadcastIntent(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamRingingCall:Landroid/os/Bundle;

    const-string v3, "address"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamRingingCall:Landroid/os/Bundle;

    const-string v3, "address"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateSyncCallStateIntentParams(Lcom/android/internal/telephony/Call;Landroid/os/Bundle;Lcom/android/internal/telephony/Connection;)Z
    .locals 16

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    if-nez p1, :cond_0

    move v13, v7

    :goto_0
    return v13

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v13

    sget-object v14, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v13, v14, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v13

    invoke-static {v13}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->isAutoRejectCall(Lcom/android/internal/telephony/Connection;)Z

    move-result v13

    if-eqz v13, :cond_1

    const-string v13, "updateSyncCallStateIntentParams : isAutoReject !!!"

    invoke-static {v13}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    move v13, v7

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Call;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v3

    :cond_2
    if-eqz v3, :cond_3

    iget v13, v3, Lcom/android/internal/telephony/CallDetails;->call_type:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->convertToKDDICallType(I)Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallType;

    move-result-object v5

    const-string v13, "voiceType"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v5}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallType;->ordinal()I

    move-result v14

    if-eq v13, v14, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v13

    sget-object v14, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v13, v14, :cond_3

    const-string v13, "voiceType"

    invoke-virtual {v5}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallType;->ordinal()I

    move-result v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v7, 0x1

    :cond_3
    if-nez p3, :cond_4

    const-string v13, "updateSyncCallStateIntentParams Connection is null."

    invoke-static {v13}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object p3

    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->getPhoneNumber(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v2

    const/4 v12, 0x1

    if-eqz p3, :cond_5

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateSyncCallStateIntentParams address "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " ,conn.getNumberPresentation() "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    :cond_5
    const/4 v13, 0x2

    if-ne v12, v13, :cond_11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateSyncCallStateIntentParams NumberPresentation : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;Z)V

    const v13, 0x7f0a0087

    invoke-virtual {v6, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_6
    :goto_1
    if-eqz v2, :cond_7

    const-string v13, "address"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_7

    const-string v13, "address"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x1

    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->convertToKDDICallState(Lcom/android/internal/telephony/Call$State;)Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    move-result-object v4

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    if-eqz v3, :cond_8

    const-string v13, "isGroupCall"

    invoke-virtual {v3, v13}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "true"

    invoke-static {v13, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateSyncCallStateIntentParams getExtraValue(isGroupCall)="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-nez v13, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v13}, Lcom/android/phone/PhoneGlobals;->getMergeCallTriggered()Z

    move-result v13

    if-eqz v13, :cond_13

    :cond_9
    const/4 v10, 0x1

    :goto_2
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_b

    sget-object v13, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->INCOMING:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    if-eq v4, v13, :cond_a

    sget-object v13, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->WAITING:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    if-ne v4, v13, :cond_b

    :cond_a
    const/4 v10, 0x0

    :cond_b
    const-string v13, "isGroupCall"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    if-eq v13, v10, :cond_c

    const-string v13, "isGroupCall"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v7, 0x1

    :cond_c
    if-nez v10, :cond_d

    sget-object v13, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->ACTIVE:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    if-ne v4, v13, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Call;->getCallType()Lcom/android/internal/telephony/Call$CallType;

    move-result-object v13

    sget-object v14, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_CONFERENCE:Lcom/android/internal/telephony/Call$CallType;

    if-ne v13, v14, :cond_d

    const-string v13, "updateSyncCallStateIntentParams : The ACTIVE_AFTER_MERGECALL callstate of \'B\' or \'C\' devices is active after mergecall"

    invoke-static {v13}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    sget-object v4, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->ACTIVE_AFTER_MERGECALL:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    :cond_d
    const-string v13, "callState"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v4}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->ordinal()I

    move-result v14

    if-eq v13, v14, :cond_f

    sget-object v13, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->ACTIVE:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    if-ne v4, v13, :cond_e

    invoke-static {}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->getInstance()Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->isCallInAnsweringMessage()Z

    move-result v13

    if-eqz v13, :cond_e

    sget-object v4, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->AUTOREPLY:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    :cond_e
    const-string v13, "callState"

    invoke-virtual {v4}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->ordinal()I

    move-result v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v7, 0x1

    :cond_f
    const-wide/16 v8, 0x0

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v2, v1, v13}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->makeIndex(Ljava/lang/String;Lcom/android/internal/telephony/Connection;Z)J

    move-result-wide v8

    const-string v13, "index"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    cmp-long v13, v14, v8

    if-eqz v13, :cond_10

    const-string v13, "index"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v7, 0x1

    :cond_10
    const-wide/16 v14, 0x0

    cmp-long v13, v8, v14

    if-nez v13, :cond_14

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateSyncCallStateIntentParams Do not need to send intent. "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    const/4 v13, 0x0

    goto/16 :goto_0

    :cond_11
    const/4 v13, 0x4

    if-ne v12, v13, :cond_12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateSyncCallStateIntentParams NumberPresentation : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;Z)V

    const v13, 0x7f0a0088

    invoke-virtual {v6, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :cond_12
    const/4 v13, 0x3

    if-ne v12, v13, :cond_6

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateSyncCallStateIntentParams NumberPresentation : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;Z)V

    const v13, 0x7f0a0085

    invoke-virtual {v6, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :cond_13
    const/4 v10, 0x0

    goto/16 :goto_2

    :cond_14
    move v13, v7

    goto/16 :goto_0
.end method


# virtual methods
.method public broadcastSyncCallGroupCallStateIntent(Ljava/lang/String;Lcom/android/phone/ims/Participant$State;Lcom/android/internal/telephony/Connection;)Z
    .locals 10

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "broadcastSyncCallGroupCallStateIntent "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    if-nez p3, :cond_0

    const-string v7, "broadcastSyncCallGroupCallStateIntent, Connection is null."

    invoke-static {v7}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    :goto_0
    return v6

    :cond_0
    if-eqz p1, :cond_1

    const-string v8, "+81"

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "\\+81"

    const-string v9, "0"

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "broadcastSyncCallGroupCallStateIntent replace "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    :cond_1
    iget-object v8, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamVpCall:Landroid/os/Bundle;

    const-string v9, "address"

    invoke-virtual {v8, v9, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamVpCall:Landroid/os/Bundle;

    const-string v9, "isGroupCall"

    invoke-virtual {v8, v9, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v8, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamVpCall:Landroid/os/Bundle;

    const-string v9, "voiceType"

    invoke-virtual {v8, v9, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v3, 0x1

    invoke-virtual {p3}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v3

    const-wide/16 v4, 0x0

    invoke-direct {p0, p1, p3, v7}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->makeIndex(Ljava/lang/String;Lcom/android/internal/telephony/Connection;Z)J

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-nez v8, :cond_2

    const-string v7, "broadcastSyncCallGroupCallStateIntent Do not need to send intent."

    invoke-static {v7}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamVpCall:Landroid/os/Bundle;

    const-string v8, "index"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    cmp-long v6, v8, v4

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamVpCall:Landroid/os/Bundle;

    const-string v8, "index"

    invoke-virtual {v6, v8, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_3
    invoke-direct {p0, p2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->convertParticipantToKDDICallState(Lcom/android/phone/ims/Participant$State;)Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    move-result-object v2

    iget-object v6, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    iget-object v6, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->ordinal()I

    move-result v6

    sget-object v8, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->DISCONNECTED:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    invoke-virtual {v8}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->ordinal()I

    move-result v8

    if-ne v6, v8, :cond_4

    iget-object v6, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamVpCall:Landroid/os/Bundle;

    invoke-direct {p0, v6}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->sendSyncCallDisconnetIntent(Landroid/os/Bundle;)V

    :goto_1
    move v6, v7

    goto/16 :goto_0

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v8, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v6, v8, :cond_5

    invoke-virtual {v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->ordinal()I

    move-result v6

    sget-object v8, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->ACTIVE:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    invoke-virtual {v8}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->ordinal()I

    move-result v8

    if-ne v6, v8, :cond_5

    iget-object v6, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamVpCall:Landroid/os/Bundle;

    const-string v8, "callState"

    sget-object v9, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->HOLDING:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    invoke-virtual {v9}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->ordinal()I

    move-result v9

    invoke-virtual {v6, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v6, "com.kddi.agent.action.CHANGE_CALL_STATE"

    iget-object v8, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamVpCall:Landroid/os/Bundle;

    invoke-direct {p0, v6, v8}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->sendBroadcastIntent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_5
    iget-object v6, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamVpCall:Landroid/os/Bundle;

    const-string v8, "callState"

    invoke-virtual {v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->ordinal()I

    move-result v9

    invoke-virtual {v6, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v6, "com.kddi.agent.action.CHANGE_CALL_STATE"

    iget-object v8, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamVpCall:Landroid/os/Bundle;

    invoke-direct {p0, v6, v8}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->sendBroadcastIntent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method public broadcastSyncCallMergeCallStateIntent(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;Landroid/os/Bundle;)Z
    .locals 10

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-nez p2, :cond_1

    const-string v7, "broadcastSyncCallMergeCallStateIntent : Connection is null."

    invoke-static {v7}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v6

    :cond_1
    if-eqz p1, :cond_0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v8, v9, :cond_2

    invoke-static {p2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->isAutoRejectCall(Lcom/android/internal/telephony/Connection;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v7, "broadcastSyncCallMergeCallStateIntent : isAutoReject !!!"

    invoke-static {v7}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v8, "isGroupCall"

    iget-object v9, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v9}, Lcom/android/phone/PhoneGlobals;->getMergeCallTriggered()Z

    move-result v9

    invoke-virtual {p3, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v8, "voiceType"

    invoke-virtual {p3, v8, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->convertToKDDICallState(Lcom/android/internal/telephony/Call$State;)Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    move-result-object v1

    const-string v8, "callState"

    invoke-virtual {p3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v1}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->ordinal()I

    move-result v9

    if-eq v8, v9, :cond_4

    sget-object v8, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->ACTIVE:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    if-ne v1, v8, :cond_3

    invoke-static {}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->getInstance()Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->isCallInAnsweringMessage()Z

    move-result v8

    if-eqz v8, :cond_3

    sget-object v1, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->AUTOREPLY:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    :cond_3
    const-string v8, "callState"

    invoke-virtual {v1}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->ordinal()I

    move-result v9

    invoke-virtual {p3, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_4
    invoke-direct {p0, p2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->getPhoneNumber(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "broadcastSyncCallMergeCallStateIntent address "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ,conn.getNumberPresentation() "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    :cond_5
    const/4 v8, 0x2

    if-ne v3, v8, :cond_8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateSyncCallStateIntentParams NumberPresentation : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v7}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;Z)V

    const v8, 0x7f0a0087

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_6
    :goto_1
    if-eqz v0, :cond_7

    const-string v8, "address"

    invoke-virtual {p3, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    const-string v8, "address"

    invoke-virtual {p3, v8, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const-wide/16 v4, 0x0

    invoke-direct {p0, v0, p2, v6}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->makeIndex(Ljava/lang/String;Lcom/android/internal/telephony/Connection;Z)J

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-nez v8, :cond_a

    const-string v7, "broadcastSyncCallMergeCallStateIntent Do not need to send intent."

    invoke-static {v7}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const/4 v8, 0x4

    if-ne v3, v8, :cond_9

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateSyncCallStateIntentParams NumberPresentation : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v7}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;Z)V

    const v8, 0x7f0a0088

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_9
    const/4 v8, 0x3

    if-ne v3, v8, :cond_6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateSyncCallStateIntentParams NumberPresentation : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v7}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;Z)V

    const v8, 0x7f0a0085

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_a
    const-string v6, "index"

    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    cmp-long v6, v8, v4

    if-eqz v6, :cond_b

    const-string v6, "index"

    invoke-virtual {p3, v6, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_b
    move v6, v7

    goto/16 :goto_0
.end method

.method public registerCallServiceMgr()V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getCallManager()Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v2, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v2, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/CallManager;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v1}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->registerCallReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-direct {p0}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->initiateIntentParams()V

    invoke-direct {p0, v0}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->initiateSCover(Landroid/content/Context;)V

    return-void
.end method

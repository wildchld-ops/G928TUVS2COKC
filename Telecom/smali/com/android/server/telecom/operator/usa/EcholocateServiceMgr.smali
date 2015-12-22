.class public Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;
.super Ljava/lang/Object;
.source "EcholocateServiceMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$CallIDList;,
        Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static NWsignal:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static UICallState:[Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private static sMe:Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;


# instance fields
.field private mAutoReplyIntentHandler:Landroid/os/Handler;

.field private mCallID:Ljava/lang/String;

.field mCallIDList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$CallIDList;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mIntentCallSettingParam:Landroid/os/Bundle;

.field private mIntentDetailedCallStateParam:Landroid/os/Bundle;

.field private mIntentUICallStateParam:Landroid/os/Bundle;

.field private mNetworkStateListener:Landroid/telephony/PhoneStateListener;

.field private stateType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->DBG:Z

    const-class v0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->sMe:Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "CALL_PRESSED"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "END_PRESSED"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "MUTE_PRESSED"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "UNMUTE_PRESSED"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "HOLD_PRESSED"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "UNHOLD_PRESSED"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "CALL_CONNECTED"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "CALL_DISCONNECTED"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "RINGING"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "SCREEN_ON"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "SCREEN_OFF"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->UICallState:[Ljava/lang/String;

    sget-object v0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;->SNR:Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->NWsignal:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->mIntentDetailedCallStateParam:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->mIntentUICallStateParam:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->mIntentCallSettingParam:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->mCallID:Ljava/lang/String;

    const-string v0, "NA"

    iput-object v0, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->stateType:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->mCallIDList:Ljava/util/ArrayList;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->mAutoReplyIntentHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$1;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$1;-><init>(Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;)V

    iput-object v0, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;Landroid/os/Message;)Landroid/os/Bundle;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->getBundle(Landroid/os/Message;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->UICallState:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->sendBroadcastIntent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->mIntentDetailedCallStateParam:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->stateType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->getNWStateSignal()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->getLTEBand()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->getCallID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->getTimeStamp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->mIntentUICallStateParam:Landroid/os/Bundle;

    return-object v0
.end method

.method private getBundle(Landroid/os/Message;)Landroid/os/Bundle;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Landroid/os/Bundle;

    if-eqz v1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    :cond_0
    return-object v0
.end method

.method private getCallID(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "getCallID number is empty"

    invoke-static {v0}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->log(Ljava/lang/String;)V

    const-string v0, "1"

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->mCallIDList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->mCallIDList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$CallIDList;

    iget-object v2, v0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$CallIDList;->number:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "find CallID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$CallIDList;->callid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->log(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$CallIDList;->callid:Ljava/lang/String;

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    const-string v0, "can not find CallID"

    invoke-static {v0}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->log(Ljava/lang/String;)V

    const-string v0, "1"

    goto :goto_0
.end method

.method private getCallSettingsWFC()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_SupportSecWFC"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->getRegistrationState(Landroid/content/ContentResolver;)Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCallSettingsWFC - state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->log(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;->NOT_REGISTERED:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;

    if-ne v0, v1, :cond_0

    const-string v0, "WIFI_OFF"

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;->REGISTERED:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;

    if-ne v0, v1, :cond_1

    const-string v0, "REGISTRED"

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;->REGISTERING:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;

    if-ne v0, v1, :cond_2

    const-string v0, "UNREGISTERED"

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;->DEREGISTERING:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;

    if-ne v0, v1, :cond_3

    const-string v0, "WIFI_NOT_CONNECTED"

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;->NO_STATE:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;

    if-ne v0, v1, :cond_4

    const-string v0, "OFF"

    goto :goto_0

    :cond_4
    const-string v0, "NA"

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;
    .locals 1

    sget-object v0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->sMe:Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->init()Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->sMe:Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;

    goto :goto_0
.end method

.method private getLTEBand()Ljava/lang/String;
    .locals 3

    const-string v0, "ril.lteband"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLTEBand :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->log(Ljava/lang/String;)V

    return-object v0
.end method

.method private getNWStateSignal()Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->setNWStateSignalFromSystemProperties()V

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v0, ";"

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;->values()[Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    sget-object v5, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->NWsignal:[Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;->ordinal()I

    move-result v4

    aget-object v4, v5, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNWStateSignal : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->log(Ljava/lang/String;)V

    return-object v0
.end method

.method private getNWStateType()V
    .locals 2

    sget-object v0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNWStateType :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->stateType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->log(Ljava/lang/String;)V

    return-void

    :pswitch_1
    const-string v0, "3G"

    iput-object v0, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->stateType:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    const-string v0, "2G"

    iput-object v0, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->stateType:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/services/telephony/common/SecCallExtra;->getEpdgCall()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/services/telephony/common/SecCallExtra;->getEpdgW2L()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v0, "WFC2"

    iput-object v0, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->stateType:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/services/telephony/common/SecCallExtra;->getEpdgCall()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/services/telephony/common/SecCallExtra;->getEpdgW2L()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/services/telephony/common/SecCallExtra;->getEpdgCall()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/services/telephony/common/SecCallExtra;->getEpdgW2L()Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    const-string v0, "LTE"

    iput-object v0, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->stateType:Ljava/lang/String;

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const-string v0, "VIDEO"

    iput-object v0, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->stateType:Ljava/lang/String;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getPhoneStateListener()Landroid/telephony/PhoneStateListener;
    .locals 1

    new-instance v0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$4;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$4;-><init>(Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;)V

    return-object v0
.end method

.method private getTimeStamp()Ljava/lang/String;
    .locals 4

    const-string v0, "MM-dd HH:mm:s.SSS"

    const-string v0, ""

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:s.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTimeStamp dateString: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->log(Ljava/lang/String;)V

    return-object v0
.end method

.method static init()Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;
    .locals 3

    const-class v1, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->sMe:Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;

    invoke-direct {v0}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;-><init>()V

    sput-object v0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->sMe:Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;

    invoke-static {}, Lcom/android/server/telecom/TelecomGlobals;->getInstance()Lcom/android/server/telecom/TelecomGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomGlobals;->getContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    :goto_0
    sget-object v0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->sMe:Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;

    monitor-exit v1

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init() EcholocateServiceMgr times! sInstance = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->sMe:Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->log(Ljava/lang/String;)V

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

    const/4 v3, 0x0

    const-string v0, "initiateIntentParams()... "

    invoke-static {v0}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->log(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->mIntentDetailedCallStateParam:Landroid/os/Bundle;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->mIntentUICallStateParam:Landroid/os/Bundle;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->mIntentCallSettingParam:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->mIntentDetailedCallStateParam:Landroid/os/Bundle;

    const-string v1, "CallNumber"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->mIntentDetailedCallStateParam:Landroid/os/Bundle;

    const-string v1, "CallState"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->mIntentDetailedCallStateParam:Landroid/os/Bundle;

    const-string v1, "CallCode"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->mIntentDetailedCallStateParam:Landroid/os/Bundle;

    const-string v1, "VoiceAccessNetworkStateType"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->mIntentDetailedCallStateParam:Landroid/os/Bundle;

    const-string v1, "VoiceAccessNetworkStateSignal"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->mIntentDetailedCallStateParam:Landroid/os/Bundle;

    const-string v1, "VoiceAccessNetworkStateBand"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->mIntentDetailedCallStateParam:Landroid/os/Bundle;

    const-string v1, "CallID"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->mIntentDetailedCallStateParam:Landroid/os/Bundle;

    const-string v1, "Timestamp"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->mIntentUICallStateParam:Landroid/os/Bundle;

    const-string v1, "CallNumber"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->mIntentUICallStateParam:Landroid/os/Bundle;

    const-string v1, "CallState"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->mIntentUICallStateParam:Landroid/os/Bundle;

    const-string v1, "VoiceAccessNetworkStateType"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->mIntentUICallStateParam:Landroid/os/Bundle;

    const-string v1, "VoiceAccessNetworkStateSignal"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->mIntentUICallStateParam:Landroid/os/Bundle;

    const-string v1, "VoiceAccessNetworkStateBand"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->mIntentUICallStateParam:Landroid/os/Bundle;

    const-string v1, "CallID"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->mIntentUICallStateParam:Landroid/os/Bundle;

    const-string v1, "Timestamp"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->mIntentCallSettingParam:Landroid/os/Bundle;

    const-string v1, "CallNumber"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->mIntentCallSettingParam:Landroid/os/Bundle;

    const-string v1, "CallSettingVoLTE"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->mIntentCallSettingParam:Landroid/os/Bundle;

    const-string v1, "CallSettingWFC"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->mIntentCallSettingParam:Landroid/os/Bundle;

    const-string v1, "CallSettingSIMVoLTE"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->mIntentCallSettingParam:Landroid/os/Bundle;

    const-string v1, "CallSettingSIMWFC"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->mIntentCallSettingParam:Landroid/os/Bundle;

    const-string v1, "CallSettingWFCPreference"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->mIntentCallSettingParam:Landroid/os/Bundle;

    const-string v1, "CallID"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->mIntentCallSettingParam:Landroid/os/Bundle;

    const-string v1, "Timestamp"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private registerForServiceStateChanged()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->mNetworkStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    sget-object v0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->mNetworkStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    return-void
.end method

.method private sendBroadcastIntent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    invoke-static {}, Lcom/android/server/telecom/TelecomGlobals;->getInstance()Lcom/android/server/telecom/TelecomGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomGlobals;->getContext()Landroid/content/Context;

    move-result-object v0

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

    invoke-static {v2}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->log(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private unregisterForServiceStateChanged()V
    .locals 3

    sget-object v0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->mNetworkStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->mNetworkStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    return-void
.end method

.method private updateCallIDSystemDB()V
    .locals 4

    invoke-static {}, Lcom/android/server/telecom/TelecomGlobals;->getInstance()Lcom/android/server/telecom/TelecomGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomGlobals;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "updateCallIDSystemDB context is null"

    invoke-static {v0}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->log(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, ""

    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->mCallIDList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_1

    const-string v0, "updateCallIDSystemDB mCallIDList is null"

    invoke-static {v0}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->log(Ljava/lang/String;)V

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCallIDSystemDB buf :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->log(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/services/telephony/common/SystemDBInterface;->setEcholocateCallID(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    move-object v2, v1

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->mCallIDList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->mCallIDList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$CallIDList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$CallIDList;->number:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$CallIDList;->callid:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "$"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_2
    move-object v1, v2

    goto :goto_1
.end method


# virtual methods
.method public OnNetworkStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnNetworkStateChanged  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->log(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->getNWStateType()V

    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnNetworkStateChanged stateType :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->stateType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->log(Ljava/lang/String;)V

    return-void

    :pswitch_0
    const-string v0, "WFC1"

    iput-object v0, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->stateType:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    const-string v0, "SEARCHING"

    iput-object v0, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->stateType:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->getCallSettingsWFC()Ljava/lang/String;

    move-result-object v0

    const-string v1, "REGISTRED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AIRPLANE"

    iput-object v0, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->stateType:Ljava/lang/String;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public makeCallID(Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "makeCallID number or type is empty"

    invoke-static {v0}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->log(Ljava/lang/String;)V

    :goto_0
    return v3

    :cond_0
    const-string v0, "1"

    invoke-direct {p0, p1}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->getCallID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeCallID id :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->mCallIDList:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$CallIDList;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$CallIDList;-><init>(Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->updateCallIDSystemDB()V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " already exist number:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeAllCallID()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->mCallIDList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->updateCallIDSystemDB()V

    invoke-direct {p0}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->unregisterForServiceStateChanged()V

    const-string v0, "removeAllCallID"

    invoke-static {v0}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->log(Ljava/lang/String;)V

    return-void
.end method

.method public removeCallID(Ljava/lang/String;)Z
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->mCallIDList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->mCallIDList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v3, :cond_1

    :cond_0
    const-string v0, "deleteCallID number is empty or mCallIDList size zero "

    invoke-static {v0}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->log(Ljava/lang/String;)V

    :goto_0
    return v2

    :cond_1
    move v1, v2

    :goto_1
    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->mCallIDList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->mCallIDList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$CallIDList;

    iget-object v4, v0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$CallIDList;->number:Ljava/lang/String;

    if-ne v4, p1, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remove CallID : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$CallIDList;->callid:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->mCallIDList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->updateCallIDSystemDB()V

    move v2, v3

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    const-string v0, "can not remove CallID"

    invoke-static {v0}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendDetailedCallState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendDetailedCallState()... number :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " CallCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->log(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "sendDetailedCallState()... included null "

    invoke-static {v0}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->log(Ljava/lang/String;)V

    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$2;-><init>(Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public senduiCallState(Ljava/lang/String;I)V
    .locals 4

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "number : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uiState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->log(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "senduiCallState()... included null "

    invoke-static {v0}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->log(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$3;-><init>(Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;Ljava/lang/String;I)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public setNWStateSignal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->NWsignal:[Ljava/lang/String;

    sget-object v1, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;->RSSI:Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;

    invoke-virtual {v1}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;->ordinal()I

    move-result v1

    aput-object p1, v0, v1

    sget-object v0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->NWsignal:[Ljava/lang/String;

    sget-object v1, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;->RSCP:Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;

    invoke-virtual {v1}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;->ordinal()I

    move-result v1

    aput-object p2, v0, v1

    sget-object v0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->NWsignal:[Ljava/lang/String;

    sget-object v1, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;->RSRP:Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;

    invoke-virtual {v1}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;->ordinal()I

    move-result v1

    aput-object p3, v0, v1

    sget-object v0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->NWsignal:[Ljava/lang/String;

    sget-object v1, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;->RSRQ:Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;

    invoke-virtual {v1}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;->ordinal()I

    move-result v1

    aput-object p4, v0, v1

    sget-object v0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->NWsignal:[Ljava/lang/String;

    sget-object v1, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;->SNR:Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;

    invoke-virtual {v1}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;->ordinal()I

    move-result v1

    aput-object p5, v0, v1

    return-void
.end method

.method public setNWStateSignalFromSystemProperties()V
    .locals 4

    const-string v0, "ril.signal.param.ECIO"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "NA"

    :cond_0
    const-string v1, "ril.signal.param.SINR"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "NA"

    :cond_1
    sget-object v2, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->NWsignal:[Ljava/lang/String;

    sget-object v3, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;->ECIO:Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;

    invoke-virtual {v3}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;->ordinal()I

    move-result v3

    aput-object v0, v2, v3

    sget-object v0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->NWsignal:[Ljava/lang/String;

    sget-object v2, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;->SINR:Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;

    invoke-virtual {v2}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$SignalType;->ordinal()I

    move-result v2

    aput-object v1, v0, v2

    return-void
.end method

.method public startEcholocate()V
    .locals 1

    const-string v0, "startEcholocate()... "

    invoke-static {v0}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->initiateIntentParams()V

    invoke-direct {p0}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->getPhoneStateListener()Landroid/telephony/PhoneStateListener;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->mNetworkStateListener:Landroid/telephony/PhoneStateListener;

    invoke-direct {p0}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->registerForServiceStateChanged()V

    return-void
.end method

.class public final Lcom/android/incallui/Call;
.super Ljava/lang/Object;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/Call$State;
    }
.end annotation


# static fields
.field private static final ID_PREFIX:Ljava/lang/String;

.field private static sIdCounter:I


# instance fields
.field private final mChildCallIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDisconnectCause:Landroid/telecom/DisconnectCause;

.field private mEmergencyCallUpdateState:Z

.field private final mId:Ljava/lang/String;

.field private mNsriSecureContentObserver:Landroid/database/ContentObserver;

.field private mPhoneNumberLocator:Ljava/lang/String;

.field private mPhoneType:I

.field private final mSecCall:Lcom/android/incallui/secui/SecCall;

.field private mSessionModificationState:I

.field private mState:I

.field private mSubId:I

.field private final mTelecommCall:Landroid/telecom/Call;

.field private mTelecommCallListener:Landroid/telecom/Call$Listener;

.field private mVideoCallListener:Lcom/android/incallui/InCallVideoCallListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/incallui/Call;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/Call;->ID_PREFIX:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/android/incallui/Call;->sIdCounter:I

    return-void
.end method

.method public constructor <init>(Landroid/telecom/Call;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/incallui/Call$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/Call$1;-><init>(Lcom/android/incallui/Call;)V

    iput-object v0, p0, Lcom/android/incallui/Call;->mTelecommCallListener:Landroid/telecom/Call$Listener;

    iput v1, p0, Lcom/android/incallui/Call;->mState:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/Call;->mChildCallIds:Ljava/util/List;

    iput-boolean v1, p0, Lcom/android/incallui/Call;->mEmergencyCallUpdateState:Z

    iput v1, p0, Lcom/android/incallui/Call;->mSubId:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/Call;->mPhoneType:I

    new-instance v0, Lcom/android/incallui/Call$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/incallui/Call$2;-><init>(Lcom/android/incallui/Call;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/incallui/Call;->mNsriSecureContentObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    new-instance v0, Lcom/android/incallui/secui/SecCall;

    invoke-direct {v0, p0}, Lcom/android/incallui/secui/SecCall;-><init>(Lcom/android/incallui/Call;)V

    iput-object v0, p0, Lcom/android/incallui/Call;->mSecCall:Lcom/android/incallui/secui/SecCall;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/incallui/Call;->ID_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/incallui/Call;->sIdCounter:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/android/incallui/Call;->sIdCounter:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/Call;->mId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/incallui/Call;->updateFromTelecommCall()V

    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    iget-object v1, p0, Lcom/android/incallui/Call;->mTelecommCallListener:Landroid/telecom/Call$Listener;

    invoke-virtual {v0, v1}, Landroid/telecom/Call;->addListener(Landroid/telecom/Call$Listener;)V

    invoke-direct {p0}, Lcom/android/incallui/Call;->registerNsriSecureContentObserver()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/Call;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/Call;->update()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/Call;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/Call;->update(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/incallui/Call;)Landroid/telecom/Call$Listener;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecommCallListener:Landroid/telecom/Call$Listener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/incallui/Call;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/Call;->unregisterNsriSecureContentObserver()V

    return-void
.end method

.method public static areSame(Lcom/android/incallui/Call;Lcom/android/incallui/Call;)Z
    .locals 2

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private hasProperty(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getCallProperties()I

    move-result v0

    and-int/2addr v0, p1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerNsriSecureContentObserver()V
    .locals 5

    const-string v1, "support_nsri_secure"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "nsri_secure_call_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/incallui/Call;->mNsriSecureContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method private static translateState(I)I
    .locals 3

    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    :pswitch_1
    return v0

    :pswitch_2
    const/16 v0, 0xd

    goto :goto_0

    :pswitch_3
    const/16 v0, 0xc

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x6

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_6
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_7
    const/16 v0, 0x8

    goto :goto_0

    :pswitch_8
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "GATE"

    const-string v2, "<GATE-M>DISCONNECT_CALL</GATE-M>"

    invoke-static {v1, v2, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    const/16 v0, 0xa

    goto :goto_0

    :pswitch_9
    const/16 v0, 0x9

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_3
        :pswitch_2
        :pswitch_9
    .end packed-switch
.end method

.method private unregisterNsriSecureContentObserver()V
    .locals 3

    const-string v1, "support_nsri_secure"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/Call;->mNsriSecureContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method private update()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/incallui/Call;->update(Z)V

    return-void
.end method

.method private update(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    invoke-direct {p0}, Lcom/android/incallui/Call;->updateFromTelecommCall()V

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/CallList;->onDisconnect(Lcom/android/incallui/Call;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSecUi()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/CallList;->onUpdateNotNotify(Lcom/android/incallui/Call;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/CallList;->onUpdate(Lcom/android/incallui/Call;)V

    goto :goto_0
.end method

.method private updateFromTelecommCall()V
    .locals 7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateFromTelecommCall: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v4}, Landroid/telecom/Call;->getState()I

    move-result v4

    invoke-static {v4}, Lcom/android/incallui/Call;->translateState(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/incallui/Call;->setState(I)V

    iget-object v4, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v4}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telecom/Call$Details;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/incallui/Call;->setDisconnectCause(Landroid/telecom/DisconnectCause;)V

    iget-object v4, p0, Lcom/android/incallui/Call;->mSecCall:Lcom/android/incallui/secui/SecCall;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/Call;->mSecCall:Lcom/android/incallui/secui/SecCall;

    iget-object v5, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/incallui/secui/SecCall;->updateFromTelecommCall(Landroid/telecom/Call;I)V

    :cond_0
    iget-object v4, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v4}, Landroid/telecom/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/incallui/Call;->mVideoCallListener:Lcom/android/incallui/InCallVideoCallListener;

    if-nez v4, :cond_1

    new-instance v4, Lcom/android/incallui/InCallVideoCallListener;

    invoke-direct {v4, p0}, Lcom/android/incallui/InCallVideoCallListener;-><init>(Lcom/android/incallui/Call;)V

    iput-object v4, p0, Lcom/android/incallui/Call;->mVideoCallListener:Lcom/android/incallui/InCallVideoCallListener;

    :cond_1
    iget-object v4, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v4}, Landroid/telecom/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/Call;->mVideoCallListener:Lcom/android/incallui/InCallVideoCallListener;

    invoke-virtual {v4, v5}, Landroid/telecom/InCallService$VideoCall;->setVideoCallListener(Landroid/telecom/InCallService$VideoCall$Listener;)V

    :cond_2
    iget-object v4, p0, Lcom/android/incallui/Call;->mChildCallIds:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v4}, Landroid/telecom/Call;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    iget-object v4, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v4}, Landroid/telecom/Call;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v5, p0, Lcom/android/incallui/Call;->mChildCallIds:Ljava/util/List;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    iget-object v4, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v4}, Landroid/telecom/Call;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/Call;

    invoke-virtual {v6, v4}, Lcom/android/incallui/CallList;->getCallByTelecommCall(Landroid/telecom/Call;)Lcom/android/incallui/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const-string v4, "phone_number_locator"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget v4, p0, Lcom/android/incallui/Call;->mState:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_5

    iget v4, p0, Lcom/android/incallui/Call;->mState:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_5

    iget v4, p0, Lcom/android/incallui/Call;->mState:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_6

    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getPhoneId()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v4, "ctc_country_code_locator"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {v3}, Lcom/android/incallui/operator/chn/PNLUtils;->checkRoamingCondition(I)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {v1, v3}, Lcom/android/incallui/operator/chn/PNLUtils;->getCountryCodeLocator(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/incallui/Call;->setPhoneNumberLocator(Ljava/lang/String;)V

    :cond_6
    return-void

    :cond_7
    invoke-static {v1}, Lcom/android/incallui/operator/chn/PNLUtils;->getPhoneNumberLocator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method


# virtual methods
.method public can(I)Z
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v6}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telecom/Call$Details;->getCallCapabilities()I

    move-result v3

    and-int/lit8 v6, p1, 0x4

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v6}, Landroid/telecom/Call;->getConferenceableCalls()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/lit8 v6, v3, 0x4

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    const/4 v6, 0x2

    and-int/lit8 v7, p1, 0x2

    if-ne v6, v7, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallUtils;->canSupportHoldForVoLTE()Z

    move-result v6

    if-eqz v6, :cond_0

    :cond_2
    and-int/lit8 v6, p1, 0x1

    if-ne v4, v6, :cond_3

    const-string v6, "feature_lgt"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    :cond_3
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSecUi()Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "ims_voice_conference_kddi"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x4

    and-int/lit8 v7, p1, 0x4

    if-ne v6, v7, :cond_5

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v0, :cond_4

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->getSecCallExtra(Lcom/android/incallui/Call;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/android/services/telephony/common/SecCallExtra;->isVoicePartyCall()I

    move-result v6

    if-eq v6, v4, :cond_0

    :cond_4
    if-eqz v1, :cond_5

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->getSecCallExtra(Lcom/android/incallui/Call;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/android/services/telephony/common/SecCallExtra;->isVoicePartyCall()I

    move-result v6

    if-eq v6, v4, :cond_0

    :cond_5
    iget-object v6, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v6}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telecom/Call$Details;->getCallCapabilities()I

    move-result v6

    and-int/2addr v6, p1

    if-ne p1, v6, :cond_6

    :goto_1
    move v5, v4

    goto :goto_0

    :cond_6
    move v4, v5

    goto :goto_1
.end method

.method public cancelModifyRequestDummyType()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/secui/SecCall;->setModifyProgressingType(I)V

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/secui/SecCall;->setSecVideoState(I)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/CallList;->onUpdate(Lcom/android/incallui/Call;)V

    return-void
.end method

.method public foreceUpdateModifyRequestDummyType()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secui/SecCall;->upeateModifyRequestDummyType()V

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/secui/SecCall;->setSecVideoState(I)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/CallList;->onUpdate(Lcom/android/incallui/Call;)V

    return-void
.end method

.method public getAccountHandle()Landroid/telecom/PhoneAccountHandle;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    return-object v0
.end method

.method public getCannedSmsResponses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getCannedTextResponses()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getChildCallIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/incallui/Call;->mChildCallIds:Ljava/util/List;

    return-object v0
.end method

.method public getCnapName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getTelecommCall()Landroid/telecom/Call;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCnapNamePresentation()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getTelecommCall()Landroid/telecom/Call;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getCallerDisplayNamePresentation()I

    move-result v0

    return v0
.end method

.method public getConnectTimeMillis()J
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getConnectTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDisconnectCause()Landroid/telecom/DisconnectCause;
    .locals 2

    iget v0, p0, Lcom/android/incallui/Call;->mState:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/incallui/Call;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/Call;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Landroid/telecom/DisconnectCause;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/telecom/DisconnectCause;-><init>(I)V

    goto :goto_0
.end method

.method public getEmergencyCallUpdateState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/Call;->mEmergencyCallUpdateState:Z

    return v0
.end method

.method public getGatewayInfo()Landroid/telecom/GatewayInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getGatewayInfo()Landroid/telecom/GatewayInfo;

    move-result-object v0

    return-object v0
.end method

.method public getHandle()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getHandle()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/Call;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getGatewayInfo()Landroid/telecom/GatewayInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getGatewayInfo()Landroid/telecom/GatewayInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/GatewayInfo;->getOriginalAddress()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getHandle()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getHandle()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNumberPresentation()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getTelecommCall()Landroid/telecom/Call;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getHandlePresentation()I

    move-result v0

    return v0
.end method

.method public getOutgoingCallMessage()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v1}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getOutgoingCallMessage()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getParentId()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v1}, Landroid/telecom/Call;->getParent()Landroid/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/CallList;->getCallByTelecommCall(Landroid/telecom/Call;)Lcom/android/incallui/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPhoneId()I
    .locals 4

    const-string v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/incallui/Call;->mSubId:I

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPhoneId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    goto :goto_0
.end method

.method public getPhoneNumberLocator()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/Call;->mPhoneNumberLocator:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneType()I
    .locals 2

    iget v0, p0, Lcom/android/incallui/Call;->mPhoneType:I

    if-gez v0, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/Call;->mPhoneType:I

    :cond_0
    iget v0, p0, Lcom/android/incallui/Call;->mPhoneType:I

    return v0
.end method

.method public getRadNumber()Ljava/lang/String;
    .locals 5

    iget-object v3, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v3}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telecom/Call$Details;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isRoamingArea()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v1, 0x0

    const-string v3, "feature_skt"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "feature_ktt"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    invoke-static {v3}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->getRadDisplayNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRadNumber: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-object v1

    :cond_2
    invoke-virtual {v2}, Lcom/android/services/telephony/common/SecCallExtra;->isRadConvertNumber()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/android/services/telephony/common/SecCallExtra;->getRadOriginalNumber()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    const-string v3, "feature_lgt"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getSecCall()Lcom/android/incallui/secui/SecCall;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/Call;->mSecCall:Lcom/android/incallui/secui/SecCall;

    return-object v0
.end method

.method public getSessionModificationState()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/Call;->mSessionModificationState:I

    return v0
.end method

.method public getState()I
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getParent()Landroid/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/incallui/Call;->mState:I

    goto :goto_0
.end method

.method public getSubId()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSubId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/secui/SecCall;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secui/SecCall;->getSubId()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTelecommCall()Landroid/telecom/Call;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    return-object v0
.end method

.method public getVideoCall()Landroid/telecom/InCallService$VideoCall;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    return-object v0
.end method

.method public getVideoState()I
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getVideoState()I

    move-result v0

    return v0
.end method

.method public isConferenceCall()Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/incallui/Call;->hasProperty(I)Z

    move-result v0

    return v0
.end method

.method public isEpdgCall()Z
    .locals 2

    iget-object v1, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v1}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getEpdgCall()Z

    move-result v1

    goto :goto_0
.end method

.method public isVideoCall(Landroid/content/Context;)Z
    .locals 1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSecUi()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secui/SecCall;->isVideoCall()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lcom/android/contacts/common/CallUtil;->isVideoEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v0

    invoke-static {v0}, Landroid/telecom/VideoProfile$VideoState;->isBidirectional(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisconnectCause(Landroid/telecom/DisconnectCause;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/Call;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    return-void
.end method

.method public setEmergencyCallUpdateState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/Call;->mEmergencyCallUpdateState:Z

    return-void
.end method

.method public setPhoneNumberLocator(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/Call;->mPhoneNumberLocator:Ljava/lang/String;

    return-void
.end method

.method public setSessionModificationState(I)V
    .locals 2

    iget v1, p0, Lcom/android/incallui/Call;->mSessionModificationState:I

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput p1, p0, Lcom/android/incallui/Call;->mSessionModificationState:I

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/Call;->update()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setState(I)V
    .locals 0

    iput p1, p0, Lcom/android/incallui/Call;->mState:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "[%s, %s, %s, children:%s, parent:%s, conferenceable:%s, videoState:%d]"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/incallui/Call;->mId:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    invoke-static {v4}, Lcom/android/incallui/Call$State;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v4}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telecom/Call$Details;->getCallCapabilities()I

    move-result v4

    invoke-static {v4}, Landroid/telecom/Call$Details;->capabilitiesToString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/incallui/Call;->mChildCallIds:Ljava/util/List;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getParentId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v4}, Landroid/telecom/Call;->getConferenceableCalls()Ljava/util/List;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v4}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telecom/Call$Details;->getVideoState()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

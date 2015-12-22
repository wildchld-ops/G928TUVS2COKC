.class public Lcom/android/incallui/SecModifyCallAdapter;
.super Ljava/lang/Object;
.source "SecModifyCallAdapter.java"


# static fields
.field private static sInstance:Lcom/android/incallui/SecModifyCallAdapter;


# instance fields
.field private mPreviousCallState:I

.field private mPreviousCallType:I

.field private mPrimary:Lcom/android/incallui/Call;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/SecModifyCallAdapter;->sInstance:Lcom/android/incallui/SecModifyCallAdapter;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/SecModifyCallAdapter;->mPrimary:Lcom/android/incallui/Call;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/SecModifyCallAdapter;->mPreviousCallState:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/SecModifyCallAdapter;->mPreviousCallType:I

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/incallui/SecModifyCallAdapter;
    .locals 2

    const-class v1, Lcom/android/incallui/SecModifyCallAdapter;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/incallui/SecModifyCallAdapter;->sInstance:Lcom/android/incallui/SecModifyCallAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/SecModifyCallAdapter;

    invoke-direct {v0}, Lcom/android/incallui/SecModifyCallAdapter;-><init>()V

    sput-object v0, Lcom/android/incallui/SecModifyCallAdapter;->sInstance:Lcom/android/incallui/SecModifyCallAdapter;

    :cond_0
    sget-object v0, Lcom/android/incallui/SecModifyCallAdapter;->sInstance:Lcom/android/incallui/SecModifyCallAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private onModifiedCall(Lcom/android/incallui/Call;)V
    .locals 7

    const/4 v6, 0x6

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x3

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/secui/SecCall;->getType()I

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getProximitySensor()Lcom/android/incallui/ProximitySensor;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getProximitySensor()Lcom/android/incallui/ProximitySensor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/ProximitySensor;->forceUpdateProximitySensorMode()V

    :cond_0
    iget v1, p0, Lcom/android/incallui/SecModifyCallAdapter;->mPreviousCallType:I

    if-ne v1, v2, :cond_3

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    if-ne v1, v3, :cond_1

    const-string v1, "vzw_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/android/incallui/CallCardPresenter;->setMessageVoiceFromVideo(I)V

    :cond_1
    :goto_0
    const-string v1, "video_connected_as_voice"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/incallui/SecModifyCallAdapter;->mPreviousCallState:I

    if-ne v1, v6, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    if-ne v1, v3, :cond_2

    const v1, 0x7f0d02f1

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->displayToastLong(I)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget v1, p0, Lcom/android/incallui/SecModifyCallAdapter;->mPreviousCallType:I

    if-ne v1, v5, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    if-ne v1, v3, :cond_1

    const-string v1, "vzw_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/incallui/SecModifyCallAdapter;->mPreviousCallState:I

    if-ne v1, v6, :cond_4

    iget v1, p0, Lcom/android/incallui/SecModifyCallAdapter;->mPreviousCallState:I

    if-eq v1, v2, :cond_1

    :cond_4
    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/android/incallui/CallCardPresenter;->setMessageVoiceFromVideo(I)V

    goto :goto_0

    :cond_5
    iget v1, p0, Lcom/android/incallui/SecModifyCallAdapter;->mPreviousCallType:I

    if-ne v1, v2, :cond_2

    if-eq v0, v3, :cond_6

    if-eq v0, v5, :cond_6

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    :cond_6
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    if-ne v1, v3, :cond_2

    const-string v1, "concept_usa_att"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "concept_usa_tmo"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "concept_canada_common"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_7
    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Lcom/android/incallui/secui/SecUiAdapter;->showVideoStateMessage(ZI)V

    goto :goto_1
.end method


# virtual methods
.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 6

    const/4 v5, -0x1

    iget-object v1, p0, Lcom/android/incallui/SecModifyCallAdapter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {p3, v3, v4}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/SecModifyCallAdapter;->mPrimary:Lcom/android/incallui/Call;

    iget-object v3, p0, Lcom/android/incallui/SecModifyCallAdapter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/SecModifyCallAdapter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/secui/SecCall;->getType()I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStateChange : ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/SecModifyCallAdapter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/SecModifyCallAdapter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/incallui/SecModifyCallAdapter;->mPrimary:Lcom/android/incallui/Call;

    if-ne v3, v1, :cond_0

    iget v3, p0, Lcom/android/incallui/SecModifyCallAdapter;->mPreviousCallType:I

    if-eq v3, v5, :cond_0

    iget v3, p0, Lcom/android/incallui/SecModifyCallAdapter;->mPreviousCallType:I

    if-eq v3, v0, :cond_0

    iget-object v3, p0, Lcom/android/incallui/SecModifyCallAdapter;->mPrimary:Lcom/android/incallui/Call;

    invoke-direct {p0, v3}, Lcom/android/incallui/SecModifyCallAdapter;->onModifiedCall(Lcom/android/incallui/Call;)V

    :cond_0
    iput v0, p0, Lcom/android/incallui/SecModifyCallAdapter;->mPreviousCallType:I

    iget-object v3, p0, Lcom/android/incallui/SecModifyCallAdapter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    iput v3, p0, Lcom/android/incallui/SecModifyCallAdapter;->mPreviousCallState:I

    :goto_0
    return-void

    :cond_1
    const-string v3, "onStateChange mPrimary == null"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/incallui/SecModifyCallAdapter;->mPreviousCallState:I

    iput v5, p0, Lcom/android/incallui/SecModifyCallAdapter;->mPreviousCallType:I

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/incallui/SecModifyCallAdapter;->mPrimary:Lcom/android/incallui/Call;

    goto :goto_0
.end method

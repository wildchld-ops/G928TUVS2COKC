.class public Lcom/android/incallui/secui/SecUiAdapter;
.super Ljava/lang/Object;
.source "SecUiAdapter.java"


# static fields
.field private static sInstance:Lcom/android/incallui/secui/SecUiAdapter;


# instance fields
.field protected mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/secui/SecUiAdapter;->sInstance:Lcom/android/incallui/secui/SecUiAdapter;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/incallui/secui/SecUiAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/secui/SecUiAdapter$1;-><init>(Lcom/android/incallui/secui/SecUiAdapter;)V

    iput-object v0, p0, Lcom/android/incallui/secui/SecUiAdapter;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static deInit()V
    .locals 2

    const-class v1, Lcom/android/incallui/secui/SecUiAdapter;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/incallui/secui/SecUiAdapter;->sInstance:Lcom/android/incallui/secui/SecUiAdapter;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/secui/SecUiAdapter;->sInstance:Lcom/android/incallui/secui/SecUiAdapter;

    invoke-virtual {v0}, Lcom/android/incallui/secui/SecUiAdapter;->cancelAllTimer()V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/secui/SecUiAdapter;->sInstance:Lcom/android/incallui/secui/SecUiAdapter;

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstance()Lcom/android/incallui/secui/SecUiAdapter;
    .locals 1

    sget-object v0, Lcom/android/incallui/secui/SecUiAdapter;->sInstance:Lcom/android/incallui/secui/SecUiAdapter;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->init()Lcom/android/incallui/secui/SecUiAdapter;

    :cond_0
    sget-object v0, Lcom/android/incallui/secui/SecUiAdapter;->sInstance:Lcom/android/incallui/secui/SecUiAdapter;

    return-object v0
.end method

.method public static init()Lcom/android/incallui/secui/SecUiAdapter;
    .locals 2

    const-class v1, Lcom/android/incallui/secui/SecUiAdapter;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/incallui/secui/SecUiAdapter;->sInstance:Lcom/android/incallui/secui/SecUiAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/secui/SecUiAdapter;

    invoke-direct {v0}, Lcom/android/incallui/secui/SecUiAdapter;-><init>()V

    sput-object v0, Lcom/android/incallui/secui/SecUiAdapter;->sInstance:Lcom/android/incallui/secui/SecUiAdapter;

    :cond_0
    sget-object v0, Lcom/android/incallui/secui/SecUiAdapter;->sInstance:Lcom/android/incallui/secui/SecUiAdapter;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public addCallClicked()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/secui/SecUiAdapter;->getSecCallButtonUi()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/incallui/SecCallButtonUi;->addCallClicked()V

    :cond_0
    return-void
.end method

.method public bluetoothClicked()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/secui/SecUiAdapter;->getSecCallButtonUi()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/incallui/SecCallButtonUi;->bluetoothClicked()V

    :cond_0
    return-void
.end method

.method protected cancelAllTimer()V
    .locals 1

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/incallui/secui/SecUiAdapter;->cancelTimer(I)V

    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/android/incallui/secui/SecUiAdapter;->cancelTimer(I)V

    const/16 v0, 0x66

    invoke-virtual {p0, v0}, Lcom/android/incallui/secui/SecUiAdapter;->cancelTimer(I)V

    return-void
.end method

.method public cancelCleanModeTimer()V
    .locals 1

    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/android/incallui/secui/SecUiAdapter;->cancelTimer(I)V

    return-void
.end method

.method protected cancelModifyReceiveTimer()V
    .locals 1

    const/16 v0, 0x66

    invoke-virtual {p0, v0}, Lcom/android/incallui/secui/SecUiAdapter;->cancelTimer(I)V

    return-void
.end method

.method public cancelTimer(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/secui/SecUiAdapter;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/secui/SecUiAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/secui/SecUiAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method protected cancelTimerToHideVideoStateMessage()V
    .locals 1

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/incallui/secui/SecUiAdapter;->cancelTimer(I)V

    return-void
.end method

.method protected cancelTimerToHideVoiceCallModifyStateMessage()V
    .locals 1

    const/16 v0, 0x67

    invoke-virtual {p0, v0}, Lcom/android/incallui/secui/SecUiAdapter;->cancelTimer(I)V

    return-void
.end method

.method public captureSurfaceImage(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/secui/SecUiAdapter;->getSecVideoCallUi()Lcom/android/incallui/SecVideoCallUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/incallui/SecVideoCallUi;->captureSurfaceImage(Z)V

    :cond_0
    return-void
.end method

.method public controlModifyReceiveTimer(I)V
    .locals 2

    sget v0, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_RECEIVE:I

    and-int/2addr v0, p1

    sget v1, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_RECEIVE:I

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secui/SecUiAdapter;->startModifyReceiveTimer()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secui/SecUiAdapter;->cancelModifyReceiveTimer()V

    goto :goto_0
.end method

.method public dismissInCallMenu()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/secui/SecUiAdapter;->getSecInCallActivity()Lcom/android/incallui/SecInCallActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/SecInCallActivity;->dismissInCallMenu()V

    :cond_0
    return-void
.end method

.method public displayDialpad(ZZ)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/secui/SecUiAdapter;->getBaseInCallComponent()Lcom/android/incallui/BaseInCallComponent;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/incallui/SecInCallActivity;

    if-nez v1, :cond_0

    instance-of v1, v0, Lcom/android/incallui/SecTabletInCallService;

    if-eqz v1, :cond_1

    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/android/incallui/BaseInCallComponent;->displayDialpad(ZZ)V

    :cond_1
    return-void
.end method

.method protected expiredModifyReceiveTimer()V
    .locals 1

    invoke-static {}, Lcom/android/incallui/SecModifyCallProcessor;->getInstance()Lcom/android/incallui/SecModifyCallProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/SecModifyCallProcessor;->rejectModifyCall()V

    return-void
.end method

.method public extraVolumeClicked()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/secui/SecUiAdapter;->getSecCallButtonUi()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/incallui/SecCallButtonUi;->extraVolumeClicked()V

    :cond_0
    return-void
.end method

.method public getBaseInCallComponent()Lcom/android/incallui/BaseInCallComponent;
    .locals 2

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/BaseInCallComponent;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getConferenceCallManagerShowingState()Z
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/secui/SecUiAdapter;->getSecInCallActivity()Lcom/android/incallui/SecInCallActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/SecInCallActivity;->getConferenceCallManagerShowingState()Z

    move-result v1

    :cond_0
    return v1
.end method

.method public getCurrentOrientation()I
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/incallui/secui/SecUiAdapter;->getSecInCallActivity()Lcom/android/incallui/SecInCallActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/SecInCallActivity;->getCurrentOrientation()I

    move-result v1

    :cond_0
    return v1
.end method

.method public getIsAnsweringState()Z
    .locals 5

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/secservice/SecVideoCallManager;->getInstance()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getSecVideoCall(Lcom/android/incallui/Call;)Lcom/android/incallui/secservice/SecVideoCall;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v2, v1, Lcom/android/incallui/secservice/SecVideoCall;->mIsAnsweringState:Z

    :cond_0
    return v2
.end method

.method public getMessageForVideoState(I)Ljava/lang/String;
    .locals 5

    const v4, 0x7f0d02eb

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getPrimaryCallerName()Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMessageForVideoState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    :pswitch_0
    if-nez v2, :cond_0

    const-string v2, "Other party"

    :cond_0
    const-string v3, "concept_usa_vzw"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f0d02cd

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s"

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const v3, 0x7f0d02e9

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s"

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_1
    if-nez v2, :cond_2

    const-string v2, "Other party"

    :cond_2
    const-string v3, "concept_usa_vzw"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const v3, 0x7f0d02cf

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s"

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    const v3, 0x7f0d02ea

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s"

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_2
    const-string v3, "concept_usa_vzw"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const v3, 0x7f0d02ce

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_3
    if-nez v2, :cond_5

    const-string v2, "Other party"

    :cond_5
    const-string v3, "concept_usa_vzw"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const v3, 0x7f0d02d0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s"

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_4
    const v3, 0x7f0d02ec

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_5
    if-nez v2, :cond_7

    const-string v2, "Other party"

    :cond_7
    const v3, 0x7f0d037a

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s"

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_6
    if-nez v2, :cond_8

    const-string v2, "Other party"

    :cond_8
    const v3, 0x7f0d02d2

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s"

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_7
    if-nez v2, :cond_9

    const-string v2, "Other party"

    :cond_9
    const v3, 0x7f0d02d4

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s"

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_8
    if-nez v2, :cond_a

    const-string v2, "Other party"

    :cond_a
    const v3, 0x7f0d02d9

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s"

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_9
    if-nez v2, :cond_b

    const-string v2, "Other party"

    :cond_b
    const v3, 0x7f0d02da

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s"

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_a
    const v3, 0x7f0d02db

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_b
    if-nez v2, :cond_c

    const-string v2, "Other party"

    :cond_c
    const v3, 0x7f0d02de

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s"

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_c
    if-nez v2, :cond_d

    const-string v2, "Other party"

    :cond_d
    const v3, 0x7f0d02e0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s"

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_d
    const-string v3, "concept_usa_vzw"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    const v3, 0x7f0d02df

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_e
    const v3, 0x7f0d02ee

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_e
    if-nez v2, :cond_f

    const-string v2, "Other party"

    :cond_f
    const v3, 0x7f0d02e1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s"

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_f
    if-nez v2, :cond_10

    const-string v2, "Other party"

    :cond_10
    const v3, 0x7f0d02d3

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s"

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_10
    const v3, 0x7f0d02d1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

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
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method public getSecAnswerUi()Lcom/android/incallui/SecAnswerUi;
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/secui/SecUiAdapter;->getBaseInCallComponent()Lcom/android/incallui/BaseInCallComponent;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/incallui/SecInCallActivity;

    if-nez v1, :cond_0

    instance-of v1, v0, Lcom/android/incallui/SecTabletInCallService;

    if-eqz v1, :cond_1

    :cond_0
    invoke-interface {v0}, Lcom/android/incallui/BaseInCallComponent;->getSecAnswerFragment()Lcom/android/incallui/SecAnswerUi;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSecCallButtonUi()Lcom/android/incallui/SecCallButtonUi;
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/secui/SecUiAdapter;->getBaseInCallComponent()Lcom/android/incallui/BaseInCallComponent;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/incallui/SecInCallActivity;

    if-nez v1, :cond_0

    instance-of v1, v0, Lcom/android/incallui/SecTabletInCallService;

    if-eqz v1, :cond_1

    :cond_0
    invoke-interface {v0}, Lcom/android/incallui/BaseInCallComponent;->getSecCallButtonFragment()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSecCallCardUi()Lcom/android/incallui/SecCallCardUi;
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/secui/SecUiAdapter;->getBaseInCallComponent()Lcom/android/incallui/BaseInCallComponent;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/incallui/SecInCallActivity;

    if-nez v1, :cond_0

    instance-of v1, v0, Lcom/android/incallui/SecTabletInCallService;

    if-eqz v1, :cond_1

    :cond_0
    invoke-interface {v0}, Lcom/android/incallui/BaseInCallComponent;->getSecCallCardFragment()Lcom/android/incallui/SecCallCardUi;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSecDialpadUi()Lcom/android/incallui/SecDialpadUi;
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/secui/SecUiAdapter;->getBaseInCallComponent()Lcom/android/incallui/BaseInCallComponent;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/incallui/SecInCallActivity;

    if-nez v1, :cond_0

    instance-of v1, v0, Lcom/android/incallui/SecTabletInCallService;

    if-eqz v1, :cond_1

    :cond_0
    invoke-interface {v0}, Lcom/android/incallui/BaseInCallComponent;->getSecDialpadFragment()Lcom/android/incallui/SecDialpadUi;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSecInCallActivity()Lcom/android/incallui/SecInCallActivity;
    .locals 3

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/BaseInCallComponent;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/android/incallui/SecInCallActivity;

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/android/incallui/SecInCallActivity;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSecTabletInCallService()Lcom/android/incallui/SecTabletInCallService;
    .locals 3

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/BaseInCallComponent;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/android/incallui/SecTabletInCallService;

    if-eqz v2, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/incallui/SecTabletInCallService;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSecVideoCallUi()Lcom/android/incallui/SecVideoCallUi;
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/secui/SecUiAdapter;->getBaseInCallComponent()Lcom/android/incallui/BaseInCallComponent;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/incallui/SecInCallActivity;

    if-nez v1, :cond_0

    instance-of v1, v0, Lcom/android/incallui/SecTabletInCallService;

    if-eqz v1, :cond_1

    :cond_0
    invoke-interface {v0}, Lcom/android/incallui/BaseInCallComponent;->getSecVideoCallFragment()Lcom/android/incallui/SecVideoCallUi;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hideDialpadForModifyCall()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/secui/SecUiAdapter;->getSecInCallActivity()Lcom/android/incallui/SecInCallActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/SecInCallActivity;->hideDialpadForModifyCall()V

    :cond_0
    return-void
.end method

.method public hideVideoTogglingViews()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/secui/SecUiAdapter;->getSecCallButtonUi()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/incallui/SecCallButtonUi;->hideVideoTogglingViews()V

    :cond_0
    return-void
.end method

.method public isDialpadVisible()Z
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/secui/SecUiAdapter;->getBaseInCallComponent()Lcom/android/incallui/BaseInCallComponent;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v2, v0, Lcom/android/incallui/SecInCallActivity;

    if-nez v2, :cond_0

    instance-of v2, v0, Lcom/android/incallui/SecTabletInCallService;

    if-eqz v2, :cond_1

    :cond_0
    invoke-interface {v0}, Lcom/android/incallui/BaseInCallComponent;->isDialpadVisible()Z

    move-result v1

    :cond_1
    return v1
.end method

.method public isInExceptionArea(II)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/secui/SecUiAdapter;->getSecCallCardUi()Lcom/android/incallui/SecCallCardUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/android/incallui/SecCallCardUi;->isInExceptionArea(II)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPenMultiWindow()Z
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/secui/SecUiAdapter;->getSecInCallActivity()Lcom/android/incallui/SecInCallActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/SecInCallActivity;->isPenMultiWindow()Z

    move-result v1

    :cond_0
    return v1
.end method

.method protected isPossibleToEnterCleanMode()Z
    .locals 8

    const/4 v5, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7, v5}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return v5

    :cond_0
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v4

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/BaseInCallComponent;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SecInCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/SecInCallActivity;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallMenu;->isMenuOpen()Z

    move-result v2

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_3

    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/android/incallui/secui/SecCall;->isModifyProgressing()Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    invoke-static {}, Lcom/android/incallui/secservice/SecVideoCallManager;->getInstance()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/secservice/SecVideoCallManager;->isModifyBannerShow()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/secui/SecUiAdapter;->isDialpadVisible()Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz v2, :cond_4

    :cond_3
    const/4 v3, 0x0

    :cond_4
    move v5, v3

    goto :goto_0
.end method

.method public isPrimaryVisible()Z
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/secui/SecUiAdapter;->getSecCallCardUi()Lcom/android/incallui/SecCallCardUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/incallui/SecCallCardUi;->isPrimaryVisible()Z

    move-result v1

    :cond_0
    return v1
.end method

.method public isSwapProcessing()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/secui/SecUiAdapter;->getSecCallCardUi()Lcom/android/incallui/SecCallCardUi;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/incallui/SecCallCardUi;->isSwapProcessing()Z

    move-result v0

    :cond_0
    return v0
.end method

.method public restartTimer(II)V
    .locals 4

    iget-object v0, p0, Lcom/android/incallui/secui/SecUiAdapter;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/secui/SecUiAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/incallui/secui/SecUiAdapter;->cancelTimer(I)V

    iget-object v0, p0, Lcom/android/incallui/secui/SecUiAdapter;->mHandler:Landroid/os/Handler;

    int-to-long v2, p2

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method protected restartTimerToHideVideoStateMessage()V
    .locals 2

    const/16 v0, 0x64

    const/16 v1, 0x1388

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/secui/SecUiAdapter;->restartTimer(II)V

    return-void
.end method

.method protected restartTimerToHideVoiceCallModifyStateMessage()V
    .locals 2

    const/16 v0, 0x67

    const/16 v1, 0x1388

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/secui/SecUiAdapter;->restartTimer(II)V

    return-void
.end method

.method public returnToNormalWindowMode()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/secui/SecUiAdapter;->getSecInCallActivity()Lcom/android/incallui/SecInCallActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/SecInCallActivity;->returnToNormalWindowMode()V

    :cond_0
    return-void
.end method

.method public setAudioMode(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/secui/SecUiAdapter;->getSecCallButtonUi()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/incallui/SecCallButtonUi;->setAudioMode(I)V

    :cond_0
    return-void
.end method

.method public setIsAnsweringState(Z)V
    .locals 5

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/secservice/SecVideoCallManager;->getInstance()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getSecVideoCall(Lcom/android/incallui/Call;)Lcom/android/incallui/secservice/SecVideoCall;

    move-result-object v1

    if-eqz v1, :cond_0

    iput-boolean p1, v1, Lcom/android/incallui/secservice/SecVideoCall;->mIsAnsweringState:Z

    :cond_0
    return-void
.end method

.method public setPrimaryCallElapsedTime(ZLjava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/secui/SecUiAdapter;->getSecVideoCallUi()Lcom/android/incallui/SecVideoCallUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/android/incallui/SecVideoCallUi;->setPrimaryCallElapsedTime(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setPrimaryCallElapsedTimeForDialpad(ZLjava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/secui/SecUiAdapter;->getSecInCallActivity()Lcom/android/incallui/SecInCallActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/SecInCallActivity;->setPrimaryCallElapsedTimeForDialpad(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/secui/SecUiAdapter;->getSecVideoCallUi()Lcom/android/incallui/SecVideoCallUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/android/incallui/SecVideoCallUi;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    :cond_0
    return-void
.end method

.method public setPrimaryVisible(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/secui/SecUiAdapter;->getSecCallCardUi()Lcom/android/incallui/SecCallCardUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/incallui/SecCallCardUi;->setPrimaryVisible(Z)V

    :cond_0
    return-void
.end method

.method public setPrimaryVisibleByDialpad(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/secui/SecUiAdapter;->getSecCallCardUi()Lcom/android/incallui/SecCallCardUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/incallui/SecCallCardUi;->setPrimaryVisibleByDialpad(Z)V

    :cond_0
    return-void
.end method

.method public showAddUserForConferenceCall()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/secui/SecUiAdapter;->getSecCallButtonUi()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/incallui/SecCallButtonUi;->showAddUserForConferenceCall()V

    :cond_0
    return-void
.end method

.method public showButtonIndicatorArea(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/secui/SecUiAdapter;->getSecCallButtonUi()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/incallui/SecCallButtonUi;->showButtonIndicatorArea(Z)V

    :cond_0
    return-void
.end method

.method public showCallBannerByDialpad(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/secui/SecUiAdapter;->getSecVideoCallUi()Lcom/android/incallui/SecVideoCallUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/incallui/SecVideoCallUi;->showCallBannerByDialpad(Z)V

    :cond_0
    return-void
.end method

.method public showCallCardIndicatorArea(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/secui/SecUiAdapter;->getSecCallCardUi()Lcom/android/incallui/SecCallCardUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/incallui/SecCallCardUi;->showCallCardIndicatorArea(Z)V

    :cond_0
    return-void
.end method

.method public showCameraEffectLayout(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/secui/SecUiAdapter;->getSecCallButtonUi()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/incallui/SecCallButtonUi;->showCameraEffectLayout(Z)V

    :cond_0
    return-void
.end method

.method public showConferenceCallManager()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/secui/SecUiAdapter;->getSecInCallActivity()Lcom/android/incallui/SecInCallActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/SecInCallActivity;->showConferenceCallManager()V

    :cond_0
    return-void
.end method

.method public showConferenceStateMessage(ZLjava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/incallui/secui/SecUiAdapter;->getSecCallCardUi()Lcom/android/incallui/SecCallCardUi;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/secui/SecUiAdapter;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x67

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/secui/SecUiAdapter;->restartTimerToHideVoiceCallModifyStateMessage()V

    :goto_1
    invoke-interface {v0, p1, p2}, Lcom/android/incallui/SecCallCardUi;->showConferenceStateInfoBanner(ZLjava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/secui/SecUiAdapter;->startTimerToHideVoiceCallModifyStateMessage()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/secui/SecUiAdapter;->cancelTimerToHideVoiceCallModifyStateMessage()V

    goto :goto_1
.end method

.method public showFarEndCaptureAnimation()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/secui/SecUiAdapter;->getSecVideoCallUi()Lcom/android/incallui/SecVideoCallUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/incallui/SecVideoCallUi;->showFarEndCaptureAnimation()V

    :cond_0
    return-void
.end method

.method public showInCallMenu()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/secui/SecUiAdapter;->getSecInCallActivity()Lcom/android/incallui/SecInCallActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/SecInCallActivity;->showInCallMenu()V

    :cond_0
    return-void
.end method

.method public showIncomingHideMeImage(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/secui/SecUiAdapter;->getSecVideoCallUi()Lcom/android/incallui/SecVideoCallUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/incallui/SecVideoCallUi;->showIncomingHideMeImage(Z)V

    :cond_0
    return-void
.end method

.method public showIndicatorArea(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/incallui/secui/SecUiAdapter;->showCallCardIndicatorArea(Z)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/secui/SecUiAdapter;->showVideoIndicatorArea(Z)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/secui/SecUiAdapter;->showButtonIndicatorArea(Z)V

    return-void
.end method

.method public showPrimaryCallBanner(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/secui/SecUiAdapter;->getSecVideoCallUi()Lcom/android/incallui/SecVideoCallUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/incallui/SecVideoCallUi;->showPrimaryCallBanner(Z)V

    :cond_0
    return-void
.end method

.method public showRecordingInfo(ZZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/secui/SecUiAdapter;->getSecVideoCallUi()Lcom/android/incallui/SecVideoCallUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/android/incallui/SecVideoCallUi;->showRecordingInfo(ZZ)V

    :cond_0
    return-void
.end method

.method public showSwitchCameraAnimation(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/secui/SecUiAdapter;->getSecVideoCallUi()Lcom/android/incallui/SecVideoCallUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/incallui/SecVideoCallUi;->showSwitchCameraAnimation(Z)V

    :cond_0
    return-void
.end method

.method public showVideoInCallResize(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/secui/SecUiAdapter;->getSecVideoCallUi()Lcom/android/incallui/SecVideoCallUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/incallui/SecVideoCallUi;->showVideoInCallResize(Z)V

    :cond_0
    return-void
.end method

.method public showVideoIndicatorArea(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/secui/SecUiAdapter;->getSecVideoCallUi()Lcom/android/incallui/SecVideoCallUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/incallui/SecVideoCallUi;->showVideoIndicatorArea(Z)V

    :cond_0
    return-void
.end method

.method public showVideoStateMessage(ZI)V
    .locals 8

    const/4 v5, 0x1

    const/4 v6, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "showVideoStateMessage : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " , "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/secui/SecUiAdapter;->getSecVideoCallUi()Lcom/android/incallui/SecVideoCallUi;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0, p2}, Lcom/android/incallui/secui/SecUiAdapter;->getMessageForVideoState(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const/4 v4, 0x6

    if-ne p2, v4, :cond_4

    move v2, v5

    :goto_2
    if-eqz v0, :cond_5

    const/4 v4, 0x7

    if-eq p2, v4, :cond_2

    const/16 v4, 0x8

    if-eq p2, v4, :cond_2

    const/16 v4, 0x9

    if-eq p2, v4, :cond_2

    const/16 v4, 0xa

    if-eq p2, v4, :cond_2

    const/16 v4, 0xb

    if-eq p2, v4, :cond_2

    const/16 v4, 0xf

    if-eq p2, v4, :cond_2

    const/16 v4, 0x10

    if-eq p2, v4, :cond_2

    const/16 v4, 0x11

    if-ne p2, v4, :cond_5

    :cond_2
    move v1, v5

    :goto_3
    if-eqz v2, :cond_6

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->displayToast(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/secui/SecUiAdapter;->cancelTimerToHideVideoStateMessage()V

    goto :goto_1

    :cond_4
    move v2, v6

    goto :goto_2

    :cond_5
    move v1, v6

    goto :goto_3

    :cond_6
    if-eqz v1, :cond_7

    iget-object v4, p0, Lcom/android/incallui/secui/SecUiAdapter;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x64

    invoke-virtual {v4, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {p0}, Lcom/android/incallui/secui/SecUiAdapter;->restartTimerToHideVideoStateMessage()V

    :cond_7
    :goto_4
    invoke-static {}, Lcom/android/incallui/secservice/SecVideoCallManager;->getInstance()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v7

    if-eqz v0, :cond_9

    move v4, v5

    :goto_5
    invoke-virtual {v7, v4}, Lcom/android/incallui/secservice/SecVideoCallManager;->setModifyBannerShow(Z)V

    invoke-interface {v3, v0}, Lcom/android/incallui/SecVideoCallUi;->showVideoStateMessageUi(Ljava/lang/String;)V

    if-nez p1, :cond_a

    :goto_6
    invoke-virtual {p0, v5}, Lcom/android/incallui/secui/SecUiAdapter;->showPrimaryCallBanner(Z)V

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, Lcom/android/incallui/secui/SecUiAdapter;->startTimerToHideVideoStateMessage()V

    goto :goto_4

    :cond_9
    move v4, v6

    goto :goto_5

    :cond_a
    move v5, v6

    goto :goto_6
.end method

.method public showVoiceCallModifyStateMessage(ZI)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/incallui/secui/SecUiAdapter;->getSecCallCardUi()Lcom/android/incallui/SecCallCardUi;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0, p2}, Lcom/android/incallui/secui/SecUiAdapter;->getMessageForVideoState(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/secui/SecUiAdapter;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x67

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/secui/SecUiAdapter;->restartTimerToHideVoiceCallModifyStateMessage()V

    :goto_1
    invoke-interface {v1, p1, v0}, Lcom/android/incallui/SecCallCardUi;->showModifyStateInfoBanner(ZLjava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/secui/SecUiAdapter;->startTimerToHideVoiceCallModifyStateMessage()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/secui/SecUiAdapter;->cancelTimerToHideVoiceCallModifyStateMessage()V

    goto :goto_1
.end method

.method public startCleanModeTimer()V
    .locals 2

    const/16 v0, 0x65

    const/16 v1, 0x1388

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/secui/SecUiAdapter;->startTimer(II)V

    return-void
.end method

.method protected startModifyReceiveTimer()V
    .locals 2

    const/16 v1, 0x66

    const-string v0, "concept_usa_vzw"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0xd6d8

    invoke-virtual {p0, v1, v0}, Lcom/android/incallui/secui/SecUiAdapter;->startTimer(II)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x4e20

    invoke-virtual {p0, v1, v0}, Lcom/android/incallui/secui/SecUiAdapter;->startTimer(II)V

    goto :goto_0
.end method

.method public startTimer(II)V
    .locals 4

    iget-object v0, p0, Lcom/android/incallui/secui/SecUiAdapter;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/secui/SecUiAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/secui/SecUiAdapter;->mHandler:Landroid/os/Handler;

    int-to-long v2, p2

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method protected startTimerToHideVideoStateMessage()V
    .locals 2

    const/16 v0, 0x64

    const/16 v1, 0x1388

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/secui/SecUiAdapter;->startTimer(II)V

    return-void
.end method

.method protected startTimerToHideVoiceCallModifyStateMessage()V
    .locals 2

    const/16 v0, 0x67

    const/16 v1, 0x1388

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/secui/SecUiAdapter;->startTimer(II)V

    return-void
.end method

.method public switchCameraClicked()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/secui/SecUiAdapter;->getSecCallButtonUi()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/incallui/SecCallButtonUi;->switchCameraClicked()V

    :cond_0
    return-void
.end method

.method public toggleCleanMode()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/secui/SecUiAdapter;->cancelCleanModeTimer()V

    invoke-static {}, Lcom/android/incallui/secservice/SecVideoCallManager;->getInstance()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->isCleanMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/incallui/secui/SecUiAdapter;->updateCleanMode(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/secui/SecUiAdapter;->isPossibleToEnterCleanMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/incallui/secui/SecUiAdapter;->updateCleanMode(Z)V

    goto :goto_0
.end method

.method public toggleVideoButtonContainer()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/secui/SecUiAdapter;->getSecCallButtonUi()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/incallui/SecCallButtonUi;->toggleVideoButtonContainer()V

    :cond_0
    return-void
.end method

.method public updateButtonCleanMode(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/secui/SecUiAdapter;->getSecCallButtonUi()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/incallui/SecCallButtonUi;->updateButtonCleanMode(Z)V

    :cond_0
    return-void
.end method

.method public updateCallButtons(Lcom/android/incallui/Call;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/secui/SecUiAdapter;->getSecCallButtonUi()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/incallui/SecCallButtonUi;->updateCallButtons(Lcom/android/incallui/Call;)V

    :cond_0
    return-void
.end method

.method public updateCallCardCleanMode(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/secui/SecUiAdapter;->getSecCallCardUi()Lcom/android/incallui/SecCallCardUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/incallui/SecCallCardUi;->updateCallCardCleanMode(Z)V

    :cond_0
    return-void
.end method

.method public updateCameraEffectLayout()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/secui/SecUiAdapter;->getSecCallButtonUi()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/incallui/SecCallButtonUi;->updateCameraEffectLayout()V

    :cond_0
    return-void
.end method

.method public updateCameraEffectLayout(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/secui/SecUiAdapter;->getSecCallButtonUi()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/incallui/SecCallButtonUi;->updateCameraEffectLayout(Z)V

    :cond_0
    return-void
.end method

.method public updateCleanMode(Z)V
    .locals 1

    invoke-static {}, Lcom/android/incallui/secservice/SecVideoCallManager;->getInstance()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->isCleanMode()Z

    move-result v0

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/secservice/SecVideoCallManager;->getInstance()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/secservice/SecVideoCallManager;->setCleanMode(Z)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/secui/SecUiAdapter;->updateCallCardCleanMode(Z)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/secui/SecUiAdapter;->updateVideoCleanMode(Z)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/secui/SecUiAdapter;->updateButtonCleanMode(Z)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/secui/SecUiAdapter;->isPossibleToEnterCleanMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/secui/SecUiAdapter;->startCleanModeTimer()V

    goto :goto_0
.end method

.method public updateIncomingHideButton()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/secui/SecUiAdapter;->getSecCallCardUi()Lcom/android/incallui/SecCallCardUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/incallui/SecCallCardUi;->updateIncomingHideButton()V

    :cond_0
    return-void
.end method

.method public updateModifyBannerLayout(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/secui/SecUiAdapter;->getSecVideoCallUi()Lcom/android/incallui/SecVideoCallUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/incallui/SecVideoCallUi;->updateModifyBannerLayout(Z)V

    :cond_0
    return-void
.end method

.method public updateModifyRequestButtons(Lcom/android/incallui/Call;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/secui/SecUiAdapter;->getSecCallButtonUi()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/incallui/SecCallButtonUi;->updateModifyRequestButtons(Lcom/android/incallui/Call;)V

    :cond_0
    return-void
.end method

.method public updateSwitchButtonLayout()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/secui/SecUiAdapter;->getSecCallButtonUi()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/incallui/SecCallButtonUi;->updateSwitchButtonLayout()V

    :cond_0
    return-void
.end method

.method public updateSwitchButtonLayout(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/secui/SecUiAdapter;->getSecCallButtonUi()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/incallui/SecCallButtonUi;->updateSwitchButtonLayout(Z)V

    :cond_0
    return-void
.end method

.method public updateVideoCleanMode(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/secui/SecUiAdapter;->getSecVideoCallUi()Lcom/android/incallui/SecVideoCallUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/incallui/SecVideoCallUi;->updateVideoCleanMode(Z)V

    :cond_0
    return-void
.end method

.method public updateVideoRecordButton()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/secui/SecUiAdapter;->getSecCallButtonUi()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/incallui/SecCallButtonUi;->updateVideoRecordButton()V

    :cond_0
    return-void
.end method

.class public Lcom/android/incallui/SecTabletCallButtonViewManager;
.super Lcom/android/incallui/SecTabletViewManager;
.source "SecTabletCallButtonViewManager.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallOrientationListener;
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/SecTabletCallButtonViewManager$1;,
        Lcom/android/incallui/SecTabletCallButtonViewManager$FragmentMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/SecTabletViewManager",
        "<",
        "Lcom/android/incallui/SecTabletCallButtonView;",
        ">;",
        "Lcom/android/incallui/InCallPresenter$InCallOrientationListener;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
        "Lcom/android/incallui/InCallPresenter$IncomingCallListener;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentView:Lcom/android/incallui/SecTabletCallButtonView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/SecTabletViewManager;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    const-string v0, "SecTabletCallButtonViewManager"

    const-string v1, "SecTabletCallButtonViewManager..."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/incallui/SecTabletCallButtonViewManager;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecTabletCallButtonViewManager;->checkAndSet(Z)Lcom/android/incallui/SecTabletCallButtonView;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addListenerOfManager(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addOrientationListener(Lcom/android/incallui/InCallPresenter$InCallOrientationListener;)V

    sget-object v0, Lcom/android/incallui/SecEventBusManager;->INSTANCE:Lcom/android/incallui/SecEventBusManager;

    invoke-virtual {v0, p0}, Lcom/android/incallui/SecEventBusManager;->register(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected checkAndSet(Z)Lcom/android/incallui/SecTabletCallButtonView;
    .locals 9

    const/4 v6, 0x0

    sget-object v3, Lcom/android/incallui/SecTabletCallButtonViewManager$FragmentMode;->VOICE:Lcom/android/incallui/SecTabletCallButtonViewManager$FragmentMode;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    invoke-static {v7}, Lcom/android/incallui/InCallUtils;->hasLiveCallToDisplay(Lcom/android/incallui/CallList;)Z

    move-result v1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v6, v8}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v7

    sget-object v8, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v7, v8, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallButtonViewManager;->removeCurrentView()V

    iput-object v6, p0, Lcom/android/incallui/SecTabletCallButtonViewManager;->mFragmentType:Ljava/lang/Enum;

    :goto_0
    return-object v6

    :cond_0
    if-nez p1, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v6

    sget-object v7, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v6, v7, :cond_1

    iget-object v6, p0, Lcom/android/incallui/SecTabletCallButtonViewManager;->mCurrentView:Lcom/android/incallui/SecTabletCallButtonView;

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/secui/SecCall;->isVideoCall()Z

    move-result v2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    const/16 v7, 0xa

    if-ne v6, v7, :cond_6

    if-nez v1, :cond_5

    sget-object v3, Lcom/android/incallui/SecTabletCallButtonViewManager$FragmentMode;->ENDCALL:Lcom/android/incallui/SecTabletCallButtonViewManager$FragmentMode;

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isIMSConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v3, Lcom/android/incallui/SecTabletCallButtonViewManager$FragmentMode;->EMPTY:Lcom/android/incallui/SecTabletCallButtonViewManager$FragmentMode;

    :cond_2
    :goto_1
    if-nez p1, :cond_3

    iget-object v6, p0, Lcom/android/incallui/SecTabletCallButtonViewManager;->mFragmentType:Ljava/lang/Enum;

    if-eq v6, v3, :cond_4

    :cond_3
    invoke-virtual {p0, v3, p1}, Lcom/android/incallui/SecTabletCallButtonViewManager;->setView(Ljava/lang/Enum;Z)V

    iput-object v3, p0, Lcom/android/incallui/SecTabletCallButtonViewManager;->mFragmentType:Ljava/lang/Enum;

    :cond_4
    iget-object v6, p0, Lcom/android/incallui/SecTabletCallButtonViewManager;->mCurrentView:Lcom/android/incallui/SecTabletCallButtonView;

    goto :goto_0

    :cond_5
    iget-object v6, p0, Lcom/android/incallui/SecTabletCallButtonViewManager;->mCurrentView:Lcom/android/incallui/SecTabletCallButtonView;

    goto :goto_0

    :cond_6
    if-eqz v2, :cond_2

    invoke-virtual {v4}, Lcom/android/incallui/secui/SecCall;->getVideoResolution()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_8

    sget-object v3, Lcom/android/incallui/SecTabletCallButtonViewManager$FragmentMode;->QCIF_VIDEO:Lcom/android/incallui/SecTabletCallButtonViewManager$FragmentMode;

    :cond_7
    :goto_2
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSLandscapeConfCall()Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v3, Lcom/android/incallui/SecTabletCallButtonViewManager$FragmentMode;->CONF_VIDEO:Lcom/android/incallui/SecTabletCallButtonViewManager$FragmentMode;

    goto :goto_1

    :cond_8
    const/4 v6, 0x3

    if-eq v5, v6, :cond_9

    const/4 v6, 0x4

    if-ne v5, v6, :cond_7

    :cond_9
    sget-object v3, Lcom/android/incallui/SecTabletCallButtonViewManager$FragmentMode;->VGA_VIDEO:Lcom/android/incallui/SecTabletCallButtonViewManager$FragmentMode;

    goto :goto_2
.end method

.method protected getView()Lcom/android/incallui/SecTabletCallButtonView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallButtonViewManager;->mCurrentView:Lcom/android/incallui/SecTabletCallButtonView;

    return-object v0
.end method

.method public onAnswerTriggered(Lcom/android/incallui/SecEventAnswerTriggered;)V
    .locals 5
    .annotation runtime Lcom/android/incallui/SecEventBus;
    .end annotation

    invoke-virtual {p1}, Lcom/android/incallui/SecEventAnswerTriggered;->getState()Lcom/android/incallui/SecEventAnswerTriggered$STATE;

    move-result-object v2

    sget-object v3, Lcom/android/incallui/SecEventAnswerTriggered$STATE;->TRIGGERED:Lcom/android/incallui/SecEventAnswerTriggered$STATE;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallButtonViewManager;->mCurrentView:Lcom/android/incallui/SecTabletCallButtonView;

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v1, Lcom/android/incallui/SecTabletCallButtonVoiceView;

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallButtonViewManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/incallui/SecTabletCallButtonVoiceView;-><init>(Landroid/content/Context;)V

    const v2, 0x7f1001e5

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v1, v3}, Lcom/android/incallui/SecTabletCallButtonViewManager;->setViewInternal(ILcom/android/incallui/SecTabletView;Z)V

    invoke-virtual {v1}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->onAnswerTriggered()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListenerOfManager(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeOrientationListener(Lcom/android/incallui/InCallPresenter$InCallOrientationListener;)V

    sget-object v0, Lcom/android/incallui/SecEventBusManager;->INSTANCE:Lcom/android/incallui/SecEventBusManager;

    invoke-virtual {v0, p0}, Lcom/android/incallui/SecEventBusManager;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onDeviceOrientationChanged(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecTabletCallButtonViewManager;->checkAndSet(Z)Lcom/android/incallui/SecTabletCallButtonView;

    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/incallui/SecTabletCallButtonViewManager;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecTabletCallButtonViewManager;->checkAndSet(Z)Lcom/android/incallui/SecTabletCallButtonView;

    return-void
.end method

.method protected setCurrentView(Lcom/android/incallui/SecTabletCallButtonView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecTabletCallButtonViewManager;->mCurrentView:Lcom/android/incallui/SecTabletCallButtonView;

    return-void
.end method

.method protected bridge synthetic setCurrentView(Lcom/android/incallui/SecTabletView;)V
    .locals 0

    check-cast p1, Lcom/android/incallui/SecTabletCallButtonView;

    invoke-virtual {p0, p1}, Lcom/android/incallui/SecTabletCallButtonViewManager;->setCurrentView(Lcom/android/incallui/SecTabletCallButtonView;)V

    return-void
.end method

.method protected setView(Ljava/lang/Enum;Z)V
    .locals 4

    const v0, 0x7f1001e5

    const/4 v1, 0x0

    sget-object v2, Lcom/android/incallui/SecTabletCallButtonViewManager$1;->$SwitchMap$com$android$incallui$SecTabletCallButtonViewManager$FragmentMode:[I

    check-cast p1, Lcom/android/incallui/SecTabletCallButtonViewManager$FragmentMode;

    invoke-virtual {p1}, Lcom/android/incallui/SecTabletCallButtonViewManager$FragmentMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/incallui/SecTabletCallButtonViewManager;->setViewInternal(ILcom/android/incallui/SecTabletView;Z)V

    :cond_0
    return-void

    :pswitch_0
    new-instance v1, Lcom/android/incallui/SecTabletCallButtonVoiceView;

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallButtonViewManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/incallui/SecTabletCallButtonVoiceView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_1
    new-instance v1, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallButtonViewManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_2
    const-string v2, "gui_kor_fragment"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v1, Lcom/android/incallui/SecTabletVideoCallButtonVGAKORView;

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallButtonViewManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/incallui/SecTabletVideoCallButtonVGAKORView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/android/incallui/SecTabletVideoCallButtonVGAView;

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallButtonViewManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/incallui/SecTabletVideoCallButtonVGAView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_3
    new-instance v1, Lcom/android/incallui/SecTabletVideoCallButtonCONFView;

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallButtonViewManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/incallui/SecTabletVideoCallButtonCONFView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_4
    new-instance v1, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallButtonViewManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_5
    new-instance v1, Lcom/android/incallui/SecTabletCallButtonEmptyView;

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallButtonViewManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/incallui/SecTabletCallButtonEmptyView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

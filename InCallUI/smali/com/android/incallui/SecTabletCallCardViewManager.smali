.class public Lcom/android/incallui/SecTabletCallCardViewManager;
.super Lcom/android/incallui/SecTabletViewManager;
.source "SecTabletCallCardViewManager.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallOrientationListener;
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/SecTabletCallCardViewManager$1;,
        Lcom/android/incallui/SecTabletCallCardViewManager$FragmentMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/SecTabletViewManager",
        "<",
        "Lcom/android/incallui/SecTabletCallCardView;",
        ">;",
        "Lcom/android/incallui/InCallPresenter$InCallOrientationListener;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
        "Lcom/android/incallui/InCallPresenter$IncomingCallListener;"
    }
.end annotation


# instance fields
.field private mCurrentView:Lcom/android/incallui/SecTabletCallCardView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/SecTabletViewManager;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    const-string v0, "SecTabletCallCardViewManager"

    const-string v1, "SecTabletCallCardViewManager..."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecTabletCallCardViewManager;->checkAndSet(Z)Lcom/android/incallui/SecTabletCallCardView;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addListenerOfManager(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addOrientationListener(Lcom/android/incallui/InCallPresenter$InCallOrientationListener;)V

    return-void
.end method

.method private getDefaultFragment(Ljava/lang/Enum;)Lcom/android/incallui/SecTabletCallCardView;
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/android/incallui/SecTabletCallCardViewManager$1;->$SwitchMap$com$android$incallui$SecTabletCallCardViewManager$FragmentMode:[I

    check-cast p1, Lcom/android/incallui/SecTabletCallCardViewManager$FragmentMode;

    invoke-virtual {p1}, Lcom/android/incallui/SecTabletCallCardViewManager$FragmentMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-object v0

    :pswitch_1
    new-instance v0, Lcom/android/incallui/SecTabletCallCardVoiceView;

    iget-object v1, p0, Lcom/android/incallui/SecTabletCallCardViewManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/incallui/SecTabletCallCardVoiceView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/android/incallui/SecTabletVideoCallCardQCIFView;

    iget-object v1, p0, Lcom/android/incallui/SecTabletCallCardViewManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/incallui/SecTabletVideoCallCardQCIFView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;

    iget-object v1, p0, Lcom/android/incallui/SecTabletCallCardViewManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/android/incallui/SecTabletVideoCallCardCONFView;

    iget-object v1, p0, Lcom/android/incallui/SecTabletCallCardViewManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/incallui/SecTabletVideoCallCardCONFView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_5
    new-instance v0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;

    iget-object v1, p0, Lcom/android/incallui/SecTabletCallCardViewManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getEasyModeFragment(Ljava/lang/Enum;)Lcom/android/incallui/SecTabletCallCardView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected checkAndSet(Z)Lcom/android/incallui/SecTabletCallCardView;
    .locals 9

    sget-object v3, Lcom/android/incallui/SecTabletCallCardViewManager$FragmentMode;->VOICE:Lcom/android/incallui/SecTabletCallCardViewManager$FragmentMode;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-static {v6}, Lcom/android/incallui/InCallUtils;->hasLiveCallToDisplay(Lcom/android/incallui/CallList;)Z

    move-result v1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v6

    sget-object v7, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v6, v7, :cond_0

    iget-object v6, p0, Lcom/android/incallui/SecTabletCallCardViewManager;->mCurrentView:Lcom/android/incallui/SecTabletCallCardView;

    :goto_0
    return-object v6

    :cond_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    const/16 v7, 0xa

    if-ne v6, v7, :cond_1

    if-eqz v1, :cond_1

    iget-object v6, p0, Lcom/android/incallui/SecTabletCallCardViewManager;->mCurrentView:Lcom/android/incallui/SecTabletCallCardView;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/secui/SecCall;->isVideoCall()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v4}, Lcom/android/incallui/secui/SecCall;->getVideoResolution()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_6

    sget-object v3, Lcom/android/incallui/SecTabletCallCardViewManager$FragmentMode;->QCIF_VIDEO:Lcom/android/incallui/SecTabletCallCardViewManager$FragmentMode;

    :cond_2
    :goto_1
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSLandscapeConfCall()Z

    move-result v6

    if-eqz v6, :cond_3

    sget-object v3, Lcom/android/incallui/SecTabletCallCardViewManager$FragmentMode;->CONF_VIDEO:Lcom/android/incallui/SecTabletCallCardViewManager$FragmentMode;

    :cond_3
    if-nez p1, :cond_4

    iget-object v6, p0, Lcom/android/incallui/SecTabletCallCardViewManager;->mFragmentType:Ljava/lang/Enum;

    if-eq v6, v3, :cond_5

    :cond_4
    invoke-virtual {p0, v3, p1}, Lcom/android/incallui/SecTabletCallCardViewManager;->setView(Ljava/lang/Enum;Z)V

    iput-object v3, p0, Lcom/android/incallui/SecTabletCallCardViewManager;->mFragmentType:Ljava/lang/Enum;

    :cond_5
    iget-object v6, p0, Lcom/android/incallui/SecTabletCallCardViewManager;->mCurrentView:Lcom/android/incallui/SecTabletCallCardView;

    goto :goto_0

    :cond_6
    const/4 v6, 0x3

    if-eq v5, v6, :cond_7

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    :cond_7
    sget-object v3, Lcom/android/incallui/SecTabletCallCardViewManager$FragmentMode;->VGA_VIDEO:Lcom/android/incallui/SecTabletCallCardViewManager$FragmentMode;

    goto :goto_1

    :cond_8
    invoke-static {}, Lcom/android/incallui/InCallUtils;->needToShowMultiparty()Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v3, Lcom/android/incallui/SecTabletCallCardViewManager$FragmentMode;->MULTIPARTY:Lcom/android/incallui/SecTabletCallCardViewManager$FragmentMode;

    goto :goto_1
.end method

.method protected getView()Lcom/android/incallui/SecTabletCallCardView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardViewManager;->mCurrentView:Lcom/android/incallui/SecTabletCallCardView;

    return-object v0
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

    return-void
.end method

.method public onDeviceOrientationChanged(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecTabletCallCardViewManager;->checkAndSet(Z)Lcom/android/incallui/SecTabletCallCardView;

    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/incallui/SecTabletCallCardViewManager;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecTabletCallCardViewManager;->checkAndSet(Z)Lcom/android/incallui/SecTabletCallCardView;

    return-void
.end method

.method protected setCurrentView(Lcom/android/incallui/SecTabletCallCardView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecTabletCallCardViewManager;->mCurrentView:Lcom/android/incallui/SecTabletCallCardView;

    return-void
.end method

.method protected bridge synthetic setCurrentView(Lcom/android/incallui/SecTabletView;)V
    .locals 0

    check-cast p1, Lcom/android/incallui/SecTabletCallCardView;

    invoke-virtual {p0, p1}, Lcom/android/incallui/SecTabletCallCardViewManager;->setCurrentView(Lcom/android/incallui/SecTabletCallCardView;)V

    return-void
.end method

.method protected setView(Ljava/lang/Enum;Z)V
    .locals 4

    const v0, 0x7f1001e6

    const/4 v1, 0x0

    sget-object v3, Lcom/android/incallui/SecTabletCallCardViewManager$1;->$SwitchMap$com$android$incallui$SecTabletCallCardViewManager$FragmentMode:[I

    move-object v2, p1

    check-cast v2, Lcom/android/incallui/SecTabletCallCardViewManager$FragmentMode;

    invoke-virtual {v2}, Lcom/android/incallui/SecTabletCallCardViewManager$FragmentMode;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/incallui/SecTabletCallCardViewManager;->setViewInternal(ILcom/android/incallui/SecTabletView;Z)V

    :cond_0
    return-void

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/incallui/SecTabletCallCardViewManager;->getDefaultFragment(Ljava/lang/Enum;)Lcom/android/incallui/SecTabletCallCardView;

    move-result-object v1

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isEasyModeOn()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Lcom/android/incallui/SecTabletCallCardViewManager;->getEasyModeFragment(Ljava/lang/Enum;)Lcom/android/incallui/SecTabletCallCardView;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/incallui/SecTabletCallCardViewManager;->getDefaultFragment(Ljava/lang/Enum;)Lcom/android/incallui/SecTabletCallCardView;

    move-result-object v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

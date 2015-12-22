.class public Lcom/android/incallui/SecTabletVideoCallViewManager;
.super Lcom/android/incallui/SecTabletViewManager;
.source "SecTabletVideoCallViewManager.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallOrientationListener;
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/SecTabletVideoCallViewManager$1;,
        Lcom/android/incallui/SecTabletVideoCallViewManager$FragmentMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/SecTabletViewManager",
        "<",
        "Lcom/android/incallui/SecTabletVideoCallView;",
        ">;",
        "Lcom/android/incallui/InCallPresenter$InCallOrientationListener;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
        "Lcom/android/incallui/InCallPresenter$IncomingCallListener;"
    }
.end annotation


# instance fields
.field private mCurrentView:Lcom/android/incallui/SecTabletVideoCallView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/SecTabletViewManager;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    const-string v0, "SecTabletVideoCallViewManager"

    const-string v1, "SecTabletVideoCallViewManager..."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/incallui/SecTabletVideoCallViewManager;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecTabletVideoCallViewManager;->checkAndSet(Z)Lcom/android/incallui/SecTabletVideoCallView;

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


# virtual methods
.method protected checkAndSet(Z)Lcom/android/incallui/SecTabletVideoCallView;
    .locals 8

    const/4 v5, 0x0

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/BaseInCallComponent;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/BaseInCallComponent;

    move-result-object v6

    instance-of v6, v6, Lcom/android/incallui/SecTabletInCallService;

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/BaseInCallComponent;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SecTabletInCallService;

    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/SecTabletInCallService;->isFinishing()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/SecTabletInCallService;->isDestroyed()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    :goto_0
    return-object v5

    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v5, v7}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-static {v6}, Lcom/android/incallui/InCallUtils;->hasLiveCallToDisplay(Lcom/android/incallui/CallList;)Z

    move-result v2

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    const/16 v7, 0xa

    if-ne v6, v7, :cond_4

    if-eqz v2, :cond_3

    iget-object v5, p0, Lcom/android/incallui/SecTabletVideoCallViewManager;->mCurrentView:Lcom/android/incallui/SecTabletVideoCallView;

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/secui/SecCall;->isVideoCall()Z

    move-result v6

    if-nez v6, :cond_6

    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallViewManager;->removeCurrentView()V

    iput-object v5, p0, Lcom/android/incallui/SecTabletVideoCallViewManager;->mFragmentType:Ljava/lang/Enum;

    goto :goto_0

    :cond_6
    sget-object v3, Lcom/android/incallui/SecTabletVideoCallViewManager$FragmentMode;->QCIF_VIDEO:Lcom/android/incallui/SecTabletVideoCallViewManager$FragmentMode;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/secui/SecCall;->getVideoResolution()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :goto_1
    :pswitch_0
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSLandscapeConfCall()Z

    move-result v5

    if-eqz v5, :cond_7

    sget-object v3, Lcom/android/incallui/SecTabletVideoCallViewManager$FragmentMode;->CONF_VIDEO:Lcom/android/incallui/SecTabletVideoCallViewManager$FragmentMode;

    :cond_7
    if-nez p1, :cond_8

    iget-object v5, p0, Lcom/android/incallui/SecTabletVideoCallViewManager;->mFragmentType:Ljava/lang/Enum;

    if-eq v5, v3, :cond_9

    :cond_8
    invoke-virtual {p0, v3, p1}, Lcom/android/incallui/SecTabletVideoCallViewManager;->setView(Ljava/lang/Enum;Z)V

    iput-object v3, p0, Lcom/android/incallui/SecTabletVideoCallViewManager;->mFragmentType:Ljava/lang/Enum;

    :cond_9
    iget-object v5, p0, Lcom/android/incallui/SecTabletVideoCallViewManager;->mCurrentView:Lcom/android/incallui/SecTabletVideoCallView;

    goto :goto_0

    :pswitch_1
    sget-object v3, Lcom/android/incallui/SecTabletVideoCallViewManager$FragmentMode;->QCIF_VIDEO:Lcom/android/incallui/SecTabletVideoCallViewManager$FragmentMode;

    goto :goto_1

    :pswitch_2
    sget-object v3, Lcom/android/incallui/SecTabletVideoCallViewManager$FragmentMode;->VGA_VIDEO:Lcom/android/incallui/SecTabletVideoCallViewManager$FragmentMode;

    goto :goto_1

    :pswitch_3
    sget-object v3, Lcom/android/incallui/SecTabletVideoCallViewManager$FragmentMode;->QVGA_VIDEO:Lcom/android/incallui/SecTabletVideoCallViewManager$FragmentMode;

    goto :goto_1

    :pswitch_4
    sget-object v3, Lcom/android/incallui/SecTabletVideoCallViewManager$FragmentMode;->HD720_VIDEO:Lcom/android/incallui/SecTabletVideoCallViewManager$FragmentMode;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected getView()Lcom/android/incallui/SecTabletVideoCallView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallViewManager;->mCurrentView:Lcom/android/incallui/SecTabletVideoCallView;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/incallui/SecTabletViewManager;->onDestroy()V

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

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecTabletVideoCallViewManager;->checkAndSet(Z)Lcom/android/incallui/SecTabletVideoCallView;

    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/incallui/SecTabletVideoCallViewManager;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecTabletVideoCallViewManager;->checkAndSet(Z)Lcom/android/incallui/SecTabletVideoCallView;

    return-void
.end method

.method protected setCurrentView(Lcom/android/incallui/SecTabletVideoCallView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecTabletVideoCallViewManager;->mCurrentView:Lcom/android/incallui/SecTabletVideoCallView;

    return-void
.end method

.method protected bridge synthetic setCurrentView(Lcom/android/incallui/SecTabletView;)V
    .locals 0

    check-cast p1, Lcom/android/incallui/SecTabletVideoCallView;

    invoke-virtual {p0, p1}, Lcom/android/incallui/SecTabletVideoCallViewManager;->setCurrentView(Lcom/android/incallui/SecTabletVideoCallView;)V

    return-void
.end method

.method protected setView(Ljava/lang/Enum;Z)V
    .locals 4

    const v0, 0x7f1001e4

    const/4 v1, 0x0

    sget-object v2, Lcom/android/incallui/SecTabletVideoCallViewManager$1;->$SwitchMap$com$android$incallui$SecTabletVideoCallViewManager$FragmentMode:[I

    check-cast p1, Lcom/android/incallui/SecTabletVideoCallViewManager$FragmentMode;

    invoke-virtual {p1}, Lcom/android/incallui/SecTabletVideoCallViewManager$FragmentMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/incallui/SecTabletVideoCallViewManager;->setViewInternal(ILcom/android/incallui/SecTabletView;Z)V

    :cond_0
    return-void

    :pswitch_0
    new-instance v1, Lcom/android/incallui/SecTabletVideoCallQCIFView;

    iget-object v2, p0, Lcom/android/incallui/SecTabletVideoCallViewManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/incallui/SecTabletVideoCallQCIFView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_1
    const-string v2, "gui_kor_fragment"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v1, Lcom/android/incallui/SecTabletVideoCallVGAKorView;

    iget-object v2, p0, Lcom/android/incallui/SecTabletVideoCallViewManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/incallui/SecTabletVideoCallVGAKorView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/android/incallui/SecTabletVideoCallVGAView;

    iget-object v2, p0, Lcom/android/incallui/SecTabletVideoCallViewManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/incallui/SecTabletVideoCallVGAView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_2
    new-instance v1, Lcom/android/incallui/SecTabletVideoCallCONFView;

    iget-object v2, p0, Lcom/android/incallui/SecTabletVideoCallViewManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/incallui/SecTabletVideoCallCONFView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

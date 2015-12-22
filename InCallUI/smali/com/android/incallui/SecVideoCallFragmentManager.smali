.class public Lcom/android/incallui/SecVideoCallFragmentManager;
.super Lcom/android/incallui/BaseFragmentManager;
.source "SecVideoCallFragmentManager.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallOrientationListener;
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;
.implements Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/SecVideoCallFragmentManager$1;,
        Lcom/android/incallui/SecVideoCallFragmentManager$FragmentMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/BaseFragmentManager",
        "<",
        "Lcom/android/incallui/SecVideoCallFragment;",
        ">;",
        "Lcom/android/incallui/InCallPresenter$InCallOrientationListener;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
        "Lcom/android/incallui/InCallPresenter$IncomingCallListener;",
        "Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;"
    }
.end annotation


# instance fields
.field mCurrentFragment:Lcom/android/incallui/SecVideoCallFragment;


# direct methods
.method public constructor <init>(Lcom/android/incallui/SecInCallActivity;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/incallui/BaseFragmentManager;-><init>(Lcom/android/incallui/BaseInCallActivity;)V

    const-string v0, "SecVideoCallFragmentManager..."

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecVideoCallFragmentManager;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecVideoCallFragmentManager;->checkAndSet(Z)Lcom/android/incallui/SecVideoCallFragment;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addListenerOfManager(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addOrientationListener(Lcom/android/incallui/InCallPresenter$InCallOrientationListener;)V

    const-string v0, "support_mobile_keyboard"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addMobileKeyboardListener(Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected checkAndSet(Z)Lcom/android/incallui/SecVideoCallFragment;
    .locals 8

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v5, v7}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-static {v6}, Lcom/android/incallui/InCallUtils;->hasLiveCallToDisplay(Lcom/android/incallui/CallList;)Z

    move-result v1

    iget-object v6, p0, Lcom/android/incallui/SecVideoCallFragmentManager;->mInCallActivity:Lcom/android/incallui/BaseInCallActivity;

    invoke-virtual {v6}, Lcom/android/incallui/BaseInCallActivity;->isFinishing()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/incallui/SecVideoCallFragmentManager;->mInCallActivity:Lcom/android/incallui/BaseInCallActivity;

    invoke-virtual {v6}, Lcom/android/incallui/BaseInCallActivity;->isDestroyed()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return-object v5

    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    const/16 v7, 0xa

    if-ne v6, v7, :cond_3

    if-eqz v1, :cond_2

    iget-object v5, p0, Lcom/android/incallui/SecVideoCallFragmentManager;->mCurrentFragment:Lcom/android/incallui/SecVideoCallFragment;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/secui/SecCall;->isVideoCall()Z

    move-result v6

    if-nez v6, :cond_5

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallFragmentManager;->removeCurrentFragment()V

    iput-object v5, p0, Lcom/android/incallui/SecVideoCallFragmentManager;->mFragmentType:Ljava/lang/Enum;

    goto :goto_0

    :cond_5
    sget-object v2, Lcom/android/incallui/SecVideoCallFragmentManager$FragmentMode;->QCIF_VIDEO:Lcom/android/incallui/SecVideoCallFragmentManager$FragmentMode;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/secui/SecCall;->getVideoResolution()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_a

    sget-object v2, Lcom/android/incallui/SecVideoCallFragmentManager$FragmentMode;->QCIF_VIDEO:Lcom/android/incallui/SecVideoCallFragmentManager$FragmentMode;

    :cond_6
    :goto_1
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSLandscapeConfCall()Z

    move-result v5

    if-eqz v5, :cond_7

    sget-object v2, Lcom/android/incallui/SecVideoCallFragmentManager$FragmentMode;->CONF_VIDEO:Lcom/android/incallui/SecVideoCallFragmentManager$FragmentMode;

    :cond_7
    if-nez p1, :cond_8

    iget-object v5, p0, Lcom/android/incallui/SecVideoCallFragmentManager;->mFragmentType:Ljava/lang/Enum;

    if-eq v5, v2, :cond_9

    :cond_8
    const-string v5, "SecVideoCallFragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "requestedMode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2, p1}, Lcom/android/incallui/SecVideoCallFragmentManager;->setFragment(Ljava/lang/Enum;Z)V

    iput-object v2, p0, Lcom/android/incallui/SecVideoCallFragmentManager;->mFragmentType:Ljava/lang/Enum;

    :cond_9
    iget-object v5, p0, Lcom/android/incallui/SecVideoCallFragmentManager;->mCurrentFragment:Lcom/android/incallui/SecVideoCallFragment;

    goto :goto_0

    :cond_a
    const/4 v5, 0x3

    if-eq v4, v5, :cond_b

    const/4 v5, 0x4

    if-ne v4, v5, :cond_c

    :cond_b
    sget-object v2, Lcom/android/incallui/SecVideoCallFragmentManager$FragmentMode;->VGA_VIDEO:Lcom/android/incallui/SecVideoCallFragmentManager$FragmentMode;

    goto :goto_1

    :cond_c
    const/4 v5, 0x2

    if-ne v4, v5, :cond_e

    const-string v5, "gui_kor_fragment"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    sget-object v2, Lcom/android/incallui/SecVideoCallFragmentManager$FragmentMode;->QVGA_VIDEO:Lcom/android/incallui/SecVideoCallFragmentManager$FragmentMode;

    goto :goto_1

    :cond_d
    sget-object v2, Lcom/android/incallui/SecVideoCallFragmentManager$FragmentMode;->VGA_VIDEO:Lcom/android/incallui/SecVideoCallFragmentManager$FragmentMode;

    goto :goto_1

    :cond_e
    const/4 v5, 0x6

    if-ne v4, v5, :cond_6

    sget-object v2, Lcom/android/incallui/SecVideoCallFragmentManager$FragmentMode;->HD_VIDEO:Lcom/android/incallui/SecVideoCallFragmentManager$FragmentMode;

    goto :goto_1
.end method

.method protected bridge synthetic getFragment()Lcom/android/incallui/BaseFragment;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallFragmentManager;->getFragment()Lcom/android/incallui/SecVideoCallFragment;

    move-result-object v0

    return-object v0
.end method

.method protected getFragment()Lcom/android/incallui/SecVideoCallFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallFragmentManager;->mCurrentFragment:Lcom/android/incallui/SecVideoCallFragment;

    return-object v0
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/incallui/BaseFragmentManager;->onDestroy()V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListenerOfManager(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeOrientationListener(Lcom/android/incallui/InCallPresenter$InCallOrientationListener;)V

    const-string v0, "support_mobile_keyboard"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeMobileKeyboardListener(Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;)V

    :cond_0
    return-void
.end method

.method public onDeviceOrientationChanged(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecVideoCallFragmentManager;->checkAndSet(Z)Lcom/android/incallui/SecVideoCallFragment;

    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/incallui/SecVideoCallFragmentManager;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    return-void
.end method

.method public onMobileKeyboardChanged()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecVideoCallFragmentManager;->checkAndSet(Z)Lcom/android/incallui/SecVideoCallFragment;

    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecVideoCallFragmentManager;->checkAndSet(Z)Lcom/android/incallui/SecVideoCallFragment;

    return-void
.end method

.method protected bridge synthetic setCurrentFragment(Lcom/android/incallui/BaseFragment;)V
    .locals 0

    check-cast p1, Lcom/android/incallui/SecVideoCallFragment;

    invoke-virtual {p0, p1}, Lcom/android/incallui/SecVideoCallFragmentManager;->setCurrentFragment(Lcom/android/incallui/SecVideoCallFragment;)V

    return-void
.end method

.method protected setCurrentFragment(Lcom/android/incallui/SecVideoCallFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecVideoCallFragmentManager;->mCurrentFragment:Lcom/android/incallui/SecVideoCallFragment;

    return-void
.end method

.method protected setFragment(Ljava/lang/Enum;Z)V
    .locals 4

    const v0, 0x7f1001e4

    const/4 v1, 0x0

    sget-object v2, Lcom/android/incallui/SecVideoCallFragmentManager$1;->$SwitchMap$com$android$incallui$SecVideoCallFragmentManager$FragmentMode:[I

    check-cast p1, Lcom/android/incallui/SecVideoCallFragmentManager$FragmentMode;

    invoke-virtual {p1}, Lcom/android/incallui/SecVideoCallFragmentManager$FragmentMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/incallui/SecVideoCallFragmentManager;->setFragmentInternal(ILandroid/app/Fragment;Z)V

    :cond_0
    return-void

    :pswitch_0
    new-instance v1, Lcom/android/incallui/SecVideoCallQCIFFragment;

    invoke-direct {v1}, Lcom/android/incallui/SecVideoCallQCIFFragment;-><init>()V

    goto :goto_0

    :pswitch_1
    const-string v2, "gui_kor_fragment"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v1, Lcom/android/incallui/SecVideoCallVGAKorFragment;

    invoke-direct {v1}, Lcom/android/incallui/SecVideoCallVGAKorFragment;-><init>()V

    goto :goto_0

    :cond_1
    const-string v2, "gui_usa_fragment"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v1, Lcom/android/incallui/SecVideoCallVGAUsaFragment;

    invoke-direct {v1}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;-><init>()V

    goto :goto_0

    :cond_2
    const-string v2, "gui_jpn_fragment"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v1, Lcom/android/incallui/SecVideoCallVGAJpnFragment;

    invoke-direct {v1}, Lcom/android/incallui/SecVideoCallVGAJpnFragment;-><init>()V

    goto :goto_0

    :cond_3
    const-string v2, "gui_chn_fragment"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v1, Lcom/android/incallui/SecVideoCallVGAChnFragment;

    invoke-direct {v1}, Lcom/android/incallui/SecVideoCallVGAChnFragment;-><init>()V

    goto :goto_0

    :cond_4
    new-instance v1, Lcom/android/incallui/SecVideoCallVGAGlobalFragment;

    invoke-direct {v1}, Lcom/android/incallui/SecVideoCallVGAGlobalFragment;-><init>()V

    goto :goto_0

    :pswitch_2
    new-instance v1, Lcom/android/incallui/SecVideoCallQVGAKorFragment;

    invoke-direct {v1}, Lcom/android/incallui/SecVideoCallQVGAKorFragment;-><init>()V

    goto :goto_0

    :pswitch_3
    new-instance v1, Lcom/android/incallui/SecVideoCallHDGlobalFragment;

    invoke-direct {v1}, Lcom/android/incallui/SecVideoCallHDGlobalFragment;-><init>()V

    goto :goto_0

    :pswitch_4
    new-instance v1, Lcom/android/incallui/SecVideoCallCONFFragment;

    invoke-direct {v1}, Lcom/android/incallui/SecVideoCallCONFFragment;-><init>()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

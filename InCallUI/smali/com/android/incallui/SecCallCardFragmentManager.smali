.class public Lcom/android/incallui/SecCallCardFragmentManager;
.super Lcom/android/incallui/BaseFragmentManager;
.source "SecCallCardFragmentManager.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallOrientationListener;
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;
.implements Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;
.implements Lcom/android/incallui/InCallPresenter$OnehandAnyScreenOnListener;
.implements Lcom/android/incallui/InCallPresenter$OnehandModeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/SecCallCardFragmentManager$1;,
        Lcom/android/incallui/SecCallCardFragmentManager$FragmentMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/BaseFragmentManager",
        "<",
        "Lcom/android/incallui/SecCallCardFragment;",
        ">;",
        "Lcom/android/incallui/InCallPresenter$InCallOrientationListener;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
        "Lcom/android/incallui/InCallPresenter$IncomingCallListener;",
        "Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;",
        "Lcom/android/incallui/InCallPresenter$OnehandAnyScreenOnListener;",
        "Lcom/android/incallui/InCallPresenter$OnehandModeListener;"
    }
.end annotation


# instance fields
.field mCurrentFragment:Lcom/android/incallui/SecCallCardFragment;


# direct methods
.method public constructor <init>(Lcom/android/incallui/SecInCallActivity;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/incallui/BaseFragmentManager;-><init>(Lcom/android/incallui/BaseInCallActivity;)V

    const-string v0, "SecCallCardFragmentManager..."

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecCallCardFragmentManager;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecCallCardFragmentManager;->checkAndSet(Z)Lcom/android/incallui/SecCallCardFragment;

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
    const-string v0, "support_onehand_operation"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addOnehandModeListener(Lcom/android/incallui/InCallPresenter$OnehandModeListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addOnehandAnyScreenOnListener(Lcom/android/incallui/InCallPresenter$OnehandAnyScreenOnListener;)V

    :cond_1
    return-void
.end method

.method private getDefaultFragment(Ljava/lang/Enum;)Landroid/app/Fragment;
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/android/incallui/SecCallCardFragmentManager$1;->$SwitchMap$com$android$incallui$SecCallCardFragmentManager$FragmentMode:[I

    check-cast p1, Lcom/android/incallui/SecCallCardFragmentManager$FragmentMode;

    invoke-virtual {p1}, Lcom/android/incallui/SecCallCardFragmentManager$FragmentMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/android/incallui/SecVoiceCallCardFragment;

    invoke-direct {v0}, Lcom/android/incallui/SecVoiceCallCardFragment;-><init>()V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/android/incallui/SecVideoCallCardQCIFFragment;

    invoke-direct {v0}, Lcom/android/incallui/SecVideoCallCardQCIFFragment;-><init>()V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/android/incallui/SecVideoCallCardVGAFragment;

    invoke-direct {v0}, Lcom/android/incallui/SecVideoCallCardVGAFragment;-><init>()V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/android/incallui/SecVideoCallCardCONFFragment;

    invoke-direct {v0}, Lcom/android/incallui/SecVideoCallCardCONFFragment;-><init>()V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/android/incallui/SecVideoCallCardHDFragment;

    invoke-direct {v0}, Lcom/android/incallui/SecVideoCallCardHDFragment;-><init>()V

    goto :goto_0

    :pswitch_5
    new-instance v0, Lcom/android/incallui/SecMultiPartyCallCardFragment;

    invoke-direct {v0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;-><init>()V

    goto :goto_0

    :pswitch_6
    new-instance v0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;

    invoke-direct {v0}, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;-><init>()V

    goto :goto_0

    :pswitch_7
    new-instance v0, Lcom/android/incallui/SecIMSConferenceCallCardFragment;

    invoke-direct {v0}, Lcom/android/incallui/SecIMSConferenceCallCardFragment;-><init>()V

    goto :goto_0

    :pswitch_8
    new-instance v0, Lcom/android/incallui/SecInCallCardEmptyFragment;

    invoke-direct {v0}, Lcom/android/incallui/SecInCallCardEmptyFragment;-><init>()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getEasyModeFragment(Ljava/lang/Enum;)Landroid/app/Fragment;
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/android/incallui/SecCallCardFragmentManager$1;->$SwitchMap$com$android$incallui$SecCallCardFragmentManager$FragmentMode:[I

    check-cast p1, Lcom/android/incallui/SecCallCardFragmentManager$FragmentMode;

    invoke-virtual {p1}, Lcom/android/incallui/SecCallCardFragmentManager$FragmentMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/android/incallui/SecEasyVideoCallCardQCIFFragment;

    invoke-direct {v0}, Lcom/android/incallui/SecEasyVideoCallCardQCIFFragment;-><init>()V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/android/incallui/SecVideoCallCardVGAFragment;

    invoke-direct {v0}, Lcom/android/incallui/SecVideoCallCardVGAFragment;-><init>()V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/android/incallui/SecEasyVideoCallCardCONFFragment;

    invoke-direct {v0}, Lcom/android/incallui/SecEasyVideoCallCardCONFFragment;-><init>()V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/android/incallui/SecVideoCallCardHDFragment;

    invoke-direct {v0}, Lcom/android/incallui/SecVideoCallCardHDFragment;-><init>()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected checkAndSet(Z)Lcom/android/incallui/SecCallCardFragment;
    .locals 10

    const/4 v6, 0x0

    const/16 v9, 0xa

    iget-object v7, p0, Lcom/android/incallui/SecCallCardFragmentManager;->mInCallActivity:Lcom/android/incallui/BaseInCallActivity;

    invoke-virtual {v7}, Lcom/android/incallui/BaseInCallActivity;->isFinishing()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/incallui/SecCallCardFragmentManager;->mInCallActivity:Lcom/android/incallui/BaseInCallActivity;

    invoke-virtual {v7}, Lcom/android/incallui/BaseInCallActivity;->isDestroyed()Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    :goto_0
    return-object v6

    :cond_1
    sget-object v3, Lcom/android/incallui/SecCallCardFragmentManager$FragmentMode;->VOICE:Lcom/android/incallui/SecCallCardFragmentManager$FragmentMode;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    invoke-static {v7}, Lcom/android/incallui/InCallUtils;->hasLiveCallToDisplay(Lcom/android/incallui/CallList;)Z

    move-result v1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v6, v8}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    if-ne v6, v9, :cond_2

    if-eqz v1, :cond_2

    iget-object v6, p0, Lcom/android/incallui/SecCallCardFragmentManager;->mCurrentFragment:Lcom/android/incallui/SecCallCardFragment;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/secui/SecCall;->isVideoCall()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v4}, Lcom/android/incallui/secui/SecCall;->getVideoResolution()I

    move-result v5

    invoke-static {}, Lcom/android/incallui/InCallUtils;->needToShowMultiparty()Z

    move-result v6

    if-eqz v6, :cond_7

    sget-object v3, Lcom/android/incallui/SecCallCardFragmentManager$FragmentMode;->MULTIPARTY_VIDEO:Lcom/android/incallui/SecCallCardFragmentManager$FragmentMode;

    :cond_3
    :goto_1
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSLandscapeConfCall()Z

    move-result v6

    if-eqz v6, :cond_4

    sget-object v3, Lcom/android/incallui/SecCallCardFragmentManager$FragmentMode;->CONF_VIDEO:Lcom/android/incallui/SecCallCardFragmentManager$FragmentMode;

    :cond_4
    const-string v6, "support_mobilecarrier"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isCarrierPhoneMode()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->getCallType(Lcom/android/incallui/Call;)I

    move-result v6

    if-eqz v6, :cond_5

    if-nez v1, :cond_6

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    if-ne v6, v9, :cond_6

    :cond_5
    sget-object v3, Lcom/android/incallui/SecCallCardFragmentManager$FragmentMode;->EMPTY:Lcom/android/incallui/SecCallCardFragmentManager$FragmentMode;

    :cond_6
    iget-object v6, p0, Lcom/android/incallui/SecCallCardFragmentManager;->mFragmentType:Ljava/lang/Enum;

    sget-object v7, Lcom/android/incallui/SecCallCardFragmentManager$FragmentMode;->MULTIPARTY:Lcom/android/incallui/SecCallCardFragmentManager$FragmentMode;

    if-ne v6, v7, :cond_e

    sget-object v6, Lcom/android/incallui/SecCallCardFragmentManager$FragmentMode;->VOICE:Lcom/android/incallui/SecCallCardFragmentManager$FragmentMode;

    if-ne v3, v6, :cond_e

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/CallList;->emptyNotUpdatingCall()Z

    move-result v6

    if-nez v6, :cond_e

    const-string v6, "SecCallCardFragmentManager... do not change"

    invoke-virtual {p0, v6}, Lcom/android/incallui/SecCallCardFragmentManager;->log(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/incallui/SecCallCardFragmentManager;->mCurrentFragment:Lcom/android/incallui/SecCallCardFragment;

    goto :goto_0

    :cond_7
    const/4 v6, 0x1

    if-ne v5, v6, :cond_8

    sget-object v3, Lcom/android/incallui/SecCallCardFragmentManager$FragmentMode;->QCIF_VIDEO:Lcom/android/incallui/SecCallCardFragmentManager$FragmentMode;

    goto :goto_1

    :cond_8
    const/4 v6, 0x3

    if-eq v5, v6, :cond_9

    const/4 v6, 0x4

    if-ne v5, v6, :cond_a

    :cond_9
    sget-object v3, Lcom/android/incallui/SecCallCardFragmentManager$FragmentMode;->VGA_VIDEO:Lcom/android/incallui/SecCallCardFragmentManager$FragmentMode;

    goto :goto_1

    :cond_a
    const/4 v6, 0x2

    if-ne v5, v6, :cond_b

    sget-object v3, Lcom/android/incallui/SecCallCardFragmentManager$FragmentMode;->VGA_VIDEO:Lcom/android/incallui/SecCallCardFragmentManager$FragmentMode;

    goto :goto_1

    :cond_b
    const/4 v6, 0x6

    if-ne v5, v6, :cond_3

    sget-object v3, Lcom/android/incallui/SecCallCardFragmentManager$FragmentMode;->HD_VIDEO:Lcom/android/incallui/SecCallCardFragmentManager$FragmentMode;

    goto :goto_1

    :cond_c
    invoke-static {}, Lcom/android/incallui/InCallUtils;->needToShowMultiparty()Z

    move-result v6

    if-eqz v6, :cond_d

    sget-object v3, Lcom/android/incallui/SecCallCardFragmentManager$FragmentMode;->MULTIPARTY:Lcom/android/incallui/SecCallCardFragmentManager$FragmentMode;

    goto :goto_1

    :cond_d
    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isIMSConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "ims_voice_conference_cmcc_tbd"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    sget-object v3, Lcom/android/incallui/SecCallCardFragmentManager$FragmentMode;->IMS_CONFERENCE:Lcom/android/incallui/SecCallCardFragmentManager$FragmentMode;

    goto :goto_1

    :cond_e
    if-nez p1, :cond_f

    iget-object v6, p0, Lcom/android/incallui/SecCallCardFragmentManager;->mFragmentType:Ljava/lang/Enum;

    if-eq v6, v3, :cond_10

    :cond_f
    invoke-virtual {p0, v3, p1}, Lcom/android/incallui/SecCallCardFragmentManager;->setFragment(Ljava/lang/Enum;Z)V

    iput-object v3, p0, Lcom/android/incallui/SecCallCardFragmentManager;->mFragmentType:Ljava/lang/Enum;

    :cond_10
    iget-object v6, p0, Lcom/android/incallui/SecCallCardFragmentManager;->mCurrentFragment:Lcom/android/incallui/SecCallCardFragment;

    goto/16 :goto_0
.end method

.method protected bridge synthetic getFragment()Lcom/android/incallui/BaseFragment;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/SecCallCardFragmentManager;->getFragment()Lcom/android/incallui/SecCallCardFragment;

    move-result-object v0

    return-object v0
.end method

.method protected getFragment()Lcom/android/incallui/SecCallCardFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecCallCardFragmentManager;->mCurrentFragment:Lcom/android/incallui/SecCallCardFragment;

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
    const-string v0, "support_onehand_operation"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeOnehandModeListener(Lcom/android/incallui/InCallPresenter$OnehandModeListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeOnehandAnyScreenOnListener(Lcom/android/incallui/InCallPresenter$OnehandAnyScreenOnListener;)V

    :cond_1
    return-void
.end method

.method public onDeviceOrientationChanged(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecCallCardFragmentManager;->checkAndSet(Z)Lcom/android/incallui/SecCallCardFragment;

    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/incallui/SecCallCardFragmentManager;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    return-void
.end method

.method public onMobileKeyboardChanged()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecCallCardFragmentManager;->checkAndSet(Z)Lcom/android/incallui/SecCallCardFragment;

    return-void
.end method

.method public onOnehandAnyScreenOnChanged()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecCallCardFragmentManager;->checkAndSet(Z)Lcom/android/incallui/SecCallCardFragment;

    return-void
.end method

.method public onOnehandModeChanged()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecCallCardFragmentManager;->checkAndSet(Z)Lcom/android/incallui/SecCallCardFragment;

    return-void
.end method

.method public onSMultiWindowOnChanged()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecCallCardFragmentManager;->checkAndSet(Z)Lcom/android/incallui/SecCallCardFragment;

    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecCallCardFragmentManager;->checkAndSet(Z)Lcom/android/incallui/SecCallCardFragment;

    return-void
.end method

.method protected bridge synthetic setCurrentFragment(Lcom/android/incallui/BaseFragment;)V
    .locals 0

    check-cast p1, Lcom/android/incallui/SecCallCardFragment;

    invoke-virtual {p0, p1}, Lcom/android/incallui/SecCallCardFragmentManager;->setCurrentFragment(Lcom/android/incallui/SecCallCardFragment;)V

    return-void
.end method

.method protected setCurrentFragment(Lcom/android/incallui/SecCallCardFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecCallCardFragmentManager;->mCurrentFragment:Lcom/android/incallui/SecCallCardFragment;

    return-void
.end method

.method protected setFragment(Ljava/lang/Enum;Z)V
    .locals 4

    const v0, 0x7f1001e6

    const/4 v1, 0x0

    sget-object v3, Lcom/android/incallui/SecCallCardFragmentManager$1;->$SwitchMap$com$android$incallui$SecCallCardFragmentManager$FragmentMode:[I

    move-object v2, p1

    check-cast v2, Lcom/android/incallui/SecCallCardFragmentManager$FragmentMode;

    invoke-virtual {v2}, Lcom/android/incallui/SecCallCardFragmentManager$FragmentMode;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/incallui/SecCallCardFragmentManager;->setFragmentInternal(ILandroid/app/Fragment;Z)V

    :cond_0
    return-void

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/incallui/SecCallCardFragmentManager;->getDefaultFragment(Ljava/lang/Enum;)Landroid/app/Fragment;

    move-result-object v1

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isEasyModeOn()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Lcom/android/incallui/SecCallCardFragmentManager;->getEasyModeFragment(Ljava/lang/Enum;)Landroid/app/Fragment;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/incallui/SecCallCardFragmentManager;->getDefaultFragment(Ljava/lang/Enum;)Landroid/app/Fragment;

    move-result-object v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
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

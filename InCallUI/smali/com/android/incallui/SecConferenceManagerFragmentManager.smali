.class public Lcom/android/incallui/SecConferenceManagerFragmentManager;
.super Lcom/android/incallui/BaseFragmentManager;
.source "SecConferenceManagerFragmentManager.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallOrientationListener;
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/SecConferenceManagerFragmentManager$1;,
        Lcom/android/incallui/SecConferenceManagerFragmentManager$FragmentMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/BaseFragmentManager",
        "<",
        "Lcom/android/incallui/SecConferenceManagerFragment;",
        ">;",
        "Lcom/android/incallui/InCallPresenter$InCallOrientationListener;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
        "Lcom/android/incallui/InCallPresenter$IncomingCallListener;"
    }
.end annotation


# instance fields
.field mCurrentFragment:Lcom/android/incallui/SecConferenceManagerFragment;


# direct methods
.method public constructor <init>(Lcom/android/incallui/SecInCallActivity;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/incallui/BaseFragmentManager;-><init>(Lcom/android/incallui/BaseInCallActivity;)V

    const-string v0, "SecConferenceManagerFragmentManager..."

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecConferenceManagerFragmentManager;->log(Ljava/lang/String;)V

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
.method protected checkAndSet(Z)Lcom/android/incallui/SecConferenceManagerFragment;
    .locals 5

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/incallui/SecConferenceManagerFragmentManager;->mInCallActivity:Lcom/android/incallui/BaseInCallActivity;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/SecConferenceManagerFragmentManager;->mInCallActivity:Lcom/android/incallui/BaseInCallActivity;

    invoke-virtual {v2}, Lcom/android/incallui/BaseInCallActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecConferenceManagerFragmentManager;->mInCallActivity:Lcom/android/incallui/BaseInCallActivity;

    invoke-virtual {v2}, Lcom/android/incallui/BaseInCallActivity;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object v2, v3

    :goto_0
    return-object v2

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSConferenceCMCCUIDisplay()Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isIMSConferenceCMCCUIDisplay:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSConferenceCMCCUIDisplay()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/incallui/SecConferenceManagerFragmentManager;->log(Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v4, 0x4

    if-eq v2, v4, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_6

    :cond_3
    iget-object v2, p0, Lcom/android/incallui/SecConferenceManagerFragmentManager;->mInCallActivity:Lcom/android/incallui/BaseInCallActivity;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/SecConferenceManagerFragmentManager;->mInCallActivity:Lcom/android/incallui/BaseInCallActivity;

    instance-of v2, v2, Lcom/android/incallui/SecInCallActivity;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/SecConferenceManagerFragmentManager;->mInCallActivity:Lcom/android/incallui/BaseInCallActivity;

    check-cast v2, Lcom/android/incallui/SecInCallActivity;

    invoke-virtual {v2}, Lcom/android/incallui/SecInCallActivity;->dismissInCallMenu()V

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerFragmentManager;->removeCurrentFragment()V

    iput-object v3, p0, Lcom/android/incallui/SecConferenceManagerFragmentManager;->mFragmentType:Ljava/lang/Enum;

    move-object v2, v3

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->hasConferenceCall()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerFragmentManager;->removeCurrentFragment()V

    iput-object v3, p0, Lcom/android/incallui/SecConferenceManagerFragmentManager;->mFragmentType:Ljava/lang/Enum;

    move-object v2, v3

    goto :goto_0

    :cond_6
    sget-object v1, Lcom/android/incallui/SecConferenceManagerFragmentManager$FragmentMode;->DEFAULT:Lcom/android/incallui/SecConferenceManagerFragmentManager$FragmentMode;

    const-string v2, "gui_usa_fragment"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/secui/SecCall;->isVideoCall()Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v1, Lcom/android/incallui/SecConferenceManagerFragmentManager$FragmentMode;->DEFAULT_VIDEO:Lcom/android/incallui/SecConferenceManagerFragmentManager$FragmentMode;

    :cond_7
    const-string v2, "ims_voice_conference_cmcc_tbd"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz v0, :cond_8

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isIMSConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v1, Lcom/android/incallui/SecConferenceManagerFragmentManager$FragmentMode;->IMS_CONFERENCE:Lcom/android/incallui/SecConferenceManagerFragmentManager$FragmentMode;

    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SecConferenceManagerFragment:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/incallui/SecConferenceManagerFragmentManager;->log(Ljava/lang/String;)V

    if-nez p1, :cond_9

    iget-object v2, p0, Lcom/android/incallui/SecConferenceManagerFragmentManager;->mFragmentType:Ljava/lang/Enum;

    if-eq v2, v1, :cond_a

    :cond_9
    invoke-virtual {p0, v1, p1}, Lcom/android/incallui/SecConferenceManagerFragmentManager;->setFragment(Ljava/lang/Enum;Z)V

    iput-object v1, p0, Lcom/android/incallui/SecConferenceManagerFragmentManager;->mFragmentType:Ljava/lang/Enum;

    :cond_a
    iget-object v2, p0, Lcom/android/incallui/SecConferenceManagerFragmentManager;->mCurrentFragment:Lcom/android/incallui/SecConferenceManagerFragment;

    goto/16 :goto_0
.end method

.method protected bridge synthetic getFragment()Lcom/android/incallui/BaseFragment;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerFragmentManager;->getFragment()Lcom/android/incallui/SecConferenceManagerFragment;

    move-result-object v0

    return-object v0
.end method

.method protected getFragment()Lcom/android/incallui/SecConferenceManagerFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecConferenceManagerFragmentManager;->mCurrentFragment:Lcom/android/incallui/SecConferenceManagerFragment;

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

    return-void
.end method

.method public onDeviceOrientationChanged(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecConferenceManagerFragmentManager;->checkAndSet(Z)Lcom/android/incallui/SecConferenceManagerFragment;

    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/incallui/SecConferenceManagerFragmentManager;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    return-void
.end method

.method public onSMultiWindowOnChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecConferenceManagerFragmentManager;->mInCallActivity:Lcom/android/incallui/BaseInCallActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecConferenceManagerFragmentManager;->mInCallActivity:Lcom/android/incallui/BaseInCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/BaseInCallActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecConferenceManagerFragmentManager;->mInCallActivity:Lcom/android/incallui/BaseInCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/BaseInCallActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerFragmentManager;->getFragment()Lcom/android/incallui/SecConferenceManagerFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerFragmentManager;->getFragment()Lcom/android/incallui/SecConferenceManagerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/SecConferenceManagerFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerFragmentManager;->getFragment()Lcom/android/incallui/SecConferenceManagerFragment;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecConferenceManagerFragment;->setVisible(Z)V

    goto :goto_0
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecConferenceManagerFragmentManager;->checkAndSet(Z)Lcom/android/incallui/SecConferenceManagerFragment;

    return-void
.end method

.method protected bridge synthetic setCurrentFragment(Lcom/android/incallui/BaseFragment;)V
    .locals 0

    check-cast p1, Lcom/android/incallui/SecConferenceManagerFragment;

    invoke-virtual {p0, p1}, Lcom/android/incallui/SecConferenceManagerFragmentManager;->setCurrentFragment(Lcom/android/incallui/SecConferenceManagerFragment;)V

    return-void
.end method

.method protected setCurrentFragment(Lcom/android/incallui/SecConferenceManagerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecConferenceManagerFragmentManager;->mCurrentFragment:Lcom/android/incallui/SecConferenceManagerFragment;

    return-void
.end method

.method protected setFragment(Ljava/lang/Enum;Z)V
    .locals 4

    const v0, 0x7f1001e7

    const/4 v1, 0x0

    sget-object v2, Lcom/android/incallui/SecConferenceManagerFragmentManager$1;->$SwitchMap$com$android$incallui$SecConferenceManagerFragmentManager$FragmentMode:[I

    check-cast p1, Lcom/android/incallui/SecConferenceManagerFragmentManager$FragmentMode;

    invoke-virtual {p1}, Lcom/android/incallui/SecConferenceManagerFragmentManager$FragmentMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/incallui/SecConferenceManagerFragmentManager;->setFragmentInternal(ILandroid/app/Fragment;Z)V

    :cond_0
    return-void

    :pswitch_0
    new-instance v1, Lcom/android/incallui/SecConferenceManagerCsFragment;

    invoke-direct {v1}, Lcom/android/incallui/SecConferenceManagerCsFragment;-><init>()V

    goto :goto_0

    :pswitch_1
    new-instance v1, Lcom/android/incallui/SecConferenceManagerVideoFragment;

    invoke-direct {v1}, Lcom/android/incallui/SecConferenceManagerVideoFragment;-><init>()V

    goto :goto_0

    :pswitch_2
    new-instance v1, Lcom/android/incallui/SecConferenceManagerIMSFragment;

    invoke-direct {v1}, Lcom/android/incallui/SecConferenceManagerIMSFragment;-><init>()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

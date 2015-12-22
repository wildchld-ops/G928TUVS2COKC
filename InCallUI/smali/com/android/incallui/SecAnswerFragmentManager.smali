.class public Lcom/android/incallui/SecAnswerFragmentManager;
.super Lcom/android/incallui/BaseFragmentManager;
.source "SecAnswerFragmentManager.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallOrientationListener;
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/SecAnswerFragmentManager$1;,
        Lcom/android/incallui/SecAnswerFragmentManager$FragmentMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/BaseFragmentManager",
        "<",
        "Lcom/android/incallui/SecAnswerFragment;",
        ">;",
        "Lcom/android/incallui/InCallPresenter$InCallOrientationListener;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
        "Lcom/android/incallui/InCallPresenter$IncomingCallListener;"
    }
.end annotation


# instance fields
.field mCurrentFragment:Lcom/android/incallui/SecAnswerFragment;


# direct methods
.method public constructor <init>(Lcom/android/incallui/SecInCallActivity;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/incallui/BaseFragmentManager;-><init>(Lcom/android/incallui/BaseInCallActivity;)V

    const-string v0, "SecAnswerFragmentManager..."

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecAnswerFragmentManager;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecAnswerFragmentManager;->checkAndSet(Z)Lcom/android/incallui/SecAnswerFragment;

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
.method protected checkAndSet(Z)Lcom/android/incallui/SecAnswerFragment;
    .locals 8

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/incallui/SecAnswerFragmentManager;->mInCallActivity:Lcom/android/incallui/BaseInCallActivity;

    invoke-virtual {v6}, Lcom/android/incallui/BaseInCallActivity;->isFinishing()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/incallui/SecAnswerFragmentManager;->mInCallActivity:Lcom/android/incallui/BaseInCallActivity;

    invoke-virtual {v6}, Lcom/android/incallui/BaseInCallActivity;->isDestroyed()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return-object v5

    :cond_1
    const/4 v1, 0x0

    const-string v6, "automatic_answering_machine"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v6

    sget-object v7, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v6, v7, :cond_3

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/SecAnswerFragmentManager;->removeCurrentFragment()V

    iput-object v5, p0, Lcom/android/incallui/SecAnswerFragmentManager;->mFragmentType:Ljava/lang/Enum;

    goto :goto_0

    :cond_3
    sget-object v4, Lcom/android/incallui/SecAnswerFragmentManager$FragmentMode;->DEFAULT:Lcom/android/incallui/SecAnswerFragmentManager$FragmentMode;

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v5, "incoming_call_widget_for_volte"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->getCallType(Lcom/android/incallui/Call;)I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_9

    const/4 v2, 0x1

    :cond_4
    :goto_1
    const-string v5, "ui_for_chn"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "ui_for_hktw"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    :cond_5
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v5

    if-eqz v5, :cond_a

    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_c

    sget-object v4, Lcom/android/incallui/SecAnswerFragmentManager$FragmentMode;->EASY_MODE:Lcom/android/incallui/SecAnswerFragmentManager$FragmentMode;

    :cond_6
    :goto_3
    if-nez p1, :cond_7

    iget-object v5, p0, Lcom/android/incallui/SecAnswerFragmentManager;->mFragmentType:Ljava/lang/Enum;

    if-eq v5, v4, :cond_8

    :cond_7
    invoke-virtual {p0, v4, p1}, Lcom/android/incallui/SecAnswerFragmentManager;->setFragment(Ljava/lang/Enum;Z)V

    iput-object v4, p0, Lcom/android/incallui/SecAnswerFragmentManager;->mFragmentType:Ljava/lang/Enum;

    :cond_8
    iget-object v5, p0, Lcom/android/incallui/SecAnswerFragmentManager;->mCurrentFragment:Lcom/android/incallui/SecAnswerFragment;

    goto :goto_0

    :cond_9
    const/4 v2, 0x0

    goto :goto_1

    :cond_a
    const-string v5, "not_support_easy_incoming_widget"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    const/4 v3, 0x0

    goto :goto_2

    :cond_b
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v3

    goto :goto_2

    :cond_c
    if-eqz v2, :cond_6

    sget-object v4, Lcom/android/incallui/SecAnswerFragmentManager$FragmentMode;->VOLTE_VT:Lcom/android/incallui/SecAnswerFragmentManager$FragmentMode;

    goto :goto_3
.end method

.method protected bridge synthetic getFragment()Lcom/android/incallui/BaseFragment;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/SecAnswerFragmentManager;->getFragment()Lcom/android/incallui/SecAnswerFragment;

    move-result-object v0

    return-object v0
.end method

.method protected getFragment()Lcom/android/incallui/SecAnswerFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecAnswerFragmentManager;->mCurrentFragment:Lcom/android/incallui/SecAnswerFragment;

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

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecAnswerFragmentManager;->checkAndSet(Z)Lcom/android/incallui/SecAnswerFragment;

    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/incallui/SecAnswerFragmentManager;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecAnswerFragmentManager;->checkAndSet(Z)Lcom/android/incallui/SecAnswerFragment;

    return-void
.end method

.method protected bridge synthetic setCurrentFragment(Lcom/android/incallui/BaseFragment;)V
    .locals 0

    check-cast p1, Lcom/android/incallui/SecAnswerFragment;

    invoke-virtual {p0, p1}, Lcom/android/incallui/SecAnswerFragmentManager;->setCurrentFragment(Lcom/android/incallui/SecAnswerFragment;)V

    return-void
.end method

.method protected setCurrentFragment(Lcom/android/incallui/SecAnswerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecAnswerFragmentManager;->mCurrentFragment:Lcom/android/incallui/SecAnswerFragment;

    return-void
.end method

.method protected setFragment(Ljava/lang/Enum;Z)V
    .locals 4

    const v0, 0x7f1001e9

    const/4 v1, 0x0

    sget-object v2, Lcom/android/incallui/SecAnswerFragmentManager$1;->$SwitchMap$com$android$incallui$SecAnswerFragmentManager$FragmentMode:[I

    check-cast p1, Lcom/android/incallui/SecAnswerFragmentManager$FragmentMode;

    invoke-virtual {p1}, Lcom/android/incallui/SecAnswerFragmentManager$FragmentMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    new-instance v1, Lcom/android/incallui/SecAnswerImageFragment;

    invoke-direct {v1}, Lcom/android/incallui/SecAnswerImageFragment;-><init>()V

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/incallui/SecAnswerFragmentManager;->setFragmentInternal(ILandroid/app/Fragment;Z)V

    :cond_0
    return-void

    :pswitch_0
    new-instance v1, Lcom/android/incallui/SecAnswerGlowPadFragment;

    invoke-direct {v1}, Lcom/android/incallui/SecAnswerGlowPadFragment;-><init>()V

    goto :goto_0

    :pswitch_1
    new-instance v1, Lcom/android/incallui/SecAnswerVolteVtFragment;

    invoke-direct {v1}, Lcom/android/incallui/SecAnswerVolteVtFragment;-><init>()V

    goto :goto_0

    :pswitch_2
    new-instance v1, Lcom/android/incallui/SecEasyAnswerImageFragment;

    invoke-direct {v1}, Lcom/android/incallui/SecEasyAnswerImageFragment;-><init>()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

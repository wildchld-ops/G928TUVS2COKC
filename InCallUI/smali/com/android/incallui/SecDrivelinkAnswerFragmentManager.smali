.class public Lcom/android/incallui/SecDrivelinkAnswerFragmentManager;
.super Lcom/android/incallui/BaseFragmentManager;
.source "SecDrivelinkAnswerFragmentManager.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/SecDrivelinkAnswerFragmentManager$1;,
        Lcom/android/incallui/SecDrivelinkAnswerFragmentManager$FragmentMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/BaseFragmentManager",
        "<",
        "Lcom/android/incallui/SecAnswerFragment;",
        ">;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
        "Lcom/android/incallui/InCallPresenter$IncomingCallListener;"
    }
.end annotation


# instance fields
.field mCurrentFragment:Lcom/android/incallui/SecAnswerFragment;


# direct methods
.method public constructor <init>(Lcom/android/incallui/SecDrivelinkInCallActivity;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/incallui/BaseFragmentManager;-><init>(Lcom/android/incallui/BaseInCallActivity;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecDrivelinkAnswerFragmentManager;->checkAndSet(Z)Lcom/android/incallui/SecAnswerFragment;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addListenerOfManager(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    return-void
.end method


# virtual methods
.method protected checkAndSet(Z)Lcom/android/incallui/SecAnswerFragment;
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/incallui/SecDrivelinkAnswerFragmentManager;->mInCallActivity:Lcom/android/incallui/BaseInCallActivity;

    invoke-virtual {v3}, Lcom/android/incallui/BaseInCallActivity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/SecDrivelinkAnswerFragmentManager;->mInCallActivity:Lcom/android/incallui/BaseInCallActivity;

    invoke-virtual {v3}, Lcom/android/incallui/BaseInCallActivity;->isDestroyed()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v0

    if-nez p1, :cond_2

    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v0, v3, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/SecDrivelinkAnswerFragmentManager;->removeCurrentFragment()V

    iput-object v2, p0, Lcom/android/incallui/SecDrivelinkAnswerFragmentManager;->mFragmentType:Ljava/lang/Enum;

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/android/incallui/SecDrivelinkAnswerFragmentManager$FragmentMode;->EMPTY:Lcom/android/incallui/SecDrivelinkAnswerFragmentManager$FragmentMode;

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCarModeOn()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCarModeNaviOn()Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v1, Lcom/android/incallui/SecDrivelinkAnswerFragmentManager$FragmentMode;->DRIVELINK_MW:Lcom/android/incallui/SecDrivelinkAnswerFragmentManager$FragmentMode;

    :cond_3
    :goto_1
    const-string v2, "SecDrivelinkAnswerFragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkAndSet : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/SecDrivelinkAnswerFragmentManager;->mFragmentType:Ljava/lang/Enum;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " when "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter$InCallState;->whatIs()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez p1, :cond_4

    iget-object v2, p0, Lcom/android/incallui/SecDrivelinkAnswerFragmentManager;->mFragmentType:Ljava/lang/Enum;

    if-eq v2, v1, :cond_5

    :cond_4
    invoke-virtual {p0, v1, p1}, Lcom/android/incallui/SecDrivelinkAnswerFragmentManager;->setFragment(Ljava/lang/Enum;Z)V

    iput-object v1, p0, Lcom/android/incallui/SecDrivelinkAnswerFragmentManager;->mFragmentType:Ljava/lang/Enum;

    :cond_5
    iget-object v2, p0, Lcom/android/incallui/SecDrivelinkAnswerFragmentManager;->mCurrentFragment:Lcom/android/incallui/SecAnswerFragment;

    goto :goto_0

    :cond_6
    sget-object v1, Lcom/android/incallui/SecDrivelinkAnswerFragmentManager$FragmentMode;->DRIVELINK:Lcom/android/incallui/SecDrivelinkAnswerFragmentManager$FragmentMode;

    goto :goto_1

    :cond_7
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isMirrorLinkModeOn()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v1, Lcom/android/incallui/SecDrivelinkAnswerFragmentManager$FragmentMode;->MIRRORLINK:Lcom/android/incallui/SecDrivelinkAnswerFragmentManager$FragmentMode;

    goto :goto_1
.end method

.method protected bridge synthetic getFragment()Lcom/android/incallui/BaseFragment;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/SecDrivelinkAnswerFragmentManager;->getFragment()Lcom/android/incallui/SecAnswerFragment;

    move-result-object v0

    return-object v0
.end method

.method protected getFragment()Lcom/android/incallui/SecAnswerFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecDrivelinkAnswerFragmentManager;->mCurrentFragment:Lcom/android/incallui/SecAnswerFragment;

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

    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/incallui/SecDrivelinkAnswerFragmentManager;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecDrivelinkAnswerFragmentManager;->checkAndSet(Z)Lcom/android/incallui/SecAnswerFragment;

    return-void
.end method

.method protected bridge synthetic setCurrentFragment(Lcom/android/incallui/BaseFragment;)V
    .locals 0

    check-cast p1, Lcom/android/incallui/SecAnswerFragment;

    invoke-virtual {p0, p1}, Lcom/android/incallui/SecDrivelinkAnswerFragmentManager;->setCurrentFragment(Lcom/android/incallui/SecAnswerFragment;)V

    return-void
.end method

.method protected setCurrentFragment(Lcom/android/incallui/SecAnswerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecDrivelinkAnswerFragmentManager;->mCurrentFragment:Lcom/android/incallui/SecAnswerFragment;

    return-void
.end method

.method protected setFragment(Ljava/lang/Enum;Z)V
    .locals 4

    const v0, 0x7f10019e

    const/4 v1, 0x0

    sget-object v2, Lcom/android/incallui/SecDrivelinkAnswerFragmentManager$1;->$SwitchMap$com$android$incallui$SecDrivelinkAnswerFragmentManager$FragmentMode:[I

    check-cast p1, Lcom/android/incallui/SecDrivelinkAnswerFragmentManager$FragmentMode;

    invoke-virtual {p1}, Lcom/android/incallui/SecDrivelinkAnswerFragmentManager$FragmentMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/incallui/SecDrivelinkAnswerFragmentManager;->setFragmentInternal(ILandroid/app/Fragment;Z)V

    :cond_0
    return-void

    :pswitch_0
    new-instance v1, Lcom/android/incallui/SecDrivelinkAnswerButtonFragment;

    invoke-direct {v1}, Lcom/android/incallui/SecDrivelinkAnswerButtonFragment;-><init>()V

    goto :goto_0

    :pswitch_1
    new-instance v1, Lcom/android/incallui/SecDrivelinkMwAnswerButtonFragment;

    invoke-direct {v1}, Lcom/android/incallui/SecDrivelinkMwAnswerButtonFragment;-><init>()V

    goto :goto_0

    :pswitch_2
    new-instance v1, Lcom/android/incallui/SecMirrorlinkAnswerButtonFragment;

    invoke-direct {v1}, Lcom/android/incallui/SecMirrorlinkAnswerButtonFragment;-><init>()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

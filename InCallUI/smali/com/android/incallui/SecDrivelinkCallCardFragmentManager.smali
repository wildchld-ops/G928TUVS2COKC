.class public Lcom/android/incallui/SecDrivelinkCallCardFragmentManager;
.super Lcom/android/incallui/BaseFragmentManager;
.source "SecDrivelinkCallCardFragmentManager.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/SecDrivelinkCallCardFragmentManager$1;,
        Lcom/android/incallui/SecDrivelinkCallCardFragmentManager$FragmentMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/BaseFragmentManager",
        "<",
        "Lcom/android/incallui/SecCallCardFragment;",
        ">;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
        "Lcom/android/incallui/InCallPresenter$IncomingCallListener;"
    }
.end annotation


# instance fields
.field mCurrentFragment:Lcom/android/incallui/SecCallCardFragment;


# direct methods
.method public constructor <init>(Lcom/android/incallui/SecDrivelinkInCallActivity;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/incallui/BaseFragmentManager;-><init>(Lcom/android/incallui/BaseInCallActivity;)V

    const-string v0, "SecDrivelinkCallCardFragmentManager..."

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecDrivelinkCallCardFragmentManager;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecDrivelinkCallCardFragmentManager;->checkAndSet(Z)Lcom/android/incallui/SecCallCardFragment;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addListenerOfManager(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    return-void
.end method


# virtual methods
.method protected checkAndSet(Z)Lcom/android/incallui/SecCallCardFragment;
    .locals 6

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/incallui/SecDrivelinkCallCardFragmentManager;->mInCallActivity:Lcom/android/incallui/BaseInCallActivity;

    invoke-virtual {v4}, Lcom/android/incallui/BaseInCallActivity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/SecDrivelinkCallCardFragmentManager;->mInCallActivity:Lcom/android/incallui/BaseInCallActivity;

    invoke-virtual {v4}, Lcom/android/incallui/BaseInCallActivity;->isDestroyed()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v1

    if-nez p1, :cond_2

    sget-object v4, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v1, v4, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/SecDrivelinkCallCardFragmentManager;->removeCurrentFragment()V

    iput-object v3, p0, Lcom/android/incallui/SecDrivelinkCallCardFragmentManager;->mFragmentType:Ljava/lang/Enum;

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/android/incallui/SecDrivelinkCallCardFragmentManager$FragmentMode;->EMPTY:Lcom/android/incallui/SecDrivelinkCallCardFragmentManager$FragmentMode;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v3, v5}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCarModeOn()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCarModeNaviOn()Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v2, Lcom/android/incallui/SecDrivelinkCallCardFragmentManager$FragmentMode;->DRIVELINK_MW:Lcom/android/incallui/SecDrivelinkCallCardFragmentManager$FragmentMode;

    :cond_3
    :goto_1
    const-string v3, "SecDrivelinkCallCardFragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkAndSet : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/SecDrivelinkCallCardFragmentManager;->mFragmentType:Ljava/lang/Enum;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " when "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter$InCallState;->whatIs()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez p1, :cond_4

    iget-object v3, p0, Lcom/android/incallui/SecDrivelinkCallCardFragmentManager;->mFragmentType:Ljava/lang/Enum;

    if-eq v3, v2, :cond_5

    :cond_4
    invoke-virtual {p0, v2, p1}, Lcom/android/incallui/SecDrivelinkCallCardFragmentManager;->setFragment(Ljava/lang/Enum;Z)V

    iput-object v2, p0, Lcom/android/incallui/SecDrivelinkCallCardFragmentManager;->mFragmentType:Ljava/lang/Enum;

    :cond_5
    iget-object v3, p0, Lcom/android/incallui/SecDrivelinkCallCardFragmentManager;->mCurrentFragment:Lcom/android/incallui/SecCallCardFragment;

    goto :goto_0

    :cond_6
    sget-object v2, Lcom/android/incallui/SecDrivelinkCallCardFragmentManager$FragmentMode;->DRIVELINK:Lcom/android/incallui/SecDrivelinkCallCardFragmentManager$FragmentMode;

    goto :goto_1

    :cond_7
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isMirrorLinkModeOn()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMultipartyCall()Z

    move-result v3

    if-eqz v3, :cond_8

    sget-object v2, Lcom/android/incallui/SecDrivelinkCallCardFragmentManager$FragmentMode;->MIRRORLINK_MULTIPARTY:Lcom/android/incallui/SecDrivelinkCallCardFragmentManager$FragmentMode;

    goto :goto_1

    :cond_8
    sget-object v2, Lcom/android/incallui/SecDrivelinkCallCardFragmentManager$FragmentMode;->MIRRORLINK:Lcom/android/incallui/SecDrivelinkCallCardFragmentManager$FragmentMode;

    goto :goto_1
.end method

.method protected bridge synthetic getFragment()Lcom/android/incallui/BaseFragment;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/SecDrivelinkCallCardFragmentManager;->getFragment()Lcom/android/incallui/SecCallCardFragment;

    move-result-object v0

    return-object v0
.end method

.method protected getFragment()Lcom/android/incallui/SecCallCardFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecDrivelinkCallCardFragmentManager;->mCurrentFragment:Lcom/android/incallui/SecCallCardFragment;

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

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/incallui/SecDrivelinkCallCardFragmentManager;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecDrivelinkCallCardFragmentManager;->checkAndSet(Z)Lcom/android/incallui/SecCallCardFragment;

    return-void
.end method

.method protected bridge synthetic setCurrentFragment(Lcom/android/incallui/BaseFragment;)V
    .locals 0

    check-cast p1, Lcom/android/incallui/SecCallCardFragment;

    invoke-virtual {p0, p1}, Lcom/android/incallui/SecDrivelinkCallCardFragmentManager;->setCurrentFragment(Lcom/android/incallui/SecCallCardFragment;)V

    return-void
.end method

.method protected setCurrentFragment(Lcom/android/incallui/SecCallCardFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecDrivelinkCallCardFragmentManager;->mCurrentFragment:Lcom/android/incallui/SecCallCardFragment;

    return-void
.end method

.method protected setFragment(Ljava/lang/Enum;Z)V
    .locals 4

    const v0, 0x7f10019c

    const/4 v1, 0x0

    sget-object v2, Lcom/android/incallui/SecDrivelinkCallCardFragmentManager$1;->$SwitchMap$com$android$incallui$SecDrivelinkCallCardFragmentManager$FragmentMode:[I

    check-cast p1, Lcom/android/incallui/SecDrivelinkCallCardFragmentManager$FragmentMode;

    invoke-virtual {p1}, Lcom/android/incallui/SecDrivelinkCallCardFragmentManager$FragmentMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/incallui/SecDrivelinkCallCardFragmentManager;->setFragmentInternal(ILandroid/app/Fragment;Z)V

    :cond_0
    return-void

    :pswitch_0
    new-instance v1, Lcom/android/incallui/SecDrivelinkCallCardFragment;

    invoke-direct {v1}, Lcom/android/incallui/SecDrivelinkCallCardFragment;-><init>()V

    goto :goto_0

    :pswitch_1
    new-instance v1, Lcom/android/incallui/SecDrivelinkMwCallCardFragment;

    invoke-direct {v1}, Lcom/android/incallui/SecDrivelinkMwCallCardFragment;-><init>()V

    goto :goto_0

    :pswitch_2
    new-instance v1, Lcom/android/incallui/SecMirrorlinkCallCardFragment;

    invoke-direct {v1}, Lcom/android/incallui/SecMirrorlinkCallCardFragment;-><init>()V

    goto :goto_0

    :pswitch_3
    new-instance v1, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;

    invoke-direct {v1}, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;-><init>()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

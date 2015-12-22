.class public Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager;
.super Lcom/android/incallui/BaseFragmentManager;
.source "SecDrivelinkCallButtonFragmentManager.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager$1;,
        Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager$FragmentMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/BaseFragmentManager",
        "<",
        "Lcom/android/incallui/SecCallButtonFragment;",
        ">;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
        "Lcom/android/incallui/InCallPresenter$IncomingCallListener;"
    }
.end annotation


# instance fields
.field mCurrentFragment:Lcom/android/incallui/SecCallButtonFragment;


# direct methods
.method public constructor <init>(Lcom/android/incallui/SecDrivelinkInCallActivity;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/incallui/BaseFragmentManager;-><init>(Lcom/android/incallui/BaseInCallActivity;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager;->checkAndSet(Z)Lcom/android/incallui/SecCallButtonFragment;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addListenerOfManager(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    return-void
.end method


# virtual methods
.method protected checkAndSet(Z)Lcom/android/incallui/SecCallButtonFragment;
    .locals 7

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager;->mInCallActivity:Lcom/android/incallui/BaseInCallActivity;

    invoke-virtual {v5}, Lcom/android/incallui/BaseInCallActivity;->isFinishing()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager;->mInCallActivity:Lcom/android/incallui/BaseInCallActivity;

    invoke-virtual {v5}, Lcom/android/incallui/BaseInCallActivity;->isDestroyed()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v2

    if-nez p1, :cond_3

    sget-object v5, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v2, v5, :cond_2

    sget-object v5, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v2, v5, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager;->removeCurrentFragment()V

    iput-object v4, p0, Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager;->mFragmentType:Ljava/lang/Enum;

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager$FragmentMode;->EMPTY:Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager$FragmentMode;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v4, v6}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCarModeOn()Z

    move-result v4

    if-eqz v4, :cond_9

    packed-switch v1, :pswitch_data_0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCarModeNaviOn()Z

    move-result v4

    if-eqz v4, :cond_8

    sget-object v3, Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager$FragmentMode;->DRIVELINK_MW:Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager$FragmentMode;

    :cond_4
    :goto_1
    const-string v4, "SecDrivelinkCallButtonFragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkAndSet : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager;->mFragmentType:Ljava/lang/Enum;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " => "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " when "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter$InCallState;->whatIs()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez p1, :cond_5

    iget-object v4, p0, Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager;->mFragmentType:Ljava/lang/Enum;

    if-eq v4, v3, :cond_6

    :cond_5
    invoke-virtual {p0, v3, p1}, Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager;->setFragment(Ljava/lang/Enum;Z)V

    iput-object v3, p0, Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager;->mFragmentType:Ljava/lang/Enum;

    :cond_6
    iget-object v4, p0, Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager;->mCurrentFragment:Lcom/android/incallui/SecCallButtonFragment;

    goto/16 :goto_0

    :pswitch_0
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCarModeNaviOn()Z

    move-result v4

    if-eqz v4, :cond_7

    sget-object v3, Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager$FragmentMode;->DRIVELINK_ENDCALL_MW:Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager$FragmentMode;

    goto :goto_1

    :cond_7
    sget-object v3, Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager$FragmentMode;->DRIVELINK_ENDCALL:Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager$FragmentMode;

    goto :goto_1

    :cond_8
    sget-object v3, Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager$FragmentMode;->DRIVELINK:Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager$FragmentMode;

    goto :goto_1

    :cond_9
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isMirrorLinkModeOn()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x3

    if-eq v1, v4, :cond_a

    invoke-static {v1}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_a
    sget-object v3, Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager$FragmentMode;->MIRRORLINK:Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager$FragmentMode;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic getFragment()Lcom/android/incallui/BaseFragment;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager;->getFragment()Lcom/android/incallui/SecCallButtonFragment;

    move-result-object v0

    return-object v0
.end method

.method protected getFragment()Lcom/android/incallui/SecCallButtonFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager;->mCurrentFragment:Lcom/android/incallui/SecCallButtonFragment;

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

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager;->checkAndSet(Z)Lcom/android/incallui/SecCallButtonFragment;

    return-void
.end method

.method protected bridge synthetic setCurrentFragment(Lcom/android/incallui/BaseFragment;)V
    .locals 0

    check-cast p1, Lcom/android/incallui/SecCallButtonFragment;

    invoke-virtual {p0, p1}, Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager;->setCurrentFragment(Lcom/android/incallui/SecCallButtonFragment;)V

    return-void
.end method

.method protected setCurrentFragment(Lcom/android/incallui/SecCallButtonFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager;->mCurrentFragment:Lcom/android/incallui/SecCallButtonFragment;

    return-void
.end method

.method protected setFragment(Ljava/lang/Enum;Z)V
    .locals 4

    const v0, 0x7f10019d

    const/4 v1, 0x0

    sget-object v2, Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager$1;->$SwitchMap$com$android$incallui$SecDrivelinkCallButtonFragmentManager$FragmentMode:[I

    check-cast p1, Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager$FragmentMode;

    invoke-virtual {p1}, Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager$FragmentMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager;->setFragmentInternal(ILandroid/app/Fragment;Z)V

    :cond_0
    return-void

    :pswitch_0
    new-instance v1, Lcom/android/incallui/SecDrivelinkCallButtonFragment;

    invoke-direct {v1}, Lcom/android/incallui/SecDrivelinkCallButtonFragment;-><init>()V

    goto :goto_0

    :pswitch_1
    new-instance v1, Lcom/android/incallui/SecDrivelinkMwCallButtonFragment;

    invoke-direct {v1}, Lcom/android/incallui/SecDrivelinkMwCallButtonFragment;-><init>()V

    goto :goto_0

    :pswitch_2
    new-instance v1, Lcom/android/incallui/SecDrivelinkEndCallButtonFragment;

    invoke-direct {v1}, Lcom/android/incallui/SecDrivelinkEndCallButtonFragment;-><init>()V

    goto :goto_0

    :pswitch_3
    new-instance v1, Lcom/android/incallui/SecDrivelinkMwEndCallButtonFragment;

    invoke-direct {v1}, Lcom/android/incallui/SecDrivelinkMwEndCallButtonFragment;-><init>()V

    goto :goto_0

    :pswitch_4
    new-instance v1, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;

    invoke-direct {v1}, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;-><init>()V

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

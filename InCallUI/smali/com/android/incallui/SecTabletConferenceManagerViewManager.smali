.class public Lcom/android/incallui/SecTabletConferenceManagerViewManager;
.super Lcom/android/incallui/SecTabletViewManager;
.source "SecTabletConferenceManagerViewManager.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallOrientationListener;
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/SecTabletConferenceManagerViewManager$1;,
        Lcom/android/incallui/SecTabletConferenceManagerViewManager$FragmentMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/SecTabletViewManager",
        "<",
        "Lcom/android/incallui/SecTabletConferenceManagerView;",
        ">;",
        "Lcom/android/incallui/InCallPresenter$InCallOrientationListener;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
        "Lcom/android/incallui/InCallPresenter$IncomingCallListener;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentView:Lcom/android/incallui/SecTabletConferenceManagerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/SecTabletViewManager;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    const-string v0, "SecTabletConferenceManagerViewManager"

    const-string v1, "SecTabletConferenceManagerViewManager..."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/incallui/SecTabletConferenceManagerViewManager;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecTabletConferenceManagerViewManager;->checkAndSet(Z)Lcom/android/incallui/SecTabletConferenceManagerView;

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
.method protected checkAndSet(Z)Lcom/android/incallui/SecTabletConferenceManagerView;
    .locals 5

    const/4 v2, 0x0

    sget-object v1, Lcom/android/incallui/SecTabletConferenceManagerViewManager$FragmentMode;->DEFAULT:Lcom/android/incallui/SecTabletConferenceManagerViewManager$FragmentMode;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->hasConferenceCall()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletConferenceManagerViewManager;->removeCurrentView()V

    iput-object v2, p0, Lcom/android/incallui/SecTabletConferenceManagerViewManager;->mFragmentType:Ljava/lang/Enum;

    :goto_0
    return-object v2

    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletConferenceManagerViewManager;->removeCurrentView()V

    iput-object v2, p0, Lcom/android/incallui/SecTabletConferenceManagerViewManager;->mFragmentType:Ljava/lang/Enum;

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    iget-object v2, p0, Lcom/android/incallui/SecTabletConferenceManagerViewManager;->mFragmentType:Ljava/lang/Enum;

    if-eq v2, v1, :cond_4

    :cond_3
    invoke-virtual {p0, v1, p1}, Lcom/android/incallui/SecTabletConferenceManagerViewManager;->setView(Ljava/lang/Enum;Z)V

    iput-object v1, p0, Lcom/android/incallui/SecTabletConferenceManagerViewManager;->mFragmentType:Ljava/lang/Enum;

    :cond_4
    iget-object v2, p0, Lcom/android/incallui/SecTabletConferenceManagerViewManager;->mCurrentView:Lcom/android/incallui/SecTabletConferenceManagerView;

    goto :goto_0
.end method

.method protected getView()Lcom/android/incallui/SecTabletConferenceManagerView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecTabletConferenceManagerViewManager;->mCurrentView:Lcom/android/incallui/SecTabletConferenceManagerView;

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

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecTabletConferenceManagerViewManager;->checkAndSet(Z)Lcom/android/incallui/SecTabletConferenceManagerView;

    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/incallui/SecTabletConferenceManagerViewManager;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecTabletConferenceManagerViewManager;->checkAndSet(Z)Lcom/android/incallui/SecTabletConferenceManagerView;

    return-void
.end method

.method protected setCurrentView(Lcom/android/incallui/SecTabletConferenceManagerView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecTabletConferenceManagerViewManager;->mCurrentView:Lcom/android/incallui/SecTabletConferenceManagerView;

    return-void
.end method

.method protected bridge synthetic setCurrentView(Lcom/android/incallui/SecTabletView;)V
    .locals 0

    check-cast p1, Lcom/android/incallui/SecTabletConferenceManagerView;

    invoke-virtual {p0, p1}, Lcom/android/incallui/SecTabletConferenceManagerViewManager;->setCurrentView(Lcom/android/incallui/SecTabletConferenceManagerView;)V

    return-void
.end method

.method protected setView(Ljava/lang/Enum;Z)V
    .locals 4

    const v0, 0x7f1001e7

    const/4 v1, 0x0

    sget-object v2, Lcom/android/incallui/SecTabletConferenceManagerViewManager$1;->$SwitchMap$com$android$incallui$SecTabletConferenceManagerViewManager$FragmentMode:[I

    check-cast p1, Lcom/android/incallui/SecTabletConferenceManagerViewManager$FragmentMode;

    invoke-virtual {p1}, Lcom/android/incallui/SecTabletConferenceManagerViewManager$FragmentMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/incallui/SecTabletConferenceManagerViewManager;->setViewInternal(ILcom/android/incallui/SecTabletView;Z)V

    :cond_0
    return-void

    :pswitch_0
    new-instance v1, Lcom/android/incallui/SecTabletConferenceManagerCsView;

    iget-object v2, p0, Lcom/android/incallui/SecTabletConferenceManagerViewManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/incallui/SecTabletConferenceManagerCsView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

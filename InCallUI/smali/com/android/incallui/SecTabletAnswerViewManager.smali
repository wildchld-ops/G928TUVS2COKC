.class public Lcom/android/incallui/SecTabletAnswerViewManager;
.super Lcom/android/incallui/SecTabletViewManager;
.source "SecTabletAnswerViewManager.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallOrientationListener;
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/SecTabletAnswerViewManager$1;,
        Lcom/android/incallui/SecTabletAnswerViewManager$FragmentMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/SecTabletViewManager",
        "<",
        "Lcom/android/incallui/SecTabletAnswerView;",
        ">;",
        "Lcom/android/incallui/InCallPresenter$InCallOrientationListener;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
        "Lcom/android/incallui/InCallPresenter$IncomingCallListener;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentView:Lcom/android/incallui/SecTabletAnswerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/SecTabletViewManager;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    const-string v0, "SecTabletAnswerViewManager"

    const-string v1, "SecTabletAnswerViewManager..."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/incallui/SecTabletAnswerViewManager;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecTabletAnswerViewManager;->checkAndSet(Z)Lcom/android/incallui/SecTabletAnswerView;

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
.method protected checkAndSet(Z)Lcom/android/incallui/SecTabletAnswerView;
    .locals 4

    const/4 v1, 0x0

    sget-object v0, Lcom/android/incallui/SecTabletAnswerViewManager$FragmentMode;->DEFAULT:Lcom/android/incallui/SecTabletAnswerViewManager$FragmentMode;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v2

    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletAnswerViewManager;->removeCurrentView()V

    iput-object v1, p0, Lcom/android/incallui/SecTabletAnswerViewManager;->mFragmentType:Ljava/lang/Enum;

    :goto_0
    return-object v1

    :cond_0
    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/SecTabletAnswerViewManager;->mFragmentType:Ljava/lang/Enum;

    if-eq v1, v0, :cond_2

    :cond_1
    invoke-virtual {p0, v0, p1}, Lcom/android/incallui/SecTabletAnswerViewManager;->setView(Ljava/lang/Enum;Z)V

    iput-object v0, p0, Lcom/android/incallui/SecTabletAnswerViewManager;->mFragmentType:Ljava/lang/Enum;

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/SecTabletAnswerViewManager;->mCurrentView:Lcom/android/incallui/SecTabletAnswerView;

    goto :goto_0
.end method

.method protected getView()Lcom/android/incallui/SecTabletAnswerView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecTabletAnswerViewManager;->mCurrentView:Lcom/android/incallui/SecTabletAnswerView;

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

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecTabletAnswerViewManager;->checkAndSet(Z)Lcom/android/incallui/SecTabletAnswerView;

    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/incallui/SecTabletAnswerViewManager;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecTabletAnswerViewManager;->checkAndSet(Z)Lcom/android/incallui/SecTabletAnswerView;

    return-void
.end method

.method protected setCurrentView(Lcom/android/incallui/SecTabletAnswerView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecTabletAnswerViewManager;->mCurrentView:Lcom/android/incallui/SecTabletAnswerView;

    return-void
.end method

.method protected bridge synthetic setCurrentView(Lcom/android/incallui/SecTabletView;)V
    .locals 0

    check-cast p1, Lcom/android/incallui/SecTabletAnswerView;

    invoke-virtual {p0, p1}, Lcom/android/incallui/SecTabletAnswerViewManager;->setCurrentView(Lcom/android/incallui/SecTabletAnswerView;)V

    return-void
.end method

.method protected setView(Ljava/lang/Enum;Z)V
    .locals 4

    const v0, 0x7f1001e9

    const/4 v1, 0x0

    sget-object v2, Lcom/android/incallui/SecTabletAnswerViewManager$1;->$SwitchMap$com$android$incallui$SecTabletAnswerViewManager$FragmentMode:[I

    check-cast p1, Lcom/android/incallui/SecTabletAnswerViewManager$FragmentMode;

    invoke-virtual {p1}, Lcom/android/incallui/SecTabletAnswerViewManager$FragmentMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    new-instance v1, Lcom/android/incallui/SecTabletAnswerImageView;

    iget-object v2, p0, Lcom/android/incallui/SecTabletAnswerViewManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/incallui/SecTabletAnswerImageView;-><init>(Landroid/content/Context;)V

    :pswitch_0
    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/incallui/SecTabletAnswerViewManager;->setViewInternal(ILcom/android/incallui/SecTabletView;Z)V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

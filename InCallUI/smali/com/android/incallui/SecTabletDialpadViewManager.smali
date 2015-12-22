.class public Lcom/android/incallui/SecTabletDialpadViewManager;
.super Lcom/android/incallui/SecTabletViewManager;
.source "SecTabletDialpadViewManager.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/SecTabletDialpadViewManager$1;,
        Lcom/android/incallui/SecTabletDialpadViewManager$FragmentMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/SecTabletViewManager",
        "<",
        "Lcom/android/incallui/SecTabletDialpadView;",
        ">;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentView:Lcom/android/incallui/SecTabletDialpadView;

.field private mIsShowing:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/SecTabletViewManager;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-boolean v2, p0, Lcom/android/incallui/SecTabletDialpadViewManager;->mIsShowing:Z

    const-string v0, "SecTabletDialpadViewManager"

    const-string v1, "SecTabletDialpadViewManager..."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/incallui/SecTabletDialpadViewManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addListenerOfManager(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    sget-object v0, Lcom/android/incallui/SecEventBusManager;->INSTANCE:Lcom/android/incallui/SecEventBusManager;

    invoke-virtual {v0, p0}, Lcom/android/incallui/SecEventBusManager;->register(Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Lcom/android/incallui/SecTabletDialpadViewManager;->checkAndSet(Z)Lcom/android/incallui/SecTabletDialpadView;

    return-void
.end method


# virtual methods
.method protected checkAndSet(Z)Lcom/android/incallui/SecTabletDialpadView;
    .locals 2

    sget-object v0, Lcom/android/incallui/SecTabletDialpadViewManager$FragmentMode;->DEFAULT:Lcom/android/incallui/SecTabletDialpadViewManager$FragmentMode;

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecTabletDialpadViewManager;->mFragmentType:Ljava/lang/Enum;

    if-eq v1, v0, :cond_1

    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/android/incallui/SecTabletDialpadViewManager;->setView(Ljava/lang/Enum;Z)V

    iput-object v0, p0, Lcom/android/incallui/SecTabletDialpadViewManager;->mFragmentType:Ljava/lang/Enum;

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/SecTabletDialpadViewManager;->mCurrentView:Lcom/android/incallui/SecTabletDialpadView;

    return-object v1
.end method

.method protected getView()Lcom/android/incallui/SecTabletDialpadView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecTabletDialpadViewManager;->mCurrentView:Lcom/android/incallui/SecTabletDialpadView;

    return-object v0
.end method

.method public hideDialpad()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/SecTabletDialpadViewManager;->mCurrentView:Lcom/android/incallui/SecTabletDialpadView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/android/incallui/SecTabletDialpadViewManager;->mIsShowing:Z

    iget-object v0, p0, Lcom/android/incallui/SecTabletDialpadViewManager;->mCurrentView:Lcom/android/incallui/SecTabletDialpadView;

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecTabletDialpadView;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletDialpadViewManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/incallui/InCallUtils;->sendBroadcastDiapadStateforUWA(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/SecTabletDialpadViewManager;->mIsShowing:Z

    return v0
.end method

.method public onDestroy()V
    .locals 1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListenerOfManager(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    sget-object v0, Lcom/android/incallui/SecEventBusManager;->INSTANCE:Lcom/android/incallui/SecEventBusManager;

    invoke-virtual {v0, p0}, Lcom/android/incallui/SecEventBusManager;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onDialpadVisibilityChanged(Lcom/android/incallui/SecEventDialpadClicked;)V
    .locals 2
    .annotation runtime Lcom/android/incallui/SecEventBus;
    .end annotation

    invoke-virtual {p1}, Lcom/android/incallui/SecEventDialpadClicked;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletDialpadViewManager;->showDialpad()V

    :goto_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getProximitySensor()Lcom/android/incallui/ProximitySensor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/ProximitySensor;->onDialpadVisible(Z)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletDialpadViewManager;->hideDialpad()V

    goto :goto_0
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 1

    if-ne p1, p2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecTabletDialpadViewManager;->checkAndSet(Z)Lcom/android/incallui/SecTabletDialpadView;

    goto :goto_0
.end method

.method protected setCurrentView(Lcom/android/incallui/SecTabletDialpadView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecTabletDialpadViewManager;->mCurrentView:Lcom/android/incallui/SecTabletDialpadView;

    return-void
.end method

.method protected bridge synthetic setCurrentView(Lcom/android/incallui/SecTabletView;)V
    .locals 0

    check-cast p1, Lcom/android/incallui/SecTabletDialpadView;

    invoke-virtual {p0, p1}, Lcom/android/incallui/SecTabletDialpadViewManager;->setCurrentView(Lcom/android/incallui/SecTabletDialpadView;)V

    return-void
.end method

.method protected setView(Ljava/lang/Enum;Z)V
    .locals 4

    const v0, 0x7f1001e8

    const/4 v1, 0x0

    sget-object v2, Lcom/android/incallui/SecTabletDialpadViewManager$1;->$SwitchMap$com$android$incallui$SecTabletDialpadViewManager$FragmentMode:[I

    check-cast p1, Lcom/android/incallui/SecTabletDialpadViewManager$FragmentMode;

    invoke-virtual {p1}, Lcom/android/incallui/SecTabletDialpadViewManager$FragmentMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/incallui/SecTabletDialpadViewManager;->setViewInternal(ILcom/android/incallui/SecTabletView;Z)V

    :cond_0
    return-void

    :pswitch_0
    new-instance v1, Lcom/android/incallui/SecTabletDialpadView;

    iget-object v2, p0, Lcom/android/incallui/SecTabletDialpadViewManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/incallui/SecTabletDialpadView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public showDialpad()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/incallui/SecTabletDialpadViewManager;->mCurrentView:Lcom/android/incallui/SecTabletDialpadView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecTabletDialpadViewManager;->checkAndSet(Z)Lcom/android/incallui/SecTabletDialpadView;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecTabletDialpadViewManager;->mCurrentView:Lcom/android/incallui/SecTabletDialpadView;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iput-boolean v1, p0, Lcom/android/incallui/SecTabletDialpadViewManager;->mIsShowing:Z

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletDialpadViewManager;->getView()Lcom/android/incallui/SecTabletDialpadView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/SecTabletDialpadView;->setupLayout()V

    iget-object v0, p0, Lcom/android/incallui/SecTabletDialpadViewManager;->mCurrentView:Lcom/android/incallui/SecTabletDialpadView;

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecTabletDialpadView;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletDialpadViewManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/incallui/InCallUtils;->sendBroadcastDiapadStateforUWA(Landroid/content/Context;Z)V

    goto :goto_0
.end method

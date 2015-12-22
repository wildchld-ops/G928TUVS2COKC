.class public Lcom/android/incallui/accessory/CoverViewManager;
.super Ljava/lang/Object;
.source "CoverViewManager.java"


# instance fields
.field private mActivity:Lcom/android/incallui/SecInCallActivity;

.field private mCoverScreen:Lcom/android/incallui/accessory/CoverScreen;


# direct methods
.method public constructor <init>(Lcom/android/incallui/BaseInCallComponent;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/incallui/SecInCallActivity;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/incallui/SecInCallActivity;

    iput-object p1, p0, Lcom/android/incallui/accessory/CoverViewManager;->mActivity:Lcom/android/incallui/SecInCallActivity;

    :goto_0
    return-void

    :cond_0
    const-string v0, "CoverViewManager"

    const-string v1, "can not type-cast"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private inflateCoverView()V
    .locals 4

    const/16 v3, 0x8

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverViewManager;->mActivity:Lcom/android/incallui/SecInCallActivity;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {}, Lcom/android/incallui/AccessoryEventHandler;->getInstance()Lcom/android/incallui/AccessoryEventHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/AccessoryEventHandler;->getCoverType()I

    move-result v1

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverViewManager;->mActivity:Lcom/android/incallui/SecInCallActivity;

    const v2, 0x7f1001eb

    invoke-virtual {v1, v2}, Lcom/android/incallui/SecInCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverViewManager;->mActivity:Lcom/android/incallui/SecInCallActivity;

    const v2, 0x7f1001c5

    invoke-virtual {v1, v2}, Lcom/android/incallui/SecInCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/accessory/CoverScreen;

    iput-object v1, p0, Lcom/android/incallui/accessory/CoverViewManager;->mCoverScreen:Lcom/android/incallui/accessory/CoverScreen;

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverViewManager;->mCoverScreen:Lcom/android/incallui/accessory/CoverScreen;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverViewManager;->mCoverScreen:Lcom/android/incallui/accessory/CoverScreen;

    invoke-virtual {v1, v3}, Lcom/android/incallui/accessory/CoverScreen;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverViewManager;->mCoverScreen:Lcom/android/incallui/accessory/CoverScreen;

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverViewManager;->mActivity:Lcom/android/incallui/SecInCallActivity;

    invoke-virtual {v2}, Lcom/android/incallui/SecInCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/accessory/CoverScreen;->setParentWindow(Landroid/view/Window;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverViewManager;->updateCoverScreenTimeOut()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverViewManager;->mActivity:Lcom/android/incallui/SecInCallActivity;

    const v2, 0x7f1001ea

    invoke-virtual {v1, v2}, Lcom/android/incallui/SecInCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    goto :goto_1
.end method

.method private setWindowAttributes(Z)V
    .locals 4

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverViewManager;->mActivity:Lcom/android/incallui/SecInCallActivity;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/AccessoryEventHandler;->getInstance()Lcom/android/incallui/AccessoryEventHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/AccessoryEventHandler;->getScoverManager()Lcom/samsung/android/sdk/cover/ScoverManager;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/AccessoryEventHandler;->getInstance()Lcom/android/incallui/AccessoryEventHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/AccessoryEventHandler;->getScoverManager()Lcom/samsung/android/sdk/cover/ScoverManager;

    move-result-object v2

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverViewManager;->mActivity:Lcom/android/incallui/SecInCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/SecInCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->setCoverModeToWindow(Landroid/view/Window;I)V

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverViewManager;->mActivity:Lcom/android/incallui/SecInCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/SecInCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-eqz p1, :cond_3

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x40

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    :goto_2
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverViewManager;->mActivity:Lcom/android/incallui/SecInCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/SecInCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v1, v1, -0x41

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    and-int/lit8 v1, v1, -0x5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    goto :goto_2
.end method


# virtual methods
.method public declared-synchronized dismissView()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverViewManager;->mCoverScreen:Lcom/android/incallui/accessory/CoverScreen;

    if-eqz v0, :cond_0

    const-string v0, "dismissView..."

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/incallui/accessory/CoverViewManager;->setWindowAttributes(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverViewManager;->updateCoverScreenTimeOut()V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverViewManager;->mCoverScreen:Lcom/android/incallui/accessory/CoverScreen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/accessory/CoverScreen;->attemptFinish(Z)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverViewManager;->mCoverScreen:Lcom/android/incallui/accessory/CoverScreen;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/incallui/accessory/CoverScreen;->setVisibility(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverViewManager;->mCoverScreen:Lcom/android/incallui/accessory/CoverScreen;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverViewManager;->mActivity:Lcom/android/incallui/SecInCallActivity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCoverScreen()Lcom/android/incallui/accessory/CoverScreen;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverViewManager;->mCoverScreen:Lcom/android/incallui/accessory/CoverScreen;

    return-object v0
.end method

.method public declared-synchronized onCoverStateChanged(Z)V
    .locals 4

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v0

    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverViewManager;->dismissView()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/incallui/accessory/CoverViewManager;->mCoverScreen:Lcom/android/incallui/accessory/CoverScreen;

    if-nez v2, :cond_2

    const-string v2, "onCoverStateChanged: inflateCoverView"

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverViewManager;->inflateCoverView()V

    :cond_2
    iget-object v2, p0, Lcom/android/incallui/accessory/CoverViewManager;->mCoverScreen:Lcom/android/incallui/accessory/CoverScreen;

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCoverStateChanged: setVisibility("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverViewManager;->mCoverScreen:Lcom/android/incallui/accessory/CoverScreen;

    if-eqz p1, :cond_5

    :goto_1
    invoke-virtual {v2, v1}, Lcom/android/incallui/accessory/CoverScreen;->setVisibility(I)V

    if-eqz p1, :cond_6

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverViewManager;->mCoverScreen:Lcom/android/incallui/accessory/CoverScreen;

    invoke-virtual {v1}, Lcom/android/incallui/accessory/CoverScreen;->setUp()V

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverViewManager;->mCoverScreen:Lcom/android/incallui/accessory/CoverScreen;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v1, v0, v0, v2}, Lcom/android/incallui/accessory/CoverScreen;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    :cond_3
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/incallui/accessory/CoverViewManager;->setWindowAttributes(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverViewManager;->updateCoverScreenTimeOut()V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getProximitySensor()Lcom/android/incallui/ProximitySensor;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getProximitySensor()Lcom/android/incallui/ProximitySensor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/ProximitySensor;->forceUpdateProximitySensorMode()V

    :cond_4
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->hasInCallUiFocus()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "onCoverStateChanged: bringToForeground"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/incallui/InCallPresenter;->bringToForeground(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_5
    const/4 v1, 0x4

    goto :goto_1

    :cond_6
    :try_start_2
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverViewManager;->mCoverScreen:Lcom/android/incallui/accessory/CoverScreen;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/incallui/accessory/CoverScreen;->attemptFinish(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public declared-synchronized updateCoverScreenTimeOut()V
    .locals 8

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/android/incallui/accessory/CoverViewManager;->mActivity:Lcom/android/incallui/SecInCallActivity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v4

    sget-object v5, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v4, v5, :cond_2

    :goto_1
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isCoverClosed()Z

    move-result v0

    iget-object v4, p0, Lcom/android/incallui/accessory/CoverViewManager;->mActivity:Lcom/android/incallui/SecInCallActivity;

    invoke-virtual {v4}, Lcom/android/incallui/SecInCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    if-eqz v0, :cond_3

    if-nez v1, :cond_3

    const-wide/16 v4, 0x1770

    iput-wide v4, v3, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lp.userActivityTimeout : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v3, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lp.screenDimDuration "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v3, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v4

    if-nez v4, :cond_1

    if-eqz v2, :cond_5

    :cond_1
    const-string v4, "setCoverScreenTime: add FLAG_KEEP_SCREEN_ON"

    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v4, v4, 0x80

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_3
    iget-object v4, p0, Lcom/android/incallui/accessory/CoverViewManager;->mActivity:Lcom/android/incallui/SecInCallActivity;

    invoke-virtual {v4}, Lcom/android/incallui/SecInCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    :try_start_2
    const-string v4, "samsung_screen_timeout_incall"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-wide/16 v4, 0x7530

    iput-wide v4, v3, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    const-wide/16 v4, 0x4e20

    iput-wide v4, v3, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lcom/android/incallui/accessory/CoverViewManager;->mActivity:Lcom/android/incallui/SecInCallActivity;

    invoke-virtual {v4}, Lcom/android/incallui/SecInCallActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_off_timeout"

    const/16 v6, 0x7530

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, v3, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    const-wide/16 v4, -0x1

    iput-wide v4, v3, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    goto/16 :goto_2

    :cond_5
    const-string v4, "setCoverScreenTime: clear FLAG_KEEP_SCREEN_ON"

    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v4, v4, -0x81

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

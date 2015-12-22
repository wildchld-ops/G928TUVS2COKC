.class public Lcom/android/incallui/SecDialpadFragmentManager;
.super Lcom/android/incallui/BaseFragmentManager;
.source "SecDialpadFragmentManager.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallOrientationListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;
.implements Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;
.implements Lcom/android/incallui/InCallPresenter$OnehandAnyScreenOnListener;
.implements Lcom/android/incallui/InCallPresenter$OnehandModeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/SecDialpadFragmentManager$3;,
        Lcom/android/incallui/SecDialpadFragmentManager$FragmentMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/BaseFragmentManager",
        "<",
        "Lcom/android/incallui/SecDialpadFragment;",
        ">;",
        "Lcom/android/incallui/InCallPresenter$InCallOrientationListener;",
        "Lcom/android/incallui/InCallPresenter$IncomingCallListener;",
        "Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;",
        "Lcom/android/incallui/InCallPresenter$OnehandAnyScreenOnListener;",
        "Lcom/android/incallui/InCallPresenter$OnehandModeListener;"
    }
.end annotation


# instance fields
.field protected final DELETE_SENDDTMF_POP_DELAY:I

.field protected final EVENT_DELETE_SENDDTMF_POP:I

.field protected final EVENT_SHOW_DIALPAD:I

.field protected final SHOW_DIALPAD_DELAY:I

.field dtmfDialog:Landroid/app/AlertDialog;

.field mCurrentFragment:Lcom/android/incallui/SecDialpadFragment;

.field protected mHandler:Landroid/os/Handler;

.field private mIsShowing:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Lcom/android/incallui/SecInCallActivity;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/incallui/BaseFragmentManager;-><init>(Lcom/android/incallui/BaseInCallActivity;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/incallui/SecDialpadFragmentManager;->mIsShowing:Z

    const/16 v1, 0x64

    iput v1, p0, Lcom/android/incallui/SecDialpadFragmentManager;->EVENT_SHOW_DIALPAD:I

    const/16 v1, 0x1f4

    iput v1, p0, Lcom/android/incallui/SecDialpadFragmentManager;->SHOW_DIALPAD_DELAY:I

    const/16 v1, 0xc8

    iput v1, p0, Lcom/android/incallui/SecDialpadFragmentManager;->EVENT_DELETE_SENDDTMF_POP:I

    const/16 v1, 0x3e8

    iput v1, p0, Lcom/android/incallui/SecDialpadFragmentManager;->DELETE_SENDDTMF_POP_DELAY:I

    new-instance v1, Lcom/android/incallui/SecDialpadFragmentManager$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/SecDialpadFragmentManager$1;-><init>(Lcom/android/incallui/SecDialpadFragmentManager;)V

    iput-object v1, p0, Lcom/android/incallui/SecDialpadFragmentManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/incallui/SecDialpadFragmentManager$2;

    invoke-direct {v1, p0}, Lcom/android/incallui/SecDialpadFragmentManager$2;-><init>(Lcom/android/incallui/SecDialpadFragmentManager;)V

    iput-object v1, p0, Lcom/android/incallui/SecDialpadFragmentManager;->mReceiver:Landroid/content/BroadcastReceiver;

    const-string v1, "SecDialpadFragmentManager..."

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecDialpadFragmentManager;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/InCallPresenter;->addOrientationListener(Lcom/android/incallui/InCallPresenter$InCallOrientationListener;)V

    const-string v1, "support_onehand_operation"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/InCallPresenter;->addOnehandModeListener(Lcom/android/incallui/InCallPresenter$OnehandModeListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/InCallPresenter;->addOnehandAnyScreenOnListener(Lcom/android/incallui/InCallPresenter$OnehandAnyScreenOnListener;)V

    :cond_0
    const-string v1, "support_mobile_keyboard"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/InCallPresenter;->addMobileKeyboardListener(Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;)V

    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.intent.action.ACTION_DTMF_BUSY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/SecDialpadFragmentManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/incallui/SecDialpadFragmentManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/SecDialpadFragmentManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/SecDialpadFragmentManager;->mIsShowing:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/incallui/SecDialpadFragmentManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecDialpadFragmentManager;->deleteSendDtmfPopDelayed()V

    return-void
.end method

.method private deleteSendDtmfPopDelayed()V
    .locals 4

    iget-object v0, p0, Lcom/android/incallui/SecDialpadFragmentManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc8

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private removeCurrentDialpadFragment()V
    .locals 1

    sget-object v0, Lcom/android/incallui/SecDialpadFragmentManager$FragmentMode;->EMPTY:Lcom/android/incallui/SecDialpadFragmentManager$FragmentMode;

    iput-object v0, p0, Lcom/android/incallui/SecDialpadFragmentManager;->mFragmentType:Ljava/lang/Enum;

    invoke-super {p0}, Lcom/android/incallui/BaseFragmentManager;->removeCurrentFragment()V

    return-void
.end method

.method private updateFragment()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecDialpadFragmentManager;->mInCallActivity:Lcom/android/incallui/BaseInCallActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecDialpadFragmentManager;->mInCallActivity:Lcom/android/incallui/BaseInCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/BaseInCallActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecDialpadFragmentManager;->mInCallActivity:Lcom/android/incallui/BaseInCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/BaseInCallActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/incallui/SecDialpadFragmentManager;->mIsShowing:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecDialpadFragmentManager;->checkAndSet(Z)Lcom/android/incallui/SecDialpadFragment;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecDialpadFragmentManager;->mCurrentFragment:Lcom/android/incallui/SecDialpadFragment;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/SecDialpadFragmentManager;->removeCurrentDialpadFragment()V

    goto :goto_0
.end method


# virtual methods
.method protected checkAndSet(Z)Lcom/android/incallui/SecDialpadFragment;
    .locals 2

    iget-object v1, p0, Lcom/android/incallui/SecDialpadFragmentManager;->mInCallActivity:Lcom/android/incallui/BaseInCallActivity;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/SecDialpadFragmentManager;->mInCallActivity:Lcom/android/incallui/BaseInCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/BaseInCallActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecDialpadFragmentManager;->mInCallActivity:Lcom/android/incallui/BaseInCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/BaseInCallActivity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    sget-object v0, Lcom/android/incallui/SecDialpadFragmentManager$FragmentMode;->DEFAULT:Lcom/android/incallui/SecDialpadFragmentManager$FragmentMode;

    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/SecDialpadFragmentManager;->mFragmentType:Ljava/lang/Enum;

    if-eq v1, v0, :cond_3

    :cond_2
    invoke-virtual {p0, v0, p1}, Lcom/android/incallui/SecDialpadFragmentManager;->setFragment(Ljava/lang/Enum;Z)V

    iput-object v0, p0, Lcom/android/incallui/SecDialpadFragmentManager;->mFragmentType:Ljava/lang/Enum;

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/SecDialpadFragmentManager;->mCurrentFragment:Lcom/android/incallui/SecDialpadFragment;

    goto :goto_0
.end method

.method protected bridge synthetic getFragment()Lcom/android/incallui/BaseFragment;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/SecDialpadFragmentManager;->getFragment()Lcom/android/incallui/SecDialpadFragment;

    move-result-object v0

    return-object v0
.end method

.method protected getFragment()Lcom/android/incallui/SecDialpadFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecDialpadFragmentManager;->mCurrentFragment:Lcom/android/incallui/SecDialpadFragment;

    return-object v0
.end method

.method public hideDialpad()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/incallui/SecDialpadFragmentManager;->mInCallActivity:Lcom/android/incallui/BaseInCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/BaseInCallActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/SecDialpadFragmentManager;->getFragment()Lcom/android/incallui/SecDialpadFragment;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecDialpadFragmentManager;->getFragment()Lcom/android/incallui/SecDialpadFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/SecDialpadFragment;->hideSoftInput()V

    invoke-virtual {p0}, Lcom/android/incallui/SecDialpadFragmentManager;->getFragment()Lcom/android/incallui/SecDialpadFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    iput-boolean v2, p0, Lcom/android/incallui/SecDialpadFragmentManager;->mIsShowing:Z

    iget-object v1, p0, Lcom/android/incallui/SecDialpadFragmentManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/android/incallui/InCallUtils;->sendBroadcastDiapadStateforUWA(Landroid/content/Context;Z)V

    iget-object v1, p0, Lcom/android/incallui/SecDialpadFragmentManager;->dtmfDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/SecDialpadFragmentManager;->dtmfDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/incallui/SecDialpadFragmentManager;->dtmfDialog:Landroid/app/AlertDialog;

    :cond_1
    return-void
.end method

.method public isShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/SecDialpadFragmentManager;->mIsShowing:Z

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/incallui/BaseFragmentManager;->onDestroy()V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeOrientationListener(Lcom/android/incallui/InCallPresenter$InCallOrientationListener;)V

    const-string v0, "support_onehand_operation"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeOnehandModeListener(Lcom/android/incallui/InCallPresenter$OnehandModeListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeOnehandAnyScreenOnListener(Lcom/android/incallui/InCallPresenter$OnehandAnyScreenOnListener;)V

    :cond_0
    const-string v0, "support_mobile_keyboard"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeMobileKeyboardListener(Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecDialpadFragmentManager;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecDialpadFragmentManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/incallui/SecDialpadFragmentManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/SecDialpadFragmentManager;->mReceiver:Landroid/content/BroadcastReceiver;

    :cond_2
    return-void
.end method

.method public onDeviceOrientationChanged(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecDialpadFragmentManager;->checkAndSet(Z)Lcom/android/incallui/SecDialpadFragment;

    const-string v0, "concept_jpn_dcm"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecDialpadFragmentManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecDialpadFragmentManager;->showDialpadDelayed()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecDialpadFragmentManager;->hideDialpad()V

    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/SecDialpadFragmentManager;->mInCallActivity:Lcom/android/incallui/BaseInCallActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecDialpadFragmentManager;->mInCallActivity:Lcom/android/incallui/BaseInCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/BaseInCallActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecDialpadFragmentManager;->mInCallActivity:Lcom/android/incallui/BaseInCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/BaseInCallActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecDialpadFragmentManager;->mInCallActivity:Lcom/android/incallui/BaseInCallActivity;

    invoke-virtual {v0, v1, v1}, Lcom/android/incallui/BaseInCallActivity;->displayDialpad(ZZ)V

    goto :goto_0
.end method

.method public onMobileKeyboardChanged()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SecDialpadFragmentManager...onMobileKeyboardChanged isShow()  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/SecDialpadFragmentManager;->isShowing()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecDialpadFragmentManager;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecDialpadFragmentManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecDialpadFragmentManager;->getFragment()Lcom/android/incallui/SecDialpadFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecDialpadFragmentManager;->getFragment()Lcom/android/incallui/SecDialpadFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/SecDialpadFragment;->setupLayout()V

    invoke-virtual {p0}, Lcom/android/incallui/SecDialpadFragmentManager;->getFragment()Lcom/android/incallui/SecDialpadFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/SecDialpadFragment;->showElapsedTimeContainer()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/SecDialpadFragmentManager;->getFragment()Lcom/android/incallui/SecDialpadFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecDialpadFragmentManager;->getFragment()Lcom/android/incallui/SecDialpadFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/SecDialpadFragment;->hideSoftInput()V

    goto :goto_0
.end method

.method public onOnehandAnyScreenOnChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecDialpadFragmentManager;->updateFragment()V

    return-void
.end method

.method public onOnehandModeChanged()V
    .locals 1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecDialpadFragmentManager;->hideDialpad()V

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/SecDialpadFragmentManager;->updateFragment()V

    return-void
.end method

.method public onSMultiWindowOnChanged()V
    .locals 2

    const-string v1, "SecDialpadFragmentManager - onSMultiWindowOnChanged"

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecDialpadFragmentManager;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/SecDialpadFragmentManager;->updateFragment()V

    iget-boolean v1, p0, Lcom/android/incallui/SecDialpadFragmentManager;->mIsShowing:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/SecDialpadFragmentManager;->mInCallActivity:Lcom/android/incallui/BaseInCallActivity;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/SecDialpadFragmentManager;->mCurrentFragment:Lcom/android/incallui/SecDialpadFragment;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/SecDialpadFragmentManager;->mInCallActivity:Lcom/android/incallui/BaseInCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/BaseInCallActivity;->getSecCallCardFragment()Lcom/android/incallui/SecCallCardUi;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecDialpadFragmentManager;->mInCallActivity:Lcom/android/incallui/BaseInCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/BaseInCallActivity;->getSecCallCardFragment()Lcom/android/incallui/SecCallCardUi;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/incallui/SecCallCardUi;->needToShowMenu()Z

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/SecDialpadFragmentManager;->mCurrentFragment:Lcom/android/incallui/SecDialpadFragment;

    invoke-virtual {v1, v0}, Lcom/android/incallui/SecDialpadFragment;->setUpdateCallMenuOnResume(Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/SecDialpadFragmentManager;->mInCallActivity:Lcom/android/incallui/BaseInCallActivity;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/SecDialpadFragmentManager;->mInCallActivity:Lcom/android/incallui/BaseInCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/BaseInCallActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/SecDialpadFragmentManager;->mInCallActivity:Lcom/android/incallui/BaseInCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/BaseInCallActivity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecDialpadFragmentManager;->showDialpadDelayed()V

    invoke-virtual {p0}, Lcom/android/incallui/SecDialpadFragmentManager;->hideDialpad()V

    goto :goto_0
.end method

.method protected bridge synthetic setCurrentFragment(Lcom/android/incallui/BaseFragment;)V
    .locals 0

    check-cast p1, Lcom/android/incallui/SecDialpadFragment;

    invoke-virtual {p0, p1}, Lcom/android/incallui/SecDialpadFragmentManager;->setCurrentFragment(Lcom/android/incallui/SecDialpadFragment;)V

    return-void
.end method

.method protected setCurrentFragment(Lcom/android/incallui/SecDialpadFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecDialpadFragmentManager;->mCurrentFragment:Lcom/android/incallui/SecDialpadFragment;

    return-void
.end method

.method protected setFragment(Ljava/lang/Enum;Z)V
    .locals 4

    const v0, 0x7f1001e8

    const/4 v1, 0x0

    sget-object v2, Lcom/android/incallui/SecDialpadFragmentManager$3;->$SwitchMap$com$android$incallui$SecDialpadFragmentManager$FragmentMode:[I

    check-cast p1, Lcom/android/incallui/SecDialpadFragmentManager$FragmentMode;

    invoke-virtual {p1}, Lcom/android/incallui/SecDialpadFragmentManager$FragmentMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/incallui/SecDialpadFragmentManager;->setFragmentInternal(ILandroid/app/Fragment;Z)V

    :cond_0
    return-void

    :pswitch_0
    new-instance v1, Lcom/android/incallui/SecDialpadFragment;

    invoke-direct {v1}, Lcom/android/incallui/SecDialpadFragment;-><init>()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public showDialpad()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecDialpadFragmentManager;->checkAndSet(Z)Lcom/android/incallui/SecDialpadFragment;

    iget-object v1, p0, Lcom/android/incallui/SecDialpadFragmentManager;->mInCallActivity:Lcom/android/incallui/BaseInCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/BaseInCallActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/SecDialpadFragmentManager;->getFragment()Lcom/android/incallui/SecDialpadFragment;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecDialpadFragmentManager;->getFragment()Lcom/android/incallui/SecDialpadFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/SecDialpadFragment;->setupLayout()V

    invoke-virtual {p0}, Lcom/android/incallui/SecDialpadFragmentManager;->getFragment()Lcom/android/incallui/SecDialpadFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    iput-boolean v2, p0, Lcom/android/incallui/SecDialpadFragmentManager;->mIsShowing:Z

    iget-object v1, p0, Lcom/android/incallui/SecDialpadFragmentManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/android/incallui/InCallUtils;->sendBroadcastDiapadStateforUWA(Landroid/content/Context;Z)V

    return-void
.end method

.method public showDialpadDelayed()V
    .locals 4

    iget-object v0, p0, Lcom/android/incallui/SecDialpadFragmentManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

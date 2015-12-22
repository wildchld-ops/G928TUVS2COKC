.class public Lcom/android/incallui/SecInCallActivity;
.super Lcom/android/incallui/BaseInCallActivity;
.source "SecInCallActivity.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Lcom/android/incallui/AccessoryEventHandler$AccessoryEventListener;
.implements Lcom/android/incallui/rcs/RcsBroadcastReceiver$RcsActionHandler;
.implements Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/SecInCallActivity$AutoAnsTimer;,
        Lcom/android/incallui/SecInCallActivity$InCallOrientationListener;,
        Lcom/android/incallui/SecInCallActivity$InCallActivityMenu;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/BaseInCallActivity;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/widget/PopupMenu$OnMenuItemClickListener;",
        "Lcom/android/incallui/AccessoryEventHandler$AccessoryEventListener;",
        "Lcom/android/incallui/rcs/RcsBroadcastReceiver$RcsActionHandler;",
        "Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;"
    }
.end annotation


# instance fields
.field private mAnimateDialpadOnShow:Z

.field private mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

.field private mAutoAnsTimer:Lcom/android/incallui/SecInCallActivity$AutoAnsTimer;

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mBluetoothHeadsetServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mCurrentMobileKeyboardCovered:I

.field private mCurrentOrientation:I

.field private mDataUsageLimitDialog:Landroid/app/AlertDialog;

.field private mDialog:Landroid/app/AlertDialog;

.field private mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDtmfText:Ljava/lang/String;

.field private mElaspedAMTime:I

.field private mHandler:Landroid/os/Handler;

.field private mHasWindowFocus:Z

.field private mInCallActivityMenu:Landroid/widget/PopupMenu;

.field private mInCallMenu:Lcom/android/incallui/InCallMenu;

.field private mIsAppSwitchSystemKeyEventRequested:Z

.field private mIsEasymode:Z

.field private mIsFirstLaunch:Z

.field private mIsForegroundActivity:Z

.field private mIsFromPopup:Z

.field private mIsLandscape:Z

.field private mIsNewOutgoingCall:Z

.field private mMenu:Lcom/android/incallui/InCallMenu;

.field mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

.field private mOnehandAnyScreenEnabledObserver:Landroid/database/ContentObserver;

.field private mOnehandEnabledObserver:Landroid/database/ContentObserver;

.field private mOrientationListener:Lcom/android/incallui/SecInCallActivity$InCallOrientationListener;

.field private mPostCharDialogFragment:Lcom/android/incallui/PostCharDialogFragment;

.field private mRcsBroadcastReceiver:Lcom/android/incallui/rcs/RcsBroadcastReceiver;

.field private mRcsInvitation:Lcom/android/incallui/rcs/RcsInvitation;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecorderMgr:Lcom/android/incallui/PhoneVoiceRecorderManager;

.field private mRotationEnabledObserver:Landroid/database/ContentObserver;

.field private mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

.field private mSecAnswerFragmentManager:Lcom/android/incallui/SecAnswerFragmentManager;

.field private mSecCallButtonContainer:Landroid/view/View;

.field private mSecCallButtonFragmentManager:Lcom/android/incallui/SecCallButtonFragmentManager;

.field private mSecCallCardContainer:Landroid/view/View;

.field private mSecCallCardFragmentManager:Lcom/android/incallui/SecCallCardFragmentManager;

.field private mSecConferenceManagerFragmentManager:Lcom/android/incallui/SecConferenceManagerFragmentManager;

.field private mSecDialpadFragmentManager:Lcom/android/incallui/SecDialpadFragmentManager;

.field private mSecVideoCallContainer:Landroid/view/View;

.field private mSecVideoCallFragmentManager:Lcom/android/incallui/SecVideoCallFragmentManager;

.field private mShowDialpadRequested:Z

.field private mShowPostCharWaitDialogCallId:Ljava/lang/String;

.field private mShowPostCharWaitDialogChars:Ljava/lang/String;

.field private mShowPostCharWaitDialogOnResume:Z

.field private mSlideIn:Landroid/view/animation/Animation;

.field mSlideInListner:Lcom/android/phone/common/animation/AnimationListenerAdapter;

.field private mSlideOut:Landroid/view/animation/Animation;

.field mSlideOutListener:Lcom/android/phone/common/animation/AnimationListenerAdapter;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mTouchPoint:Landroid/graphics/Point;

.field private mTtyNotificationDialog:Landroid/app/AlertDialog;

.field private mWifiDialog:Landroid/app/AlertDialog;

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/incallui/BaseInCallActivity;-><init>()V

    iput-object v2, p0, Lcom/android/incallui/SecInCallActivity;->mMenu:Lcom/android/incallui/InCallMenu;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/SecInCallActivity;->mIsEasymode:Z

    iput-object v2, p0, Lcom/android/incallui/SecInCallActivity;->mRecorderMgr:Lcom/android/incallui/PhoneVoiceRecorderManager;

    iput-object v2, p0, Lcom/android/incallui/SecInCallActivity;->mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    iput-object v2, p0, Lcom/android/incallui/SecInCallActivity;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    new-instance v0, Lcom/android/incallui/SecInCallActivity$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/SecInCallActivity$1;-><init>(Lcom/android/incallui/SecInCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mSlideInListner:Lcom/android/phone/common/animation/AnimationListenerAdapter;

    new-instance v0, Lcom/android/incallui/SecInCallActivity$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/SecInCallActivity$2;-><init>(Lcom/android/incallui/SecInCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mSlideOutListener:Lcom/android/phone/common/animation/AnimationListenerAdapter;

    new-instance v0, Lcom/android/incallui/SecInCallActivity$3;

    invoke-direct {v0, p0}, Lcom/android/incallui/SecInCallActivity$3;-><init>(Lcom/android/incallui/SecInCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mBluetoothHeadsetServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    new-instance v0, Lcom/android/incallui/SecInCallActivity$4;

    invoke-direct {v0, p0}, Lcom/android/incallui/SecInCallActivity$4;-><init>(Lcom/android/incallui/SecInCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/incallui/SecInCallActivity$5;

    invoke-direct {v0, p0}, Lcom/android/incallui/SecInCallActivity$5;-><init>(Lcom/android/incallui/SecInCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/incallui/SecInCallActivity$6;

    invoke-direct {v0, p0}, Lcom/android/incallui/SecInCallActivity$6;-><init>(Lcom/android/incallui/SecInCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    new-instance v0, Lcom/android/incallui/SecInCallActivity$7;

    invoke-direct {v0, p0}, Lcom/android/incallui/SecInCallActivity$7;-><init>(Lcom/android/incallui/SecInCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/incallui/SecInCallActivity$14;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/incallui/SecInCallActivity$14;-><init>(Lcom/android/incallui/SecInCallActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mRotationEnabledObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/incallui/SecInCallActivity$15;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/incallui/SecInCallActivity$15;-><init>(Lcom/android/incallui/SecInCallActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mOnehandEnabledObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/incallui/SecInCallActivity$16;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/incallui/SecInCallActivity$16;-><init>(Lcom/android/incallui/SecInCallActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mOnehandAnyScreenEnabledObserver:Landroid/database/ContentObserver;

    iput-object v2, p0, Lcom/android/incallui/SecInCallActivity;->mOrientationListener:Lcom/android/incallui/SecInCallActivity$InCallOrientationListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/SecInCallActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/SecInCallActivity;->setTopMarginOfDialpad(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/SecInCallActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/SecInCallActivity;->showDialpad(Z)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/incallui/SecInCallActivity;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecInCallActivity;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/incallui/SecInCallActivity;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/SecInCallActivity;->handleEventScreenOff(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/incallui/SecInCallActivity;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/SecInCallActivity;->onWindowRotationChanged(IZ)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/incallui/SecInCallActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/SecInCallActivity;->mIsForegroundActivity:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/incallui/SecInCallActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecInCallActivity;->handleShowGreenBarMessage()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/incallui/SecInCallActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecInCallActivity;->onDialogDismissed()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/incallui/SecInCallActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/incallui/SecInCallActivity;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mTtyNotificationDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private animateForActivityClosed()V
    .locals 3

    invoke-static {}, Lcom/android/incallui/PackageHelpers;->getBaseActivity()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "com.sec.android.app.launcher.activities.LauncherActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.sec.android.app.easylauncher.Launcher"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "animateForActivityClosed: baseActivity is launcher"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const v1, 0x7f050011

    const v2, 0x7f050012

    invoke-virtual {p0, v1, v2}, Lcom/android/incallui/SecInCallActivity;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method private animateForMoveDialpad(Z)V
    .locals 6

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0c0001

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0a0189

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v0, v3

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0a01a7

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v0, v3

    :cond_0
    if-eqz p1, :cond_1

    neg-int v3, v0

    :goto_0
    invoke-direct {p0, v3}, Lcom/android/incallui/SecInCallActivity;->setTopMarginOfDialpad(I)V

    const/4 v3, 0x2

    new-array v5, v3, [I

    if-eqz p1, :cond_2

    neg-int v3, v0

    :goto_1
    aput v3, v5, v4

    const/4 v3, 0x1

    if-eqz p1, :cond_3

    :goto_2
    aput v4, v5, v3

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    new-instance v3, Lcom/android/incallui/SecInCallActivity$19;

    invoke-direct {v3, p0}, Lcom/android/incallui/SecInCallActivity$19;-><init>(Lcom/android/incallui/SecInCallActivity;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v3, Landroid/view/animation/interpolator/QuintOut80;

    invoke-direct {v3}, Landroid/view/animation/interpolator/QuintOut80;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_1
    move v3, v4

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_1

    :cond_3
    neg-int v4, v0

    goto :goto_2
.end method

.method private awakenIfDayDreaming()V
    .locals 3

    :try_start_0
    const-string v2, "dreams"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "daydreaming! awake!"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private checkAndStartAnswerMemo()V
    .locals 11

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v8, "automatic_answering_machine"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_5

    move v3, v6

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "callsettings_ring_duration"

    const/16 v10, 0xd

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "callsettings_answer_memo"

    const/4 v10, 0x2

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v8

    invoke-static {v8}, Lcom/android/incallui/InCallUtils;->getSecCallExtra(Lcom/android/incallui/Call;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v8

    if-eqz v8, :cond_1

    const-string v8, "config_op_ui_call_setting_kdi"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v8

    invoke-static {v8}, Lcom/android/incallui/InCallUtils;->getSecCallExtra(Lcom/android/incallui/Call;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/services/telephony/common/SecCallExtra;->isVoicePartyCall()I

    move-result v8

    if-ne v8, v6, :cond_6

    move v4, v6

    :cond_1
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mIsFromPopup = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/incallui/SecInCallActivity;->mIsFromPopup:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mElaspedAMTime = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/incallui/SecInCallActivity;->mElaspedAMTime:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " limit = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v8, p0, Lcom/android/incallui/SecInCallActivity;->mIsFromPopup:Z

    if-eqz v8, :cond_2

    iget v8, p0, Lcom/android/incallui/SecInCallActivity;->mElaspedAMTime:I

    if-lez v8, :cond_2

    iget v8, p0, Lcom/android/incallui/SecInCallActivity;->mElaspedAMTime:I

    sub-int/2addr v5, v8

    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "limit = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "answerMemo = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "hasActiveCall = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "- all_sound_off == "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isSystemSettingAllSoundOff()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isVoicePartyCall = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isEmergencyMode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEmergencyMode()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "hasHoldCall = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/CallList;->hasHoldCall()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    if-ne v0, v6, :cond_7

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->checkPhoneVibrateOrSilentMode()Z

    move-result v8

    if-eqz v8, :cond_7

    :cond_3
    if-nez v3, :cond_7

    if-nez v4, :cond_7

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVoiceCall()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEmergencyMode()Z

    move-result v8

    if-nez v8, :cond_7

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/CallList;->hasHoldCall()Z

    move-result v8

    if-nez v8, :cond_7

    move v2, v6

    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "answerMemo  canAMStart "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_4

    const-string v6, "answerMemo  ON "

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->checkAvailableStorage()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-direct {p0, v5}, Lcom/android/incallui/SecInCallActivity;->startAutoAnsTimer(I)V

    :cond_4
    :goto_3
    return-void

    :cond_5
    move v3, v7

    goto/16 :goto_0

    :cond_6
    move v4, v7

    goto/16 :goto_1

    :cond_7
    move v2, v7

    goto :goto_2

    :cond_8
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/InCallPresenter;->memoryFullAnswerMemoNotification()V

    goto :goto_3
.end method

.method private destroyInCall()V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecInCallActivity;->addFlagTurnOnScreen(Z)V

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->getTtyNotification()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/services/telephony/common/SystemDBInterface;->setTtyNotification(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/SecInCallActivity;->mSecCallCardFragmentManager:Lcom/android/incallui/SecCallCardFragmentManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/SecInCallActivity;->mSecCallCardFragmentManager:Lcom/android/incallui/SecCallCardFragmentManager;

    invoke-virtual {v1}, Lcom/android/incallui/SecCallCardFragmentManager;->onDestroy()V

    iput-object v3, p0, Lcom/android/incallui/SecInCallActivity;->mSecCallCardFragmentManager:Lcom/android/incallui/SecCallCardFragmentManager;

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/SecInCallActivity;->mSecCallButtonFragmentManager:Lcom/android/incallui/SecCallButtonFragmentManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/SecInCallActivity;->mSecCallButtonFragmentManager:Lcom/android/incallui/SecCallButtonFragmentManager;

    invoke-virtual {v1}, Lcom/android/incallui/SecCallButtonFragmentManager;->onDestroy()V

    iput-object v3, p0, Lcom/android/incallui/SecInCallActivity;->mSecCallButtonFragmentManager:Lcom/android/incallui/SecCallButtonFragmentManager;

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/SecInCallActivity;->mSecAnswerFragmentManager:Lcom/android/incallui/SecAnswerFragmentManager;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/SecInCallActivity;->mSecAnswerFragmentManager:Lcom/android/incallui/SecAnswerFragmentManager;

    invoke-virtual {v1}, Lcom/android/incallui/SecAnswerFragmentManager;->onDestroy()V

    iput-object v3, p0, Lcom/android/incallui/SecInCallActivity;->mSecAnswerFragmentManager:Lcom/android/incallui/SecAnswerFragmentManager;

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/SecInCallActivity;->mSecDialpadFragmentManager:Lcom/android/incallui/SecDialpadFragmentManager;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/SecInCallActivity;->mSecDialpadFragmentManager:Lcom/android/incallui/SecDialpadFragmentManager;

    invoke-virtual {v1}, Lcom/android/incallui/SecDialpadFragmentManager;->onDestroy()V

    iput-object v3, p0, Lcom/android/incallui/SecInCallActivity;->mSecDialpadFragmentManager:Lcom/android/incallui/SecDialpadFragmentManager;

    :cond_4
    iget-object v1, p0, Lcom/android/incallui/SecInCallActivity;->mSecConferenceManagerFragmentManager:Lcom/android/incallui/SecConferenceManagerFragmentManager;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/incallui/SecInCallActivity;->mSecConferenceManagerFragmentManager:Lcom/android/incallui/SecConferenceManagerFragmentManager;

    invoke-virtual {v1}, Lcom/android/incallui/SecConferenceManagerFragmentManager;->onDestroy()V

    iput-object v3, p0, Lcom/android/incallui/SecInCallActivity;->mSecConferenceManagerFragmentManager:Lcom/android/incallui/SecConferenceManagerFragmentManager;

    :cond_5
    iget-object v1, p0, Lcom/android/incallui/SecInCallActivity;->mSecVideoCallFragmentManager:Lcom/android/incallui/SecVideoCallFragmentManager;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/incallui/SecInCallActivity;->mSecVideoCallFragmentManager:Lcom/android/incallui/SecVideoCallFragmentManager;

    invoke-virtual {v1}, Lcom/android/incallui/SecVideoCallFragmentManager;->onDestroy()V

    iput-object v3, p0, Lcom/android/incallui/SecInCallActivity;->mSecVideoCallFragmentManager:Lcom/android/incallui/SecVideoCallFragmentManager;

    :cond_6
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSupportRotation()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/SecInCallActivity;->mRotationEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_7
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSupportRotationOnlyCamera()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "display"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/incallui/SecInCallActivity;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    :cond_8
    const-string v1, "support_onehand_operation"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/SecInCallActivity;->mOnehandEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/SecInCallActivity;->mOnehandAnyScreenEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_9
    const-string v1, "voice_call_recording"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/incallui/SecInCallActivity;->mRecorderMgr:Lcom/android/incallui/PhoneVoiceRecorderManager;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/incallui/SecInCallActivity;->mRecorderMgr:Lcom/android/incallui/PhoneVoiceRecorderManager;

    invoke-virtual {v1}, Lcom/android/incallui/PhoneVoiceRecorderManager;->stopService()V

    iput-object v3, p0, Lcom/android/incallui/SecInCallActivity;->mRecorderMgr:Lcom/android/incallui/PhoneVoiceRecorderManager;

    :cond_a
    const-string v1, "automatic_answering_machine"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/incallui/SecInCallActivity;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/incallui/SecInCallActivity;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    invoke-virtual {v1}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->stopService()V

    :cond_b
    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->deInit()V

    return-void
.end method

.method private handleDialerKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDialerKeyDown: keyCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/incallui/SecInCallActivity;->okToDialDtmfTones(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecDialpadFragment()Lcom/android/incallui/SecDialpadUi;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/incallui/SecDialpadUi;->onDialerKeyDown(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleEventScreenOff(Landroid/content/Intent;)V
    .locals 3

    const-string v1, "support_penwindow_callscreen"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "why"

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleEventScreenOff: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->isPenMultiWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->returnToNormalWindowMode()V

    :cond_0
    return-void
.end method

.method private handleShowGreenBarMessage()V
    .locals 5

    const/4 v2, 0x1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isCoverClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/SecInCallActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v1, :cond_2

    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecInCallActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    iput-object v1, p0, Lcom/android/incallui/SecInCallActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->isOffhook()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/incallui/SecInCallActivity;->mHasWindowFocus:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/incallui/SecInCallActivity;->mIsForegroundActivity:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/incallui/SecInCallActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v4, 0x8

    if-ne v1, v4, :cond_3

    const/4 v1, 0x3

    :goto_1
    invoke-virtual {v3, v1}, Landroid/app/StatusBarManager;->setCallBackground(I)V

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method private hasPendingErrorDialog()Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hideCallPopup()V
    .locals 2

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getCallPopupService()Lcom/android/incallui/SecCallPopupService;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/incallui/SecCallPopupService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecInCallActivity;->stopService(Landroid/content/Intent;)Z

    :cond_0
    return-void
.end method

.method private hideVideoPopup()V
    .locals 2

    const-string v0, "hideVideoPopup"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getVideoPopupService()Lcom/android/incallui/SecVideoPopupService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->hideVideoPopup()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/incallui/SecVideoPopupService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecInCallActivity;->stopService(Landroid/content/Intent;)Z

    :cond_0
    return-void
.end method

.method private initializeInCall()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mSecCallButtonFragmentManager:Lcom/android/incallui/SecCallButtonFragmentManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/SecCallButtonFragmentManager;

    invoke-direct {v0, p0}, Lcom/android/incallui/SecCallButtonFragmentManager;-><init>(Lcom/android/incallui/SecInCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mSecCallButtonFragmentManager:Lcom/android/incallui/SecCallButtonFragmentManager;

    const v0, 0x7f1001e5

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecInCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mSecCallButtonContainer:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mSecAnswerFragmentManager:Lcom/android/incallui/SecAnswerFragmentManager;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/incallui/SecAnswerFragmentManager;

    invoke-direct {v0, p0}, Lcom/android/incallui/SecAnswerFragmentManager;-><init>(Lcom/android/incallui/SecInCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mSecAnswerFragmentManager:Lcom/android/incallui/SecAnswerFragmentManager;

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mSecDialpadFragmentManager:Lcom/android/incallui/SecDialpadFragmentManager;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/incallui/SecDialpadFragmentManager;

    invoke-direct {v0, p0}, Lcom/android/incallui/SecDialpadFragmentManager;-><init>(Lcom/android/incallui/SecInCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mSecDialpadFragmentManager:Lcom/android/incallui/SecDialpadFragmentManager;

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mSecConferenceManagerFragmentManager:Lcom/android/incallui/SecConferenceManagerFragmentManager;

    if-nez v0, :cond_3

    new-instance v0, Lcom/android/incallui/SecConferenceManagerFragmentManager;

    invoke-direct {v0, p0}, Lcom/android/incallui/SecConferenceManagerFragmentManager;-><init>(Lcom/android/incallui/SecInCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mSecConferenceManagerFragmentManager:Lcom/android/incallui/SecConferenceManagerFragmentManager;

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mSecVideoCallFragmentManager:Lcom/android/incallui/SecVideoCallFragmentManager;

    if-nez v0, :cond_4

    new-instance v0, Lcom/android/incallui/SecVideoCallFragmentManager;

    invoke-direct {v0, p0}, Lcom/android/incallui/SecVideoCallFragmentManager;-><init>(Lcom/android/incallui/SecInCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mSecVideoCallFragmentManager:Lcom/android/incallui/SecVideoCallFragmentManager;

    const v0, 0x7f1001e4

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecInCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mSecVideoCallContainer:Landroid/view/View;

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mSecCallCardFragmentManager:Lcom/android/incallui/SecCallCardFragmentManager;

    if-nez v0, :cond_5

    new-instance v0, Lcom/android/incallui/SecCallCardFragmentManager;

    invoke-direct {v0, p0}, Lcom/android/incallui/SecCallCardFragmentManager;-><init>(Lcom/android/incallui/SecInCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mSecCallCardFragmentManager:Lcom/android/incallui/SecCallCardFragmentManager;

    const v0, 0x7f1001e6

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecInCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mSecCallCardContainer:Landroid/view/View;

    :cond_5
    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->init()Lcom/android/incallui/secui/SecUiAdapter;

    return-void
.end method

.method private internalResolveIntent(Landroid/content/Intent;)V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v7, "android.intent.action.MAIN"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    const-string v7, "automatic_answering_machine"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    iput-boolean v9, p0, Lcom/android/incallui/SecInCallActivity;->mIsFromPopup:Z

    const-string v7, "isFromPopup"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "isFromPopup"

    invoke-virtual {p1, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/incallui/SecInCallActivity;->mIsFromPopup:Z

    :cond_0
    const-string v7, "elapsedTime"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "elapsedTime"

    invoke-virtual {p1, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/incallui/SecInCallActivity;->mElaspedAMTime:I

    :cond_1
    const-string v7, "InCallActivity.show_dialpad"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "InCallActivity.show_dialpad"

    invoke-virtual {p1, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "- internalResolveIntent: SHOW_DIALPAD_EXTRA: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "concept_usa_vzw"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    :cond_2
    invoke-direct {p0, v6}, Lcom/android/incallui/SecInCallActivity;->relaunchedFromDialer(Z)V

    :cond_3
    const-string v7, "InCallActivity.new_outgoing_call"

    invoke-virtual {p1, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_d

    const-string v7, "InCallActivity.new_outgoing_call"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v1

    :cond_4
    const/4 v2, 0x0

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getTelecommCall()Landroid/telecom/Call;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telecom/Call$Details;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    :cond_5
    if-nez v2, :cond_6

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    if-eqz v1, :cond_8

    invoke-direct {p0, v1}, Lcom/android/incallui/SecInCallActivity;->isEmergencyCall(Lcom/android/incallui/Call;)Z

    move-result v7

    if-nez v7, :cond_8

    const-string v7, "selectPhoneAccountAccounts"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v7

    if-nez v7, :cond_8

    if-eqz v5, :cond_7

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_8

    :cond_7
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v7

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/incallui/TelecomAdapter;->disconnectCall(Ljava/lang/String;)V

    :cond_8
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "- internalResolveIntent: mIsNewOutgoingCall = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/incallui/SecInCallActivity;->mIsNewOutgoingCall:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/CallList;->getWaitingForAccountCall()Lcom/android/incallui/Call;

    move-result-object v4

    if-eqz v4, :cond_f

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecCallCardFragment()Lcom/android/incallui/SecCallCardUi;

    move-result-object v7

    if-eqz v7, :cond_9

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecCallCardFragment()Lcom/android/incallui/SecCallCardUi;

    move-result-object v7

    invoke-interface {v7, v9}, Lcom/android/incallui/SecCallCardUi;->setVisible(Z)V

    :cond_9
    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecCallButtonFragment()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v7

    if-eqz v7, :cond_a

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecCallButtonFragment()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v7

    invoke-interface {v7, v9}, Lcom/android/incallui/SecCallButtonUi;->setVisible(Z)V

    :cond_a
    invoke-virtual {v4}, Lcom/android/incallui/Call;->getTelecommCall()Landroid/telecom/Call;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telecom/Call$Details;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_e

    const-string v7, "selectPhoneAccountAccounts"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    :goto_1
    new-instance v3, Lcom/android/incallui/SecInCallActivity$11;

    invoke-direct {v3, p0}, Lcom/android/incallui/SecInCallActivity$11;-><init>(Lcom/android/incallui/SecInCallActivity;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    const v8, 0x7f0d017e

    invoke-static {v7, v8, v10, v5, v3}, Lcom/android/incallui/SelectPhoneAccountDialogFragment;->showAccountDialog(Landroid/app/FragmentManager;IZLjava/util/List;Lcom/android/incallui/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;)V

    :cond_b
    :goto_2
    const-string v7, "support_swis"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-static {}, Lcom/android/incallui/SwisHelper;->needToShow()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isCoverClosed()Z

    move-result v7

    if-nez v7, :cond_c

    invoke-static {}, Lcom/android/incallui/SwisHelper;->resumeSwis()V

    :cond_c
    return-void

    :cond_d
    iput-boolean v9, p0, Lcom/android/incallui/SecInCallActivity;->mIsNewOutgoingCall:Z

    goto :goto_0

    :cond_e
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    :cond_f
    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecCallCardFragment()Lcom/android/incallui/SecCallCardUi;

    move-result-object v7

    if-eqz v7, :cond_10

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecCallCardFragment()Lcom/android/incallui/SecCallCardUi;

    move-result-object v7

    invoke-interface {v7, v10}, Lcom/android/incallui/SecCallCardUi;->setVisible(Z)V

    :cond_10
    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecCallButtonFragment()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v7

    if-eqz v7, :cond_b

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecCallButtonFragment()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v7

    invoke-interface {v7, v10}, Lcom/android/incallui/SecCallButtonUi;->setVisible(Z)V

    goto :goto_2
.end method

.method private isEmergencyCall(Lcom/android/incallui/Call;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getHandle()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method private isKeyEventDtmfCharacters(I)Z
    .locals 1

    const/4 v0, 0x7

    if-lt p1, v0, :cond_0

    const/16 v0, 0x12

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final isNonSeparator(C)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2c

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isScreenTypeLandscape()Z
    .locals 3

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v0

    const-string v2, "us_volte_ui"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isQvgaLandscapeVideoCall(Lcom/android/incallui/Call;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSLandscapeConfCall()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVgaLandscapeVideoCall()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isScreenTypeSensor(Landroid/content/res/Configuration;)Z
    .locals 1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSupportRotation()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->isSupportWindowRotation()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchVideoPopup(I)V
    .locals 2

    const/4 v1, 0x1

    const-string v0, "launchVideoPopup"

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-direct {p0, p1}, Lcom/android/incallui/SecInCallActivity;->shouldLaunchVideoPopup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/incallui/SecVideoPopupService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecInCallActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void

    :cond_0
    const-string v0, "shouldLaunchVideoPopup()... false"

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private okToDialDtmfTones(I)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/incallui/SecInCallActivity;->mSecDialpadFragmentManager:Lcom/android/incallui/SecDialpadFragmentManager;

    if-eqz v4, :cond_5

    const-string v4, "support_dialpad_by_hardkey"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "support_folder_hardkey"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/incallui/SecInCallActivity;->isKeyEventDtmfCharacters(I)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v5, 0x9

    if-eq v4, v5, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_2

    :cond_1
    const-string v3, "okToDialDTMFTones call disconnect and return false"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return v2

    :cond_2
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/4 v5, 0x6

    if-eq v4, v5, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_6

    :cond_3
    move v1, v3

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecDialpadFragment()Lcom/android/incallui/SecDialpadUi;

    move-result-object v2

    if-nez v2, :cond_5

    invoke-direct {p0, p1}, Lcom/android/incallui/SecInCallActivity;->isKeyEventDtmfCharacters(I)Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/android/incallui/SecInCallActivity;->mSecDialpadFragmentManager:Lcom/android/incallui/SecDialpadFragmentManager;

    invoke-virtual {v2, v3}, Lcom/android/incallui/SecDialpadFragmentManager;->checkAndSet(Z)Lcom/android/incallui/SecDialpadFragment;

    :cond_5
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "okToDialDTMFTones okToDial : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move v2, v1

    goto :goto_0

    :cond_6
    move v1, v2

    goto :goto_1

    :cond_7
    const/4 v1, 0x0

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->isDialpadVisible()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v1, 0x1

    goto :goto_2
.end method

.method private onDialogDismissed()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->onDismissDialog()V

    return-void
.end method

.method private onWindowRotationChanged(IZ)V
    .locals 1

    invoke-static {}, Lcom/android/incallui/secservice/SecVideoCallManager;->getInstance()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/secservice/SecVideoCallManager;->onWindowRotationChanged(IZ)V

    :cond_0
    return-void
.end method

.method private queryForCallPlus()V
    .locals 9

    const/4 v8, 0x2

    const/4 v5, 0x1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v6

    if-eqz v6, :cond_2

    move v3, v5

    :goto_0
    const/4 v2, 0x0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->hasIncomingCall()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v2

    :cond_0
    :goto_1
    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/SecInCallActivity;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "queryForCallPlus number : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_1
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v6, "ARG_MSISDN"

    invoke-virtual {v0, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "ARG_COLUMNS"

    sget-object v7, Lcom/android/incallui/CallContentContract;->COMPOSER_DATA:[Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v6, "ARG_MSISDN"

    invoke-virtual {v1, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "ARG_COLUMNS"

    sget-object v7, Lcom/android/incallui/UIEntryPointsContract;->UI_ENTRY_POINTS_COMPOSER_COLUMNS:[Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v6

    invoke-virtual {v6, v5, v0, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v5

    invoke-virtual {v5, v8, v1, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    :goto_2
    return-void

    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v2

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v2

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/LoaderManager;->destroyLoader(I)V

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/app/LoaderManager;->destroyLoader(I)V

    goto :goto_2
.end method

.method private relaunchedFromDialer(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/android/incallui/SecInCallActivity;->mShowDialpadRequested:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/incallui/SecInCallActivity;->mAnimateDialpadOnShow:Z

    iget-boolean v1, p0, Lcom/android/incallui/SecInCallActivity;->mShowDialpadRequested:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/TelecomAdapter;->unholdCall(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private requestSystemKeyEvent(IZ)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/SecInCallActivity;->mWindowManager:Landroid/view/IWindowManager;

    if-nez v1, :cond_0

    const-string v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/SecInCallActivity;->mWindowManager:Landroid/view/IWindowManager;

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/SecInCallActivity;->mWindowManager:Landroid/view/IWindowManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/SecInCallActivity;->mWindowManager:Landroid/view/IWindowManager;

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestSystemKeyEvent - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setTopMarginOfDialpad(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecDialpadFragment()Lcom/android/incallui/SecDialpadUi;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecDialpadFragment()Lcom/android/incallui/SecDialpadUi;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/incallui/SecDialpadUi;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecDialpadFragment()Lcom/android/incallui/SecDialpadUi;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/incallui/SecDialpadUi;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecDialpadFragment()Lcom/android/incallui/SecDialpadUi;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/incallui/SecDialpadUi;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private shouldLaunchVideoPopup(I)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/InCallUtils;->hasLiveCallToDisplay(Lcom/android/incallui/CallList;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "shouldLaunchVideoPopup: Not video call"

    invoke-static {p0, v2, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    const-string v2, "support_mobilecarrier"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isCarrierPhoneMode()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "shouldLaunchVideoPopup: carrier-phone mode"

    invoke-static {p0, v2, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->isPenMultiWindow()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "shouldLaunchVideoPopup: isPenMultiWindow"

    invoke-static {p0, v2, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->enabledKidsModeCallApp()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "shouldLaunchVideoPopup: Kids mode"

    invoke-static {p0, v2, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    packed-switch p1, :pswitch_data_0

    :cond_5
    const-string v0, "shouldLaunchVideoPopup: return true"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :pswitch_0
    const-string v2, "com.android.incallui.SecInCallActivity"

    invoke-static {v2}, Lcom/android/incallui/PackageHelpers;->isTopActivityRunning(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "shouldLaunchVideoPopup: INCALL_ACTIVITY is top activity"

    invoke-static {p0, v2, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private showDialpad(Z)V
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/incallui/SecInCallActivity;->mSecDialpadFragmentManager:Lcom/android/incallui/SecDialpadFragmentManager;

    if-eqz v3, :cond_1

    if-eqz p1, :cond_4

    iget-object v3, p0, Lcom/android/incallui/SecInCallActivity;->mSecDialpadFragmentManager:Lcom/android/incallui/SecDialpadFragmentManager;

    invoke-virtual {v3}, Lcom/android/incallui/SecDialpadFragmentManager;->showDialpad()V

    invoke-direct {p0}, Lcom/android/incallui/SecInCallActivity;->updateDialpadIndicatorArea()V

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecCallCardFragment()Lcom/android/incallui/SecCallCardUi;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecCallCardFragment()Lcom/android/incallui/SecCallCardUi;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/incallui/SecCallCardUi;->needToShowMenu()Z

    move-result v1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/incallui/SecInCallActivity;->setPrimaryCallMenuForDialpad(Z)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecCallButtonFragment()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecCallButtonFragment()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/android/incallui/SecCallButtonUi;->updateCallButtons(Lcom/android/incallui/Call;)V

    :cond_2
    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v3

    if-nez p1, :cond_3

    const/4 v2, 0x1

    :cond_3
    invoke-virtual {v3, v2}, Lcom/android/incallui/secui/SecUiAdapter;->showCallBannerByDialpad(Z)V

    return-void

    :cond_4
    iget-object v3, p0, Lcom/android/incallui/SecInCallActivity;->mSecDialpadFragmentManager:Lcom/android/incallui/SecDialpadFragmentManager;

    invoke-virtual {v3}, Lcom/android/incallui/SecDialpadFragmentManager;->hideDialpad()V

    goto :goto_0
.end method

.method private showErrorDialog(Ljava/lang/CharSequence;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Show Dialog: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->dismissPendingDialogs()V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0129

    new-instance v2, Lcom/android/incallui/SecInCallActivity$13;

    invoke-direct {v2, p0}, Lcom/android/incallui/SecInCallActivity$13;-><init>(Lcom/android/incallui/SecInCallActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/SecInCallActivity$12;

    invoke-direct {v1, p0}, Lcom/android/incallui/SecInCallActivity$12;-><init>(Lcom/android/incallui/SecInCallActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showGreenBar(Z)V
    .locals 5

    const/16 v4, 0xa0

    const-string v0, "not_show_call_view_statusbar"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v0, :cond_2

    const-string v0, "statusbar"

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecInCallActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    :cond_2
    const-string v0, "support_mobilecarrier"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isCarrierPhoneMode()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "don\'t show green bar during carrier-phone mode."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_3
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isCoverClosed()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "don\'t show green bar during cover closed"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showGreenBar = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->isOffhook()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/SecInCallActivity;->mHasWindowFocus:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->setCallBackground(I)V

    goto :goto_0
.end method

.method private startAutoAnsTimer(I)V
    .locals 6

    const-wide/16 v2, 0xa

    const-string v0, "startAutoAnsTimer "

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->resetAutoAnsTimer()V

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/SecInCallActivity;->initializeInCall()V

    new-instance v0, Lcom/android/incallui/SecInCallActivity$AutoAnsTimer;

    move-object v1, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/incallui/SecInCallActivity$AutoAnsTimer;-><init>(Lcom/android/incallui/SecInCallActivity;JJ)V

    iput-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mAutoAnsTimer:Lcom/android/incallui/SecInCallActivity$AutoAnsTimer;

    :goto_0
    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isSystemSettingAllSoundOff()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mAutoAnsTimer:Lcom/android/incallui/SecInCallActivity$AutoAnsTimer;

    invoke-virtual {v0}, Lcom/android/incallui/SecInCallActivity$AutoAnsTimer;->start()Landroid/os/CountDownTimer;

    :cond_0
    :goto_1
    return-void

    :cond_1
    new-instance v0, Lcom/android/incallui/SecInCallActivity$AutoAnsTimer;

    mul-int/lit16 v1, p1, 0x3e8

    int-to-long v2, v1

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/incallui/SecInCallActivity$AutoAnsTimer;-><init>(Lcom/android/incallui/SecInCallActivity;JJ)V

    iput-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mAutoAnsTimer:Lcom/android/incallui/SecInCallActivity$AutoAnsTimer;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mAutoAnsTimer:Lcom/android/incallui/SecInCallActivity$AutoAnsTimer;

    invoke-virtual {v0}, Lcom/android/incallui/SecInCallActivity$AutoAnsTimer;->start()Landroid/os/CountDownTimer;

    goto :goto_1
.end method

.method private static stripSeparators(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/SecInCallActivity;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const-string v4, "InCall"

    const-string v5, "InCallActivity striping done...."

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private updateCameraStateOnMultiWindow()V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/incallui/SecInCallActivity;->mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/incallui/SecInCallActivity;->mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/incallui/SecInCallActivity;->mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/SecInCallActivity;->mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMinimized()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMultiWindowStyleChanged isMinimized : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/secservice/SecVideoCallManager;->getInstance()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->isDialpadVisible()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/incallui/secservice/SecVideoCallManager;->setCameraOnOff(ZZ)V

    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/android/incallui/secservice/SecVideoCallManager;->getInstance()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->isDialpadVisible()Z

    move-result v2

    invoke-virtual {v1, v3, v2}, Lcom/android/incallui/secservice/SecVideoCallManager;->setCameraOnOff(ZZ)V

    goto :goto_0
.end method

.method private updateDialpadIndicatorArea()V
    .locals 2

    const-string v0, "support_penwindow_callscreen"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecDialpadFragment()Lcom/android/incallui/SecDialpadUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->isPenMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecDialpadFragment()Lcom/android/incallui/SecDialpadUi;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/incallui/SecDialpadUi;->showIndicator(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecDialpadFragment()Lcom/android/incallui/SecDialpadUi;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/incallui/SecDialpadUi;->showIndicator(Z)V

    goto :goto_0
.end method

.method private updateIndicatorArea()V
    .locals 2

    const-string v0, "support_penwindow_callscreen"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->isPenMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/secui/SecUiAdapter;->showIndicatorArea(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/secui/SecUiAdapter;->showIndicatorArea(Z)V

    goto :goto_0
.end method

.method private updateIndicatorAreaBg()V
    .locals 1

    const-string v0, "support_penwindow_callscreen"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->isPenMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVoiceCall()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mSecCallCardFragmentManager:Lcom/android/incallui/SecCallCardFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/SecCallCardFragmentManager;->getFragment()Lcom/android/incallui/SecCallCardFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/SecCallCardFragment;->updateCallCardIndicatorAreaBg()V

    :cond_0
    return-void
.end method

.method private updateScreenType(Landroid/content/res/Configuration;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x5

    invoke-direct {p0, p1}, Lcom/android/incallui/SecInCallActivity;->isScreenTypeSensor(Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/SecInCallActivity;->isScreenTypeLandscape()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isConnectedMirrorLink()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    const-string v1, "support_penwindow_rotation"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->isPenMultiWindow()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateScreenType... screenType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecInCallActivity;->setRequestedOrientation(I)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getRequestedOrientation()I

    move-result v1

    if-eq v1, v0, :cond_3

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecInCallActivity;->setRequestedOrientation(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateScreenType... screenType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / RequestedOrientaiton: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getRequestedOrientation()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private voiceCallClicked()V
    .locals 5

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "roaming_auto_dial"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isRoamingArea()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "feature_lgt"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "disable_roaming_multi_imsi"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v3, "RADDialOption"

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isCallNumberConverted()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "korea"

    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/incallui/InCallUtilsMultiSIM;->setAvailablePhoneAccountHandle(Landroid/content/Intent;Landroid/content/Context;)Landroid/content/Intent;

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_2
    return-void

    :cond_3
    const-string v2, "abroad"

    goto :goto_0
.end method


# virtual methods
.method public addFlagTurnOnScreen(Z)V
    .locals 3

    const/high16 v2, 0x200000

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addFlagTurnOnScreen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method public answeringMode()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->checkAvailableStorage()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsFromPopup "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/incallui/SecInCallActivity;->mIsFromPopup:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isAutoAnswered "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v4}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->setAutoAnswered(Z)V

    iget-object v1, p0, Lcom/android/incallui/SecInCallActivity;->mSecAnswerFragmentManager:Lcom/android/incallui/SecAnswerFragmentManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecInCallActivity;->mSecAnswerFragmentManager:Lcom/android/incallui/SecAnswerFragmentManager;

    invoke-virtual {v1}, Lcom/android/incallui/SecAnswerFragmentManager;->getFragment()Lcom/android/incallui/SecAnswerFragment;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecInCallActivity;->mSecAnswerFragmentManager:Lcom/android/incallui/SecAnswerFragmentManager;

    invoke-virtual {v1}, Lcom/android/incallui/SecAnswerFragmentManager;->getFragment()Lcom/android/incallui/SecAnswerFragment;

    move-result-object v1

    invoke-virtual {v1, v3, p0}, Lcom/android/incallui/SecAnswerFragment;->onAnswer(ILandroid/content/Context;)V

    :cond_0
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnsweringMode()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v4}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->setAutoAnsweringMode(Z)V

    :cond_1
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->playGuidance()V

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->resetAutoAnsTimer()V

    iput-boolean v3, p0, Lcom/android/incallui/SecInCallActivity;->mIsFromPopup:Z

    :cond_3
    :goto_0
    return-void

    :cond_4
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->checkAvailableStorage()Z

    move-result v1

    if-nez v1, :cond_3

    const v1, 0x7f0d039d

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public changeSideDialPad(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecDialpadFragment()Lcom/android/incallui/SecDialpadUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecDialpadFragment()Lcom/android/incallui/SecDialpadUi;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/incallui/SecDialpadUi;->onChangeSideDialPad(I)V

    :cond_0
    return-void
.end method

.method public checkAndControlWindowRoation()V
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "accelerometer_rotation"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_1

    move v0, v4

    :goto_0
    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallUtils;->hasVideoCall()Z

    move-result v5

    if-eqz v5, :cond_2

    move v2, v3

    :goto_1
    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/android/incallui/SecInCallActivity;->mOrientationListener:Lcom/android/incallui/SecInCallActivity$InCallOrientationListener;

    if-nez v4, :cond_0

    const-string v4, "enableWindowRoation"

    invoke-static {p0, v4, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    new-instance v3, Lcom/android/incallui/SecInCallActivity$InCallOrientationListener;

    invoke-direct {v3, p0, p0}, Lcom/android/incallui/SecInCallActivity$InCallOrientationListener;-><init>(Lcom/android/incallui/SecInCallActivity;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/incallui/SecInCallActivity;->mOrientationListener:Lcom/android/incallui/SecInCallActivity$InCallOrientationListener;

    iget-object v3, p0, Lcom/android/incallui/SecInCallActivity;->mOrientationListener:Lcom/android/incallui/SecInCallActivity$InCallOrientationListener;

    invoke-virtual {v3}, Lcom/android/incallui/SecInCallActivity$InCallOrientationListener;->enable()V

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/incallui/SecInCallActivity;->updateScreenType(Landroid/content/res/Configuration;)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/android/incallui/SecInCallActivity;->mOrientationListener:Lcom/android/incallui/SecInCallActivity$InCallOrientationListener;

    if-eqz v5, :cond_0

    const-string v5, "disableWindowRoation"

    invoke-static {p0, v5, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/android/incallui/SecInCallActivity;->mOrientationListener:Lcom/android/incallui/SecInCallActivity$InCallOrientationListener;

    invoke-virtual {v3}, Lcom/android/incallui/SecInCallActivity$InCallOrientationListener;->disable()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/incallui/SecInCallActivity;->mOrientationListener:Lcom/android/incallui/SecInCallActivity$InCallOrientationListener;

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/incallui/SecInCallActivity;->updateScreenType(Landroid/content/res/Configuration;)V

    const-string v3, "window"

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecInCallActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v3

    invoke-direct {p0, v3, v4}, Lcom/android/incallui/SecInCallActivity;->onWindowRotationChanged(IZ)V

    goto :goto_2
.end method

.method public clearDigits()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecDialpadFragment()Lcom/android/incallui/SecDialpadUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecDialpadFragment()Lcom/android/incallui/SecDialpadUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/SecDialpadUi;->clearDigits()V

    :cond_0
    return-void
.end method

.method public dismissDataUsageLimitDialog()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mDataUsageLimitDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mDataUsageLimitDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mDataUsageLimitDialog:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public dismissDialogForDisconnect()V
    .locals 2

    iget-object v1, p0, Lcom/android/incallui/SecInCallActivity;->mSecAnswerFragmentManager:Lcom/android/incallui/SecAnswerFragmentManager;

    invoke-virtual {v1}, Lcom/android/incallui/SecAnswerFragmentManager;->getFragment()Lcom/android/incallui/SecAnswerFragment;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecInCallActivity;->mSecAnswerFragmentManager:Lcom/android/incallui/SecAnswerFragmentManager;

    invoke-virtual {v1}, Lcom/android/incallui/SecAnswerFragmentManager;->getFragment()Lcom/android/incallui/SecAnswerFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/SecAnswerFragment;->dismissWaitingCallPopup()V

    :cond_0
    const-string v1, "data_usage_limit"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/SecInCallActivity;->mDataUsageLimitDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->hasLiveCallToDisplay(Lcom/android/incallui/CallList;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/SecInCallActivity;->mDataUsageLimitDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/incallui/SecInCallActivity;->mDataUsageLimitDialog:Landroid/app/AlertDialog;

    :cond_1
    return-void
.end method

.method public dismissInCallMenu()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    invoke-virtual {v0}, Lcom/android/incallui/InCallMenu;->isMenuOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mInCallActivityMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    const-string v0, "- dismissInCallMenu"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mInCallActivityMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    :cond_0
    return-void
.end method

.method public dismissKeyguard(Z)V
    .locals 2

    const/high16 v1, 0x400000

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method public dismissPendingDialogs()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mDialog:Landroid/app/AlertDialog;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mSecAnswerFragmentManager:Lcom/android/incallui/SecAnswerFragmentManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mSecAnswerFragmentManager:Lcom/android/incallui/SecAnswerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/SecAnswerFragmentManager;->getFragment()Lcom/android/incallui/SecAnswerFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mSecAnswerFragmentManager:Lcom/android/incallui/SecAnswerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/SecAnswerFragmentManager;->getFragment()Lcom/android/incallui/SecAnswerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/SecAnswerFragment;->dismissPendingDialogues()V

    :cond_1
    const-string v0, "roaming_enhancement"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->getInstance()Lcom/android/incallui/operator/usa/InCallUIExtensionManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->dismissCallRoamingGuardDialog(Z)V

    :cond_2
    return-void
.end method

.method public dismissPostCharPauseDialog()V
    .locals 2

    const/16 v1, 0xa2

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mPostCharDialogFragment:Lcom/android/incallui/PostCharDialogFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mPostCharDialogFragment:Lcom/android/incallui/PostCharDialogFragment;

    invoke-virtual {v0}, Lcom/android/incallui/PostCharDialogFragment;->dismissAllowingStateLoss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mPostCharDialogFragment:Lcom/android/incallui/PostCharDialogFragment;

    :cond_1
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecCallCardFragment()Lcom/android/incallui/SecCallCardUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecCallCardFragment()Lcom/android/incallui/SecCallCardUi;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/incallui/SecCallCardUi;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    :cond_0
    invoke-super {p0, p1}, Lcom/android/incallui/BaseInCallActivity;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public displayDialpad(ZZ)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->isDialpadVisible()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->isDialpadVisible()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->isConferenceCallManagerShowing()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 p2, 0x0

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->isShowDialpadRequested()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 p2, 0x0

    :cond_4
    if-nez p2, :cond_9

    invoke-direct {p0, p1}, Lcom/android/incallui/SecInCallActivity;->showDialpad(Z)V

    invoke-direct {p0, v2}, Lcom/android/incallui/SecInCallActivity;->setTopMarginOfDialpad(I)V

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecCallButtonFragment()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecCallButtonFragment()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/incallui/SecCallButtonUi;->returnButtonsForDialpad(Z)V

    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecDialpadFragment()Lcom/android/incallui/SecDialpadUi;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecDialpadFragment()Lcom/android/incallui/SecDialpadUi;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/incallui/SecDialpadUi;->getView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecDialpadFragment()Lcom/android/incallui/SecDialpadUi;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/incallui/SecDialpadUi;->showElapsedTimeContainer()V

    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecCallCardFragment()Lcom/android/incallui/SecCallCardUi;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecCallCardFragment()Lcom/android/incallui/SecCallCardUi;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/incallui/SecCallCardUi;->changeViewForMoveDialpad(Z)V

    :cond_7
    :goto_1
    const-string v3, "clear_dialpad_digits"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecDialpadFragment()Lcom/android/incallui/SecDialpadUi;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecDialpadFragment()Lcom/android/incallui/SecDialpadUi;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/incallui/SecDialpadUi;->clearDigits()V

    :cond_8
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getProximitySensor()Lcom/android/incallui/ProximitySensor;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/incallui/ProximitySensor;->onDialpadVisible(Z)V

    const-string v3, "prohibit_candid_shot"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p1, :cond_18

    invoke-static {}, Lcom/android/incallui/secservice/SecVideoCallManager;->getInstance()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v1

    invoke-virtual {v1, v2, p1}, Lcom/android/incallui/secservice/SecVideoCallManager;->setCameraOnOff(ZZ)V

    goto/16 :goto_0

    :cond_9
    if-eqz p1, :cond_a

    invoke-direct {p0, v1}, Lcom/android/incallui/SecInCallActivity;->showDialpad(Z)V

    :cond_a
    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecCallCardFragment()Lcom/android/incallui/SecCallCardUi;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecCallCardFragment()Lcom/android/incallui/SecCallCardUi;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/incallui/SecCallCardUi;->onDialpadVisiblityChange(Z)V

    :cond_b
    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecDialpadFragment()Lcom/android/incallui/SecDialpadUi;

    move-result-object v3

    if-eqz v3, :cond_f

    if-nez p1, :cond_c

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecDialpadFragment()Lcom/android/incallui/SecDialpadUi;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/incallui/SecDialpadUi;->hideElapsedTimeContainer()V

    :cond_c
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v3

    if-nez v3, :cond_11

    invoke-direct {p0, p1}, Lcom/android/incallui/SecInCallActivity;->animateForMoveDialpad(Z)V

    :goto_2
    iget-object v3, p0, Lcom/android/incallui/SecInCallActivity;->mSlideIn:Landroid/view/animation/Animation;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/android/incallui/SecInCallActivity;->mSlideOut:Landroid/view/animation/Animation;

    if-nez v3, :cond_e

    :cond_d
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v3

    if-ne v3, v1, :cond_12

    move v0, v1

    :goto_3
    iget-boolean v3, p0, Lcom/android/incallui/SecInCallActivity;->mIsLandscape:Z

    if-eqz v3, :cond_15

    if-eqz v0, :cond_13

    const v3, 0x7f050007

    :goto_4
    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/SecInCallActivity;->mSlideIn:Landroid/view/animation/Animation;

    if-eqz v0, :cond_14

    const v3, 0x7f05000a

    :goto_5
    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/SecInCallActivity;->mSlideOut:Landroid/view/animation/Animation;

    :goto_6
    iget-object v3, p0, Lcom/android/incallui/SecInCallActivity;->mSlideIn:Landroid/view/animation/Animation;

    new-instance v4, Landroid/view/animation/interpolator/QuintOut80;

    invoke-direct {v4}, Landroid/view/animation/interpolator/QuintOut80;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v3, p0, Lcom/android/incallui/SecInCallActivity;->mSlideOut:Landroid/view/animation/Animation;

    new-instance v4, Landroid/view/animation/interpolator/QuintOut80;

    invoke-direct {v4}, Landroid/view/animation/interpolator/QuintOut80;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v3, p0, Lcom/android/incallui/SecInCallActivity;->mSlideIn:Landroid/view/animation/Animation;

    iget-object v4, p0, Lcom/android/incallui/SecInCallActivity;->mSlideInListner:Lcom/android/phone/common/animation/AnimationListenerAdapter;

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v3, p0, Lcom/android/incallui/SecInCallActivity;->mSlideOut:Landroid/view/animation/Animation;

    iget-object v4, p0, Lcom/android/incallui/SecInCallActivity;->mSlideOutListener:Lcom/android/phone/common/animation/AnimationListenerAdapter;

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_e
    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecDialpadFragment()Lcom/android/incallui/SecDialpadUi;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/incallui/SecDialpadUi;->getView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_f

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecDialpadFragment()Lcom/android/incallui/SecDialpadUi;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/incallui/SecDialpadUi;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecDialpadFragment()Lcom/android/incallui/SecDialpadUi;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/incallui/SecDialpadUi;->getView()Landroid/view/View;

    move-result-object v4

    if-eqz p1, :cond_16

    iget-object v3, p0, Lcom/android/incallui/SecInCallActivity;->mSlideIn:Landroid/view/animation/Animation;

    :goto_7
    invoke-virtual {v4, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_f
    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecCallCardFragment()Lcom/android/incallui/SecCallCardUi;

    move-result-object v3

    if-eqz v3, :cond_10

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecCallCardFragment()Lcom/android/incallui/SecCallCardUi;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/incallui/SecCallCardUi;->animateForMoveDialpad(Z)V

    :cond_10
    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecCallButtonFragment()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecDialpadFragment()Lcom/android/incallui/SecDialpadUi;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecDialpadFragment()Lcom/android/incallui/SecDialpadUi;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/incallui/SecDialpadUi;->getView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecDialpadFragment()Lcom/android/incallui/SecDialpadUi;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/incallui/SecDialpadUi;->showElapsedTimeContainer()V

    goto/16 :goto_1

    :cond_11
    invoke-direct {p0, v2}, Lcom/android/incallui/SecInCallActivity;->setTopMarginOfDialpad(I)V

    goto/16 :goto_2

    :cond_12
    move v0, v2

    goto/16 :goto_3

    :cond_13
    const v3, 0x7f050008

    goto/16 :goto_4

    :cond_14
    const v3, 0x7f05000b

    goto/16 :goto_5

    :cond_15
    const v3, 0x7f050006

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/SecInCallActivity;->mSlideIn:Landroid/view/animation/Animation;

    const v3, 0x7f050009

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/SecInCallActivity;->mSlideOut:Landroid/view/animation/Animation;

    goto/16 :goto_6

    :cond_16
    iget-object v3, p0, Lcom/android/incallui/SecInCallActivity;->mSlideOut:Landroid/view/animation/Animation;

    goto :goto_7

    :cond_17
    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecCallButtonFragment()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/incallui/SecCallButtonUi;->animateForMoveDialpad(Z)V

    goto/16 :goto_1

    :cond_18
    invoke-static {}, Lcom/android/incallui/secservice/SecVideoCallManager;->getInstance()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Lcom/android/incallui/secservice/SecVideoCallManager;->setCameraOnOff(ZZ)V

    goto/16 :goto_0
.end method

.method public finish()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finish(). Dialog showing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/SecInCallActivity;->hasPendingErrorDialog()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/android/incallui/BaseInCallActivity;->finish()V

    invoke-direct {p0}, Lcom/android/incallui/SecInCallActivity;->animateForActivityClosed()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public forceFinish()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "forceFinish(). Dialog showing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/android/incallui/BaseInCallActivity;->finish()V

    invoke-direct {p0}, Lcom/android/incallui/SecInCallActivity;->animateForActivityClosed()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAnsRecorderMgr()Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    return-object v0
.end method

.method public getConferenceCallManagerShowingState()Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mSecConferenceManagerFragmentManager:Lcom/android/incallui/SecConferenceManagerFragmentManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mSecConferenceManagerFragmentManager:Lcom/android/incallui/SecConferenceManagerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/SecConferenceManagerFragmentManager;->getFragment()Lcom/android/incallui/SecConferenceManagerFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mSecConferenceManagerFragmentManager:Lcom/android/incallui/SecConferenceManagerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/SecConferenceManagerFragmentManager;->getFragment()Lcom/android/incallui/SecConferenceManagerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/SecConferenceManagerFragment;->isFragmentVisible()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentOrientation()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/SecInCallActivity;->mCurrentOrientation:I

    return v0
.end method

.method public getInCallMenu()Lcom/android/incallui/InCallMenu;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    return-object v0
.end method

.method public getRcsInvitation()Lcom/android/incallui/rcs/RcsInvitation;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mRcsInvitation:Lcom/android/incallui/rcs/RcsInvitation;

    return-object v0
.end method

.method public getRecorderMgr()Lcom/android/incallui/PhoneVoiceRecorderManager;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mRecorderMgr:Lcom/android/incallui/PhoneVoiceRecorderManager;

    return-object v0
.end method

.method public getSecAnswerFragment()Lcom/android/incallui/SecAnswerUi;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mSecAnswerFragmentManager:Lcom/android/incallui/SecAnswerFragmentManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mSecAnswerFragmentManager:Lcom/android/incallui/SecAnswerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/SecAnswerFragmentManager;->getFragment()Lcom/android/incallui/SecAnswerFragment;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSecCallButtonFragment()Lcom/android/incallui/SecCallButtonUi;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mSecCallButtonFragmentManager:Lcom/android/incallui/SecCallButtonFragmentManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mSecCallButtonFragmentManager:Lcom/android/incallui/SecCallButtonFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/SecCallButtonFragmentManager;->getFragment()Lcom/android/incallui/SecCallButtonFragment;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSecCallCardFragment()Lcom/android/incallui/SecCallCardUi;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mSecCallCardFragmentManager:Lcom/android/incallui/SecCallCardFragmentManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mSecCallCardFragmentManager:Lcom/android/incallui/SecCallCardFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/SecCallCardFragmentManager;->getFragment()Lcom/android/incallui/SecCallCardFragment;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSecDialpadFragment()Lcom/android/incallui/SecDialpadUi;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mSecDialpadFragmentManager:Lcom/android/incallui/SecDialpadFragmentManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mSecDialpadFragmentManager:Lcom/android/incallui/SecDialpadFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/SecDialpadFragmentManager;->getFragment()Lcom/android/incallui/SecDialpadFragment;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSecVideoCallFragment()Lcom/android/incallui/SecVideoCallUi;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mSecVideoCallFragmentManager:Lcom/android/incallui/SecVideoCallFragmentManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mSecVideoCallFragmentManager:Lcom/android/incallui/SecVideoCallFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/SecVideoCallFragmentManager;->getFragment()Lcom/android/incallui/SecVideoCallFragment;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTouchPointForNewOutgoingCall()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mTouchPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method public handleCshInfo(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method public handleError(I)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "handleError"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/rcs/RcsShareUI;->isCshTopMostActivity(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v0

    if-nez v0, :cond_0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const v0, 0x7f0d0370

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0d0371

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_3
    const v0, 0x7f0d0372

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_4
    const v0, 0x7f0d0373

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_5
    const v0, 0x7f0d036e

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_6
    const v0, 0x7f0d036f

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_7
    const v0, 0x7f0d0374

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_8
    const v0, 0x7f0d0375

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_9
    const v0, 0x7f0d0376

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_a
    const v0, 0x7f0d0377

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method

.method public handleIncommingIMandFT(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "handleIncommingIMandFT"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->onNewIncomingRcsSession(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public handleInvitation(ZLandroid/content/Intent;)V
    .locals 2

    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "handleRcsAction"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->onNewIncomingRcsSession(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public handleRcsAction(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    const-string v1, "handleRcsAction from secInCall"

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    const-string v1, "ims_rcs"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.samsung.rcs.intent.action.STOP_SHARING_SERVICE_DIALOG"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/SecInCallActivity;->mRcsInvitation:Lcom/android/incallui/rcs/RcsInvitation;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const-string v1, "Showing invitation dialog..."

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/incallui/SecInCallActivity;->mRcsInvitation:Lcom/android/incallui/rcs/RcsInvitation;

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/incallui/rcs/RcsInvitation;->updateState(Landroid/content/Context;Lcom/android/incallui/Call;)V

    :cond_0
    return-void
.end method

.method public hasWindowFocus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/SecInCallActivity;->mHasWindowFocus:Z

    return v0
.end method

.method public hideDialpadForDisconnect()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecCallButtonFragment()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mSecCallButtonFragmentManager:Lcom/android/incallui/SecCallButtonFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/SecCallButtonFragmentManager;->getFragment()Lcom/android/incallui/SecCallButtonFragment;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/android/incallui/SecCallButtonFragment;->displayDialpad(ZZ)V

    :cond_0
    return-void
.end method

.method public hideDialpadForModifyCall()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/incallui/SecInCallActivity;->displayDialpad(ZZ)V

    return-void
.end method

.method public isAnimateDialpadOnShow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/SecInCallActivity;->mAnimateDialpadOnShow:Z

    return v0
.end method

.method public isConferenceCallManagerShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mSecConferenceManagerFragmentManager:Lcom/android/incallui/SecConferenceManagerFragmentManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mSecConferenceManagerFragmentManager:Lcom/android/incallui/SecConferenceManagerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/SecConferenceManagerFragmentManager;->getFragment()Lcom/android/incallui/SecConferenceManagerFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mSecConferenceManagerFragmentManager:Lcom/android/incallui/SecConferenceManagerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/SecConferenceManagerFragmentManager;->getFragment()Lcom/android/incallui/SecConferenceManagerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/SecConferenceManagerFragment;->isVisible()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDialpadVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mSecDialpadFragmentManager:Lcom/android/incallui/SecDialpadFragmentManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mSecDialpadFragmentManager:Lcom/android/incallui/SecDialpadFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/SecDialpadFragmentManager;->isShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isForegroundActivity()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/SecInCallActivity;->mIsForegroundActivity:Z

    return v0
.end method

.method public isPenMultiWindow()Z
    .locals 5

    const/4 v2, 0x0

    const-string v3, "support_penwindow_callscreen"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v3, 0x800

    :try_start_0
    invoke-virtual {v1, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    :goto_0
    return v2

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NullPointerException Caught : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isShowDialpadRequested()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/SecInCallActivity;->mShowDialpadRequested:Z

    return v0
.end method

.method public isSupportWindowRotation()Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mOrientationListener:Lcom/android/incallui/SecInCallActivity$InCallOrientationListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public maybeShowErrorDialogOnDisconnect(Landroid/telecom/DisconnectCause;)V
    .locals 2

    const-string v0, "maybeShowErrorDialogOnDisconnect"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDescription : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telecom/DisconnectCause;->getDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getreason : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telecom/DisconnectCause;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/telecom/DisconnectCause;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :cond_0
    const-string v0, "disconnect_cause_description"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0, p1}, Lcom/android/incallui/operator/usa/InCallUIExtension;->maybeShowErrorToastOnDisconnect(Landroid/content/Context;Landroid/telecom/DisconnectCause;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/telecom/DisconnectCause;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/SecInCallActivity;->showErrorDialog(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public needToAnimateForNewOutgoingCall()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/SecInCallActivity;->mIsNewOutgoingCall:Z

    return v0
.end method

.method public onBackPressed()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v1, "onBackPressed()..."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "ims_callplus"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecCallButtonFragment()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecCallButtonFragment()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/incallui/SecCallButtonUi;->onBackPress()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecCallCardFragment()Lcom/android/incallui/SecCallCardUi;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecCallCardFragment()Lcom/android/incallui/SecCallCardUi;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/incallui/SecCallCardUi;->isVisible()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->isDialpadVisible()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecCallButtonFragment()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecCallButtonFragment()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v1

    invoke-interface {v1, v2, v3}, Lcom/android/incallui/SecCallButtonUi;->displayDialpad(ZZ)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->isConferenceCallManagerShowing()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v2}, Lcom/android/incallui/SecInCallActivity;->showConferenceCallManager(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecCallCardFragment()Lcom/android/incallui/SecCallCardUi;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecCallCardFragment()Lcom/android/incallui/SecCallCardUi;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/android/incallui/SecCallCardUi;->showManageConferenceCallButton(Z)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/android/incallui/SecInCallActivity;->mSecAnswerFragmentManager:Lcom/android/incallui/SecAnswerFragmentManager;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/incallui/SecInCallActivity;->mSecAnswerFragmentManager:Lcom/android/incallui/SecAnswerFragmentManager;

    invoke-virtual {v1}, Lcom/android/incallui/SecAnswerFragmentManager;->getFragment()Lcom/android/incallui/SecAnswerFragment;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/incallui/SecInCallActivity;->mSecAnswerFragmentManager:Lcom/android/incallui/SecAnswerFragmentManager;

    invoke-virtual {v1}, Lcom/android/incallui/SecAnswerFragmentManager;->getFragment()Lcom/android/incallui/SecAnswerFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/SecAnswerFragment;->closeDrawer()V

    :cond_5
    const-string v1, "Consume Back press for an incoming call"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string v1, "hw_home_key"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-nez v1, :cond_7

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-nez v1, :cond_7

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_8

    :cond_7
    const-string v1, "Consume Back press for calling"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    invoke-super {p0}, Lcom/android/incallui/BaseInCallActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getProximitySensor()Lcom/android/incallui/ProximitySensor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/ProximitySensor;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSupportRotationOnlyCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->isPenMultiWindow()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/incallui/SecInCallActivity;->mCurrentOrientation:I

    if-eq v0, v1, :cond_1

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/incallui/SecInCallActivity;->mCurrentOrientation:I

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->onDeviceRotationChange(I)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/SecInCallActivity;->mCurrentOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->onDeviceOrientationChange(I)V

    :cond_1
    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "onConfigurationChanged()->setOrientation()"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mRcsInvitation:Lcom/android/incallui/rcs/RcsInvitation;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Lcom/android/incallui/rcs/RcsInvitation;->setOrientation(I)V

    :cond_2
    const-string v0, "support_mobile_keyboard"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p1, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    iget v1, p0, Lcom/android/incallui/SecInCallActivity;->mCurrentMobileKeyboardCovered:I

    if-eq v0, v1, :cond_3

    iget v0, p1, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    iput v0, p0, Lcom/android/incallui/SecInCallActivity;->mCurrentMobileKeyboardCovered:I

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->onMobileKeyboardChanged()V

    :cond_3
    invoke-super {p0, p1}, Lcom/android/incallui/BaseInCallActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCoverStateChanged(Z)V
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCoverStateChanged isClosed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "support_penwindow_callscreen"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->isPenMultiWindow()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->returnToNormalWindowMode()V

    :cond_0
    const-string v2, "automatic_answering_machine"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez p1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCoverStateChanged : isAutoAnswered - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecCallCardFragment()Lcom/android/incallui/SecCallCardUi;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecCallCardFragment()Lcom/android/incallui/SecCallCardUi;

    move-result-object v2

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isGuidancePlaying()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_0
    invoke-interface {v2, v0}, Lcom/android/incallui/SecCallCardUi;->setAMView(Z)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecCallCardFragment()Lcom/android/incallui/SecCallCardUi;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecCallCardFragment()Lcom/android/incallui/SecCallCardUi;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/incallui/SecCallCardUi;->clearAMView()V

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecCallCardFragment()Lcom/android/incallui/SecCallCardUi;

    move-result-object v2

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Lcom/android/incallui/SecCallCardUi;->changeCallCardForAM(I)V

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecCallCardFragment()Lcom/android/incallui/SecCallCardUi;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/incallui/SecCallCardUi;->showMenu(Z)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecCallButtonFragment()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->hasActiveCall()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecCallButtonFragment()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/incallui/SecCallButtonUi;->setCallButtonContainerVisibility(Z)V

    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecAnswerFragment()Lcom/android/incallui/SecAnswerUi;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecAnswerFragment()Lcom/android/incallui/SecAnswerUi;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/incallui/SecAnswerUi;->showAnswerUi(Z)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13

    const v12, 0x7f100098

    const/4 v9, 0x0

    const/4 v8, 0x1

    const-string v7, "VerificationLog"

    const-string v10, "onCreate"

    invoke-static {v7, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onCreate()...  this = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/incallui/BaseInCallActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v7, "ims_callplus"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/SecInCallActivity;->queryForCallPlus()V

    :cond_0
    const v4, -0x77d78000

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f09007d

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    const-string v7, "samsung_screen_timeout_incall"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-wide/16 v10, 0x7530

    iput-wide v10, v5, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    const-wide/16 v10, 0x4e20

    iput-wide v10, v5, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "lp.userActivityTimeout : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v10, v5, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "lp.screenDimDuration "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v10, v5, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getWindow().setAttributes(lp) "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v7, 0x7f0400a6

    invoke-virtual {p0, v7}, Lcom/android/incallui/SecInCallActivity;->setContentView(I)V

    const-string v7, "simulation_enabled"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {}, Lcom/android/incallui/secutils/SimulationUtils;->getInstance()Lcom/android/incallui/secutils/SimulationUtils;

    move-result-object v7

    invoke-virtual {v7, v12, p0}, Lcom/android/incallui/secutils/SimulationUtils;->create(ILandroid/app/Activity;)V

    invoke-static {}, Lcom/android/incallui/secutils/DebugUtils;->getInstance()Lcom/android/incallui/secutils/DebugUtils;

    move-result-object v7

    invoke-virtual {v7, v12, p0}, Lcom/android/incallui/secutils/DebugUtils;->createDebugScreen(ILandroid/app/Activity;)V

    :cond_2
    const-string v7, "ims_rcs"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v7, Lcom/android/incallui/rcs/RcsBroadcastReceiver;

    invoke-direct {v7, p0}, Lcom/android/incallui/rcs/RcsBroadcastReceiver;-><init>(Lcom/android/incallui/rcs/RcsBroadcastReceiver$RcsActionHandler;)V

    iput-object v7, p0, Lcom/android/incallui/SecInCallActivity;->mRcsBroadcastReceiver:Lcom/android/incallui/rcs/RcsBroadcastReceiver;

    iget-object v7, p0, Lcom/android/incallui/SecInCallActivity;->mRcsBroadcastReceiver:Lcom/android/incallui/rcs/RcsBroadcastReceiver;

    invoke-virtual {v7, p0}, Lcom/android/incallui/rcs/RcsBroadcastReceiver;->register(Landroid/content/Context;)V

    const-string v7, "mRcsBroadcastReceiver.register"

    invoke-static {p0, v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    const v7, 0x7f1001ec

    invoke-virtual {p0, v7}, Lcom/android/incallui/SecInCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewStub;

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v7, 0x7f1000e2

    invoke-virtual {p0, v7}, Lcom/android/incallui/SecInCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/incallui/rcs/RcsInvitation;

    iput-object v7, p0, Lcom/android/incallui/SecInCallActivity;->mRcsInvitation:Lcom/android/incallui/rcs/RcsInvitation;

    :cond_3
    iput-boolean v8, p0, Lcom/android/incallui/SecInCallActivity;->mIsFirstLaunch:Z

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/incallui/SecInCallActivity;->internalResolveIntent(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v7, v0, Landroid/content/res/Configuration;->orientation:I

    iput v7, p0, Lcom/android/incallui/SecInCallActivity;->mCurrentOrientation:I

    iget v7, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v10, 0x2

    if-ne v7, v10, :cond_10

    move v7, v8

    :goto_0
    iput-boolean v7, p0, Lcom/android/incallui/SecInCallActivity;->mIsLandscape:Z

    const-string v7, "support_mobile_keyboard"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget v7, v0, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    iput v7, p0, Lcom/android/incallui/SecInCallActivity;->mCurrentMobileKeyboardCovered:I

    :cond_4
    if-eqz p1, :cond_5

    const-string v7, "InCallActivity.show_dialpad"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/incallui/SecInCallActivity;->mShowDialpadRequested:Z

    iput-boolean v9, p0, Lcom/android/incallui/SecInCallActivity;->mAnimateDialpadOnShow:Z

    const-string v7, "InCallActivity.dialpad_text"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/incallui/SecInCallActivity;->mDtmfText:Ljava/lang/String;

    :cond_5
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSupportRotation()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "accelerometer_rotation"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iget-object v10, p0, Lcom/android/incallui/SecInCallActivity;->mRotationEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v7, v9, v8, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_6
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSupportRotationOnlyCamera()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v9, "display"

    invoke-virtual {v7, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    iget-object v7, p0, Lcom/android/incallui/SecInCallActivity;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v9, 0x0

    invoke-virtual {v2, v7, v9}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    :cond_7
    const-string v7, "support_onehand_operation"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "interactionarea_switch"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iget-object v10, p0, Lcom/android/incallui/SecInCallActivity;->mOnehandEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v7, v9, v8, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "any_screen_running"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iget-object v10, p0, Lcom/android/incallui/SecInCallActivity;->mOnehandAnyScreenEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v7, v9, v8, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_8
    const-string v7, "voice_call_recording"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/incallui/SecInCallActivity;->mRecorderMgr:Lcom/android/incallui/PhoneVoiceRecorderManager;

    if-nez v7, :cond_9

    new-instance v7, Lcom/android/incallui/PhoneVoiceRecorderManager;

    invoke-direct {v7, p0}, Lcom/android/incallui/PhoneVoiceRecorderManager;-><init>(Lcom/android/incallui/SecInCallActivity;)V

    iput-object v7, p0, Lcom/android/incallui/SecInCallActivity;->mRecorderMgr:Lcom/android/incallui/PhoneVoiceRecorderManager;

    iget-object v7, p0, Lcom/android/incallui/SecInCallActivity;->mRecorderMgr:Lcom/android/incallui/PhoneVoiceRecorderManager;

    invoke-virtual {v7}, Lcom/android/incallui/PhoneVoiceRecorderManager;->startService()V

    :cond_9
    const-string v7, "voice_call_recording"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    const-string v7, "automatic_answering_machine"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/android/incallui/SecInCallActivity;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    if-nez v7, :cond_a

    new-instance v7, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    invoke-direct {v7, p0}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;-><init>(Lcom/android/incallui/SecInCallActivity;)V

    iput-object v7, p0, Lcom/android/incallui/SecInCallActivity;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    iget-object v7, p0, Lcom/android/incallui/SecInCallActivity;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    invoke-virtual {v7}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->startService()V

    :cond_a
    const-string v7, "support_penwindow_callscreen"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/android/incallui/SecInCallActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v7, :cond_b

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v7, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v7, 0x3e7

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v7, p0, Lcom/android/incallui/SecInCallActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v7, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_b
    const-string v7, "tmo_echolocate_logger"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/android/incallui/SecInCallActivity;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v7, :cond_c

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v7, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/incallui/SecInCallActivity;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v7, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_c
    iget-object v7, p0, Lcom/android/incallui/SecInCallActivity;->mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-nez v7, :cond_d

    new-instance v7, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-direct {v7, p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;-><init>(Landroid/app/Activity;)V

    iput-object v7, p0, Lcom/android/incallui/SecInCallActivity;->mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    iget-object v7, p0, Lcom/android/incallui/SecInCallActivity;->mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/android/incallui/SecInCallActivity;->mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v7, p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->setStateChangeListener(Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;)Z

    :cond_d
    invoke-static {}, Lcom/android/incallui/AccessoryEventHandler;->getInstance()Lcom/android/incallui/AccessoryEventHandler;

    move-result-object v7

    invoke-virtual {v7, p0}, Lcom/android/incallui/AccessoryEventHandler;->addListener(Lcom/android/incallui/AccessoryEventHandler$AccessoryEventListener;)V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Contact_EnableWhitepages"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-static {p0}, Lcom/whitepages/nameid/NameIDHelper;->isNameIDInstalledAndEnabled(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-static {p0}, Lcom/whitepages/nameid/NameIDHelper;->init(Landroid/content/Context;)V

    :cond_e
    const-string v7, "ims_capability_check_on_call_end"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/incallui/InCallUtils;->createCapabilityManager(Landroid/content/Context;)V

    :cond_f
    const-string v7, "onCreate(): exit"

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_10
    move v7, v9

    goto/16 :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    const-string v0, "ARG_MSISDN"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "ARG_COLUMNS"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    packed-switch p1, :pswitch_data_0

    move-object v0, v4

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "onCreateLoader CALLCONTENT_LOADER :"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    sget-object v0, Lcom/android/incallui/CallContentContract;->CALLCONTENT_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v0, Landroid/content/CursorLoader;

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/android/incallui/UIEntryPointsContract;->UI_ENTRY_POINTS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v0, Landroid/content/CursorLoader;

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 5

    const/16 v4, 0xa0

    const/4 v3, 0x0

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDestroy()...  this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->unsetActivity(Lcom/android/incallui/BaseInCallComponent;)V

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/android/incallui/SecInCallActivity;->handleShowGreenBarMessage()V

    :cond_0
    const-string v0, "support_mobilecarrier"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isCarrierPhoneMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v2}, Lcom/android/incallui/SecInCallActivity;->showGreenBar(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mOrientationListener:Lcom/android/incallui/SecInCallActivity$InCallOrientationListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mOrientationListener:Lcom/android/incallui/SecInCallActivity$InCallOrientationListener;

    invoke-virtual {v0}, Lcom/android/incallui/SecInCallActivity$InCallOrientationListener;->disable()V

    iput-object v3, p0, Lcom/android/incallui/SecInCallActivity;->mOrientationListener:Lcom/android/incallui/SecInCallActivity$InCallOrientationListener;

    :cond_2
    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasLiveCall()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "!CallList.getInstance().hasLiveCall()"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mRcsBroadcastReceiver:Lcom/android/incallui/rcs/RcsBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/android/incallui/rcs/RcsBroadcastReceiver;->unregister(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/rcs/RcsShareUI;->disconnect(Landroid/content/Context;)V

    :cond_3
    const-string v0, "overlay_popup_play"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/incallui/SecInCallActivity;->hideVideoPopup()V

    :cond_4
    invoke-direct {p0}, Lcom/android/incallui/SecInCallActivity;->destroyInCall()V

    const-string v0, "support_penwindow_callscreen"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/SecInCallActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_5
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/incallui/TelecomAdapter;->setPenWindow(Z)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/TelecomAdapter;->setMWindowStyle()V

    :cond_6
    const-string v0, "tmo_echolocate_logger"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/SecInCallActivity;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_7
    invoke-static {}, Lcom/android/incallui/AccessoryEventHandler;->getInstance()Lcom/android/incallui/AccessoryEventHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/AccessoryEventHandler;->removeListener(Lcom/android/incallui/AccessoryEventHandler$AccessoryEventListener;)V

    iput-object v3, p0, Lcom/android/incallui/SecInCallActivity;->mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    const-string v0, "support_vt_on_pop_up_window"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isCameraAppRunning()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->isPenMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/android/incallui/InCallUtils;->moveCameraTaskToFront()V

    :cond_8
    invoke-static {}, Lcom/android/incallui/SecModifyCallProcessor;->getInstance()Lcom/android/incallui/SecModifyCallProcessor;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/android/incallui/SecModifyCallProcessor;->getInstance()Lcom/android/incallui/SecModifyCallProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/SecModifyCallProcessor;->isShowingModifyCallDialog()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/android/incallui/SecModifyCallProcessor;->getInstance()Lcom/android/incallui/SecModifyCallProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/SecModifyCallProcessor;->dismissModifyCallDialog()V

    :cond_9
    invoke-static {}, Lcom/android/incallui/SecModifyCallProcessor;->getInstance()Lcom/android/incallui/SecModifyCallProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/SecModifyCallProcessor;->isShowingUpgradeDialog()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/android/incallui/SecModifyCallProcessor;->getInstance()Lcom/android/incallui/SecModifyCallProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/SecModifyCallProcessor;->dismissUpgradeDialog()V

    :cond_a
    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mOrientationListener:Lcom/android/incallui/SecInCallActivity$InCallOrientationListener;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mOrientationListener:Lcom/android/incallui/SecInCallActivity$InCallOrientationListener;

    invoke-virtual {v0}, Lcom/android/incallui/SecInCallActivity$InCallOrientationListener;->disable()V

    iput-object v3, p0, Lcom/android/incallui/SecInCallActivity;->mOrientationListener:Lcom/android/incallui/SecInCallActivity$InCallOrientationListener;

    :cond_b
    invoke-super {p0}, Lcom/android/incallui/BaseInCallActivity;->onDestroy()V

    const-string v0, "visual_call_center_callerid_info"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/incallui/SecInCallActivity$9;

    invoke-direct {v1, p0}, Lcom/android/incallui/SecInCallActivity$9;-><init>(Lcom/android/incallui/SecInCallActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_c
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasLiveCall()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {v2}, Lcom/android/services/telephony/common/SystemDBInterface;->setWideBandAMR(I)V

    :cond_d
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    const/4 v4, 0x1

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/SecInCallActivity;->handleDialerKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    :goto_0
    :sswitch_1
    return v4

    :sswitch_2
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->handleCallKey()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v3, "InCallActivity should always handle KEYCODE_CALL in onKeyDown"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v5

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v4

    :goto_1
    invoke-virtual {v5, v3}, Lcom/android/incallui/TelecomAdapter;->mute(Z)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :sswitch_4
    sget-boolean v3, Lcom/android/incallui/Log;->VERBOSE:Z

    if-eqz v3, :cond_0

    const-string v3, "----------- InCallActivity View dump --------------"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "View dump:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/incallui/BaseInCallActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_2
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_1
        0x4c -> :sswitch_4
        0x5b -> :sswitch_3
        0xa4 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->isDialpadVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecDialpadFragment()Lcom/android/incallui/SecDialpadUi;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecDialpadFragment()Lcom/android/incallui/SecDialpadUi;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/incallui/SecDialpadUi;->onDialerKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v2, 0x5

    if-ne p1, v2, :cond_2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    const-string v2, "support_folder_hardkey"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isFolerClosed()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    const-string v2, "onKeyUp KEYCODE_CALL"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/SecInCallActivity;->voiceCallClicked()V

    goto :goto_0

    :cond_2
    const/16 v2, 0x52

    if-ne p1, v2, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecCallCardFragment()Lcom/android/incallui/SecCallCardUi;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecCallCardFragment()Lcom/android/incallui/SecCallCardUi;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/incallui/SecCallCardUi;->isMenuShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecInCallActivity;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecInCallActivity;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    invoke-virtual {v2}, Lcom/android/incallui/InCallMenu;->isMenuOpen()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecInCallActivity;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    invoke-virtual {v2}, Lcom/android/incallui/InCallMenu;->getUniqueMenuItem()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, "KEYCODE_MENU showInCallMenu"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isCSVideoCall()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/secui/SecUiAdapter;->isPrimaryVisible()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->showInCallMenu()V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/secui/SecUiAdapter;->toggleVideoButtonContainer()V

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/incallui/SecInCallActivity$10;

    invoke-direct {v3, p0}, Lcom/android/incallui/SecInCallActivity$10;-><init>(Lcom/android/incallui/SecInCallActivity;)V

    const-wide/16 v4, 0xfa

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->showInCallMenu()V

    goto/16 :goto_0

    :cond_5
    invoke-super {p0, p1, p2}, Lcom/android/incallui/BaseInCallActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadFinished CALLCONTENT_LOADER :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p0, p2}, Lcom/android/incallui/SecInCallActivity;->updateView(Landroid/database/Cursor;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/android/incallui/SecInCallActivity;->updateUiEntryPoint(Landroid/database/Cursor;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/SecInCallActivity;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v1, "onLoaderReset CALLCONTENT_LOADER :"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecInCallActivity;->updateView(Landroid/database/Cursor;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v3}, Lcom/android/incallui/SecInCallActivity;->updateUiEntryPoint(Landroid/database/Cursor;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- onMenuItemClick: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallMenu;->optionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onModeChanged(Z)V
    .locals 2

    const-string v0, "onModeChanged."

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    const-string v0, "support_onehand_operation"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mSecCallButtonFragmentManager:Lcom/android/incallui/SecCallButtonFragmentManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mSecCallButtonFragmentManager:Lcom/android/incallui/SecCallButtonFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/SecCallButtonFragmentManager;->onSMultiWindowOnChanged()V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mSecDialpadFragmentManager:Lcom/android/incallui/SecDialpadFragmentManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mSecDialpadFragmentManager:Lcom/android/incallui/SecDialpadFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/SecDialpadFragmentManager;->onSMultiWindowOnChanged()V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mSecConferenceManagerFragmentManager:Lcom/android/incallui/SecConferenceManagerFragmentManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mSecConferenceManagerFragmentManager:Lcom/android/incallui/SecConferenceManagerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/SecConferenceManagerFragmentManager;->onSMultiWindowOnChanged()V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mSecCallCardFragmentManager:Lcom/android/incallui/SecCallCardFragmentManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mSecCallCardFragmentManager:Lcom/android/incallui/SecCallCardFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/SecCallCardFragmentManager;->onSMultiWindowOnChanged()V

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/SecInCallActivity;->updateScreenType(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onMultiWindowStyleChanged(Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/incallui/BaseInCallActivity;->onMultiWindowStyleChanged(Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V

    const-string v0, "prohibit_candid_shot"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/SecInCallActivity;->updateCameraStateOnMultiWindow()V

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/SecInCallActivity;->updateDialpadIndicatorArea()V

    invoke-direct {p0}, Lcom/android/incallui/SecInCallActivity;->updateIndicatorArea()V

    invoke-direct {p0}, Lcom/android/incallui/SecInCallActivity;->updateIndicatorAreaBg()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNewIntent: intent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "ims_rcs"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "EXTRA_INTENT"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    const-string v2, "onNewIntent()->startActivity()"

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/incallui/SecInCallActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/incallui/SecInCallActivity;->setIntent(Landroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/android/incallui/SecInCallActivity;->internalResolveIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-super {p0, p1}, Lcom/android/incallui/BaseInCallActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->onBackPressed()V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/SecInCallActivity;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    invoke-virtual {v1, p1}, Lcom/android/incallui/InCallMenu;->optionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v1, "onPause()..."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/android/incallui/BaseInCallActivity;->onPause()V

    iput-boolean v4, p0, Lcom/android/incallui/SecInCallActivity;->mIsForegroundActivity:Z

    iput-boolean v4, p0, Lcom/android/incallui/SecInCallActivity;->mIsNewOutgoingCall:Z

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecDialpadFragment()Lcom/android/incallui/SecDialpadUi;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecDialpadFragment()Lcom/android/incallui/SecDialpadUi;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/incallui/SecDialpadUi;->onDialerKeyUp(ILandroid/view/KeyEvent;)Z

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/incallui/InCallPresenter;->onUiShowing(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/InCallPresenter;->unsetActivity(Lcom/android/incallui/BaseInCallComponent;)V

    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/incallui/SecInCallActivity;->updateAppSwitchSystemKeyEvent(Z)V

    invoke-virtual {p0, v5}, Lcom/android/incallui/SecInCallActivity;->setStatusBar(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->isPenMultiWindow()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v5}, Lcom/android/incallui/SecInCallActivity;->showGreenBar(Z)V

    :cond_2
    const-string v1, "concept_usa_common"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "concept_canada_common"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/incallui/secservice/SecVideoCallManager;->getInstance()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->onDelayedPauseActivity()V

    :cond_4
    const-string v1, "ims_rcs"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "RcsShareUI.unRegisterRcsObservers"

    invoke-static {p0, v1, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {v5}, Lcom/android/incallui/rcs/RcsShareUI;->unRegisterRcsObserver(I)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.PHONE_INACTIVE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.framework.mediatransfer.contentshare.notification"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecInCallActivity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_5
    iget-object v1, p0, Lcom/android/incallui/SecInCallActivity;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/incallui/SecInCallActivity;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    invoke-virtual {v1}, Lcom/android/incallui/InCallMenu;->isMenuOpen()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/secui/SecUiAdapter;->dismissInCallMenu()V

    :cond_6
    return-void
.end method

.method protected onResume()V
    .locals 14

    const/16 v13, 0xa4

    const/16 v12, 0xa1

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v6, "VerificationLog"

    const-string v9, "onResume"

    invoke-static {v6, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "onResume()..."

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/android/incallui/BaseInCallActivity;->onResume()V

    invoke-direct {p0}, Lcom/android/incallui/SecInCallActivity;->awakenIfDayDreaming()V

    const-string v6, "ims_support_multimedia_caller_id"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isMcidDownloadble()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v9, 0x2000

    invoke-virtual {v6, v9}, Landroid/view/Window;->addFlags(I)V

    const-string v6, "SecInCallActiviy onResume - FLAG_SECURE : on"

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iput-boolean v7, p0, Lcom/android/incallui/SecInCallActivity;->mIsForegroundActivity:Z

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/incallui/SecInCallActivity;->updateScreenType(Landroid/content/res/Configuration;)V

    invoke-static {p0}, Lcom/android/incallui/InCallUtils;->isCoverClosed(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/android/incallui/InCallPresenter;->onCoverStateChanged(Z)V

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/android/incallui/InCallPresenter;->onUiShowing(Z)V

    const-string v6, "overlay_popup_play"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/SecInCallActivity;->hideVideoPopup()V

    :cond_2
    invoke-direct {p0}, Lcom/android/incallui/SecInCallActivity;->hideCallPopup()V

    invoke-static {v8}, Lcom/android/incallui/InCallUtils;->markAsAddCall(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->updateKeepScreenOnFlag()V

    iget-object v6, p0, Lcom/android/incallui/SecInCallActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v6, :cond_3

    const-string v6, "statusbar"

    invoke-virtual {p0, v6}, Lcom/android/incallui/SecInCallActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/StatusBarManager;

    iput-object v6, p0, Lcom/android/incallui/SecInCallActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    :cond_3
    iget-object v6, p0, Lcom/android/incallui/SecInCallActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/incallui/SecInCallActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v6}, Landroid/app/StatusBarManager;->collapsePanels()V

    :cond_4
    invoke-direct {p0, v8}, Lcom/android/incallui/SecInCallActivity;->showGreenBar(Z)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v6

    if-eqz v6, :cond_15

    iget-object v6, p0, Lcom/android/incallui/SecInCallActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v12}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/android/incallui/SecInCallActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v10, 0x3e8

    invoke-virtual {v6, v12, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_5
    iget-object v6, p0, Lcom/android/incallui/SecInCallActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v13}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/android/incallui/SecInCallActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v10, 0x7d0

    invoke-virtual {v6, v13, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_6
    invoke-virtual {p0, v7}, Lcom/android/incallui/SecInCallActivity;->updateAppSwitchSystemKeyEvent(Z)V

    invoke-virtual {p0, v8}, Lcom/android/incallui/SecInCallActivity;->setStatusBar(Z)V

    :goto_0
    iget-boolean v6, p0, Lcom/android/incallui/SecInCallActivity;->mShowDialpadRequested:Z

    if-eqz v6, :cond_8

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecCallButtonFragment()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/incallui/SecInCallActivity;->mSecCallButtonFragmentManager:Lcom/android/incallui/SecCallButtonFragmentManager;

    invoke-virtual {v6}, Lcom/android/incallui/SecCallButtonFragmentManager;->getFragment()Lcom/android/incallui/SecCallButtonFragment;

    move-result-object v6

    iget-boolean v9, p0, Lcom/android/incallui/SecInCallActivity;->mAnimateDialpadOnShow:Z

    invoke-virtual {v6, v7, v9}, Lcom/android/incallui/SecCallButtonFragment;->displayDialpad(ZZ)V

    iput-boolean v8, p0, Lcom/android/incallui/SecInCallActivity;->mShowDialpadRequested:Z

    iput-boolean v8, p0, Lcom/android/incallui/SecInCallActivity;->mAnimateDialpadOnShow:Z

    :cond_7
    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecDialpadFragment()Lcom/android/incallui/SecDialpadUi;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecDialpadFragment()Lcom/android/incallui/SecDialpadUi;

    move-result-object v6

    iget-object v9, p0, Lcom/android/incallui/SecInCallActivity;->mDtmfText:Ljava/lang/String;

    invoke-interface {v6, v9}, Lcom/android/incallui/SecDialpadUi;->setDtmfText(Ljava/lang/String;)V

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/incallui/SecInCallActivity;->mDtmfText:Ljava/lang/String;

    :cond_8
    const-string v6, "att_volte_ui"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    iget-boolean v6, p0, Lcom/android/incallui/SecInCallActivity;->mIsEasymode:Z

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v9

    if-eq v6, v9, :cond_9

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/incallui/SecInCallActivity;->mIsEasymode:Z

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->hideDialpadForModifyCall()V

    :cond_9
    const-string v6, "ims_rcs"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    const-string v6, "RcsShareUI.registerRcsObservers"

    invoke-static {p0, v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {v7}, Lcom/android/incallui/rcs/RcsShareUI;->registerRcsObserver(I)V

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    new-instance v9, Lcom/android/incallui/SecInCallActivity$8;

    invoke-direct {v9, p0}, Lcom/android/incallui/SecInCallActivity$8;-><init>(Lcom/android/incallui/SecInCallActivity;)V

    invoke-virtual {v6, v9}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_a
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.PHONE_ACTIVE"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "com.samsung.rcs.framework.mediatransfer.contentshare.notification"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p0, v6}, Lcom/android/incallui/SecInCallActivity;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->hasActiveCall()Z

    move-result v0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->hasIncomingCall()Z

    move-result v1

    if-nez v1, :cond_b

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/incallui/rcs/RcsShareUI;->isShareActive(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/android/incallui/rcs/RcsShareUI;->resumeShare(Landroid/content/Context;Lcom/android/incallui/Call;)V

    :cond_b
    iget-boolean v6, p0, Lcom/android/incallui/SecInCallActivity;->mShowPostCharWaitDialogOnResume:Z

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/android/incallui/SecInCallActivity;->mShowPostCharWaitDialogCallId:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/incallui/SecInCallActivity;->mShowPostCharWaitDialogChars:Ljava/lang/String;

    invoke-virtual {p0, v6, v9}, Lcom/android/incallui/SecInCallActivity;->showPostCharWaitDialog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    const-string v6, "prohibit_candid_shot"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-static {}, Lcom/android/incallui/secservice/SecVideoCallManager;->getInstance()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->isDialpadVisible()Z

    move-result v9

    invoke-virtual {v6, v7, v9}, Lcom/android/incallui/secservice/SecVideoCallManager;->setCameraOnOff(ZZ)V

    :cond_d
    invoke-static {}, Lcom/android/incallui/SecModifyCallProcessor;->getInstance()Lcom/android/incallui/SecModifyCallProcessor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/SecModifyCallProcessor;->showModifyCallDialogIfNeeded()V

    const-string v6, "concept_usa_common"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_e

    const-string v6, "concept_canada_common"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    :cond_e
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-static {}, Lcom/android/incallui/secservice/SecVideoCallManager;->getInstance()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/secservice/SecVideoCallManager;->onResumeActivity()V

    :cond_f
    const-string v6, "vzw_volte_ui"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v6

    if-eqz v6, :cond_10

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->getTtyNotification()Z

    move-result v6

    if-eqz v6, :cond_10

    const-string v6, "tty notification for incoming call, show!"

    invoke-static {p0, v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p0, v7}, Lcom/android/incallui/SecInCallActivity;->onTtyNotification(Z)V

    :cond_10
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSupportRotation()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isActiveVideoCall()Z

    move-result v6

    if-eqz v6, :cond_17

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIncomingVideoCall()Z

    move-result v6

    if-eqz v6, :cond_17

    iget v6, p0, Lcom/android/incallui/SecInCallActivity;->mCurrentOrientation:I

    const/4 v9, 0x2

    if-ne v6, v9, :cond_17

    move v4, v7

    :goto_1
    if-eqz v4, :cond_11

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v6

    iget v9, p0, Lcom/android/incallui/SecInCallActivity;->mCurrentOrientation:I

    invoke-virtual {v6, v9}, Lcom/android/incallui/InCallPresenter;->onDeviceOrientationChange(I)V

    :cond_11
    const-string v6, "support_penwindow_callscreen"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-static {}, Lcom/android/incallui/InCallUtils;->hasIncomingCall()Z

    move-result v6

    if-eqz v6, :cond_18

    invoke-virtual {p0, v7}, Lcom/android/incallui/SecInCallActivity;->setMultiWindowFlag(Z)V

    :cond_12
    :goto_2
    const-string v6, "support_vt_on_pop_up_window"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isCameraAppRunning()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->isPenMultiWindow()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-static {}, Lcom/android/incallui/InCallUtils;->moveCameraTaskToBack()V

    :cond_13
    iget-boolean v6, p0, Lcom/android/incallui/SecInCallActivity;->mIsFirstLaunch:Z

    if-eqz v6, :cond_14

    invoke-direct {p0}, Lcom/android/incallui/SecInCallActivity;->initializeInCall()V

    iput-boolean v8, p0, Lcom/android/incallui/SecInCallActivity;->mIsFirstLaunch:Z

    const-string v6, "onResume() initializeInCall()..."

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_14
    const-string v6, "VerificationLog"

    const-string v7, "Executed"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_15
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isLostPhoneLock()Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-virtual {p0, v8}, Lcom/android/incallui/SecInCallActivity;->setStatusBar(Z)V

    goto/16 :goto_0

    :cond_16
    invoke-virtual {p0, v7}, Lcom/android/incallui/SecInCallActivity;->setStatusBar(Z)V

    goto/16 :goto_0

    :cond_17
    move v4, v8

    goto :goto_1

    :cond_18
    invoke-virtual {p0, v8}, Lcom/android/incallui/SecInCallActivity;->setMultiWindowFlag(Z)V

    goto :goto_2
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecCallButtonFragment()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "InCallActivity.show_dialpad"

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecCallButtonFragment()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/incallui/SecCallButtonUi;->isDialpadVisible()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecDialpadFragment()Lcom/android/incallui/SecDialpadUi;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "InCallActivity.dialpad_text"

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecDialpadFragment()Lcom/android/incallui/SecDialpadUi;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/incallui/SecDialpadUi;->getDtmfText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onSideSyncCallForwardStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onSizeChanged(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method protected onStart()V
    .locals 3

    const-string v1, "onStart()..."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/android/incallui/BaseInCallActivity;->onStart()V

    invoke-direct {p0}, Lcom/android/incallui/SecInCallActivity;->checkAndStartAnswerMemo()V

    const-string v1, "ims_rcs"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.rcs.intent.action.RESUME_SHARING_SERVICE_DIALOG"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecInCallActivity;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/SecInCallActivity;->mRcsInvitation:Lcom/android/incallui/rcs/RcsInvitation;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const-string v1, "Showing invitation dialog..."

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/incallui/SecInCallActivity;->mRcsInvitation:Lcom/android/incallui/rcs/RcsInvitation;

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/incallui/rcs/RcsInvitation;->updateState(Landroid/content/Context;Lcom/android/incallui/Call;)V

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/InCallPresenter;->setActivity(Lcom/android/incallui/BaseInCallComponent;)V

    return-void
.end method

.method protected onStop()V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "onStop()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/android/incallui/BaseInCallActivity;->onStop()V

    const-string v0, "overlay_popup_play"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v2}, Lcom/android/incallui/SecInCallActivity;->launchVideoPopup(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecCallCardFragment()Lcom/android/incallui/SecCallCardUi;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecCallCardFragment()Lcom/android/incallui/SecCallCardUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/SecCallCardUi;->resetRevealAnimator()V

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/incallui/SecInCallActivity;->showGreenBar(Z)V

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecInCallActivity;->setStatusBar(Z)V

    const-string v0, "prohibit_candid_shot"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/secservice/SecVideoCallManager;->getInstance()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->isDialpadVisible()Z

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->setCameraOnOff(ZZ)V

    :cond_2
    return-void
.end method

.method public onTtyNotification(Z)V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTtyNotification : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mTtyNotificationDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mTtyNotificationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "onTtyNotification return "

    invoke-static {p0, v0, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d037d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d037c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/incallui/SecInCallActivity$18;

    invoke-direct {v2, p0}, Lcom/android/incallui/SecInCallActivity$18;-><init>(Lcom/android/incallui/SecInCallActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/SecInCallActivity$17;

    invoke-direct {v1, p0, p1}, Lcom/android/incallui/SecInCallActivity$17;-><init>(Lcom/android/incallui/SecInCallActivity;Z)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mTtyNotificationDialog:Landroid/app/AlertDialog;

    const-string v0, "onTtyNotification show "

    invoke-static {p0, v0, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mTtyNotificationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/services/telephony/common/SystemDBInterface;->setTtyNotification(I)V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iput-boolean p1, p0, Lcom/android/incallui/SecInCallActivity;->mHasWindowFocus:Z

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecCallCardFragment()Lcom/android/incallui/SecCallCardUi;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecCallCardFragment()Lcom/android/incallui/SecCallCardUi;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/incallui/SecCallCardUi;->updatePeriodMark(I)V

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecCallCardFragment()Lcom/android/incallui/SecCallCardUi;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/incallui/SecCallCardUi;->updateWaveEffectForCallState(I)V

    :cond_0
    iput-boolean v3, p0, Lcom/android/incallui/SecInCallActivity;->mIsNewOutgoingCall:Z

    invoke-direct {p0}, Lcom/android/incallui/SecInCallActivity;->hideCallPopup()V

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->isPenMultiWindow()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecCallButtonFragment()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecCallButtonFragment()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/incallui/SecCallButtonUi;->updateCallButtons(Lcom/android/incallui/Call;)V

    :cond_1
    const-string v1, "block_data_during_call"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lcom/android/incallui/InCallUtils;->isCoverClosed(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/incallui/TelecomAdapter;->setCallProtectionValue(Z)V

    :cond_2
    iget-boolean v1, p0, Lcom/android/incallui/SecInCallActivity;->mHasWindowFocus:Z

    if-nez v1, :cond_3

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCarModeOn()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0, v4}, Lcom/android/incallui/SecInCallActivity;->showGreenBar(Z)V

    :cond_3
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/incallui/TelecomAdapter;->notifyInCallUIWindowFocus(Z)V

    return-void
.end method

.method public onZoneChanged(I)V
    .locals 0

    return-void
.end method

.method public postAccessibilityEvent()V
    .locals 4

    const-string v3, "postAccessibilityEvent"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "accessibility"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x4000

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-string v3, "sent TYPE_ANNOUNCEMENT"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method resetAutoAnsTimer()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mAutoAnsTimer:Lcom/android/incallui/SecInCallActivity$AutoAnsTimer;

    if-eqz v0, :cond_0

    const-string v0, "resetAutoAnsTimer "

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mAutoAnsTimer:Lcom/android/incallui/SecInCallActivity$AutoAnsTimer;

    invoke-virtual {v0}, Lcom/android/incallui/SecInCallActivity$AutoAnsTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mAutoAnsTimer:Lcom/android/incallui/SecInCallActivity$AutoAnsTimer;

    :cond_0
    return-void
.end method

.method public returnToNormalWindowMode()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "returnToNormalWindowMode"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->normalWindow()V

    :cond_1
    return-void
.end method

.method public setAnimateDialpadOnShow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/SecInCallActivity;->mAnimateDialpadOnShow:Z

    return-void
.end method

.method public setInCallMenuInstance(Lcom/android/incallui/InCallMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecInCallActivity;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    return-void
.end method

.method public setMultiWindowFlag(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-eqz p1, :cond_0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    or-int/lit16 v1, v1, 0x80

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMultiWindowFlag : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    :cond_0
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    and-int/lit16 v1, v1, -0x81

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    goto :goto_0
.end method

.method public setPrimaryCallElapsedTimeForDialpad(ZLjava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecDialpadFragment()Lcom/android/incallui/SecDialpadUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecDialpadFragment()Lcom/android/incallui/SecDialpadUi;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/incallui/SecDialpadUi;->setPrimaryCallElapsedTime(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setPrimaryCallMenuForDialpad(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->isDialpadVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecDialpadFragment()Lcom/android/incallui/SecDialpadUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecDialpadFragment()Lcom/android/incallui/SecDialpadUi;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/incallui/SecDialpadUi;->setPrimaryCallMenuForDialpad(Z)V

    :cond_0
    return-void
.end method

.method public setShowDialpadRequested(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/SecInCallActivity;->mShowDialpadRequested:Z

    return-void
.end method

.method public setStatusBar(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setStatusBar = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v0, :cond_0

    const-string v0, "statusbar"

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecInCallActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_0
.end method

.method public setUpRcsCallCard(Lcom/android/incallui/Call;)V
    .locals 2

    const-string v0, "setUpRcsCallCard"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/SecInCallActivity;->mRcsInvitation:Lcom/android/incallui/rcs/RcsInvitation;

    invoke-static {v0, v1, p1}, Lcom/android/incallui/rcs/RcsShareUI;->setupRcsCallCard(Landroid/content/Context;Lcom/android/incallui/rcs/RcsInvitation;Lcom/android/incallui/Call;)V

    return-void
.end method

.method public setupInCallMenu(ILandroid/view/View;)V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- setupInCallMenu: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x7f0b0025

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v1, Lcom/android/incallui/SecInCallActivity$InCallActivityMenu;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/incallui/SecInCallActivity$InCallActivityMenu;-><init>(Lcom/android/incallui/SecInCallActivity;Landroid/content/Context;Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/incallui/SecInCallActivity;->mInCallActivityMenu:Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/android/incallui/SecInCallActivity;->mInCallActivityMenu:Landroid/widget/PopupMenu;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecInCallActivity;->mInCallActivityMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v1, p1}, Landroid/widget/PopupMenu;->inflate(I)V

    iget-object v1, p0, Lcom/android/incallui/SecInCallActivity;->mInCallActivityMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v1, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    :cond_0
    return-void
.end method

.method public showConferenceCallManager()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecInCallActivity;->showConferenceCallManager(Z)V

    return-void
.end method

.method public showConferenceCallManager(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mSecConferenceManagerFragmentManager:Lcom/android/incallui/SecConferenceManagerFragmentManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mSecConferenceManagerFragmentManager:Lcom/android/incallui/SecConferenceManagerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/SecConferenceManagerFragmentManager;->getFragment()Lcom/android/incallui/SecConferenceManagerFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mSecConferenceManagerFragmentManager:Lcom/android/incallui/SecConferenceManagerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/SecConferenceManagerFragmentManager;->getFragment()Lcom/android/incallui/SecConferenceManagerFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/SecConferenceManagerFragment;->setVisible(Z)V

    :cond_0
    const-string v0, "support_folder_hardkey"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecCallButtonFragment()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getSecCallButtonFragment()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v1

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/android/incallui/SecCallButtonUi;->setFocusInCallButton(Z)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showDataUsageLimitDialog()V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mDataUsageLimitDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mDataUsageLimitDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mDataUsageLimitDialog:Landroid/app/AlertDialog;

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v2, 0x7f0b005b

    invoke-direct {v1, p0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d037e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d037f

    new-instance v2, Lcom/android/incallui/SecInCallActivity$21;

    invoke-direct {v2, p0}, Lcom/android/incallui/SecInCallActivity$21;-><init>(Lcom/android/incallui/SecInCallActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0380

    new-instance v2, Lcom/android/incallui/SecInCallActivity$20;

    invoke-direct {v2, p0}, Lcom/android/incallui/SecInCallActivity$20;-><init>(Lcom/android/incallui/SecInCallActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mDataUsageLimitDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mDataUsageLimitDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mDataUsageLimitDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mDataUsageLimitDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public showInCallMenu()V
    .locals 1

    const-string v0, "- showInCallMenu"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mInCallActivityMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mInCallActivityMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    :cond_0
    return-void
.end method

.method public showOnWeakWifiDialog()V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x1

    const-string v6, "showOnWeakWifiDialog"

    invoke-static {p0, v6, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "onWeakWifiShowNeverAgain"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_1

    iget-object v6, p0, Lcom/android/incallui/SecInCallActivity;->mWifiDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/incallui/SecInCallActivity;->mWifiDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v10, p0, Lcom/android/incallui/SecInCallActivity;->mWifiDialog:Landroid/app/AlertDialog;

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v6, 0x7f04014a

    invoke-virtual {v3, v6, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v6, 0x1020001

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Checkable;

    const v6, 0x7f100352

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0d02e4

    invoke-virtual {p0, v6}, Lcom/android/incallui/SecInCallActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0d02e3

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v6, 0x7f0d0129

    new-instance v7, Lcom/android/incallui/SecInCallActivity$22;

    invoke-direct {v7, p0, v2}, Lcom/android/incallui/SecInCallActivity$22;-><init>(Lcom/android/incallui/SecInCallActivity;Landroid/widget/Checkable;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/incallui/SecInCallActivity;->mWifiDialog:Landroid/app/AlertDialog;

    iget-object v6, p0, Lcom/android/incallui/SecInCallActivity;->mWifiDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/view/Window;->addFlags(I)V

    iget-object v6, p0, Lcom/android/incallui/SecInCallActivity;->mWifiDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0d02e5

    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public showOnWeakWifiDuringEpdgDialog()V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x1

    const-string v6, "showOnWeakWifiDuringEpdgDialog"

    invoke-static {p0, v6, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "onWeakWifiDuringEpdgShowNeverAgain"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_1

    iget-object v6, p0, Lcom/android/incallui/SecInCallActivity;->mWifiDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/incallui/SecInCallActivity;->mWifiDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v10, p0, Lcom/android/incallui/SecInCallActivity;->mWifiDialog:Landroid/app/AlertDialog;

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v6, 0x7f04014a

    invoke-virtual {v3, v6, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v6, 0x1020001

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Checkable;

    const v6, 0x7f100352

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0d02e7

    invoke-virtual {p0, v6}, Lcom/android/incallui/SecInCallActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0d02e6

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v6, 0x7f0d0129

    new-instance v7, Lcom/android/incallui/SecInCallActivity$23;

    invoke-direct {v7, p0, v2}, Lcom/android/incallui/SecInCallActivity$23;-><init>(Lcom/android/incallui/SecInCallActivity;Landroid/widget/Checkable;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/incallui/SecInCallActivity;->mWifiDialog:Landroid/app/AlertDialog;

    iget-object v6, p0, Lcom/android/incallui/SecInCallActivity;->mWifiDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/view/Window;->addFlags(I)V

    iget-object v6, p0, Lcom/android/incallui/SecInCallActivity;->mWifiDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0d02e5

    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public showPostCharPauseDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->dismissPostCharPauseDialog()V

    new-instance v0, Lcom/android/incallui/PostCharDialogFragment;

    const-string v1, "postCharPause"

    invoke-direct {v0, p1, p2, v1}, Lcom/android/incallui/PostCharDialogFragment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mPostCharDialogFragment:Lcom/android/incallui/PostCharDialogFragment;

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mPostCharDialogFragment:Lcom/android/incallui/PostCharDialogFragment;

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "postCharPause"

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/PostCharDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa2

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public showPostCharWaitDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->dismissPostCharPauseDialog()V

    new-instance v0, Lcom/android/incallui/PostCharDialogFragment;

    const-string v1, "postCharWait"

    invoke-direct {v0, p1, p2, v1}, Lcom/android/incallui/PostCharDialogFragment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mPostCharDialogFragment:Lcom/android/incallui/PostCharDialogFragment;

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mPostCharDialogFragment:Lcom/android/incallui/PostCharDialogFragment;

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "postCharWait"

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/PostCharDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public updateAppSwitchSystemKeyEvent(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/incallui/SecInCallActivity;->mIsAppSwitchSystemKeyEventRequested:Z

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAppSwitchSystemKeyEvent("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/incallui/SecInCallActivity;->mIsAppSwitchSystemKeyEventRequested:Z

    const/16 v0, 0xbb

    invoke-direct {p0, v0, p1}, Lcom/android/incallui/SecInCallActivity;->requestSystemKeyEvent(IZ)Z

    :cond_0
    return-void
.end method

.method public updateKeepScreenOnFlag()V
    .locals 5

    const/16 v4, 0x80

    const/4 v3, 0x1

    const/4 v0, 0x0

    const-string v1, "automatic_answering_machine"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isGuidancePlaying()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateKeepScreenOnFlag: Answering message - isAnswermemoRecording "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallUtils;->hasVideoCall()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isModifyProgressing()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallUtils;->hasIncomingCall()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_4

    :cond_3
    const-string v1, "updateKeepScreenOnFlag: add FLAG_KEEP_SCREEN_ON"

    invoke-static {p0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/Window;->addFlags(I)V

    :goto_0
    return-void

    :cond_4
    const-string v1, "updateKeepScreenOnFlag: clear FLAG_KEEP_SCREEN_ON"

    invoke-static {p0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/SecInCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method public updatePhotoringState(Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;I)V
    .locals 4

    const-string v0, "SecInCallActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePhotoring state state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mSecCallCardFragmentManager:Lcom/android/incallui/SecCallCardFragmentManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mSecCallCardFragmentManager:Lcom/android/incallui/SecCallCardFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/SecCallCardFragmentManager;->getFragment()Lcom/android/incallui/SecCallCardFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mSecCallCardFragmentManager:Lcom/android/incallui/SecCallCardFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/SecCallCardFragmentManager;->getFragment()Lcom/android/incallui/SecCallCardFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/SecCallCardFragment;->getUi()Lcom/android/incallui/SecCallCardUi;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "SecInCallActivity"

    const-string v1, "call ui.updatePhotoringState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mSecCallCardFragmentManager:Lcom/android/incallui/SecCallCardFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/SecCallCardFragmentManager;->getFragment()Lcom/android/incallui/SecCallCardFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/SecCallCardFragment;->getUi()Lcom/android/incallui/SecCallCardUi;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/incallui/SecCallCardUi;->updatePhotoringState(Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;I)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "SecInCallActivity"

    const-string v1, "UI not ready update later"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa3

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public updateUiEntryPoint(Landroid/database/Cursor;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/incallui/SecCallButtonFragmentManager;->isCallPlus:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/SecCallButtonFragmentManager;->isCallPlus:Z

    goto :goto_0
.end method

.method public updateView(Landroid/database/Cursor;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/incallui/SecCallButtonFragmentManager;->isCallPlus:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/SecCallButtonFragmentManager;->isCallPlus:Z

    goto :goto_0
.end method

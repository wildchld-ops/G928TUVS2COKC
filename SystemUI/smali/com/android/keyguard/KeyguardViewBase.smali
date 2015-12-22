.class public abstract Lcom/android/keyguard/KeyguardViewBase;
.super Landroid/widget/FrameLayout;
.source "KeyguardViewBase.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;


# static fields
.field public static final DEBUG:Z = true

.field private static final ENABLE_MENU_KEY_FILE:Ljava/lang/String; = "/data/local/enable_menu_key"

.field private static final KEYGUARD_MANAGES_VOLUME:Z = false

.field private static final TAG:Ljava/lang/String; = "KeyguardViewBase"


# instance fields
.field private final mActivityLauncher:Lcom/android/keyguard/KeyguardActivityLauncher;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mDismissAction:Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

.field protected mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field protected mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-instance v0, Lcom/android/keyguard/KeyguardViewBase$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardViewBase$1;-><init>(Lcom/android/keyguard/KeyguardViewBase;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mActivityLauncher:Lcom/android/keyguard/KeyguardActivityLauncher;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardViewBase;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private goToSimCardManagement()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/KeyguardViewBase;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardSecurityContainer;->getCurrentSecuritySelection()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v3

    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/KeyguardViewBase;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardSecurityContainer;->getCurrentSecuritySelection()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v3

    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPuk:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v3, v4, :cond_1

    invoke-static {}, Lcom/android/keyguard/sec/MultiSimUtils;->getPINPUKRequestMode()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v3, "ACTION_UNLOCK_PIN"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "PINPUKUnlock"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardViewBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v2, v1}, Lcom/android/keyguard/ViewMediatorCallback;->keyguardDone(Z)V

    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private handleMediaKeyEvent(Landroid/view/KeyEvent;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardViewBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mAudioManager:Landroid/media/AudioManager;

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private shouldEnableMenuKey()Z
    .locals 6

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardViewBase;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$bool;->config_disableMenuKeyInLockScreen:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v2

    new-instance v4, Ljava/io/File;

    const-string v5, "/data/local/enable_menu_key"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v0, :cond_0

    if-nez v2, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected announceCurrentSecurityMethod()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->announceCurrentSecurityMethod()V

    return-void
.end method

.method public abstract cleanUp()V
.end method

.method public dismiss()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardViewBase;->dismiss(Z)Z

    move-result v0

    return v0
.end method

.method public dismiss(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showNextSecurityScreenOrFinish(Z)Z

    move-result v0

    return v0
.end method

.method public dismissWithAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/keyguard/ViewMediatorCallback;->dismissWithAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;ZZ)V

    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/keyguard/ViewMediatorCallback;->keyguardDoneDrawing()V

    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardViewBase;->interceptMediaKey(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewBase;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->getCurrentSecurityModeContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchSystemUiVisibilityChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchSystemUiVisibilityChanged(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    const/high16 v0, 0x400000

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardViewBase;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method

.method public finish()V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewBase;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewBase;->mDismissAction:Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewBase;->mDismissAction:Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardHostView$OnDismissAction;->onDismiss()Z

    move-result v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/keyguard/KeyguardViewBase;->mDismissAction:Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v1}, Lcom/android/keyguard/ViewMediatorCallback;->keyguardDonePending()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v1, "KeyguardViewBase"

    const-string v2, "finish mViewMediatorCallback.keyguardDone"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v1, v3}, Lcom/android/keyguard/ViewMediatorCallback;->keyguardDone(Z)V

    goto :goto_0
.end method

.method protected getActivityLauncher()Lcom/android/keyguard/KeyguardActivityLauncher;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mActivityLauncher:Lcom/android/keyguard/KeyguardActivityLauncher;

    return-object v0
.end method

.method public getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    return-object v0
.end method

.method protected getSecurityContainer()Lcom/android/keyguard/KeyguardSecurityContainer;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    return-object v0
.end method

.method public getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    return-object v0
.end method

.method public abstract getUserActivityTimeout()J
.end method

.method public handleBackKey()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewBase;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardSecurityContainer;->getCurrentSecuritySelection()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v2

    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Account:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewBase;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardSecurityContainer;->getCurrentSecuritySelection()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v2

    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->BackupPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewBase;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardSecurityContainer;->getCurrentSecuritySelection()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v2

    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SPassPassword:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v2, v3, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewBase;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v2, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showPrimarySecurityScreen(Z)V

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCModel()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewBase;->goToSimCardManagement()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_3
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewBase;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardSecurityContainer;->getCurrentSecuritySelection()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v2

    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewBase;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v2, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->dismiss(Z)V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public handleMenuKey()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewBase;->shouldEnableMenuKey()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardViewBase;->dismiss()Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideSecBouncer()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    const/16 v1, 0xfa

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->hideBouncer(I)V

    return-void
.end method

.method public interceptMediaKey(Landroid/view/KeyEvent;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_3

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    return v1

    :sswitch_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardViewBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "phone"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardViewBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardViewBase;->handleMediaKeyEvent(Landroid/view/KeyEvent;)V

    move v1, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_0

    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    :sswitch_3
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardViewBase;->handleMediaKeyEvent(Landroid/view/KeyEvent;)V

    move v1, v2

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x4f -> :sswitch_2
        0x55 -> :sswitch_1
        0x56 -> :sswitch_2
        0x57 -> :sswitch_2
        0x58 -> :sswitch_2
        0x59 -> :sswitch_2
        0x5a -> :sswitch_2
        0x5b -> :sswitch_2
        0x7e -> :sswitch_1
        0x7f -> :sswitch_1
        0x82 -> :sswitch_2
        0xa4 -> :sswitch_0
        0xde -> :sswitch_2
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x4f -> :sswitch_3
        0x55 -> :sswitch_3
        0x56 -> :sswitch_3
        0x57 -> :sswitch_3
        0x58 -> :sswitch_3
        0x59 -> :sswitch_3
        0x5a -> :sswitch_3
        0x5b -> :sswitch_3
        0x7e -> :sswitch_3
        0x7f -> :sswitch_3
        0x82 -> :sswitch_3
        0xde -> :sswitch_3
    .end sparse-switch
.end method

.method public launchCamera()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mActivityLauncher:Lcom/android/keyguard/KeyguardActivityLauncher;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardViewBase;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/KeyguardActivityLauncher;->launchCamera(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public needsShowClockandNotifications()Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->needsShowClockandNotifications()Z

    move-result v0

    return v0
.end method

.method protected abstract onCreateOptions(Landroid/os/Bundle;)V
.end method

.method protected abstract onExternalMotionEvent(Landroid/view/MotionEvent;)V
.end method

.method protected onFinishInflate()V
    .locals 2

    sget v0, Lcom/android/keyguard/R$id;->keyguard_security_container:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardViewBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardSecurityContainer;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewBase;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewBase;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->setSecurityCallback(Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showPrimarySecurityScreen(Z)V

    return-void
.end method

.method public onKeyguardClockandNotificationsChanged(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    if-eqz v0, :cond_0

    const-string v0, "KeyguardViewBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyguardClockandNotificationsChanged( show = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v0, p1}, Lcom/android/keyguard/ViewMediatorCallback;->updateKeyguardClockandNotifications(Z)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 7

    const/4 v6, 0x1

    const-string v0, "KeyguardViewBase"

    const-string v1, "screen off, instance %s at %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0, v6}, Lcom/android/keyguard/KeyguardSecurityContainer;->showPrimarySecurityScreen(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->onPause()V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardViewBase;->clearFocus()V

    return-void
.end method

.method public onResume()V
    .locals 3

    const-string v0, "KeyguardViewBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "screen on, instance "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->onResume(I)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardViewBase;->requestFocus()Z

    return-void
.end method

.method public onSecurityModeChanged(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v0, p2}, Lcom/android/keyguard/ViewMediatorCallback;->setNeedsInput(Z)V

    :cond_0
    return-void
.end method

.method protected onUserActivityTimeoutChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/keyguard/ViewMediatorCallback;->onUserActivityTimeoutChanged()V

    :cond_0
    return-void
.end method

.method protected abstract onUserSwitching(Z)V
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardViewBase;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    return-void
.end method

.method public setOnDismissAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardViewBase;->mDismissAction:Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

    return-void
.end method

.method public setViewMediatorCallback(Lcom/android/keyguard/ViewMediatorCallback;)V
    .locals 2

    iput-object p1, p0, Lcom/android/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewBase;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->needsInput()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/keyguard/ViewMediatorCallback;->setNeedsInput(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewBase;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->needsShowClockandNotifications()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/keyguard/ViewMediatorCallback;->updateKeyguardClockandNotifications(Z)V

    return-void
.end method

.method public showAssistant()V
    .locals 7

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mContext:Landroid/content/Context;

    const-string v2, "search"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewBase;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    const/4 v5, -0x2

    invoke-virtual {v0, v2, v3, v5}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;ZI)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$anim;->keyguard_action_assist_enter:I

    sget v3, Lcom/android/keyguard/R$anim;->keyguard_action_assist_exit:I

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardViewBase;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-static {v0, v2, v3, v5, v4}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v6

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mActivityLauncher:Lcom/android/keyguard/KeyguardActivityLauncher;

    const/4 v2, 0x0

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/keyguard/KeyguardActivityLauncher;->launchActivityWithAnimation(Landroid/content/Intent;ZLandroid/os/Bundle;Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected showBouncer(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardViewBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz p1, :cond_0

    sget v1, Lcom/android/keyguard/R$string;->keyguard_accessibility_show_bouncer:I

    :goto_0
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardViewBase;->announceForAccessibility(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardViewBase;->announceCurrentSecurityMethod()V

    return-void

    :cond_0
    sget v1, Lcom/android/keyguard/R$string;->keyguard_accessibility_hide_bouncer:I

    goto :goto_0
.end method

.method public showPrimarySecurityScreen()V
    .locals 2

    const-string v0, "KeyguardViewBase"

    const-string v1, "show()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showPrimarySecurityScreen(Z)V

    return-void
.end method

.method public showSecBouncer()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    const/16 v1, 0xfa

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showBouncer(I)V

    return-void
.end method

.method public showUnlockAffordance()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showUnlockAffordance()V

    return-void
.end method

.method public startAppearAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->startAppearAnimation()V

    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->startDisappearAnimation(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public userActivity()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/keyguard/ViewMediatorCallback;->userActivity()V

    :cond_0
    return-void
.end method

.method public verifyUnlock()V
    .locals 3

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewBase;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/keyguard/ViewMediatorCallback;->keyguardDone(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->UniversalLock:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/keyguard/ViewMediatorCallback;->keyguardDone(Z)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewBase;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->verifyUnlock()V

    goto :goto_0
.end method

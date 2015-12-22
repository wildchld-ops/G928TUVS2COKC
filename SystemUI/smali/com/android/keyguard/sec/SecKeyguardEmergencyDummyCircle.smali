.class public Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;
.super Landroid/widget/FrameLayout;
.source "SecKeyguardEmergencyDummyCircle.java"

# interfaces
.implements Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;


# static fields
.field private static final ACTION_EMERGENCY_DIAL:Ljava/lang/String; = "com.android.phone.EmergencyDialer.DIAL"

.field private static final ACTION_EMERGENCY_LIST:Ljava/lang/String; = "com.samsung.phone.EmergencyDialer.LIST"

.field static final TAG:Ljava/lang/String; = "SecKeyguardEmergencyDummyCircle"


# instance fields
.field private mDispatchInitX:F

.field private mDispatchInitY:F

.field private mDummyCircle:Landroid/view/View;

.field private mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

.field private mHelpTextView:Landroid/widget/TextView;

.field mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mKeyguardUnlockEventHandler:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPowerManager:Landroid/os/PowerManager;

.field mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mTempRect:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle$1;-><init>(Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;-><init>(Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mKeyguardUnlockEventHandler:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

    return-void
.end method

.method private VoIPIsInUse()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->updateEmergencyCallButton()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;)Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mKeyguardUnlockEventHandler:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

    return-object v0
.end method

.method private isTouchInView(Landroid/view/View;FF)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, p2, v1

    if-gtz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, p3, v1

    if-ltz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, p3, v1

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private launchEmergencyDialler()V
    .locals 5

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "SecKeyguardEmergencyDummyCircle"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t find the component "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateCurrentView()V
    .locals 7

    const-string v5, "SecKeyguardEmergencyDummyCircle"

    const-string v6, "updateCurrentView()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    if-eqz v5, :cond_1

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->isInCall()Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v1, 0x0

    const-string v5, "content://com.sec.knox.provider2/KnoxCustomManagerService2"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getInstance()Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v0

    const-string v5, "getLockScreenHiddenItems"

    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mContext:Landroid/content/Context;

    invoke-static {v3, v5, v6}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getKnoxIntValue(Landroid/net/Uri;Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    if-eqz v0, :cond_0

    const/4 v5, -0x1

    if-eq v1, v5, :cond_0

    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_0

    const-string v5, "SecKeyguardEmergencyDummyCircle"

    const-string v6, "KnoxCustom: Emergency Button is disabled"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x8

    :cond_0
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    invoke-virtual {v5, v2}, Lcom/android/keyguard/EmergencyButton;->setVisibility(I)V

    const/16 v5, 0x8

    if-ne v2, v5, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCMCCModel()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    invoke-virtual {v5, v4}, Lcom/android/keyguard/EmergencyButton;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateEmergencyCallButton()V
    .locals 2

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->updateCurrentView()V

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mDispatchInitX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mDispatchInitY:F

    const-string v2, "SecKeyguardEmergencyDummyCircle"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDispatchInitX="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mDispatchInitX:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mDispatchInitY="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mDispatchInitY:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    iget v3, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mDispatchInitX:F

    iget v4, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mDispatchInitY:F

    invoke-direct {p0, v2, v3, v4}, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->isTouchInView(Landroid/view/View;FF)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "SecKeyguardEmergencyDummyCircle"

    const-string v3, "isTouchInView = true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mDummyCircle:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 v1, 0x1

    :cond_1
    if-nez v1, :cond_2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :cond_2
    return v1
.end method

.method protected onAttachedToWindow()V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "unlock_text"

    const/4 v5, -0x2

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_1

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mHelpTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mHelpTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mHelpTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    goto :goto_1
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mHelpTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mHelpTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mPowerManager:Landroid/os/PowerManager;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->updateEmergencyCallButton()V

    sget v0, Lcom/android/keyguard/R$id;->emergency_call_button:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/EmergencyButton;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    sget v0, Lcom/android/keyguard/R$id;->keyguard_unlock_view_help_text:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mHelpTextView:Landroid/widget/TextView;

    sget v0, Lcom/android/keyguard/R$id;->dummy_emergency_button:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mDummyCircle:Landroid/view/View;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mDummyCircle:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mDummyCircle:Landroid/view/View;

    new-instance v1, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle$2;-><init>(Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method public onUnlockExecuted()V
    .locals 1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->takeEmergencyCallList()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->takeEmergencyCallAction()V

    goto :goto_0
.end method

.method public onUnlockViewPressed()V
    .locals 0

    return-void
.end method

.method public onUnlockViewReleased()V
    .locals 0

    return-void
.end method

.method public onUnlockViewSwiped(Z)V
    .locals 0

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mKeyguardUnlockEventHandler:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->reset()V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public setHelpText()V
    .locals 0

    return-void
.end method

.method public takeEmergencyCallAction()V
    .locals 5

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->resumeCall()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->VoIPIsInUse()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportEmergencyCallAction(Z)V

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->launchEmergencyDialler()V

    goto :goto_0
.end method

.method public takeEmergencyCallList()V
    .locals 6

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v3, 0x1

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->resumeCall()V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.phone.EmergencyDialer.LIST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "SecKeyguardEmergencyDummyCircle"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t find the component "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public userActivity()V
    .locals 0

    return-void
.end method

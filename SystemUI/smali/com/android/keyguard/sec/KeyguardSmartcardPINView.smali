.class public Lcom/android/keyguard/sec/KeyguardSmartcardPINView;
.super Lcom/android/keyguard/KeyguardPINView;
.source "KeyguardSmartcardPINView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mCurrent:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/keyguard/sec/KeyguardSmartcardPINView;",
            ">;"
        }
    .end annotation
.end field

.field private static mSmartcardAuthProgress:Z


# instance fields
.field private mEntry:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mVerifyPasswordWithCACTask:Lcom/android/keyguard/sec/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "KeyguardSmartcardPINView"

    sput-object v0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->mSmartcardAuthProgress:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->mCurrent:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardPINView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->mEntry:Ljava/lang/String;

    new-instance v0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardSmartcardPINView$1;-><init>(Lcom/android/keyguard/sec/KeyguardSmartcardPINView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->mHandler:Landroid/os/Handler;

    sget-object v0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyguardSmartcardPINView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->mCurrent:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/KeyguardSmartcardPINView;)Lcom/android/keyguard/SecurityMessageDisplay;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/KeyguardSmartcardPINView;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->setPasswordEntryEnabled(Z)V

    return-void
.end method

.method static synthetic access$402(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->mSmartcardAuthProgress:Z

    return p0
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/KeyguardSmartcardPINView;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/ref/WeakReference;
    .locals 1

    sget-object v0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->mCurrent:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/sec/KeyguardSmartcardPINView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/keyguard/sec/KeyguardSmartcardPINView;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->setPasswordEntryEnabled(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/keyguard/sec/KeyguardSmartcardPINView;ZLjava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->verifyPasswordAndUnlock(ZLjava/lang/String;I)V

    return-void
.end method

.method private verifyPasswordAndUnlock(ZLjava/lang/String;I)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    sput-boolean v8, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->mSmartcardAuthProgress:Z

    sget-object v4, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "verifyPasswordAndUnlock: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "verifyPasswordAndUnlock : KeygueardSmartcardPINView object"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, p2}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;)Z

    move-result v1

    sget-object v4, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "verifyPasswordAndUnlock : checkpassword call ret = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v4, v7}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(Z)V

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v4, v7}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    :goto_0
    sget-object v4, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;

    const-string v5, "verifyPasswordAndUnlock before setText to empty"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v7}, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->resetPasswordText(Z)V

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->mEntry:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->getKeepScreenOn()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v8}, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->setKeepScreenOn(Z)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_3

    sget v4, Lcom/android/keyguard/R$string;->lockscreen_smartcard_invalid_pin:I

    if-ne p3, v4, :cond_3

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v4, v8}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(Z)V

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v5

    invoke-virtual {v4, v5, v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(IZ)I

    move-result v0

    rem-int/lit8 v4, v0, 0x5

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->handleAttemptLockout(J)V

    :cond_2
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->getWrongPasswordStringId()I

    move-result v5

    invoke-interface {v4, v5, v7}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v4, p3, v7}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto :goto_0
.end method


# virtual methods
.method protected getPasswordTextViewId()I
    .locals 1

    sget v0, Lcom/android/keyguard/R$id;->pinEntry:I

    return v0
.end method

.method public getWrongPasswordStringId()I
    .locals 1

    sget v0, Lcom/android/keyguard/R$string;->kg_wrong_pin:I

    return v0
.end method

.method protected onFinishInflate()V
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;

    const-string v1, "onFinishInflate "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/keyguard/KeyguardPINView;->onFinishInflate()V

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->mSmartcardAuthProgress:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->initializeCACAuthentication()V

    :cond_0
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->mSmartcardAuthProgress:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->resetPasswordText(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v1, Lcom/android/keyguard/R$string;->lockscreen_smartcard_check_pin:I

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->setPasswordEntryEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->requestFocus()Z

    return-void
.end method

.method public onPause()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;

    const-string v1, "onPause "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->mSmartcardAuthProgress:Z

    if-eqz v0, :cond_0

    sput-boolean v2, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->mSmartcardAuthProgress:Z

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->mVerifyPasswordWithCACTask:Lcom/android/keyguard/sec/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->cancel(Z)Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->getKeepScreenOn()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->setKeepScreenOn(Z)V

    :cond_1
    return-void
.end method

.method public onResume(I)V
    .locals 4

    const/4 v3, 0x1

    sget-object v0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume mSmartcardAuthProgress : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->mSmartcardAuthProgress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->mSmartcardAuthProgress:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume if loop. mSmartcardAuthProgress : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->mSmartcardAuthProgress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v1, Lcom/android/keyguard/R$string;->lockscreen_smartcard_check_pin:I

    invoke-interface {v0, v1, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->setPasswordEntryEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardPINView;->onResume(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v1, Lcom/android/keyguard/R$string;->lockscreen_smartcard_instruction:I

    invoke-interface {v0, v1, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto :goto_0
.end method

.method protected resetState()V
    .locals 2

    sget-object v0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;

    const-string v1, "resetState "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->getKeepScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->setKeepScreenOn(Z)V

    :cond_0
    return-void
.end method

.method public showUsabilityHint()V
    .locals 2

    sget-object v0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;

    const-string v1, "showUsabilityHint "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 4

    sget-object v0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;

    const-string v1, "verifyPasswordAndUnlock: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->getPasswordText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->mEntry:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->mEntry:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->mEntry:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;

    const-string v1, "Using Smartcard(CAC) authentication: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;-><init>(Lcom/android/keyguard/sec/KeyguardSmartcardPINView;Lcom/android/keyguard/sec/KeyguardSmartcardPINView$1;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->mVerifyPasswordWithCACTask:Lcom/android/keyguard/sec/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->mVerifyPasswordWithCACTask:Lcom/android/keyguard/sec/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->mEntry:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

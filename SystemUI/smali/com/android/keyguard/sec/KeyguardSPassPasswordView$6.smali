.class Lcom/android/keyguard/sec/KeyguardSPassPasswordView$6;
.super Landroid/os/CountDownTimer;
.source "KeyguardSPassPasswordView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->handleAttemptLockoutForChina(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$6;->this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$6;->this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->access$2300(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$6;->this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->resetState()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$6;->this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    const/4 v1, 0x0

    # setter for: Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mCountdownTimer:Landroid/os/CountDownTimer;
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->access$2402(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isChinaFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CHINA-TEST"

    const-string v1, "onFinish(setPermanentlyLocked -- false)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$6;->this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->access$2500(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$6;->this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->access$2600(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearSecBiometricUnlockAttempt()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$6;->this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->access$2700(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen.lockoutattemptdeadlineforchina"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 11

    const/4 v9, 0x0

    const/4 v8, 0x1

    const-wide/32 v4, 0xea60

    div-long v4, p1, v4

    long-to-int v0, v4

    const v3, 0xea60

    mul-int/2addr v3, v0

    int-to-long v4, v3

    sub-long v4, p1, v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v2, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%02d"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%02d"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$6;->this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$6;->this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->access$2100(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$string;->kg_too_many_failed_attempts_countdown_for_china:I

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v1, v6, v9

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x3e8

    # invokes: Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->setHintOrMessageText(Ljava/lang/CharSequence;ZI)V
    invoke-static {v3, v4, v8, v5}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->access$2200(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;Ljava/lang/CharSequence;ZI)V

    return-void
.end method

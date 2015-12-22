.class Lcom/android/keyguard/sec/KeyguardSPassUnlockView$13;
.super Landroid/os/CountDownTimer;
.source "KeyguardSPassUnlockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->handleAttemptLockoutForChina(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$13;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$13;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # invokes: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->resetErrorMessage()V
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$2000(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$13;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    const/4 v1, 0x0

    # setter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCountdownTimer:Landroid/os/CountDownTimer;
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$202(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isChinaFeature()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "KeyguardSPassUnlockView"

    const-string v1, "onFinish(setPermanentlyLocked -- false)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$13;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$2300(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$13;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1400(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearSecBiometricUnlockAttempt()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$13;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1400(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen.lockoutattemptdeadlineforchina"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$13;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mKeyguardSpassUnlockThread:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$2400(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$13;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mKeyguardSpassUnlockThread:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$2400(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->reset()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$13;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$2300(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$13;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mKeyguardSpassUnlockThread:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$2400(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$13;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mKeyguardSpassUnlockThread:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$2400(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->reset()V

    goto :goto_0
.end method

.method public onTick(J)V
    .locals 11

    const/4 v9, 0x0

    const/4 v8, 0x1

    const-string v3, "KeyguardSPassUnlockView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onTick(millisUntilFinished = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$13;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;
    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$2100(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$13;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;
    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$2100(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$string;->kg_too_many_failed_attempts_countdown_for_china:I

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v1, v5, v9

    invoke-interface {v3, v4, v8, v5}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ[Ljava/lang/Object;)V

    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$13;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1700(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Landroid/widget/TextView;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$13;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1700(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$13;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1400(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$string;->kg_too_many_failed_attempts_countdown_for_china:I

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v1, v6, v9

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$13;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$13;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1400(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$string;->kg_too_many_failed_attempts_countdown_for_china:I

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v1, v6, v9

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->setBouncerStatusText(Ljava/lang/CharSequence;)V
    invoke-static {v3, v4}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$2200(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;Ljava/lang/CharSequence;)V

    return-void
.end method

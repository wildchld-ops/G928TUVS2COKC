.class Lcom/android/keyguard/sec/KeyguardSPassUnlockView$12;
.super Landroid/os/CountDownTimer;
.source "KeyguardSPassUnlockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->handleAttemptLockout(J)V
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

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$12;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$12;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # invokes: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->resetErrorMessage()V
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$2000(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$12;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    const/4 v1, 0x0

    # setter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCountdownTimer:Landroid/os/CountDownTimer;
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$202(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$12;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$2300(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->clearLockoutAttemptDeadline()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$12;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$2300(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$12;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mKeyguardSpassUnlockThread:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$2400(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$12;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mKeyguardSpassUnlockThread:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$2400(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->reset()V

    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 9

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v0, v2

    if-le v0, v6, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$12;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$2100(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$12;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$2100(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->kg_too_many_failed_attempts_countdown:I

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-interface {v1, v2, v6, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ[Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$12;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1700(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$12;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1700(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$12;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1400(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->kg_too_many_failed_attempts_countdown:I

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$12;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$12;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1400(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->kg_too_many_failed_attempts_countdown:I

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->setBouncerStatusText(Ljava/lang/CharSequence;)V
    invoke-static {v1, v2}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$2200(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$12;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$2100(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$12;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$2100(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->kg_too_many_failed_attempt_countdown:I

    invoke-interface {v1, v2, v6}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$12;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1700(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$12;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1700(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$12;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1400(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->kg_too_many_failed_attempt_countdown:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$12;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$12;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1400(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->kg_too_many_failed_attempt_countdown:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->setBouncerStatusText(Ljava/lang/CharSequence;)V
    invoke-static {v1, v2}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$2200(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

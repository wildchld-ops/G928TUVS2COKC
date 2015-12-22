.class Lcom/android/keyguard/KeyguardPatternView$8;
.super Landroid/os/CountDownTimer;
.source "KeyguardPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardPatternView;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardPatternView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardPatternView;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView$8;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    const/4 v3, 0x5

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$8;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/sec/SecLockPatternView;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$000(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/sec/SecLockPatternView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$8;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # invokes: Lcom/android/keyguard/KeyguardPatternView;->displayDefaultSecurityMessage()V
    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$2600(Lcom/android/keyguard/KeyguardPatternView;)V

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyTabletUX()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$8;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    const-string v1, ""

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/KeyguardPatternView;->setHintOrMessageText(Ljava/lang/CharSequence;Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$8;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/keyguard/KeyguardPatternView;->mEnableFallback:Z
    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$2000(Lcom/android/keyguard/KeyguardPatternView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$8;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/keyguard/KeyguardPatternView;->mTotalFailedPatternAttempts:I
    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$2200(Lcom/android/keyguard/KeyguardPatternView;)I

    move-result v0

    if-lt v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$8;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    sget-object v1, Lcom/android/keyguard/KeyguardPatternView$FooterMode;->ForgotLockPattern:Lcom/android/keyguard/KeyguardPatternView$FooterMode;

    # invokes: Lcom/android/keyguard/KeyguardPatternView;->updateFooter(Lcom/android/keyguard/KeyguardPatternView$FooterMode;)V
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardPatternView;->access$2300(Lcom/android/keyguard/KeyguardPatternView;Lcom/android/keyguard/KeyguardPatternView$FooterMode;)V

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$8;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    const/4 v1, 0x0

    # setter for: Lcom/android/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardPatternView;->access$2702(Lcom/android/keyguard/KeyguardPatternView;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$8;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$900(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->clearLockoutAttemptDeadline()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$8;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$900(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->savedBackupPinExists()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$8;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/keyguard/KeyguardPatternView;->mTotalFailedPatternAttempts:I
    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$2200(Lcom/android/keyguard/KeyguardPatternView;)I

    move-result v0

    if-lt v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$8;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    sget-object v1, Lcom/android/keyguard/KeyguardPatternView$FooterMode;->BackupPIN:Lcom/android/keyguard/KeyguardPatternView$FooterMode;

    # invokes: Lcom/android/keyguard/KeyguardPatternView;->updateFooter(Lcom/android/keyguard/KeyguardPatternView$FooterMode;)V
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardPatternView;->access$2300(Lcom/android/keyguard/KeyguardPatternView;Lcom/android/keyguard/KeyguardPatternView$FooterMode;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$8;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    sget-object v1, Lcom/android/keyguard/KeyguardPatternView$FooterMode;->Normal:Lcom/android/keyguard/KeyguardPatternView$FooterMode;

    # invokes: Lcom/android/keyguard/KeyguardPatternView;->updateFooter(Lcom/android/keyguard/KeyguardPatternView$FooterMode;)V
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardPatternView;->access$2300(Lcom/android/keyguard/KeyguardPatternView;Lcom/android/keyguard/KeyguardPatternView$FooterMode;)V

    goto :goto_0
.end method

.method public onTick(J)V
    .locals 9

    const/16 v8, 0x3e8

    const/4 v7, 0x1

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v0, v2

    if-le v0, v7, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView$8;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView$8;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardPatternView;->access$2400(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->kg_too_many_failed_attempts_countdown:I

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v7, v8}, Lcom/android/keyguard/KeyguardPatternView;->setHintOrMessageText(Ljava/lang/CharSequence;ZI)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView$8;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView$8;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardPatternView;->access$2500(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->kg_too_many_failed_attempt_countdown:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v7, v8}, Lcom/android/keyguard/KeyguardPatternView;->setHintOrMessageText(Ljava/lang/CharSequence;ZI)V

    goto :goto_0
.end method

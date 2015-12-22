.class Lcom/android/keyguard/sec/KeyguardSignatureView$7;
.super Landroid/os/CountDownTimer;
.source "KeyguardSignatureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardSignatureView;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardSignatureView;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$7;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$7;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$200(Lcom/android/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/widget/SignView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/SignView;->setUserInputEnabled(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$7;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$1000(Lcom/android/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->clearLockoutAttemptDeadline()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$7;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$7;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mGuideText:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$1100(Lcom/android/keyguard/sec/KeyguardSignatureView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/sec/KeyguardSignatureView;->setHintOrMessageText(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public onTick(J)V
    .locals 9

    const/4 v7, 0x1

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v0, v2

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$7;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$7;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$900(Lcom/android/keyguard/sec/KeyguardSignatureView;)Landroid/content/Context;

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

    invoke-virtual {v1, v2, v7}, Lcom/android/keyguard/sec/KeyguardSignatureView;->setHintOrMessageText(Ljava/lang/CharSequence;Z)V

    return-void
.end method

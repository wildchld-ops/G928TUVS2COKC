.class Lcom/android/keyguard/sec/KeyguardSPassPasswordView$5;
.super Landroid/os/CountDownTimer;
.source "KeyguardSPassPasswordView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->verifySpassPasswordAndUnlock()V
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

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$5;->this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$5;->this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordEntry:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->access$000(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$5;->this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    # invokes: Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->isCountDownTimerRunning()Z
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->access$1900(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$5;->this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    const-string v1, ""

    const/4 v2, 0x1

    # invokes: Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->setHintOrMessageText(Ljava/lang/CharSequence;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->access$2000(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;Ljava/lang/CharSequence;Z)V

    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$5;->this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    # operator++ for: Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordTimeTick:I
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->access$1608(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$5;->this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordTimeTick:I
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->access$1600(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$5;->this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordEntry:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->access$000(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$5;->this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    # invokes: Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->isCountDownTimerRunning()Z
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->access$1700(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$5;->this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$5;->this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->getFailedAutoWipeAttemptMessage()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    # invokes: Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->setHintOrMessageText(Ljava/lang/CharSequence;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->access$1800(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;Ljava/lang/CharSequence;Z)V

    :cond_0
    return-void
.end method

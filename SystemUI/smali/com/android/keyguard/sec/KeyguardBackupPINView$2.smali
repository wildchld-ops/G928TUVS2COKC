.class Lcom/android/keyguard/sec/KeyguardBackupPINView$2;
.super Landroid/os/CountDownTimer;
.source "KeyguardBackupPINView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardBackupPINView;->verifyPasswordAndUnlock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardBackupPINView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardBackupPINView;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView$2;->this$0:Lcom/android/keyguard/sec/KeyguardBackupPINView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView$2;->this$0:Lcom/android/keyguard/sec/KeyguardBackupPINView;

    # invokes: Lcom/android/keyguard/sec/KeyguardBackupPINView;->getPasswordText()Ljava/lang/String;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->access$500(Lcom/android/keyguard/sec/KeyguardBackupPINView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView$2;->this$0:Lcom/android/keyguard/sec/KeyguardBackupPINView;

    # invokes: Lcom/android/keyguard/sec/KeyguardBackupPINView;->isCountDownTimerRunning()Z
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->access$600(Lcom/android/keyguard/sec/KeyguardBackupPINView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView$2;->this$0:Lcom/android/keyguard/sec/KeyguardBackupPINView;

    const-string v1, ""

    const/4 v2, 0x1

    # invokes: Lcom/android/keyguard/sec/KeyguardBackupPINView;->setHintOrMessageText(Ljava/lang/CharSequence;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->access$700(Lcom/android/keyguard/sec/KeyguardBackupPINView;Ljava/lang/CharSequence;Z)V

    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView$2;->this$0:Lcom/android/keyguard/sec/KeyguardBackupPINView;

    # operator++ for: Lcom/android/keyguard/sec/KeyguardBackupPINView;->mPasswordTimeTick:I
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->access$108(Lcom/android/keyguard/sec/KeyguardBackupPINView;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView$2;->this$0:Lcom/android/keyguard/sec/KeyguardBackupPINView;

    # getter for: Lcom/android/keyguard/sec/KeyguardBackupPINView;->mPasswordTimeTick:I
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->access$100(Lcom/android/keyguard/sec/KeyguardBackupPINView;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView$2;->this$0:Lcom/android/keyguard/sec/KeyguardBackupPINView;

    # invokes: Lcom/android/keyguard/sec/KeyguardBackupPINView;->getPasswordText()Ljava/lang/String;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->access$200(Lcom/android/keyguard/sec/KeyguardBackupPINView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView$2;->this$0:Lcom/android/keyguard/sec/KeyguardBackupPINView;

    # invokes: Lcom/android/keyguard/sec/KeyguardBackupPINView;->isCountDownTimerRunning()Z
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->access$300(Lcom/android/keyguard/sec/KeyguardBackupPINView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView$2;->this$0:Lcom/android/keyguard/sec/KeyguardBackupPINView;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView$2;->this$0:Lcom/android/keyguard/sec/KeyguardBackupPINView;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->getFailedAutoWipeAttemptMessage()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    # invokes: Lcom/android/keyguard/sec/KeyguardBackupPINView;->setHintOrMessageText(Ljava/lang/CharSequence;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->access$400(Lcom/android/keyguard/sec/KeyguardBackupPINView;Ljava/lang/CharSequence;Z)V

    :cond_0
    return-void
.end method

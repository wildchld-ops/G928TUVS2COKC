.class Lcom/android/keyguard/sec/KeyguardSPassUnlockView$2;
.super Ljava/lang/Object;
.source "KeyguardSPassUnlockView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/KeyguardSPassUnlockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$2;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$2;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBouncerStatusText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$100(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$2;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCountdownTimer:Landroid/os/CountDownTimer;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$200(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Landroid/os/CountDownTimer;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$2;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBouncerStatusText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$100(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$2;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mFadeInAnim:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$300(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$2;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBouncerStatusText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$100(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

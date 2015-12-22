.class Lcom/android/systemui/keyguard/KeyguardViewMediator$4;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v2, "secedm.src.android.app.enterprise.action.DO_KEYGUARD"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "verify_sim_pin"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->getSendingUserId()I

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->setSwipeLockShowingLocked(Z)V
    invoke-static {v2, v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$700(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)V

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 v3, 0x0

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V
    invoke-static {v2, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$100(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "android.app.action.DEVICE_POLICY_MANAGER_PASSWORD_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "KeyguardViewMediator"

    const-string v3, "dpc"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$800(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v2, v5, v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->keyguardDone(ZZ)V

    const-string v2, "KeyguardViewMediator"

    const-string v3, "wakeUp device!!!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;
    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$3300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/os/PowerManager;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager;->wakeUp(J)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked()V
    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$400(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto :goto_0
.end method

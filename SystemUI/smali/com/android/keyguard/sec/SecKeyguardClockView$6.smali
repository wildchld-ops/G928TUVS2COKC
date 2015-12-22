.class Lcom/android/keyguard/sec/SecKeyguardClockView$6;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "SecKeyguardClockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/SecKeyguardClockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SecKeyguardClockView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$6;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardVisibilityChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$6;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    # invokes: Lcom/android/keyguard/sec/SecKeyguardClockView;->refreshOwnerInfo()V
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->access$900(Lcom/android/keyguard/sec/SecKeyguardClockView;)V

    :cond_0
    return-void
.end method

.method public onOpenThemeChanged()V
    .locals 2

    const-string v0, "SecKeyguardClockView"

    const-string v1, "onOpenThemeChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$6;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->updateClock()V

    return-void
.end method

.method public onScreenTurnedOff(I)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$6;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    # setter for: Lcom/android/keyguard/sec/SecKeyguardClockView;->mScreenOn:Z
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/SecKeyguardClockView;->access$2702(Lcom/android/keyguard/sec/SecKeyguardClockView;Z)Z

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$6;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->access$2800(Lcom/android/keyguard/sec/SecKeyguardClockView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$6;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->access$2800(Lcom/android/keyguard/sec/SecKeyguardClockView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_0
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 5

    const/16 v4, 0x12ce

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$6;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    const/4 v1, 0x1

    # setter for: Lcom/android/keyguard/sec/SecKeyguardClockView;->mScreenOn:Z
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/SecKeyguardClockView;->access$2702(Lcom/android/keyguard/sec/SecKeyguardClockView;Z)Z

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$6;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardClockView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->access$400(Lcom/android/keyguard/sec/SecKeyguardClockView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$6;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardClockView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->access$400(Lcom/android/keyguard/sec/SecKeyguardClockView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$6;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardClockView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->access$400(Lcom/android/keyguard/sec/SecKeyguardClockView;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onTimeChanged()V
    .locals 4

    const/16 v3, 0x12cb

    const-string v0, "SecKeyguardClockView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTimeChanged() : mShouldShowDualClock - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/keyguard/sec/SecKeyguardClockView;->mShouldShowDualClock:Ljava/lang/Boolean;
    invoke-static {}, Lcom/android/keyguard/sec/SecKeyguardClockView;->access$2200()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isDualClockSet() -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$6;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    # invokes: Lcom/android/keyguard/sec/SecKeyguardClockView;->isDualClockSet()Z
    invoke-static {v2}, Lcom/android/keyguard/sec/SecKeyguardClockView;->access$2300(Lcom/android/keyguard/sec/SecKeyguardClockView;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$6;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$6;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardClockView;->access$2400(Lcom/android/keyguard/sec/SecKeyguardClockView;)Landroid/content/Context;

    move-result-object v1

    # invokes: Lcom/android/keyguard/sec/SecKeyguardClockView;->setAutoHomeTimezone(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/SecKeyguardClockView;->access$2500(Lcom/android/keyguard/sec/SecKeyguardClockView;Landroid/content/Context;)V

    # getter for: Lcom/android/keyguard/sec/SecKeyguardClockView;->mShouldShowDualClock:Ljava/lang/Boolean;
    invoke-static {}, Lcom/android/keyguard/sec/SecKeyguardClockView;->access$2200()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$6;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    # invokes: Lcom/android/keyguard/sec/SecKeyguardClockView;->isDualClockSet()Z
    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardClockView;->access$2300(Lcom/android/keyguard/sec/SecKeyguardClockView;)Z

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$6;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardClockView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->access$400(Lcom/android/keyguard/sec/SecKeyguardClockView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$6;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardClockView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->access$400(Lcom/android/keyguard/sec/SecKeyguardClockView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$6;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardClockView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->access$400(Lcom/android/keyguard/sec/SecKeyguardClockView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$6;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    # invokes: Lcom/android/keyguard/sec/SecKeyguardClockView;->setWidthAdaptiveEventContainer()V
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->access$2600(Lcom/android/keyguard/sec/SecKeyguardClockView;)V

    goto :goto_0
.end method

.method public onUserSwitchComplete(I)V
    .locals 4

    const/16 v1, 0x12ce

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$6;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardClockView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->access$400(Lcom/android/keyguard/sec/SecKeyguardClockView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$6;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardClockView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->access$400(Lcom/android/keyguard/sec/SecKeyguardClockView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$6;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardClockView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->access$400(Lcom/android/keyguard/sec/SecKeyguardClockView;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$6;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    # invokes: Lcom/android/keyguard/sec/SecKeyguardClockView;->refreshOwnerInfo()V
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->access$900(Lcom/android/keyguard/sec/SecKeyguardClockView;)V

    return-void
.end method

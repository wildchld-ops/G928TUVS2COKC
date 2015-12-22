.class Lcom/android/keyguard/sec/SecKeyguardStatusView$4;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "SecKeyguardStatusView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/SecKeyguardStatusView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SecKeyguardStatusView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SecKeyguardStatusView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView$4;->this$0:Lcom/android/keyguard/sec/SecKeyguardStatusView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardVisibilityChanged(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView$4;->this$0:Lcom/android/keyguard/sec/SecKeyguardStatusView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardStatusView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusView;->access$500(Lcom/android/keyguard/sec/SecKeyguardStatusView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isDcmLauncher(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView$4;->this$0:Lcom/android/keyguard/sec/SecKeyguardStatusView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardStatusView;->mIsDcmClock:Z
    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardStatusView;->access$600(Lcom/android/keyguard/sec/SecKeyguardStatusView;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView$4;->this$0:Lcom/android/keyguard/sec/SecKeyguardStatusView;

    # invokes: Lcom/android/keyguard/sec/SecKeyguardStatusView;->updateStatusView()V
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusView;->access$100(Lcom/android/keyguard/sec/SecKeyguardStatusView;)V

    :cond_0
    return-void
.end method

.method public onTrustChanged(I)V
    .locals 1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isDCMModel()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView$4;->this$0:Lcom/android/keyguard/sec/SecKeyguardStatusView;

    # invokes: Lcom/android/keyguard/sec/SecKeyguardStatusView;->updateStatusView()V
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusView;->access$100(Lcom/android/keyguard/sec/SecKeyguardStatusView;)V

    :cond_0
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView$4;->this$0:Lcom/android/keyguard/sec/SecKeyguardStatusView;

    # invokes: Lcom/android/keyguard/sec/SecKeyguardStatusView;->updateStatusView()V
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusView;->access$100(Lcom/android/keyguard/sec/SecKeyguardStatusView;)V

    return-void
.end method

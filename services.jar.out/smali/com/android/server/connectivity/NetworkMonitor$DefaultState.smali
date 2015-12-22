.class Lcom/android/server/connectivity/NetworkMonitor$DefaultState;
.super Lcom/android/internal/util/State;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/NetworkMonitor;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return v1

    :sswitch_0
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-string v2, "Lingering"

    invoke-virtual {v0, v2}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mLingeringState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$700(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$800(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-string v2, "Connected"

    invoke-virtual {v0, v2}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v2, 0x3

    # setter for: Lcom/android/server/connectivity/NetworkMonitor;->mMaxAttempts:I
    invoke-static {v0, v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$902(Lcom/android/server/connectivity/NetworkMonitor;I)I

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mEvaluatingState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$1000(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$1100(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-string v2, "Disconnected - quitting"

    invoke-virtual {v0, v2}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalLoggedInBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalLoggedInBroadcastReceiver;
    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->access$1200(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalLoggedInBroadcastReceiver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->access$1300(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalLoggedInBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalLoggedInBroadcastReceiver;
    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$1200(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalLoggedInBroadcastReceiver;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalLoggedInBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalLoggedInBroadcastReceiver;
    invoke-static {v0, v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$1202(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalLoggedInBroadcastReceiver;)Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalLoggedInBroadcastReceiver;

    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->quit()V
    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->access$1400(Lcom/android/server/connectivity/NetworkMonitor;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-string v2, "Forcing reevaluation - captive portal"

    invoke-virtual {v0, v2}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    invoke-static {}, Landroid/net/wifi/WifiManager;->showWebBrowserAtCaptivePortal()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # setter for: Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalCheckDone:Z
    invoke-static {v0, v4}, Lcom/android/server/connectivity/NetworkMonitor;->access$1502(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    :cond_1
    :sswitch_4
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-string v2, "Forcing reevaluation"

    invoke-virtual {v0, v2}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget v2, p1, Landroid/os/Message;->arg1:I

    # setter for: Lcom/android/server/connectivity/NetworkMonitor;->mUidResponsibleForReeval:I
    invoke-static {v0, v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$1602(Lcom/android/server/connectivity/NetworkMonitor;I)I

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget v0, p1, Landroid/os/Message;->arg2:I

    if-eqz v0, :cond_2

    iget v0, p1, Landroid/os/Message;->arg2:I

    :goto_1
    # setter for: Lcom/android/server/connectivity/NetworkMonitor;->mMaxAttempts:I
    invoke-static {v2, v0}, Lcom/android/server/connectivity/NetworkMonitor;->access$902(Lcom/android/server/connectivity/NetworkMonitor;I)I

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mEvaluatingState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$1000(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$1700(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :sswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_0

    :goto_2
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # setter for: Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalRegistered:Z
    invoke-static {v0, v4}, Lcom/android/server/connectivity/NetworkMonitor;->access$2302(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mValidatedState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$1800(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$1900(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V

    goto :goto_2

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # setter for: Lcom/android/server/connectivity/NetworkMonitor;->mUserDoesNotWant:Z
    invoke-static {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$2002(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mOfflineState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$2100(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$2200(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x82001 -> :sswitch_1
        0x82003 -> :sswitch_0
        0x82007 -> :sswitch_2
        0x82008 -> :sswitch_4
        0x82009 -> :sswitch_5
        0x8200f -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

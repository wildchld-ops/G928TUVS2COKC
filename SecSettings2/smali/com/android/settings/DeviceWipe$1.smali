.class Lcom/android/settings/DeviceWipe$1;
.super Landroid/content/BroadcastReceiver;
.source "DeviceWipe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DeviceWipe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DeviceWipe;


# direct methods
.method constructor <init>(Lcom/android/settings/DeviceWipe;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/DeviceWipe$1;->this$0:Lcom/android/settings/DeviceWipe;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/DeviceWipe$1;->this$0:Lcom/android/settings/DeviceWipe;

    # getter for: Lcom/android/settings/DeviceWipe;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/settings/DeviceWipe;->access$000(Lcom/android/settings/DeviceWipe;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/settings/DeviceWipe$1;->this$0:Lcom/android/settings/DeviceWipe;

    # getter for: Lcom/android/settings/DeviceWipe;->isFirstResume:Z
    invoke-static {v2}, Lcom/android/settings/DeviceWipe;->access$100(Lcom/android/settings/DeviceWipe;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/DeviceWipe$1;->this$0:Lcom/android/settings/DeviceWipe;

    const/4 v3, 0x0

    # setter for: Lcom/android/settings/DeviceWipe;->isFirstResume:Z
    invoke-static {v2, v3}, Lcom/android/settings/DeviceWipe;->access$102(Lcom/android/settings/DeviceWipe;Z)Z

    goto :goto_0

    :cond_2
    const-string v2, "wifi_state"

    const/4 v3, 0x4

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x3

    if-ne v2, v1, :cond_0

    iget-object v2, p0, Lcom/android/settings/DeviceWipe$1;->this$0:Lcom/android/settings/DeviceWipe;

    # getter for: Lcom/android/settings/DeviceWipe;->isWiFiEnabled:Z
    invoke-static {v2}, Lcom/android/settings/DeviceWipe;->access$200(Lcom/android/settings/DeviceWipe;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/DeviceWipe$1;->this$0:Lcom/android/settings/DeviceWipe;

    # getter for: Lcom/android/settings/DeviceWipe;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/settings/DeviceWipe;->access$400(Lcom/android/settings/DeviceWipe;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/DeviceWipe$1;->this$0:Lcom/android/settings/DeviceWipe;

    # getter for: Lcom/android/settings/DeviceWipe;->mRemoveProgress:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/settings/DeviceWipe;->access$300(Lcom/android/settings/DeviceWipe;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/android/settings/DeviceWipe$1;->this$0:Lcom/android/settings/DeviceWipe;

    # getter for: Lcom/android/settings/DeviceWipe;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/settings/DeviceWipe;->access$000(Lcom/android/settings/DeviceWipe;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->hide()V

    iget-object v2, p0, Lcom/android/settings/DeviceWipe$1;->this$0:Lcom/android/settings/DeviceWipe;

    invoke-virtual {v2}, Lcom/android/settings/DeviceWipe;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0a0ebf

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/settings/DeviceWipe$1;->this$0:Lcom/android/settings/DeviceWipe;

    # setter for: Lcom/android/settings/DeviceWipe;->isWiFiEnabled:Z
    invoke-static {v2, v4}, Lcom/android/settings/DeviceWipe;->access$202(Lcom/android/settings/DeviceWipe;Z)Z

    goto :goto_0
.end method

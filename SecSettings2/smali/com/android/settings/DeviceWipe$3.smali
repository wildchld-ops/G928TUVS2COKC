.class Lcom/android/settings/DeviceWipe$3;
.super Ljava/lang/Object;
.source "DeviceWipe.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DeviceWipe;->doNetworkReset()V
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

    iput-object p1, p0, Lcom/android/settings/DeviceWipe$3;->this$0:Lcom/android/settings/DeviceWipe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/settings/DeviceWipe$3;->this$0:Lcom/android/settings/DeviceWipe;

    # getter for: Lcom/android/settings/DeviceWipe;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/settings/DeviceWipe;->access$000(Lcom/android/settings/DeviceWipe;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/DeviceWipe$3;->this$0:Lcom/android/settings/DeviceWipe;

    # getter for: Lcom/android/settings/DeviceWipe;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/settings/DeviceWipe;->access$000(Lcom/android/settings/DeviceWipe;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/DeviceWipe$3;->this$0:Lcom/android/settings/DeviceWipe;

    # getter for: Lcom/android/settings/DeviceWipe;->isWiFiEnabled:Z
    invoke-static {v0}, Lcom/android/settings/DeviceWipe;->access$200(Lcom/android/settings/DeviceWipe;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/DeviceWipe$3;->this$0:Lcom/android/settings/DeviceWipe;

    # getter for: Lcom/android/settings/DeviceWipe;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/settings/DeviceWipe;->access$000(Lcom/android/settings/DeviceWipe;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    iget-object v0, p0, Lcom/android/settings/DeviceWipe$3;->this$0:Lcom/android/settings/DeviceWipe;

    # getter for: Lcom/android/settings/DeviceWipe;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/DeviceWipe;->access$800(Lcom/android/settings/DeviceWipe;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0ebf

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/DeviceWipe$3;->this$0:Lcom/android/settings/DeviceWipe;

    # setter for: Lcom/android/settings/DeviceWipe;->isWiFiEnabled:Z
    invoke-static {v0, v2}, Lcom/android/settings/DeviceWipe;->access$202(Lcom/android/settings/DeviceWipe;Z)Z

    iget-object v0, p0, Lcom/android/settings/DeviceWipe$3;->this$0:Lcom/android/settings/DeviceWipe;

    # getter for: Lcom/android/settings/DeviceWipe;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/DeviceWipe;->access$400(Lcom/android/settings/DeviceWipe;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DeviceWipe$3;->this$0:Lcom/android/settings/DeviceWipe;

    # getter for: Lcom/android/settings/DeviceWipe;->mRemoveProgress:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/settings/DeviceWipe;->access$300(Lcom/android/settings/DeviceWipe;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

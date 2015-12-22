.class Lcom/android/settings/DeviceWipe$2;
.super Ljava/lang/Object;
.source "DeviceWipe.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/android/settings/DeviceWipe$2;->this$0:Lcom/android/settings/DeviceWipe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/DeviceWipe$2;->this$0:Lcom/android/settings/DeviceWipe;

    const/16 v1, 0x37

    # invokes: Lcom/android/settings/DeviceWipe;->runKeyguardConfirmation(I)Z
    invoke-static {v0, v1}, Lcom/android/settings/DeviceWipe;->access$500(Lcom/android/settings/DeviceWipe;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/DeviceWipe$2;->this$0:Lcom/android/settings/DeviceWipe;

    invoke-virtual {v0}, Lcom/android/settings/DeviceWipe;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isNoSIM(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/DeviceWipe$2;->this$0:Lcom/android/settings/DeviceWipe;

    # invokes: Lcom/android/settings/DeviceWipe;->StartPassword()V
    invoke-static {v0}, Lcom/android/settings/DeviceWipe;->access$600(Lcom/android/settings/DeviceWipe;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/DeviceWipe$2;->this$0:Lcom/android/settings/DeviceWipe;

    # invokes: Lcom/android/settings/DeviceWipe;->doNetworkReset()V
    invoke-static {v0}, Lcom/android/settings/DeviceWipe;->access$700(Lcom/android/settings/DeviceWipe;)V

    goto :goto_0
.end method

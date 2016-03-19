.class Lcom/android/phone/NetworkNotificationUI$2;
.super Landroid/content/BroadcastReceiver;
.source "NetworkNotificationUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkNotificationUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkNotificationUI;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkNotificationUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "NetworkNotificationUI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSixModeIntentReceiver onReceive intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "com.samsung.intent.action.ACTION_CROSS_MAPPING"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "state"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "NetworkNotificationUI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_CROSS_MAPPING state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # invokes: Lcom/android/phone/NetworkNotificationUI;->displayCtcSimInSlot1WarningToast()V
    invoke-static {v2}, Lcom/android/phone/NetworkNotificationUI;->access$2300(Lcom/android/phone/NetworkNotificationUI;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # invokes: Lcom/android/phone/NetworkNotificationUI;->displayCtcSimInSlot2WarningToast()V
    invoke-static {v2}, Lcom/android/phone/NetworkNotificationUI;->access$2400(Lcom/android/phone/NetworkNotificationUI;)V

    goto :goto_0
.end method

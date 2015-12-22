.class public Lcom/android/incallui/edge/QuickReplyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "QuickReplyBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "people_stripe"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "com.samsung.android.incallui.edge.BROADCAST_AGAIN"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v2, Lcom/android/incallui/edge/CallEdgeManager;

    invoke-direct {v2, p1}, Lcom/android/incallui/edge/CallEdgeManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/android/incallui/edge/CallEdgeManager;->sendBroadcastForMissedEventAgain()V

    goto :goto_0

    :cond_2
    const-string v3, "com.samsung.android.incallui.edge.DELETE_ALL"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v1, Lcom/android/incallui/edge/QuickReplyDataSource;

    invoke-direct {v1, p1}, Lcom/android/incallui/edge/QuickReplyDataSource;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/android/incallui/edge/QuickReplyDataSource;->removeAll()V

    goto :goto_0
.end method

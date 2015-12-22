.class Lcom/android/incallui/edge/CallEdgeManager$IntentServiceResultHandler;
.super Landroid/os/Handler;
.source "CallEdgeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/edge/CallEdgeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IntentServiceResultHandler"
.end annotation


# instance fields
.field private number:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/incallui/edge/CallEdgeManager;

.field private timestamp:J


# direct methods
.method public constructor <init>(Lcom/android/incallui/edge/CallEdgeManager;Ljava/lang/String;J)V
    .locals 1

    iput-object p1, p0, Lcom/android/incallui/edge/CallEdgeManager$IntentServiceResultHandler;->this$0:Lcom/android/incallui/edge/CallEdgeManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/android/incallui/edge/CallEdgeManager$IntentServiceResultHandler;->number:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/incallui/edge/CallEdgeManager$IntentServiceResultHandler;->timestamp:J

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const-string v4, "CallEdgeManager"

    const-string v5, "Message received!"

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    iget-object v4, p0, Lcom/android/incallui/edge/CallEdgeManager$IntentServiceResultHandler;->this$0:Lcom/android/incallui/edge/CallEdgeManager;

    const-string v5, "reject_message"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/incallui/edge/CallEdgeManager;->rejectCallWithGlanceReplyMessage(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/incallui/edge/CallEdgeManager;->access$200(Lcom/android/incallui/edge/CallEdgeManager;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/incallui/edge/CallEdgeManager$IntentServiceResultHandler;->this$0:Lcom/android/incallui/edge/CallEdgeManager;

    # invokes: Lcom/android/incallui/edge/CallEdgeManager;->sendBroadcastForMissedEvent()V
    invoke-static {v4}, Lcom/android/incallui/edge/CallEdgeManager;->access$300(Lcom/android/incallui/edge/CallEdgeManager;)V

    const-string v3, "tel:"

    const-string v4, "tel:"

    iget-object v5, p0, Lcom/android/incallui/edge/CallEdgeManager$IntentServiceResultHandler;->number:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lcom/android/incallui/edge/QuickReplyDataSource;

    iget-object v4, p0, Lcom/android/incallui/edge/CallEdgeManager$IntentServiceResultHandler;->this$0:Lcom/android/incallui/edge/CallEdgeManager;

    # getter for: Lcom/android/incallui/edge/CallEdgeManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/incallui/edge/CallEdgeManager;->access$400(Lcom/android/incallui/edge/CallEdgeManager;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/incallui/edge/QuickReplyDataSource;-><init>(Landroid/content/Context;)V

    iget-wide v4, p0, Lcom/android/incallui/edge/CallEdgeManager$IntentServiceResultHandler;->timestamp:J

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/incallui/edge/QuickReplyDataSource;->insertQuickReply(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.class Lcom/android/server/telecom/InCallController$3;
.super Landroid/content/BroadcastReceiver;
.source "InCallController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/InCallController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/InCallController;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/InCallController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/InCallController$3;->this$0:Lcom/android/server/telecom/InCallController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "receive ACTION_SUBINFO_RECORD_UPDATED action"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/InCallController$3;->this$0:Lcom/android/server/telecom/InCallController;

    # invokes: Lcom/android/server/telecom/InCallController;->unregisterForServiceStateChanged()V
    invoke-static {v0}, Lcom/android/server/telecom/InCallController;->access$400(Lcom/android/server/telecom/InCallController;)V

    iget-object v0, p0, Lcom/android/server/telecom/InCallController$3;->this$0:Lcom/android/server/telecom/InCallController;

    # invokes: Lcom/android/server/telecom/InCallController;->registerForServiceStateChanged()V
    invoke-static {v0}, Lcom/android/server/telecom/InCallController;->access$1100(Lcom/android/server/telecom/InCallController;)V

    :cond_0
    return-void
.end method

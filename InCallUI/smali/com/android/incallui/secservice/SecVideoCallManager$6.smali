.class Lcom/android/incallui/secservice/SecVideoCallManager$6;
.super Landroid/content/BroadcastReceiver;
.source "SecVideoCallManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/secservice/SecVideoCallManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/secservice/SecVideoCallManager;


# direct methods
.method constructor <init>(Lcom/android/incallui/secservice/SecVideoCallManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/secservice/SecVideoCallManager$6;->this$0:Lcom/android/incallui/secservice/SecVideoCallManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager$6;->this$0:Lcom/android/incallui/secservice/SecVideoCallManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "intent.getAction() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/incallui/secservice/SecVideoCallManager;->access$000(Lcom/android/incallui/secservice/SecVideoCallManager;Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_DEVICE_STORAGE_LOW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager$6;->this$0:Lcom/android/incallui/secservice/SecVideoCallManager;

    const-string v2, "Send LOW_MEMORY_NOTIFICATION"

    # invokes: Lcom/android/incallui/secservice/SecVideoCallManager;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/incallui/secservice/SecVideoCallManager;->access$000(Lcom/android/incallui/secservice/SecVideoCallManager;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVideoCallManager$6;->this$0:Lcom/android/incallui/secservice/SecVideoCallManager;

    iget-object v1, v1, Lcom/android/incallui/secservice/SecVideoCallManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

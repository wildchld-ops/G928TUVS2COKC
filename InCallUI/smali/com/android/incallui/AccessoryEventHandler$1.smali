.class Lcom/android/incallui/AccessoryEventHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "AccessoryEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/AccessoryEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/AccessoryEventHandler;


# direct methods
.method constructor <init>(Lcom/android/incallui/AccessoryEventHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/AccessoryEventHandler$1;->this$0:Lcom/android/incallui/AccessoryEventHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AccessoryEventHandler action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "com.sec.android.sidesync.common.CALLFORWARD_STATE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v3, "STATE"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AccessoryEventHandler: call forward state - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "STARTED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    invoke-static {v3}, Lcom/android/incallui/InCallUtils;->setCallForwardingState(Z)V

    iget-object v3, p0, Lcom/android/incallui/AccessoryEventHandler$1;->this$0:Lcom/android/incallui/AccessoryEventHandler;

    const-string v4, "STARTED"

    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    # invokes: Lcom/android/incallui/AccessoryEventHandler;->notifyListenersOfCallForwardStateChanged(Z)V
    invoke-static {v3, v4}, Lcom/android/incallui/AccessoryEventHandler;->access$000(Lcom/android/incallui/AccessoryEventHandler;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "android.intent.action.WIFI_DISPLAY"

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/AccessoryEventHandler$1;->this$0:Lcom/android/incallui/AccessoryEventHandler;

    const-string v4, "state"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    # setter for: Lcom/android/incallui/AccessoryEventHandler;->mWIFIDisplayState:I
    invoke-static {v3, v4}, Lcom/android/incallui/AccessoryEventHandler;->access$102(Lcom/android/incallui/AccessoryEventHandler;I)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AccessoryEventHandler: wifi display state - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/AccessoryEventHandler$1;->this$0:Lcom/android/incallui/AccessoryEventHandler;

    # getter for: Lcom/android/incallui/AccessoryEventHandler;->mWIFIDisplayState:I
    invoke-static {v4}, Lcom/android/incallui/AccessoryEventHandler;->access$100(Lcom/android/incallui/AccessoryEventHandler;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

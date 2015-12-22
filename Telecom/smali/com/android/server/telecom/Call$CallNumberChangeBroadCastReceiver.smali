.class Lcom/android/server/telecom/Call$CallNumberChangeBroadCastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallNumberChangeBroadCastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/Call;


# direct methods
.method private constructor <init>(Lcom/android/server/telecom/Call;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/Call$CallNumberChangeBroadCastReceiver;->this$0:Lcom/android/server/telecom/Call;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/telecom/Call;Lcom/android/server/telecom/Call$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/telecom/Call$CallNumberChangeBroadCastReceiver;-><init>(Lcom/android/server/telecom/Call;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.sec.android.phone.CHANGED_CALL_NUMBER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/Call$CallNumberChangeBroadCastReceiver;->this$0:Lcom/android/server/telecom/Call;

    # getter for: Lcom/android/server/telecom/Call;->mHandle:Landroid/net/Uri;
    invoke-static {v0}, Lcom/android/server/telecom/Call;->access$600(Lcom/android/server/telecom/Call;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.call.Changenumberbroadcast"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "Change_Number"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BeforeNumberChange : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/telecom/Call$CallNumberChangeBroadCastReceiver;->this$0:Lcom/android/server/telecom/Call;

    # getter for: Lcom/android/server/telecom/Call;->BeforeNumberChange:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/telecom/Call;->access$700(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/server/telecom/Call$CallNumberChangeBroadCastReceiver;->this$0:Lcom/android/server/telecom/Call;

    # getter for: Lcom/android/server/telecom/Call;->BeforeNumberChange:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/telecom/Call;->access$700(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/telecom/Call$CallNumberChangeBroadCastReceiver;->this$0:Lcom/android/server/telecom/Call;

    # getter for: Lcom/android/server/telecom/Call;->BeforeNumberChange:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/telecom/Call;->access$700(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_1
    if-nez v0, :cond_0

    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/telecom/Call$CallNumberChangeBroadCastReceiver;->this$0:Lcom/android/server/telecom/Call;

    # getter for: Lcom/android/server/telecom/Call;->mHandle:Landroid/net/Uri;
    invoke-static {v0}, Lcom/android/server/telecom/Call;->access$600(Lcom/android/server/telecom/Call;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.class Lcom/android/systemui/qs/tiles/WifiCallingTile$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiCallingTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/WifiCallingTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/WifiCallingTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$1;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "action_wifi_call_enable_broadcast"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "wifi_call_enable"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$1;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    # getter for: Lcom/android/systemui/qs/tiles/WifiCallingTile;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->access$400(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$1;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    if-nez v1, :cond_1

    move v2, v3

    :goto_0
    # setter for: Lcom/android/systemui/qs/tiles/WifiCallingTile;->mStateLocal:Z
    invoke-static {v5, v2}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->access$002(Lcom/android/systemui/qs/tiles/WifiCallingTile;Z)Z

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$1;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$1;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    # getter for: Lcom/android/systemui/qs/tiles/WifiCallingTile;->mStateLocal:Z
    invoke-static {v5}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->access$000(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Z

    move-result v5

    if-eqz v5, :cond_2

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    # invokes: Lcom/android/systemui/qs/tiles/WifiCallingTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v2, v4}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->access$500(Lcom/android/systemui/qs/tiles/WifiCallingTile;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$1;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    # setter for: Lcom/android/systemui/qs/tiles/WifiCallingTile;->mIsProcessing:Z
    invoke-static {v2, v3}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->access$302(Lcom/android/systemui/qs/tiles/WifiCallingTile;Z)Z

    :cond_0
    return-void

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    const/4 v4, 0x2

    goto :goto_1
.end method

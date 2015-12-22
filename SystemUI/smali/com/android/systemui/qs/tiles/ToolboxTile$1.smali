.class Lcom/android/systemui/qs/tiles/ToolboxTile$1;
.super Landroid/content/BroadcastReceiver;
.source "ToolboxTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/ToolboxTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/ToolboxTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/ToolboxTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ToolboxTile$1;->this$0:Lcom/android/systemui/qs/tiles/ToolboxTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "ToolboxTile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.samsung.settings.action.talkback_toggled"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ToolboxTile$1;->this$0:Lcom/android/systemui/qs/tiles/ToolboxTile;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ToolboxTile$1;->this$0:Lcom/android/systemui/qs/tiles/ToolboxTile;

    # invokes: Lcom/android/systemui/qs/tiles/ToolboxTile;->getToolboxEnabled()Z
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/ToolboxTile;->access$000(Lcom/android/systemui/qs/tiles/ToolboxTile;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    # invokes: Lcom/android/systemui/qs/tiles/ToolboxTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v1, v0}, Lcom/android/systemui/qs/tiles/ToolboxTile;->access$100(Lcom/android/systemui/qs/tiles/ToolboxTile;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ToolboxTile$1;->this$0:Lcom/android/systemui/qs/tiles/ToolboxTile;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui/qs/tiles/ToolboxTile;->mIsProcessing:Z
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/ToolboxTile;->access$202(Lcom/android/systemui/qs/tiles/ToolboxTile;Z)Z

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

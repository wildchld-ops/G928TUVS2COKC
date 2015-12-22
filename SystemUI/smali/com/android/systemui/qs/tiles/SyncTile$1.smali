.class Lcom/android/systemui/qs/tiles/SyncTile$1;
.super Landroid/content/BroadcastReceiver;
.source "SyncTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/SyncTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/SyncTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/SyncTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SyncTile$1;->this$0:Lcom/android/systemui/qs/tiles/SyncTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/content/ContentResolver;->ACTION_SYNC_CONN_STATUS_CHANGED:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SyncTile$1;->this$0:Lcom/android/systemui/qs/tiles/SyncTile;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    # invokes: Lcom/android/systemui/qs/tiles/SyncTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/SyncTile;->access$000(Lcom/android/systemui/qs/tiles/SyncTile;Ljava/lang/Object;)V

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SyncTile$1;->this$0:Lcom/android/systemui/qs/tiles/SyncTile;

    const/4 v2, 0x0

    # setter for: Lcom/android/systemui/qs/tiles/SyncTile;->mIsProcessing:Z
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/SyncTile;->access$202(Lcom/android/systemui/qs/tiles/SyncTile;Z)Z

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SyncTile$1;->this$0:Lcom/android/systemui/qs/tiles/SyncTile;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    # invokes: Lcom/android/systemui/qs/tiles/SyncTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/SyncTile;->access$100(Lcom/android/systemui/qs/tiles/SyncTile;Ljava/lang/Object;)V

    goto :goto_0
.end method

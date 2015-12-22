.class Lcom/android/systemui/qs/tiles/NetworkBoosterTile$8;
.super Ljava/lang/Object;
.source "NetworkBoosterTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->showNotificationDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$8;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    const/4 v0, 0x2

    const-string v1, "NetworkBoosterTile"

    const-string v2, "AlertDialog onDismiss()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$8;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    # getter for: Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mIsWfcRegistered:Z
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->access$200(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$8;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    # getter for: Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mIsAirpalneOn:Z
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->access$000(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$8;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    # invokes: Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v1, v0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->access$2600(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$8;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    # invokes: Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->isSimReady()Z
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->access$500(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$8;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    # invokes: Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v1, v0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->access$2700(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$8;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$8;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    # getter for: Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mNetWorkBoosterState:Z
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->access$700(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    # invokes: Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v1, v0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->access$2800(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Ljava/lang/Object;)V

    goto :goto_0
.end method

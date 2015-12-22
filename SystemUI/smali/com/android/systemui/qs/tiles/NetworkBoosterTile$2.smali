.class Lcom/android/systemui/qs/tiles/NetworkBoosterTile$2;
.super Lcom/android/systemui/qs/SystemSetting;
.source "NetworkBoosterTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/NetworkBoosterTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$2;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/SystemSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(I)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v1, 0x1

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$2;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$2;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    # invokes: Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->getMode()I
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->access$900(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    # setter for: Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mNetWorkBoosterState:Z
    invoke-static {v4, v0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->access$702(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Z)Z

    const-string v0, "NetworkBoosterTile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NetworkBoosterObserver handleValueChanged() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$2;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    # getter for: Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mNetWorkBoosterState:Z
    invoke-static {v5}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->access$700(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$2;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    # getter for: Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mIsWfcRegistered:Z
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->access$200(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$2;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    # getter for: Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mIsAirpalneOn:Z
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->access$000(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$2;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    # invokes: Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->access$1100(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Ljava/lang/Object;)V

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$2;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    # setter for: Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mIsProcessing:Z
    invoke-static {v0, v2}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->access$1402(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Z)Z

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$2;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    # invokes: Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->isSimReady()Z
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->access$500(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$2;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    # invokes: Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->access$1200(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$2;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$2;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    # getter for: Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mNetWorkBoosterState:Z
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->access$700(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)Z

    move-result v4

    if-eqz v4, :cond_4

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    # invokes: Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->access$1300(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_2
.end method

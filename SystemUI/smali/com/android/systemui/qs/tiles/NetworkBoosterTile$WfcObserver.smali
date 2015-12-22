.class Lcom/android/systemui/qs/tiles/NetworkBoosterTile$WfcObserver;
.super Landroid/database/ContentObserver;
.source "NetworkBoosterTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/NetworkBoosterTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WfcObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$WfcObserver;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    const/4 v0, 0x2

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$WfcObserver;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$WfcObserver;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    # invokes: Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->getWfcMode()Z
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->access$1500(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)Z

    move-result v2

    # setter for: Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mIsWfcRegistered:Z
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->access$202(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Z)Z

    const-string v1, "NetworkBoosterTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WfcObserver() onChange - mIsWfcRegistered : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$WfcObserver;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    # getter for: Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mIsWfcRegistered:Z
    invoke-static {v3}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->access$200(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$WfcObserver;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    # getter for: Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mIsWfcRegistered:Z
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->access$200(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$WfcObserver;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    # getter for: Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mIsAirpalneOn:Z
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->access$000(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$WfcObserver;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    # invokes: Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v1, v0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->access$1700(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$WfcObserver;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    # invokes: Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->isSimReady()Z
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->access$500(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$WfcObserver;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    # invokes: Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v1, v0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->access$1800(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$WfcObserver;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$WfcObserver;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    # getter for: Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mNetWorkBoosterState:Z
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->access$700(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    # invokes: Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v1, v0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->access$1900(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Ljava/lang/Object;)V

    goto :goto_0
.end method

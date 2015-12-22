.class Lcom/android/systemui/qs/tiles/NetworkBoosterTile$1;
.super Lcom/android/systemui/qs/GlobalSetting;
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

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$1;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/GlobalSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(I)V
    .locals 5

    const/4 v2, 0x2

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$1;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$1;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    # getter for: Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mAirplaneSetting:Lcom/android/systemui/qs/GlobalSetting;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->access$100(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)Lcom/android/systemui/qs/GlobalSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    # setter for: Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mIsAirpalneOn:Z
    invoke-static {v3, v0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->access$002(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Z)Z

    const-string v0, "NetworkBoosterTile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AirplaneObserver() - mIsAirpalneOn : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$1;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    # getter for: Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mIsAirpalneOn:Z
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->access$000(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$1;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    # getter for: Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mIsWfcRegistered:Z
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->access$200(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$1;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    # getter for: Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mIsAirpalneOn:Z
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->access$000(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$1;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    # invokes: Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->access$400(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$1;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    # invokes: Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->isSimReady()Z
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->access$500(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$1;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    # invokes: Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->access$600(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$1;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$1;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    # getter for: Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mNetWorkBoosterState:Z
    invoke-static {v3}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->access$700(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    # invokes: Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->access$800(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2
.end method

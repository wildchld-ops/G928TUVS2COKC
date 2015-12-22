.class Lcom/android/systemui/qs/tiles/DormantModeTile$10;
.super Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;
.source "DormantModeTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/DormantModeTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/DormantModeTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/DormantModeTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DormantModeTile$10;->this$0:Lcom/android/systemui/qs/tiles/DormantModeTile;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onEffectsSupressorChanged()V
    .locals 0

    return-void
.end method

.method public onZenAvailableChanged(Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DormantModeTile$10;->this$0:Lcom/android/systemui/qs/tiles/DormantModeTile;

    # setter for: Lcom/android/systemui/qs/tiles/DormantModeTile;->mZenModeAvailable:Z
    invoke-static {v1, p1}, Lcom/android/systemui/qs/tiles/DormantModeTile;->access$902(Lcom/android/systemui/qs/tiles/DormantModeTile;Z)Z

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DormantModeTile$10;->this$0:Lcom/android/systemui/qs/tiles/DormantModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/DormantModeTile;->mHandlerInterrupt:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/DormantModeTile;->access$1000(Lcom/android/systemui/qs/tiles/DormantModeTile;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DormantModeTile$10;->this$0:Lcom/android/systemui/qs/tiles/DormantModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/DormantModeTile;->mHandlerInterrupt:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/DormantModeTile;->access$1000(Lcom/android/systemui/qs/tiles/DormantModeTile;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onZenChanged(I)V
    .locals 4

    const-string v1, "DormantModeTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onZenChanged : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DormantModeTile$10;->this$0:Lcom/android/systemui/qs/tiles/DormantModeTile;

    # setter for: Lcom/android/systemui/qs/tiles/DormantModeTile;->mZenMode:I
    invoke-static {v1, p1}, Lcom/android/systemui/qs/tiles/DormantModeTile;->access$1102(Lcom/android/systemui/qs/tiles/DormantModeTile;I)I

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DormantModeTile$10;->this$0:Lcom/android/systemui/qs/tiles/DormantModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/DormantModeTile;->mHandlerInterrupt:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/DormantModeTile;->access$1000(Lcom/android/systemui/qs/tiles/DormantModeTile;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DormantModeTile$10;->this$0:Lcom/android/systemui/qs/tiles/DormantModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/DormantModeTile;->mHandlerInterrupt:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/DormantModeTile;->access$1000(Lcom/android/systemui/qs/tiles/DormantModeTile;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

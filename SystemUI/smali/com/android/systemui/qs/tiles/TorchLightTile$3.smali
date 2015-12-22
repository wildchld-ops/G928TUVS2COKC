.class Lcom/android/systemui/qs/tiles/TorchLightTile$3;
.super Landroid/database/ContentObserver;
.source "TorchLightTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/TorchLightTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/TorchLightTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/TorchLightTile;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/TorchLightTile$3;->this$0:Lcom/android/systemui/qs/tiles/TorchLightTile;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/TorchLightTile$3;->this$0:Lcom/android/systemui/qs/tiles/TorchLightTile;

    # getter for: Lcom/android/systemui/qs/tiles/TorchLightTile;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/TorchLightTile;->access$1600(Lcom/android/systemui/qs/tiles/TorchLightTile;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "torch_light"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/TorchLightTile$3;->this$0:Lcom/android/systemui/qs/tiles/TorchLightTile;

    # getter for: Lcom/android/systemui/qs/tiles/TorchLightTile;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/TorchLightTile;->access$1700(Lcom/android/systemui/qs/tiles/TorchLightTile;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "torchState  : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/TorchLightTile$3;->this$0:Lcom/android/systemui/qs/tiles/TorchLightTile;

    # getter for: Lcom/android/systemui/qs/tiles/TorchLightTile;->mTorchEnabled:Z
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/TorchLightTile;->access$400(Lcom/android/systemui/qs/tiles/TorchLightTile;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/TorchLightTile$3;->this$0:Lcom/android/systemui/qs/tiles/TorchLightTile;

    # setter for: Lcom/android/systemui/qs/tiles/TorchLightTile;->mTorchEnabled:Z
    invoke-static {v1, v0}, Lcom/android/systemui/qs/tiles/TorchLightTile;->access$402(Lcom/android/systemui/qs/tiles/TorchLightTile;Z)Z

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/TorchLightTile$3;->this$0:Lcom/android/systemui/qs/tiles/TorchLightTile;

    # getter for: Lcom/android/systemui/qs/tiles/TorchLightTile;->mTorchEnabled:Z
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/TorchLightTile;->access$400(Lcom/android/systemui/qs/tiles/TorchLightTile;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/TorchLightTile$3;->this$0:Lcom/android/systemui/qs/tiles/TorchLightTile;

    # getter for: Lcom/android/systemui/qs/tiles/TorchLightTile;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/TorchLightTile;->access$1800(Lcom/android/systemui/qs/tiles/TorchLightTile;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Torch off , remove notification"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/TorchLightTile$3;->this$0:Lcom/android/systemui/qs/tiles/TorchLightTile;

    # invokes: Lcom/android/systemui/qs/tiles/TorchLightTile;->cancelNotification()V
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/TorchLightTile;->access$1300(Lcom/android/systemui/qs/tiles/TorchLightTile;)V

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/TorchLightTile$3;->this$0:Lcom/android/systemui/qs/tiles/TorchLightTile;

    # invokes: Lcom/android/systemui/qs/tiles/TorchLightTile;->updateState()V
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/TorchLightTile;->access$1500(Lcom/android/systemui/qs/tiles/TorchLightTile;)V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/TorchLightTile$3;->this$0:Lcom/android/systemui/qs/tiles/TorchLightTile;

    # getter for: Lcom/android/systemui/qs/tiles/TorchLightTile;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/TorchLightTile;->access$1900(Lcom/android/systemui/qs/tiles/TorchLightTile;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Torch on , create notification"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/TorchLightTile$3;->this$0:Lcom/android/systemui/qs/tiles/TorchLightTile;

    # invokes: Lcom/android/systemui/qs/tiles/TorchLightTile;->enqueueNotification()V
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/TorchLightTile;->access$900(Lcom/android/systemui/qs/tiles/TorchLightTile;)V

    goto :goto_1
.end method

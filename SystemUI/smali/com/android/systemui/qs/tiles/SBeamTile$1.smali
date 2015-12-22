.class Lcom/android/systemui/qs/tiles/SBeamTile$1;
.super Lcom/android/systemui/qs/SystemSetting;
.source "SBeamTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/SBeamTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/SBeamTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/SBeamTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SBeamTile$1;->this$0:Lcom/android/systemui/qs/tiles/SBeamTile;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/SystemSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(I)V
    .locals 7

    const/4 v6, -0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "SBeamTile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SBeamObserver.onChange() - DB_S_BEAM_ON = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/SBeamTile$1;->this$0:Lcom/android/systemui/qs/tiles/SBeamTile;

    # getter for: Lcom/android/systemui/qs/tiles/SBeamTile;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/SBeamTile;->access$000(Lcom/android/systemui/qs/tiles/SBeamTile;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sbeam_mode"

    invoke-static {v4, v5, v2, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SBeamTile$1;->this$0:Lcom/android/systemui/qs/tiles/SBeamTile;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SBeamTile$1;->this$0:Lcom/android/systemui/qs/tiles/SBeamTile;

    # getter for: Lcom/android/systemui/qs/tiles/SBeamTile;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SBeamTile;->access$000(Lcom/android/systemui/qs/tiles/SBeamTile;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "sbeam_mode"

    invoke-static {v0, v4, v2, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    # invokes: Lcom/android/systemui/qs/tiles/SBeamTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v3, v0}, Lcom/android/systemui/qs/tiles/SBeamTile;->access$100(Lcom/android/systemui/qs/tiles/SBeamTile;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SBeamTile$1;->this$0:Lcom/android/systemui/qs/tiles/SBeamTile;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SBeamTile$1;->this$0:Lcom/android/systemui/qs/tiles/SBeamTile;

    # invokes: Lcom/android/systemui/qs/tiles/SBeamTile;->getMode()I
    invoke-static {v3}, Lcom/android/systemui/qs/tiles/SBeamTile;->access$300(Lcom/android/systemui/qs/tiles/SBeamTile;)I

    move-result v3

    if-ne v3, v1, :cond_1

    :goto_1
    # setter for: Lcom/android/systemui/qs/tiles/SBeamTile;->mSBeamState:Z
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/SBeamTile;->access$202(Lcom/android/systemui/qs/tiles/SBeamTile;Z)Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SBeamTile$1;->this$0:Lcom/android/systemui/qs/tiles/SBeamTile;

    # setter for: Lcom/android/systemui/qs/tiles/SBeamTile;->mIsProcessing:Z
    invoke-static {v0, v2}, Lcom/android/systemui/qs/tiles/SBeamTile;->access$402(Lcom/android/systemui/qs/tiles/SBeamTile;Z)Z

    return-void

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

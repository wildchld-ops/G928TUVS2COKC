.class Lcom/android/systemui/qs/tiles/DormantModeTile$11;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/android/systemui/qs/tiles/DormantModeTile;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DormantModeTile$11;->this$0:Lcom/android/systemui/qs/tiles/DormantModeTile;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DormantModeTile$11;->this$0:Lcom/android/systemui/qs/tiles/DormantModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/DormantModeTile;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/DormantModeTile;->access$1200(Lcom/android/systemui/qs/tiles/DormantModeTile;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "car_mode_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DormantModeTile$11;->this$0:Lcom/android/systemui/qs/tiles/DormantModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/DormantModeTile;->mIsCarMode:Z
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/DormantModeTile;->access$1300(Lcom/android/systemui/qs/tiles/DormantModeTile;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DormantModeTile$11;->this$0:Lcom/android/systemui/qs/tiles/DormantModeTile;

    # setter for: Lcom/android/systemui/qs/tiles/DormantModeTile;->mIsCarMode:Z
    invoke-static {v1, v0}, Lcom/android/systemui/qs/tiles/DormantModeTile;->access$1302(Lcom/android/systemui/qs/tiles/DormantModeTile;Z)Z

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DormantModeTile$11;->this$0:Lcom/android/systemui/qs/tiles/DormantModeTile;

    # invokes: Lcom/android/systemui/qs/tiles/DormantModeTile;->updateState()V
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/DormantModeTile;->access$000(Lcom/android/systemui/qs/tiles/DormantModeTile;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

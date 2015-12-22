.class Lcom/android/systemui/qs/tiles/CarModeTile$2;
.super Landroid/database/ContentObserver;
.source "CarModeTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/CarModeTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/CarModeTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/CarModeTile;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/CarModeTile$2;->this$0:Lcom/android/systemui/qs/tiles/CarModeTile;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 6

    const/4 v2, 0x2

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/CarModeTile$2;->this$0:Lcom/android/systemui/qs/tiles/CarModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/CarModeTile;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/qs/tiles/CarModeTile;->access$200(Lcom/android/systemui/qs/tiles/CarModeTile;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "zen_mode"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/CarModeTile$2;->this$0:Lcom/android/systemui/qs/tiles/CarModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/CarModeTile;->mZenMode:I
    invoke-static {v3}, Lcom/android/systemui/qs/tiles/CarModeTile;->access$300(Lcom/android/systemui/qs/tiles/CarModeTile;)I

    move-result v3

    if-eq v0, v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/CarModeTile$2;->this$0:Lcom/android/systemui/qs/tiles/CarModeTile;

    # setter for: Lcom/android/systemui/qs/tiles/CarModeTile;->mZenMode:I
    invoke-static {v3, v0}, Lcom/android/systemui/qs/tiles/CarModeTile;->access$302(Lcom/android/systemui/qs/tiles/CarModeTile;I)I

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/CarModeTile$2;->this$0:Lcom/android/systemui/qs/tiles/CarModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/CarModeTile;->mZenMode:I
    invoke-static {v3}, Lcom/android/systemui/qs/tiles/CarModeTile;->access$300(Lcom/android/systemui/qs/tiles/CarModeTile;)I

    move-result v3

    if-eq v3, v2, :cond_0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/CarModeTile$2;->this$0:Lcom/android/systemui/qs/tiles/CarModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/CarModeTile;->mZenMode:I
    invoke-static {v3}, Lcom/android/systemui/qs/tiles/CarModeTile;->access$300(Lcom/android/systemui/qs/tiles/CarModeTile;)I

    move-result v3

    if-ne v3, v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CarModeTile$2;->this$0:Lcom/android/systemui/qs/tiles/CarModeTile;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    # invokes: Lcom/android/systemui/qs/tiles/CarModeTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/CarModeTile;->access$400(Lcom/android/systemui/qs/tiles/CarModeTile;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/CarModeTile$2;->this$0:Lcom/android/systemui/qs/tiles/CarModeTile;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/CarModeTile$2;->this$0:Lcom/android/systemui/qs/tiles/CarModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/CarModeTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/CarModeTile;->access$500(Lcom/android/systemui/qs/tiles/CarModeTile;)Lcom/android/systemui/qs/SystemSetting;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v4

    if-eqz v4, :cond_3

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    # invokes: Lcom/android/systemui/qs/tiles/CarModeTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v3, v1}, Lcom/android/systemui/qs/tiles/CarModeTile;->access$600(Lcom/android/systemui/qs/tiles/CarModeTile;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

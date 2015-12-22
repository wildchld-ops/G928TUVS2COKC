.class Lcom/android/systemui/qs/tiles/MobileDataTile$3;
.super Lcom/android/systemui/qs/GlobalSetting;
.source "MobileDataTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/MobileDataTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/MobileDataTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$3;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/GlobalSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(I)V
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$3;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # invokes: Lcom/android/systemui/qs/tiles/MobileDataTile;->isDataRoaming()Z
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$100(Lcom/android/systemui/qs/tiles/MobileDataTile;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$3;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    if-ne p1, v1, :cond_3

    move v0, v1

    :goto_0
    # setter for: Lcom/android/systemui/qs/tiles/MobileDataTile;->mMobileData:Z
    invoke-static {v2, v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$202(Lcom/android/systemui/qs/tiles/MobileDataTile;Z)Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$3;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$3;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/MobileDataTile;->mMobileData:Z
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$200(Lcom/android/systemui/qs/tiles/MobileDataTile;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$3;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/MobileDataTile;->isAirPlaneMode:Z
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$000(Lcom/android/systemui/qs/tiles/MobileDataTile;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x2

    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    # invokes: Lcom/android/systemui/qs/tiles/MobileDataTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$500(Lcom/android/systemui/qs/tiles/MobileDataTile;Ljava/lang/Object;)V

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

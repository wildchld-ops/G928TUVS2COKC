.class Lcom/android/systemui/qs/tiles/MobileDataTile$19;
.super Landroid/telephony/PhoneStateListener;
.source "MobileDataTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/MobileDataTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$19;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2

    const-string v0, "MobileDataTile"

    const-string v1, "onServiceStateChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$19;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$19;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # invokes: Lcom/android/systemui/qs/tiles/MobileDataTile;->getMobileData()Z
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$700(Lcom/android/systemui/qs/tiles/MobileDataTile;)Z

    move-result v1

    # setter for: Lcom/android/systemui/qs/tiles/MobileDataTile;->mMobileData:Z
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$202(Lcom/android/systemui/qs/tiles/MobileDataTile;Z)Z

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$19;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$19;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/MobileDataTile;->isAirPlaneMode:Z
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$000(Lcom/android/systemui/qs/tiles/MobileDataTile;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$19;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/MobileDataTile;->mMobileData:Z
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$200(Lcom/android/systemui/qs/tiles/MobileDataTile;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    # invokes: Lcom/android/systemui/qs/tiles/MobileDataTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v1, v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$3300(Lcom/android/systemui/qs/tiles/MobileDataTile;Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

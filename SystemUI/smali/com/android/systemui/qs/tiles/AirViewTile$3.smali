.class Lcom/android/systemui/qs/tiles/AirViewTile$3;
.super Lcom/android/systemui/qs/SecureSetting;
.source "AirViewTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/AirViewTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/AirViewTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/AirViewTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AirViewTile$3;->this$0:Lcom/android/systemui/qs/tiles/AirViewTile;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/SecureSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(IZ)V
    .locals 4

    const/4 v0, 0x1

    const-string v1, "AirViewTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAirViewMagnificationSetting.handleValueChanged - ACCESSIBILITY_DISPLAY_MAGNIFICATION_ENABLED = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirViewTile$3;->this$0:Lcom/android/systemui/qs/tiles/AirViewTile;

    # getter for: Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewMagnificationSetting:Lcom/android/systemui/qs/SecureSetting;
    invoke-static {v3}, Lcom/android/systemui/qs/tiles/AirViewTile;->access$500(Lcom/android/systemui/qs/tiles/AirViewTile;)Lcom/android/systemui/qs/SecureSetting;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/qs/SecureSetting;->getValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirViewTile$3;->this$0:Lcom/android/systemui/qs/tiles/AirViewTile;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirViewTile$3;->this$0:Lcom/android/systemui/qs/tiles/AirViewTile;

    # getter for: Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewMagnificationSetting:Lcom/android/systemui/qs/SecureSetting;
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/AirViewTile;->access$500(Lcom/android/systemui/qs/tiles/AirViewTile;)Lcom/android/systemui/qs/SecureSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/qs/SecureSetting;->getValue()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    # setter for: Lcom/android/systemui/qs/tiles/AirViewTile;->isMagnificationEnabled:Z
    invoke-static {v1, v0}, Lcom/android/systemui/qs/tiles/AirViewTile;->access$602(Lcom/android/systemui/qs/tiles/AirViewTile;Z)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.class Lcom/android/systemui/qs/tiles/AirViewTile$9;
.super Ljava/lang/Object;
.source "AirViewTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/AirViewTile;->showTalkBackDisablePopup(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/AirViewTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/AirViewTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AirViewTile$9;->this$0:Lcom/android/systemui/qs/tiles/AirViewTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirViewTile$9;->this$0:Lcom/android/systemui/qs/tiles/AirViewTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/AirViewTile;->doNext()V

    # getter for: Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewType:I
    invoke-static {}, Lcom/android/systemui/qs/tiles/AirViewTile;->access$900()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirViewTile$9;->this$0:Lcom/android/systemui/qs/tiles/AirViewTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/AirViewTile;->isAllOptionDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirViewTile$9;->this$0:Lcom/android/systemui/qs/tiles/AirViewTile;

    # getter for: Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewMasterSetting:Lcom/android/systemui/qs/SystemSetting;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AirViewTile;->access$100(Lcom/android/systemui/qs/tiles/AirViewTile;)Lcom/android/systemui/qs/SystemSetting;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SystemSetting;->setValue(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirViewTile$9;->this$0:Lcom/android/systemui/qs/tiles/AirViewTile;

    # invokes: Lcom/android/systemui/qs/tiles/AirViewTile;->showConfirmPopup()V
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AirViewTile;->access$1300(Lcom/android/systemui/qs/tiles/AirViewTile;)V

    :cond_0
    return-void
.end method

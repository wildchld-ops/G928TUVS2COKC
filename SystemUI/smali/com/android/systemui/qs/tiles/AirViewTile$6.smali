.class Lcom/android/systemui/qs/tiles/AirViewTile$6;
.super Ljava/lang/Object;
.source "AirViewTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/AirViewTile;->showConfirmPopup()V
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

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AirViewTile$6;->this$0:Lcom/android/systemui/qs/tiles/AirViewTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const-string v0, "AirViewTile"

    const-string v1, "showConfirmPopup() - Positive onClick mode: ok"

    invoke-static {v0, v1}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewType:I
    invoke-static {}, Lcom/android/systemui/qs/tiles/AirViewTile;->access$900()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirViewTile$6;->this$0:Lcom/android/systemui/qs/tiles/AirViewTile;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$FingerAirViewSettingActivity"

    # invokes: Lcom/android/systemui/qs/tiles/AirViewTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/systemui/qs/tiles/AirViewTile;->access$1000(Lcom/android/systemui/qs/tiles/AirViewTile;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    # getter for: Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewType:I
    invoke-static {}, Lcom/android/systemui/qs/tiles/AirViewTile;->access$900()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirViewTile$6;->this$0:Lcom/android/systemui/qs/tiles/AirViewTile;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$PenAirViewSettingsMenuActivity"

    # invokes: Lcom/android/systemui/qs/tiles/AirViewTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/systemui/qs/tiles/AirViewTile;->access$1100(Lcom/android/systemui/qs/tiles/AirViewTile;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    # getter for: Lcom/android/systemui/qs/tiles/AirViewTile;->mAirViewType:I
    invoke-static {}, Lcom/android/systemui/qs/tiles/AirViewTile;->access$900()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirViewTile$6;->this$0:Lcom/android/systemui/qs/tiles/AirViewTile;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$AirViewSettingActivity"

    # invokes: Lcom/android/systemui/qs/tiles/AirViewTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/systemui/qs/tiles/AirViewTile;->access$1200(Lcom/android/systemui/qs/tiles/AirViewTile;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

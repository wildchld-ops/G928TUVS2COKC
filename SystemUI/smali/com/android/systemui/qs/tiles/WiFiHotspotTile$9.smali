.class Lcom/android/systemui/qs/tiles/WiFiHotspotTile$9;
.super Ljava/lang/Object;
.source "WiFiHotspotTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->showWarningDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/WiFiHotspotTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$9;->this$0:Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$9;->this$0:Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->access$202(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$9;->this$0:Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

    # invokes: Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->refreshState()V
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->access$1600(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)V

    return-void
.end method

.class Lcom/android/systemui/qs/tiles/MobileDataTile$18;
.super Ljava/lang/Object;
.source "MobileDataTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/MobileDataTile;->onDisplayMobileDataAlert(I)V
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

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$18;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$18;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$18;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/MobileDataTile;->mMobileData:Z
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$200(Lcom/android/systemui/qs/tiles/MobileDataTile;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$18;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/MobileDataTile;->isAirPlaneMode:Z
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$000(Lcom/android/systemui/qs/tiles/MobileDataTile;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    # invokes: Lcom/android/systemui/qs/tiles/MobileDataTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v1, v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$3200(Lcom/android/systemui/qs/tiles/MobileDataTile;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$18;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$1902(Lcom/android/systemui/qs/tiles/MobileDataTile;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    return-void

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

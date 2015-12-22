.class Lcom/android/systemui/qs/tiles/NetworkBoosterTile$6;
.super Ljava/lang/Object;
.source "NetworkBoosterTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->showNotificationDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

.field final synthetic val$mDisableAlertCheckBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$6;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$6;->val$mDisableAlertCheckBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$6;->val$mDisableAlertCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$6;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    # getter for: Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->access$2300(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smart_bonding_notification_do_not_show"

    const/4 v2, -0x2

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$6;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    # invokes: Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->setMode(I)V
    invoke-static {v0, v3}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->access$2400(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

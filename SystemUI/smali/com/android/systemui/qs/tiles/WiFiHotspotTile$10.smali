.class Lcom/android/systemui/qs/tiles/WiFiHotspotTile$10;
.super Ljava/lang/Object;
.source "WiFiHotspotTile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->showAttentionDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

.field final synthetic val$link:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$10;->this$0:Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$10;->val$link:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$10;->val$link:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$10;->this$0:Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

    # getter for: Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->access$1700(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$10;->this$0:Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

    # getter for: Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAttentionDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->access$700(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->cancel()V

    return-void
.end method

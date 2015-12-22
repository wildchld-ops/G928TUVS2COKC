.class Lcom/android/systemui/qs/tiles/LocationTile$8;
.super Ljava/lang/Object;
.source "LocationTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/LocationTile;->showDCMLocationConsentDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/LocationTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/LocationTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/LocationTile$8;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const-string v1, "LocationTile"

    const-string v2, "click positive button"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile$8;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    # getter for: Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/LocationTile;->access$1200(Lcom/android/systemui/qs/tiles/LocationTile;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_mode"

    const/4 v3, 0x3

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.location.GPS_ENABLED_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile$8;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    # getter for: Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/LocationTile;->access$1300(Lcom/android/systemui/qs/tiles/LocationTile;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

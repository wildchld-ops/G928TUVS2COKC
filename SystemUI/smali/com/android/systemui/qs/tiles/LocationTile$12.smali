.class Lcom/android/systemui/qs/tiles/LocationTile$12;
.super Ljava/lang/Object;
.source "LocationTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/LocationTile;->showConfirmPopup(Z)V
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

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/LocationTile$12;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    const-string v0, "LocationTile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlertDialog onDismiss()..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/LocationTile$12;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    # getter for: Lcom/android/systemui/qs/tiles/LocationTile;->mGpsActivated:Z
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/LocationTile;->access$100(Lcom/android/systemui/qs/tiles/LocationTile;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile$12;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile$12;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    # getter for: Lcom/android/systemui/qs/tiles/LocationTile;->mGpsActivated:Z
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/LocationTile;->access$100(Lcom/android/systemui/qs/tiles/LocationTile;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    # invokes: Lcom/android/systemui/qs/tiles/LocationTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v1, v0}, Lcom/android/systemui/qs/tiles/LocationTile;->access$1800(Lcom/android/systemui/qs/tiles/LocationTile;Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

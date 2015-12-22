.class Lcom/android/systemui/qs/tiles/EbookTile$4;
.super Ljava/lang/Object;
.source "EbookTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/EbookTile;->onDisplayReadingModeAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/EbookTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/EbookTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/EbookTile$4;->this$0:Lcom/android/systemui/qs/tiles/EbookTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile$4;->this$0:Lcom/android/systemui/qs/tiles/EbookTile;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$ReadingModeSettingsActivity"

    # invokes: Lcom/android/systemui/qs/tiles/EbookTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/systemui/qs/tiles/EbookTile;->access$600(Lcom/android/systemui/qs/tiles/EbookTile;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile$4;->this$0:Lcom/android/systemui/qs/tiles/EbookTile;

    const/4 v1, 0x1

    # invokes: Lcom/android/systemui/qs/tiles/EbookTile;->setEnabled(Z)V
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/EbookTile;->access$500(Lcom/android/systemui/qs/tiles/EbookTile;Z)V

    return-void
.end method

.class Lcom/android/systemui/qs/tiles/EbookTile$3;
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

.field final synthetic val$readingModeCheckBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/EbookTile;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/EbookTile$3;->this$0:Lcom/android/systemui/qs/tiles/EbookTile;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/EbookTile$3;->val$readingModeCheckBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile$3;->val$readingModeCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile$3;->val$readingModeCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile$3;->this$0:Lcom/android/systemui/qs/tiles/EbookTile;

    # getter for: Lcom/android/systemui/qs/tiles/EbookTile;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/EbookTile;->access$400(Lcom/android/systemui/qs/tiles/EbookTile;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quickpanel_readingmode_checked"

    const/4 v2, -0x2

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile$3;->this$0:Lcom/android/systemui/qs/tiles/EbookTile;

    # invokes: Lcom/android/systemui/qs/tiles/EbookTile;->setEnabled(Z)V
    invoke-static {v0, v3}, Lcom/android/systemui/qs/tiles/EbookTile;->access$500(Lcom/android/systemui/qs/tiles/EbookTile;Z)V

    return-void
.end method

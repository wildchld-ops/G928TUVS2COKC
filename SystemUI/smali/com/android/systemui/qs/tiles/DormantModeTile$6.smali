.class Lcom/android/systemui/qs/tiles/DormantModeTile$6;
.super Ljava/lang/Object;
.source "DormantModeTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/DormantModeTile;->onDisplayDormantModeAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/DormantModeTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/DormantModeTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DormantModeTile$6;->this$0:Lcom/android/systemui/qs/tiles/DormantModeTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DormantModeTile$6;->this$0:Lcom/android/systemui/qs/tiles/DormantModeTile;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    # invokes: Lcom/android/systemui/qs/tiles/DormantModeTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/DormantModeTile;->access$500(Lcom/android/systemui/qs/tiles/DormantModeTile;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DormantModeTile$6;->this$0:Lcom/android/systemui/qs/tiles/DormantModeTile;

    const/4 v1, 0x0

    # invokes: Lcom/android/systemui/qs/tiles/DormantModeTile;->setEnabled(Z)V
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/DormantModeTile;->access$400(Lcom/android/systemui/qs/tiles/DormantModeTile;Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

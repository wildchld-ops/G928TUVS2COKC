.class Lcom/android/systemui/qs/tiles/EbookTile$1;
.super Lcom/android/systemui/qs/SystemSetting;
.source "EbookTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/EbookTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/EbookTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/EbookTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/EbookTile$1;->this$0:Lcom/android/systemui/qs/tiles/EbookTile;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/SystemSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(I)V
    .locals 5

    const/4 v1, 0x2

    const/4 v0, 0x1

    const-string v2, "EbookTile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleValueChanged : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/EbookTile$1;->this$0:Lcom/android/systemui/qs/tiles/EbookTile;

    if-eqz p1, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    # invokes: Lcom/android/systemui/qs/tiles/EbookTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v2, v0}, Lcom/android/systemui/qs/tiles/EbookTile;->access$000(Lcom/android/systemui/qs/tiles/EbookTile;Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/EbookTile$1;->this$0:Lcom/android/systemui/qs/tiles/EbookTile;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/EbookTile$1;->this$0:Lcom/android/systemui/qs/tiles/EbookTile;

    # invokes: Lcom/android/systemui/qs/tiles/EbookTile;->isEbookMode(I)Z
    invoke-static {v3, p1}, Lcom/android/systemui/qs/tiles/EbookTile;->access$100(Lcom/android/systemui/qs/tiles/EbookTile;I)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    # invokes: Lcom/android/systemui/qs/tiles/EbookTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v2, v0}, Lcom/android/systemui/qs/tiles/EbookTile;->access$200(Lcom/android/systemui/qs/tiles/EbookTile;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.class Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile$1;
.super Lcom/android/systemui/qs/SystemSetting;
.source "AdaptiveDisplayTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile$1;->this$0:Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/SystemSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(I)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile$1;->this$0:Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile$1;->this$0:Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile;

    # invokes: Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile;->getAdaptiveDisplayEnabled()Z
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile;->access$000(Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    # invokes: Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v1, v0}, Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile;->access$100(Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile$1;->this$0:Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile$1;->this$0:Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile;

    # invokes: Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile;->getAdaptiveDisplayEnabled()Z
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile;->access$000(Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile;)Z

    move-result v1

    # setter for: Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile;->mDisplayState:Z
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile;->access$202(Lcom/android/systemui/qs/tiles/AdaptiveDisplayTile;Z)Z

    return-void

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

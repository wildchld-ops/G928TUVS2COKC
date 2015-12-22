.class Lcom/android/systemui/qs/tiles/ToddlerModeTile$1;
.super Lcom/android/systemui/qs/SystemSetting;
.source "ToddlerModeTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/ToddlerModeTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/ToddlerModeTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/ToddlerModeTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ToddlerModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/ToddlerModeTile;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/SystemSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(I)V
    .locals 3

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ToddlerModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/ToddlerModeTile;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    # setter for: Lcom/android/systemui/qs/tiles/ToddlerModeTile;->mStateLocal:Z
    invoke-static {v2, v0}, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->access$002(Lcom/android/systemui/qs/tiles/ToddlerModeTile;Z)Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ToddlerModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/ToddlerModeTile;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ToddlerModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/ToddlerModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/ToddlerModeTile;->mStateLocal:Z
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->access$000(Lcom/android/systemui/qs/tiles/ToddlerModeTile;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    # invokes: Lcom/android/systemui/qs/tiles/ToddlerModeTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->access$100(Lcom/android/systemui/qs/tiles/ToddlerModeTile;Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_1
.end method

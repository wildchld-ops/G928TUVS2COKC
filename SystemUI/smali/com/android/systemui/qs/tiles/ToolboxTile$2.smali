.class Lcom/android/systemui/qs/tiles/ToolboxTile$2;
.super Lcom/android/systemui/qs/SystemSetting;
.source "ToolboxTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/ToolboxTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/ToolboxTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/ToolboxTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ToolboxTile$2;->this$0:Lcom/android/systemui/qs/tiles/ToolboxTile;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/SystemSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(I)V
    .locals 3

    const-string v0, "ToolboxTile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mToolboxSettings.handleValueChanged() - Settings.System.TOOLBOX_ONOFF = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ToolboxTile$2;->this$0:Lcom/android/systemui/qs/tiles/ToolboxTile;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ToolboxTile$2;->this$0:Lcom/android/systemui/qs/tiles/ToolboxTile;

    # invokes: Lcom/android/systemui/qs/tiles/ToolboxTile;->getToolboxEnabled()Z
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/ToolboxTile;->access$000(Lcom/android/systemui/qs/tiles/ToolboxTile;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    # invokes: Lcom/android/systemui/qs/tiles/ToolboxTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v1, v0}, Lcom/android/systemui/qs/tiles/ToolboxTile;->access$300(Lcom/android/systemui/qs/tiles/ToolboxTile;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ToolboxTile$2;->this$0:Lcom/android/systemui/qs/tiles/ToolboxTile;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui/qs/tiles/ToolboxTile;->mIsProcessing:Z
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/ToolboxTile;->access$202(Lcom/android/systemui/qs/tiles/ToolboxTile;Z)Z

    return-void

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

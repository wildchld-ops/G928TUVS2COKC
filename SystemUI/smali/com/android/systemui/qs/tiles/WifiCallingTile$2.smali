.class Lcom/android/systemui/qs/tiles/WifiCallingTile$2;
.super Lcom/android/systemui/qs/GlobalSetting;
.source "WifiCallingTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/WifiCallingTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/WifiCallingTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$2;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/GlobalSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(I)V
    .locals 3

    const-string v0, "WifiCallingTile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleValueChanged() WIFI_CALL_ENABLE : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$2;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    # getter for: Lcom/android/systemui/qs/tiles/WifiCallingTile;->mSettingWifiCall:Lcom/android/systemui/qs/GlobalSetting;
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->access$600(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Lcom/android/systemui/qs/GlobalSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$2;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$2;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    # invokes: Lcom/android/systemui/qs/tiles/WifiCallingTile;->getMode()Z
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->access$100(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Z

    move-result v1

    # setter for: Lcom/android/systemui/qs/tiles/WifiCallingTile;->mStateLocal:Z
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->access$002(Lcom/android/systemui/qs/tiles/WifiCallingTile;Z)Z

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$2;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$2;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    # getter for: Lcom/android/systemui/qs/tiles/WifiCallingTile;->mStateLocal:Z
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->access$000(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    # invokes: Lcom/android/systemui/qs/tiles/WifiCallingTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v1, v0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->access$700(Lcom/android/systemui/qs/tiles/WifiCallingTile;Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

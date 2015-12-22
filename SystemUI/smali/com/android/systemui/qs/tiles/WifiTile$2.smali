.class Lcom/android/systemui/qs/tiles/WifiTile$2;
.super Ljava/lang/Object;
.source "WifiTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/WifiTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/WifiTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/WifiTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$2;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAirplaneModeChanged(Z)V
    .locals 0

    return-void
.end method

.method public onMobileDataEnabled(Z)V
    .locals 0

    return-void
.end method

.method public onMobileDataSignalChanged(ZILjava/lang/String;IZZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public onNoSimVisibleChanged(Z)V
    .locals 0

    return-void
.end method

.method public onWifiSignalChanged(ZZIZZLjava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v2, "STATUSBAR-WifiTile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onWifiSignalChanged enabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " enabledDesc:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;-><init>(Lcom/android/systemui/qs/tiles/WifiTile$1;)V

    iput-boolean p1, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    iput-boolean p2, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->connected:Z

    iput p3, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->wifiSignalIconId:I

    iput-object p7, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabledDesc:Ljava/lang/String;

    iput-boolean p4, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->activityIn:Z

    iput-boolean p5, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->activityOut:Z

    iput-object p6, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->wifiSignalContentDescription:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile$2;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    # setter for: Lcom/android/systemui/qs/tiles/WifiTile;->mWifiName:Ljava/lang/String;
    invoke-static {v2, p7}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1102(Lcom/android/systemui/qs/tiles/WifiTile;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile$2;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    # getter for: Lcom/android/systemui/qs/tiles/WifiTile;->mWifiName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1100(Lcom/android/systemui/qs/tiles/WifiTile;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile$2;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    # getter for: Lcom/android/systemui/qs/tiles/WifiTile;->mWifiName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1100(Lcom/android/systemui/qs/tiles/WifiTile;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile$2;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    # getter for: Lcom/android/systemui/qs/tiles/WifiTile;->mWifiName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1100(Lcom/android/systemui/qs/tiles/WifiTile;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "\""

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile$2;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/WifiTile$2;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    # getter for: Lcom/android/systemui/qs/tiles/WifiTile;->mWifiName:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1100(Lcom/android/systemui/qs/tiles/WifiTile;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    # setter for: Lcom/android/systemui/qs/tiles/WifiTile;->mWifiName:Ljava/lang/String;
    invoke-static {v2, v5}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1102(Lcom/android/systemui/qs/tiles/WifiTile;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile$2;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    # getter for: Lcom/android/systemui/qs/tiles/WifiTile;->mWifiName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1100(Lcom/android/systemui/qs/tiles/WifiTile;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "\""

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile$2;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/WifiTile$2;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    # getter for: Lcom/android/systemui/qs/tiles/WifiTile;->mWifiName:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1100(Lcom/android/systemui/qs/tiles/WifiTile;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/WifiTile$2;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    # getter for: Lcom/android/systemui/qs/tiles/WifiTile;->mWifiName:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1100(Lcom/android/systemui/qs/tiles/WifiTile;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    # setter for: Lcom/android/systemui/qs/tiles/WifiTile;->mWifiName:Ljava/lang/String;
    invoke-static {v2, v5}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1102(Lcom/android/systemui/qs/tiles/WifiTile;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/WifiTile$2;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    iget-boolean v2, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    if-eqz v2, :cond_4

    iget v2, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->wifiSignalIconId:I

    if-lez v2, :cond_4

    iget-object v2, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabledDesc:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v2, v3

    :goto_0
    # setter for: Lcom/android/systemui/qs/tiles/WifiTile;->mWifiConnected:Z
    invoke-static {v5, v2}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1202(Lcom/android/systemui/qs/tiles/WifiTile;Z)Z

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile$2;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/WifiTile$2;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    # getter for: Lcom/android/systemui/qs/tiles/WifiTile;->mWifiConnected:Z
    invoke-static {v5}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1200(Lcom/android/systemui/qs/tiles/WifiTile;)Z

    move-result v5

    if-eqz v5, :cond_5

    :goto_1
    # setter for: Lcom/android/systemui/qs/tiles/WifiTile;->mWifiSignalIconResId:I
    invoke-static {v2, p3}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1302(Lcom/android/systemui/qs/tiles/WifiTile;I)I

    iget v2, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->wifiSignalIconId:I

    if-lez v2, :cond_6

    iget-object v2, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabledDesc:Ljava/lang/String;

    if-nez v2, :cond_6

    move v1, v3

    :goto_2
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile$2;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    # getter for: Lcom/android/systemui/qs/tiles/WifiTile;->mWifiConnected:Z
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1200(Lcom/android/systemui/qs/tiles/WifiTile;)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile$2;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    # getter for: Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/qs/QSTile$State;
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1400(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/qs/QSTile$State;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v2, v2, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v4, 0x3

    if-eq v2, v4, :cond_3

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile$2;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    # invokes: Lcom/android/systemui/qs/tiles/WifiTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v2, v3}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1500(Lcom/android/systemui/qs/tiles/WifiTile;Ljava/lang/Object;)V

    :cond_3
    return-void

    :cond_4
    move v2, v4

    goto :goto_0

    :cond_5
    move p3, v4

    goto :goto_1

    :cond_6
    move v1, v4

    goto :goto_2
.end method

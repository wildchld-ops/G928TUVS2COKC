.class Lcom/android/systemui/qs/tiles/VoLteTile$5;
.super Landroid/content/BroadcastReceiver;
.source "VoLteTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/VoLteTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/VoLteTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/VoLteTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/VoLteTile$5;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/VoLteTile$5;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/VoLteTile$5;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    # getter for: Lcom/android/systemui/qs/tiles/VoLteTile;->mSettingAirplane:Lcom/android/systemui/qs/GlobalSetting;
    invoke-static {v6}, Lcom/android/systemui/qs/tiles/VoLteTile;->access$1100(Lcom/android/systemui/qs/tiles/VoLteTile;)Lcom/android/systemui/qs/GlobalSetting;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v6

    if-ne v6, v3, :cond_0

    move v2, v3

    :cond_0
    # setter for: Lcom/android/systemui/qs/tiles/VoLteTile;->mIsAirPlaneMode:Z
    invoke-static {v5, v2}, Lcom/android/systemui/qs/tiles/VoLteTile;->access$002(Lcom/android/systemui/qs/tiles/VoLteTile;Z)Z

    const-string v2, "VoLteTile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive: ACTION_AIRPLANE_MODE_CHANGED, mIsAirPlaneMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/VoLteTile$5;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    # getter for: Lcom/android/systemui/qs/tiles/VoLteTile;->mIsAirPlaneMode:Z
    invoke-static {v6}, Lcom/android/systemui/qs/tiles/VoLteTile;->access$000(Lcom/android/systemui/qs/tiles/VoLteTile;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/VoLteTile$5;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/VoLteTile$5;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    # invokes: Lcom/android/systemui/qs/tiles/VoLteTile;->getVoLTEEnabled()Z
    invoke-static {v5}, Lcom/android/systemui/qs/tiles/VoLteTile;->access$100(Lcom/android/systemui/qs/tiles/VoLteTile;)Z

    move-result v5

    if-eqz v5, :cond_2

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    # invokes: Lcom/android/systemui/qs/tiles/VoLteTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v2, v3}, Lcom/android/systemui/qs/tiles/VoLteTile;->access$1200(Lcom/android/systemui/qs/tiles/VoLteTile;Ljava/lang/Object;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v3, v4

    goto :goto_0

    :cond_3
    const-string v5, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v2, "ss"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "VoLteTile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive: ACTION_SIM_STATE_CHANGED, simState(\'ss\') = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/VoLteTile$5;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    # getter for: Lcom/android/systemui/qs/tiles/VoLteTile;->mIsAirPlaneMode:Z
    invoke-static {v6}, Lcom/android/systemui/qs/tiles/VoLteTile;->access$000(Lcom/android/systemui/qs/tiles/VoLteTile;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/VoLteTile$5;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    # getter for: Lcom/android/systemui/qs/tiles/VoLteTile;->mIsAirPlaneMode:Z
    invoke-static {v6}, Lcom/android/systemui/qs/tiles/VoLteTile;->access$000(Lcom/android/systemui/qs/tiles/VoLteTile;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "LOADED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "ABSENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/VoLteTile$5;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    # setter for: Lcom/android/systemui/qs/tiles/VoLteTile;->mInitialized:Z
    invoke-static {v2, v3}, Lcom/android/systemui/qs/tiles/VoLteTile;->access$1302(Lcom/android/systemui/qs/tiles/VoLteTile;Z)Z

    :cond_5
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/VoLteTile$5;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/VoLteTile$5;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    # invokes: Lcom/android/systemui/qs/tiles/VoLteTile;->getVoLTEEnabled()Z
    invoke-static {v5}, Lcom/android/systemui/qs/tiles/VoLteTile;->access$100(Lcom/android/systemui/qs/tiles/VoLteTile;)Z

    move-result v5

    if-eqz v5, :cond_6

    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    # invokes: Lcom/android/systemui/qs/tiles/VoLteTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v2, v3}, Lcom/android/systemui/qs/tiles/VoLteTile;->access$1400(Lcom/android/systemui/qs/tiles/VoLteTile;Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    move v3, v4

    goto :goto_2

    :cond_7
    const-string v4, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGE_STARTED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "com.samsung.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_FAILED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_8
    const-string v4, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGE_STARTED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/VoLteTile$5;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    # getter for: Lcom/android/systemui/qs/tiles/VoLteTile;->mDDSChanged:Z
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/VoLteTile;->access$400(Lcom/android/systemui/qs/tiles/VoLteTile;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/VoLteTile$5;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    # setter for: Lcom/android/systemui/qs/tiles/VoLteTile;->mDDSChanged:Z
    invoke-static {v2, v3}, Lcom/android/systemui/qs/tiles/VoLteTile;->access$402(Lcom/android/systemui/qs/tiles/VoLteTile;Z)Z

    :cond_9
    :goto_3
    const-string v2, "VoLteTile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mDDSChanged : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/VoLteTile$5;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    # getter for: Lcom/android/systemui/qs/tiles/VoLteTile;->mDDSChanged:Z
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/VoLteTile;->access$400(Lcom/android/systemui/qs/tiles/VoLteTile;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_a
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/VoLteTile$5;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    # setter for: Lcom/android/systemui/qs/tiles/VoLteTile;->mDDSChanged:Z
    invoke-static {v3, v2}, Lcom/android/systemui/qs/tiles/VoLteTile;->access$402(Lcom/android/systemui/qs/tiles/VoLteTile;Z)Z

    goto :goto_3
.end method

.class Lcom/android/systemui/qs/tiles/MobileDataTile$5;
.super Landroid/content/BroadcastReceiver;
.source "MobileDataTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/MobileDataTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$5;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$5;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$5;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingAirplane:Lcom/android/systemui/qs/GlobalSetting;
    invoke-static {v5}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$600(Lcom/android/systemui/qs/tiles/MobileDataTile;)Lcom/android/systemui/qs/GlobalSetting;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v5

    if-ne v5, v2, :cond_0

    move v1, v2

    :cond_0
    # setter for: Lcom/android/systemui/qs/tiles/MobileDataTile;->isAirPlaneMode:Z
    invoke-static {v4, v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$002(Lcom/android/systemui/qs/tiles/MobileDataTile;Z)Z

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$5;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$5;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # invokes: Lcom/android/systemui/qs/tiles/MobileDataTile;->getMobileData()Z
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$700(Lcom/android/systemui/qs/tiles/MobileDataTile;)Z

    move-result v4

    # setter for: Lcom/android/systemui/qs/tiles/MobileDataTile;->mMobileData:Z
    invoke-static {v1, v4}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$202(Lcom/android/systemui/qs/tiles/MobileDataTile;Z)Z

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$5;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # invokes: Lcom/android/systemui/qs/tiles/MobileDataTile;->isMSim()Z
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$800(Lcom/android/systemui/qs/tiles/MobileDataTile;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$5;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # invokes: Lcom/android/systemui/qs/tiles/MobileDataTile;->getReadySimCount()I
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$900(Lcom/android/systemui/qs/tiles/MobileDataTile;)I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$5;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    # invokes: Lcom/android/systemui/qs/tiles/MobileDataTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$1000(Lcom/android/systemui/qs/tiles/MobileDataTile;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$5;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$5;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/MobileDataTile;->mMobileData:Z
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$200(Lcom/android/systemui/qs/tiles/MobileDataTile;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$5;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/MobileDataTile;->isAirPlaneMode:Z
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$000(Lcom/android/systemui/qs/tiles/MobileDataTile;)Z

    move-result v4

    if-nez v4, :cond_3

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    # invokes: Lcom/android/systemui/qs/tiles/MobileDataTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$1100(Lcom/android/systemui/qs/tiles/MobileDataTile;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1

    :cond_4
    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "com.samsung.settings.SIMCARD_MGT_ACTIVATED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "ACTION_SET_PROPERTY_STATE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$5;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$5;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # invokes: Lcom/android/systemui/qs/tiles/MobileDataTile;->getMobileData()Z
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$700(Lcom/android/systemui/qs/tiles/MobileDataTile;)Z

    move-result v4

    # setter for: Lcom/android/systemui/qs/tiles/MobileDataTile;->mMobileData:Z
    invoke-static {v1, v4}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$202(Lcom/android/systemui/qs/tiles/MobileDataTile;Z)Z

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$5;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # invokes: Lcom/android/systemui/qs/tiles/MobileDataTile;->isMSim()Z
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$1200(Lcom/android/systemui/qs/tiles/MobileDataTile;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "MobileDataTile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_SIM_STATE_CHANGED : MSIM enabledsim # "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$5;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # invokes: Lcom/android/systemui/qs/tiles/MobileDataTile;->getReadySimCount()I
    invoke-static {v5}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$1300(Lcom/android/systemui/qs/tiles/MobileDataTile;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$5;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # invokes: Lcom/android/systemui/qs/tiles/MobileDataTile;->getReadySimCount()I
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$1400(Lcom/android/systemui/qs/tiles/MobileDataTile;)I

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$5;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    # invokes: Lcom/android/systemui/qs/tiles/MobileDataTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$1500(Lcom/android/systemui/qs/tiles/MobileDataTile;Ljava/lang/Object;)V

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$5;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$5;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/MobileDataTile;->mMobileData:Z
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$200(Lcom/android/systemui/qs/tiles/MobileDataTile;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$5;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/MobileDataTile;->isAirPlaneMode:Z
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$000(Lcom/android/systemui/qs/tiles/MobileDataTile;)Z

    move-result v4

    if-nez v4, :cond_7

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    # invokes: Lcom/android/systemui/qs/tiles/MobileDataTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$1600(Lcom/android/systemui/qs/tiles/MobileDataTile;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_7
    move v2, v3

    goto :goto_2

    :cond_8
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    if-eq v1, v2, :cond_9

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    if-eq v1, v3, :cond_9

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_a

    :cond_9
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v1

    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_SIM_CHECK"

    invoke-virtual {v1, v4}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$5;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    # invokes: Lcom/android/systemui/qs/tiles/MobileDataTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$1700(Lcom/android/systemui/qs/tiles/MobileDataTile;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_a
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$5;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$5;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/MobileDataTile;->mMobileData:Z
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$200(Lcom/android/systemui/qs/tiles/MobileDataTile;)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$5;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/MobileDataTile;->isAirPlaneMode:Z
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$000(Lcom/android/systemui/qs/tiles/MobileDataTile;)Z

    move-result v4

    if-nez v4, :cond_b

    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    # invokes: Lcom/android/systemui/qs/tiles/MobileDataTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$1800(Lcom/android/systemui/qs/tiles/MobileDataTile;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_b
    move v2, v3

    goto :goto_3

    :cond_c
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$5;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$1900(Lcom/android/systemui/qs/tiles/MobileDataTile;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$5;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$1900(Lcom/android/systemui/qs/tiles/MobileDataTile;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$5;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$1900(Lcom/android/systemui/qs/tiles/MobileDataTile;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->cancel()V

    goto/16 :goto_0

    :cond_d
    const-string v2, "android.net.conn.MOBILE_DATA_ENABLE_POPUP"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "MobileDataTile"

    const-string v3, "onReceive: ACTION_MOBILE_DATA_ENABLE_POPUP"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mSupportAppNameforChinaNAL:Z

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$5;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    const-string v3, "callingPid"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    # setter for: Lcom/android/systemui/qs/tiles/MobileDataTile;->callingPid:I
    invoke-static {v2, v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$2002(Lcom/android/systemui/qs/tiles/MobileDataTile;I)I

    :cond_e
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$5;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # invokes: Lcom/android/systemui/qs/tiles/MobileDataTile;->onDisplayMobileDataOnAlert()V
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$2100(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    goto/16 :goto_0
.end method

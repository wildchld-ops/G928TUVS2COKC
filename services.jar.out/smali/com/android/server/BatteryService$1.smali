.class Lcom/android/server/BatteryService$1;
.super Landroid/content/BroadcastReceiver;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    const/4 v11, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v10, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/server/BatteryService;->access$300(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object v10

    new-instance v11, Lcom/android/server/BatteryService$1$1;

    invoke-direct {v11, p0}, Lcom/android/server/BatteryService$1$1;-><init>(Lcom/android/server/BatteryService$1;)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v10, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/server/BatteryService;->access$300(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object v10

    new-instance v11, Lcom/android/server/BatteryService$1$2;

    invoke-direct {v11, p0}, Lcom/android/server/BatteryService$1$2;-><init>(Lcom/android/server/BatteryService$1;)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    const-string v10, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/server/BatteryService;->access$300(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object v10

    new-instance v11, Lcom/android/server/BatteryService$1$3;

    invoke-direct {v11, p0}, Lcom/android/server/BatteryService$1$3;-><init>(Lcom/android/server/BatteryService$1;)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_3
    const-string v10, "com.android.systemui.power.action.POWER_SHARING"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const-string/jumbo v10, "power_sharing_enable"

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iget-object v10, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/server/BatteryService;->access$300(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object v10

    new-instance v11, Lcom/android/server/BatteryService$1$4;

    invoke-direct {v11, p0, v7}, Lcom/android/server/BatteryService$1$4;-><init>(Lcom/android/server/BatteryService$1;Z)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_4
    const-string v10, "android.intent.action.REQUEST_OTG_CHARGE_BLOCK"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    const-string v10, "OTG_CHARGE_BLOCK"

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    const/4 v6, 0x0

    :try_start_0
    iget-object v10, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/server/BatteryService;->access$400(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string v11, "com.sec.android.easyMover"

    const/16 v12, 0x40

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    iget-object v9, v10, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object v1, v9

    array-length v4, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_6

    aget-object v8, v1, v3

    const v10, -0x4c8716a4

    invoke-virtual {v8}, Landroid/content/pm/Signature;->hashCode()I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    if-ne v10, v11, :cond_5

    const/4 v6, 0x1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$700()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "fail getPackageInfo"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    if-eqz v6, :cond_7

    iget-object v10, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/server/BatteryService;->access$300(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object v10

    new-instance v11, Lcom/android/server/BatteryService$1$5;

    invoke-direct {v11, p0, v5}, Lcom/android/server/BatteryService$1$5;-><init>(Lcom/android/server/BatteryService$1;Z)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_7
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$700()Ljava/lang/String;

    move-result-object v10

    const-string v11, "OTG block is denied!!!"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    const-string v10, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # invokes: Lcom/android/server/BatteryService;->RunLogDischargeLevel()V
    invoke-static {v10}, Lcom/android/server/BatteryService;->access$900(Lcom/android/server/BatteryService;)V

    goto/16 :goto_0
.end method

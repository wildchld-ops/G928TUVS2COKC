.class Lcom/android/incallui/rcs/BatteryMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "BatteryMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/rcs/BatteryMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/rcs/BatteryMonitor;


# direct methods
.method constructor <init>(Lcom/android/incallui/rcs/BatteryMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/rcs/BatteryMonitor$1;->this$0:Lcom/android/incallui/rcs/BatteryMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const-string v2, "level"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "scale"

    const/16 v3, 0x64

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/incallui/rcs/BatteryMonitor$1;->this$0:Lcom/android/incallui/rcs/BatteryMonitor;

    mul-int/lit8 v3, v0, 0x64

    div-int/2addr v3, v1

    # setter for: Lcom/android/incallui/rcs/BatteryMonitor;->mBatteryLevel:I
    invoke-static {v2, v3}, Lcom/android/incallui/rcs/BatteryMonitor;->access$002(Lcom/android/incallui/rcs/BatteryMonitor;I)I

    iget-object v2, p0, Lcom/android/incallui/rcs/BatteryMonitor$1;->this$0:Lcom/android/incallui/rcs/BatteryMonitor;

    # getter for: Lcom/android/incallui/rcs/BatteryMonitor;->mBatteryLevel:I
    invoke-static {v2}, Lcom/android/incallui/rcs/BatteryMonitor;->access$000(Lcom/android/incallui/rcs/BatteryMonitor;)I

    move-result v2

    sput v2, Lcom/android/incallui/rcs/RcsShareUI;->BatteryLevel:I

    const-string v2, "BatteryMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " new battery level: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/rcs/BatteryMonitor$1;->this$0:Lcom/android/incallui/rcs/BatteryMonitor;

    # getter for: Lcom/android/incallui/rcs/BatteryMonitor;->mBatteryLevel:I
    invoke-static {v4}, Lcom/android/incallui/rcs/BatteryMonitor;->access$000(Lcom/android/incallui/rcs/BatteryMonitor;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

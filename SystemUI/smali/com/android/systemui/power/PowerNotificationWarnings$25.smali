.class Lcom/android/systemui/power/PowerNotificationWarnings$25;
.super Ljava/lang/Object;
.source "PowerNotificationWarnings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/power/PowerNotificationWarnings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerNotificationWarnings;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$25;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "PowerUI.Notification"

    const-string v1, "Highvoltage charger task runs"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$25;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-virtual {v0}, Lcom/android/systemui/power/PowerNotificationWarnings;->cancelHighVoltageChargerNotification()V

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$25;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    # getter for: Lcom/android/systemui/power/PowerNotificationWarnings;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$300(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$25;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    iget-object v1, v1, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighVoltageChargerTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

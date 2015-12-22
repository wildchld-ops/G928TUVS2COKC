.class Lcom/android/systemui/power/PowerNotificationWarnings$28;
.super Landroid/service/notification/NotificationListenerService;
.source "PowerNotificationWarnings.java"


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

    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$28;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings$28;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    # getter for: Lcom/android/systemui/power/PowerNotificationWarnings;->mLowBatteryWarning:Z
    invoke-static {v2}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$1200(Lcom/android/systemui/power/PowerNotificationWarnings;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v0

    const-string v2, "low_battery"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x64

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings$28;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    # setter for: Lcom/android/systemui/power/PowerNotificationWarnings;->mLowBatteryWarning:Z
    invoke-static {v2, v3}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$1202(Lcom/android/systemui/power/PowerNotificationWarnings;Z)Z

    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings$28;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    # setter for: Lcom/android/systemui/power/PowerNotificationWarnings;->mRemainTime:I
    invoke-static {v2, v3}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$1702(Lcom/android/systemui/power/PowerNotificationWarnings;I)I

    const-string v2, "PowerUI.Notification"

    const-string v3, "Low battery noti is dismissed"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

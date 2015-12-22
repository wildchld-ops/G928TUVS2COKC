.class Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService$1;
.super Landroid/content/BroadcastReceiver;
.source "NotificationReminderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService$1;->this$0:Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/settings/accessibility/notificationreminder/GlobalConstant;->ACTION_USER_BACKGROUND:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "NotificationReminderService"

    const-string v2, "Stopping the service on user switch"

    invoke-static {v1, v2}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService$1;->this$0:Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;

    invoke-virtual {v1}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->stopSelf()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService$1;->this$0:Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;

    iget-object v2, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService$1;->this$0:Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;

    # invokes: Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->loadNotifications()[Landroid/service/notification/StatusBarNotification;
    invoke-static {v2}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->access$100(Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    # setter for: Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->currentNotiList:[Landroid/service/notification/StatusBarNotification;
    invoke-static {v1, v2}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->access$002(Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;[Landroid/service/notification/StatusBarNotification;)[Landroid/service/notification/StatusBarNotification;

    iget-object v1, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService$1;->this$0:Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;

    # getter for: Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->currentNotiList:[Landroid/service/notification/StatusBarNotification;
    invoke-static {v1}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->access$000(Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService$1;->this$0:Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;

    # getter for: Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->currentNotiList:[Landroid/service/notification/StatusBarNotification;
    invoke-static {v1}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->access$000(Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService$1;->this$0:Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;

    iget-object v2, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService$1;->this$0:Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;

    # getter for: Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->currentNotiList:[Landroid/service/notification/StatusBarNotification;
    invoke-static {v2}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->access$000(Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    # invokes: Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->hasClearableItems([Landroid/service/notification/StatusBarNotification;)Z
    invoke-static {v1, v2}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->access$200(Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;[Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService$1;->this$0:Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;

    iget-object v2, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService$1;->this$0:Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;

    # getter for: Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->currentNotiList:[Landroid/service/notification/StatusBarNotification;
    invoke-static {v2}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->access$000(Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    # invokes: Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->hasCheckedPacakages([Landroid/service/notification/StatusBarNotification;)Z
    invoke-static {v1, v2}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->access$300(Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;[Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService$1;->this$0:Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;

    const/4 v2, 0x1

    # invokes: Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->updateLedFlashLocked(Z)V
    invoke-static {v1, v2}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->access$400(Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;Z)V

    iget-object v1, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService$1;->this$0:Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;

    # invokes: Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->updateSoundLocked()V
    invoke-static {v1}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->access$500(Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;)V

    const-string v1, "NotificationReminderService"

    const-string v2, "Alram!"

    invoke-static {v1, v2}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService$1;->this$0:Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;

    const/4 v2, 0x0

    # invokes: Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->updateLedFlashLocked(Z)V
    invoke-static {v1, v2}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->access$400(Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;Z)V

    goto :goto_0
.end method

.class Lcom/android/server/notification/NotificationManagerService$13;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationManagerService;->cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;

.field final synthetic val$callingPid:I

.field final synthetic val$callingUid:I

.field final synthetic val$id:I

.field final synthetic val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

.field final synthetic val$mustHaveFlags:I

.field final synthetic val$mustNotHaveFlags:I

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$reason:I

.field final synthetic val$reasonClear:I

.field final synthetic val$sendDelete:Z

.field final synthetic val$tag:Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;IILjava/lang/String;ILjava/lang/String;IIIIIZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$13;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$13;->val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iput p3, p0, Lcom/android/server/notification/NotificationManagerService$13;->val$callingUid:I

    iput p4, p0, Lcom/android/server/notification/NotificationManagerService$13;->val$callingPid:I

    iput-object p5, p0, Lcom/android/server/notification/NotificationManagerService$13;->val$pkg:Ljava/lang/String;

    iput p6, p0, Lcom/android/server/notification/NotificationManagerService$13;->val$id:I

    iput-object p7, p0, Lcom/android/server/notification/NotificationManagerService$13;->val$tag:Ljava/lang/String;

    iput p8, p0, Lcom/android/server/notification/NotificationManagerService$13;->val$userId:I

    iput p9, p0, Lcom/android/server/notification/NotificationManagerService$13;->val$mustHaveFlags:I

    iput p10, p0, Lcom/android/server/notification/NotificationManagerService$13;->val$mustNotHaveFlags:I

    iput p11, p0, Lcom/android/server/notification/NotificationManagerService$13;->val$reason:I

    iput p12, p0, Lcom/android/server/notification/NotificationManagerService$13;->val$reasonClear:I

    iput-boolean p13, p0, Lcom/android/server/notification/NotificationManagerService$13;->val$sendDelete:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$13;->val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    if-nez v0, :cond_1

    const/4 v9, 0x0

    :goto_0
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService$13;->val$callingUid:I

    iget v1, p0, Lcom/android/server/notification/NotificationManagerService$13;->val$callingPid:I

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$13;->val$pkg:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/notification/NotificationManagerService$13;->val$id:I

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$13;->val$tag:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/notification/NotificationManagerService$13;->val$userId:I

    iget v6, p0, Lcom/android/server/notification/NotificationManagerService$13;->val$mustHaveFlags:I

    iget v7, p0, Lcom/android/server/notification/NotificationManagerService$13;->val$mustNotHaveFlags:I

    iget v8, p0, Lcom/android/server/notification/NotificationManagerService$13;->val$reason:I

    invoke-static/range {v0 .. v9}, Lcom/android/server/EventLogTags;->writeNotificationCancel(IILjava/lang/String;ILjava/lang/String;IIIILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$13;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$13;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$13;->val$pkg:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$13;->val$tag:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/notification/NotificationManagerService$13;->val$id:I

    iget v5, p0, Lcom/android/server/notification/NotificationManagerService$13;->val$userId:I

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/server/notification/NotificationManagerService;->indexOfNotificationLocked(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v11

    if-ltz v11, :cond_4

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$13;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/NotificationRecord;

    iget v0, p0, Lcom/android/server/notification/NotificationManagerService$13;->val$reason:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$13;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$4700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationUsageStats;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/server/notification/NotificationUsageStats;->registerClickedByUser(Lcom/android/server/notification/NotificationRecord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$13;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mAm:Landroid/app/IActivityManager;
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$5800(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/IActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$13;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mAm:Landroid/app/IActivityManager;
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$5800(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$13;->val$pkg:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/app/IActivityManager;->LaunchedFromNotification(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_1
    :try_start_2
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->flags:I

    iget v2, p0, Lcom/android/server/notification/NotificationManagerService$13;->val$mustHaveFlags:I

    and-int/2addr v0, v2

    iget v2, p0, Lcom/android/server/notification/NotificationManagerService$13;->val$mustHaveFlags:I

    if-eq v0, v2, :cond_2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$13;->val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :cond_2
    :try_start_3
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->flags:I

    iget v2, p0, Lcom/android/server/notification/NotificationManagerService$13;->val$mustNotHaveFlags:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_3

    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_3
    :try_start_4
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$13;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget v2, p0, Lcom/android/server/notification/NotificationManagerService$13;->val$reasonClear:I

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mReasonClear:I
    invoke-static {v0, v2}, Lcom/android/server/notification/NotificationManagerService;->access$5902(Lcom/android/server/notification/NotificationManagerService;I)I

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$13;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$13;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-boolean v2, p0, Lcom/android/server/notification/NotificationManagerService$13;->val$sendDelete:Z

    iget v3, p0, Lcom/android/server/notification/NotificationManagerService$13;->val$reason:I

    # invokes: Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZI)V
    invoke-static {v0, v6, v2, v3}, Lcom/android/server/notification/NotificationManagerService;->access$6000(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;ZI)V

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$13;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget v7, p0, Lcom/android/server/notification/NotificationManagerService$13;->val$callingUid:I

    iget v8, p0, Lcom/android/server/notification/NotificationManagerService$13;->val$callingPid:I

    const/16 v10, 0xc

    # invokes: Lcom/android/server/notification/NotificationManagerService;->cancelGroupChildrenLocked(Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;I)V
    invoke-static/range {v5 .. v10}, Lcom/android/server/notification/NotificationManagerService;->access$6100(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$13;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    :cond_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1
.end method

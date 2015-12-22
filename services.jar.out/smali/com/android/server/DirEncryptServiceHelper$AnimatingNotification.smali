.class Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;
.super Ljava/lang/Object;
.source "DirEncryptServiceHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DirEncryptServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatingNotification"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEnctype:I

.field private mLevel:I

.field private mProgress:I

.field private mStop:Z

.field notification_builder:Landroid/app/Notification$Builder;

.field final synthetic this$0:Lcom/android/server/DirEncryptServiceHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/DirEncryptServiceHelper;Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mContext:Landroid/content/Context;

    iput-boolean v1, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mStop:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mLevel:I

    iput v1, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mEnctype:I

    iput v1, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mProgress:I

    iput-object v2, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->notification_builder:Landroid/app/Notification$Builder;

    iput-object p2, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$702(Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mProgress:I

    return p1
.end method

.method static synthetic access$802(Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mEnctype:I

    return p1
.end method


# virtual methods
.method public isInProgress()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mStop:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 10

    const/4 v8, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, ""

    const-string v4, ""

    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    # getter for: Lcom/android/server/DirEncryptServiceHelper;->mAnimateSync:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/DirEncryptServiceHelper;->access$300(Lcom/android/server/DirEncryptServiceHelper;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    :try_start_0
    iget v0, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mLevel:I

    const/4 v5, 0x4

    if-ge v0, v5, :cond_1

    iget v0, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mLevel:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mLevel:I

    :goto_0
    iget v0, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mEnctype:I

    if-ne v0, v8, :cond_2

    const v2, 0x108033a

    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x104082e

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x104082d

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    const/high16 v9, 0x8000000

    invoke-static {v0, v5, v8, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->notification_builder:Landroid/app/Notification$Builder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    move-object v5, v4

    # invokes: Lcom/android/server/DirEncryptServiceHelper;->getNotification(Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification$Builder;
    invoke-static/range {v0 .. v5}, Lcom/android/server/DirEncryptServiceHelper;->access$400(Lcom/android/server/DirEncryptServiceHelper;Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->notification_builder:Landroid/app/Notification$Builder;

    :cond_0
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->notification_builder:Landroid/app/Notification$Builder;

    iget v5, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mLevel:I

    invoke-virtual {v0, v2, v5}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->notification_builder:Landroid/app/Notification$Builder;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->notification_builder:Landroid/app/Notification$Builder;

    const/16 v5, 0x64

    iget v8, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mProgress:I

    const/4 v9, 0x0

    invoke-virtual {v0, v5, v8, v9}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->notification_builder:Landroid/app/Notification$Builder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ": "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mProgress:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "%"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-boolean v0, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mStop:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "notification"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    sget v0, Landroid/dirEncryption/DirEncryptionManager;->SECURITY_POLICY_NOTIFICATION_ID:I

    iget-object v5, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->notification_builder:Landroid/app/Notification$Builder;

    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v6, v0, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    # getter for: Lcom/android/server/DirEncryptServiceHelper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/DirEncryptServiceHelper;->access$200(Lcom/android/server/DirEncryptServiceHelper;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v8, 0x1f4

    invoke-virtual {v0, p0, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_2
    monitor-exit v7

    return-void

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mLevel:I

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    const v2, 0x10802d3

    :try_start_1
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x1040832

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x1040831

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->notification_builder:Landroid/app/Notification$Builder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mStop:Z

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mStop:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->notification_builder:Landroid/app/Notification$Builder;

    return-void
.end method

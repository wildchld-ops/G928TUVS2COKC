.class Lcom/android/server/NetworkTimeUpdateService$4;
.super Landroid/content/BroadcastReceiver;
.source "NetworkTimeUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkTimeUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkTimeUpdateService;


# direct methods
.method constructor <init>(Lcom/android/server/NetworkTimeUpdateService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/NetworkTimeUpdateService$4;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 14

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v9, "NetworkTimeUpdateService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "onReceive + intent "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "com.samsung.edm.intent.action.UPDATE_NTP_PARAMETERS"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const-string v9, "enterprise_policy"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getDateTimePolicy()Landroid/app/enterprise/DateTimePolicy;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/enterprise/DateTimePolicy;->getNtpInfo()Landroid/app/enterprise/NtpInfo;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/app/enterprise/NtpInfo;->getServer()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    invoke-virtual {v3}, Landroid/app/enterprise/NtpInfo;->getPollingInterval()J

    move-result-wide v4

    const-wide/16 v10, 0x0

    cmp-long v9, v10, v4

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/server/NetworkTimeUpdateService$4;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    # setter for: Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalMs:J
    invoke-static {v9, v4, v5}, Lcom/android/server/NetworkTimeUpdateService;->access$702(Lcom/android/server/NetworkTimeUpdateService;J)J

    :goto_0
    invoke-virtual {v3}, Landroid/app/enterprise/NtpInfo;->getPollingInterval()J

    move-result-wide v6

    const-wide/16 v10, 0x0

    cmp-long v9, v10, v6

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/server/NetworkTimeUpdateService$4;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    # setter for: Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalShorterMs:J
    invoke-static {v9, v6, v7}, Lcom/android/server/NetworkTimeUpdateService;->access$802(Lcom/android/server/NetworkTimeUpdateService;J)J

    :goto_1
    invoke-virtual {v3}, Landroid/app/enterprise/NtpInfo;->getMaxAttempts()I

    move-result v2

    if-eqz v2, :cond_3

    iget-object v9, p0, Lcom/android/server/NetworkTimeUpdateService$4;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    # setter for: Lcom/android/server/NetworkTimeUpdateService;->mTryAgainTimesMax:I
    invoke-static {v9, v2}, Lcom/android/server/NetworkTimeUpdateService;->access$902(Lcom/android/server/NetworkTimeUpdateService;I)I

    :goto_2
    invoke-virtual {v3}, Landroid/app/enterprise/NtpInfo;->getTimeErrorThreshold()I

    move-result v8

    const-wide/16 v10, 0x0

    int-to-long v12, v8

    cmp-long v9, v10, v12

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/server/NetworkTimeUpdateService$4;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    # setter for: Lcom/android/server/NetworkTimeUpdateService;->mTimeErrorThresholdMs:I
    invoke-static {v9, v8}, Lcom/android/server/NetworkTimeUpdateService;->access$502(Lcom/android/server/NetworkTimeUpdateService;I)I

    :goto_3
    iget-object v9, p0, Lcom/android/server/NetworkTimeUpdateService$4;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    const/4 v10, 0x1

    # setter for: Lcom/android/server/NetworkTimeUpdateService;->mNtpSetByMDM:Z
    invoke-static {v9, v10}, Lcom/android/server/NetworkTimeUpdateService;->access$302(Lcom/android/server/NetworkTimeUpdateService;Z)Z

    iget-object v9, p0, Lcom/android/server/NetworkTimeUpdateService$4;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    const/4 v10, 0x0

    # setter for: Lcom/android/server/NetworkTimeUpdateService;->mTryAgainCounter:I
    invoke-static {v9, v10}, Lcom/android/server/NetworkTimeUpdateService;->access$1002(Lcom/android/server/NetworkTimeUpdateService;I)I

    :goto_4
    iget-object v9, p0, Lcom/android/server/NetworkTimeUpdateService$4;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    # getter for: Lcom/android/server/NetworkTimeUpdateService;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/server/NetworkTimeUpdateService;->access$000(Lcom/android/server/NetworkTimeUpdateService;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    :goto_5
    return-void

    :cond_1
    iget-object v9, p0, Lcom/android/server/NetworkTimeUpdateService$4;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10e0068

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    int-to-long v10, v10

    # setter for: Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalMs:J
    invoke-static {v9, v10, v11}, Lcom/android/server/NetworkTimeUpdateService;->access$702(Lcom/android/server/NetworkTimeUpdateService;J)J

    goto :goto_0

    :cond_2
    iget-object v9, p0, Lcom/android/server/NetworkTimeUpdateService$4;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10e0069

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    int-to-long v10, v10

    # setter for: Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalShorterMs:J
    invoke-static {v9, v10, v11}, Lcom/android/server/NetworkTimeUpdateService;->access$802(Lcom/android/server/NetworkTimeUpdateService;J)J

    goto :goto_1

    :cond_3
    iget-object v9, p0, Lcom/android/server/NetworkTimeUpdateService$4;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10e006a

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    # setter for: Lcom/android/server/NetworkTimeUpdateService;->mTryAgainTimesMax:I
    invoke-static {v9, v10}, Lcom/android/server/NetworkTimeUpdateService;->access$902(Lcom/android/server/NetworkTimeUpdateService;I)I

    goto :goto_2

    :cond_4
    iget-object v9, p0, Lcom/android/server/NetworkTimeUpdateService$4;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10e006b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    # setter for: Lcom/android/server/NetworkTimeUpdateService;->mTimeErrorThresholdMs:I
    invoke-static {v9, v10}, Lcom/android/server/NetworkTimeUpdateService;->access$502(Lcom/android/server/NetworkTimeUpdateService;I)I

    goto :goto_3

    :cond_5
    iget-object v9, p0, Lcom/android/server/NetworkTimeUpdateService$4;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    const/4 v10, 0x0

    # setter for: Lcom/android/server/NetworkTimeUpdateService;->mNtpSetByMDM:Z
    invoke-static {v9, v10}, Lcom/android/server/NetworkTimeUpdateService;->access$302(Lcom/android/server/NetworkTimeUpdateService;Z)Z

    iget-object v9, p0, Lcom/android/server/NetworkTimeUpdateService$4;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10e0068

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    int-to-long v10, v10

    # setter for: Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalMs:J
    invoke-static {v9, v10, v11}, Lcom/android/server/NetworkTimeUpdateService;->access$702(Lcom/android/server/NetworkTimeUpdateService;J)J

    iget-object v9, p0, Lcom/android/server/NetworkTimeUpdateService$4;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10e0069

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    int-to-long v10, v10

    # setter for: Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalShorterMs:J
    invoke-static {v9, v10, v11}, Lcom/android/server/NetworkTimeUpdateService;->access$802(Lcom/android/server/NetworkTimeUpdateService;J)J

    iget-object v9, p0, Lcom/android/server/NetworkTimeUpdateService$4;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10e006a

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    # setter for: Lcom/android/server/NetworkTimeUpdateService;->mTryAgainTimesMax:I
    invoke-static {v9, v10}, Lcom/android/server/NetworkTimeUpdateService;->access$902(Lcom/android/server/NetworkTimeUpdateService;I)I

    iget-object v9, p0, Lcom/android/server/NetworkTimeUpdateService$4;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10e006b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    # setter for: Lcom/android/server/NetworkTimeUpdateService;->mTimeErrorThresholdMs:I
    invoke-static {v9, v10}, Lcom/android/server/NetworkTimeUpdateService;->access$502(Lcom/android/server/NetworkTimeUpdateService;I)I

    goto/16 :goto_4

    :cond_6
    const-string v9, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/server/NetworkTimeUpdateService$4;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    const/4 v10, 0x1

    # setter for: Lcom/android/server/NetworkTimeUpdateService;->mBootCompleted:Z
    invoke-static {v9, v10}, Lcom/android/server/NetworkTimeUpdateService;->access$1102(Lcom/android/server/NetworkTimeUpdateService;Z)Z

    goto/16 :goto_5
.end method

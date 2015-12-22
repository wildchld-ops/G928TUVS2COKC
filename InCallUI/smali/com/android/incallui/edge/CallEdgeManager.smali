.class public Lcom/android/incallui/edge/CallEdgeManager;
.super Ljava/lang/Object;
.source "CallEdgeManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/android/incallui/CallList$Listener;
.implements Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;
.implements Lcom/android/incallui/motion/CallSContextMotion$FlatListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/edge/CallEdgeManager$IntentServiceResultHandler;
    }
.end annotation


# instance fields
.field private final CLOSE:I

.field private final CLOSE_TO_OPEN:I

.field private final HRM_INIT_VALUE_CHECKER:I

.field private final HRM_INIT_VALUE_CHECKER_DELAY:I

.field private final HRM_SENSING_DURATION_FOR_GLACE_REPLY:I

.field private final HRM_SENSING_START_CHECKER_FOR_GLACE_REPLY:I

.field private final HRM_TYPE:I

.field private final QUICK_REPLY_BROADCAST_AGAIN:I

.field private final TAG:Ljava/lang/String;

.field private mCall:Lcom/android/incallui/Call;

.field private mContext:Landroid/content/Context;

.field private mHRMSensor:Landroid/hardware/Sensor;

.field private mHandler:Landroid/os/Handler;

.field private mIsHRMSencing:Z

.field private mPersonId:J

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private sensorStartwithClose:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const v2, 0x1001a

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CallEdgeManager"

    iput-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->TAG:Ljava/lang/String;

    iput v2, p0, Lcom/android/incallui/edge/CallEdgeManager;->HRM_TYPE:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->HRM_INIT_VALUE_CHECKER:I

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->HRM_INIT_VALUE_CHECKER_DELAY:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->HRM_SENSING_START_CHECKER_FOR_GLACE_REPLY:I

    const/16 v0, 0x5dc

    iput v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->HRM_SENSING_DURATION_FOR_GLACE_REPLY:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->QUICK_REPLY_BROADCAST_AGAIN:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->CLOSE:I

    const/4 v0, -0x3

    iput v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->CLOSE_TO_OPEN:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->sensorStartwithClose:Z

    new-instance v0, Lcom/android/incallui/edge/CallEdgeManager$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/edge/CallEdgeManager$1;-><init>(Lcom/android/incallui/edge/CallEdgeManager;)V

    iput-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/incallui/edge/CallEdgeManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/CallList;->addListener(Lcom/android/incallui/CallList$Listener;)V

    iget-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mHRMSensor:Landroid/hardware/Sensor;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/edge/CallEdgeManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/edge/CallEdgeManager;->getRejectMessagefromTelephony()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/edge/CallEdgeManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/edge/CallEdgeManager;->sendBroadcastForMissedEventAgainInternal()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/incallui/edge/CallEdgeManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/edge/CallEdgeManager;->rejectCallWithGlanceReplyMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/incallui/edge/CallEdgeManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/edge/CallEdgeManager;->sendBroadcastForMissedEvent()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/incallui/edge/CallEdgeManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private checkAndStartImportantPeopleUX(Lcom/android/incallui/Call;)V
    .locals 3

    new-instance v0, Lcom/android/incallui/edge/CallEdgeManager$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/edge/CallEdgeManager$2;-><init>(Lcom/android/incallui/edge/CallEdgeManager;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Void;

    invoke-virtual {v0, v2, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private createCallLogListPendingIntent()Landroid/app/PendingIntent;
    .locals 5

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x0

    const-string v2, "support_mobilecarrier"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.phone.action.RECENT_CALLS"

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "notify"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_0
    iget-object v2, p0, Lcom/android/incallui/edge/CallEdgeManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    invoke-virtual {v1, v4, v4}, Landroid/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object v2

    return-object v2

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "vnd.android.cursor.dir/calls"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private getRejectMessagefromTelephony()V
    .locals 9

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getNumberPresentation()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v6, Landroid/content/ComponentName;

    const-string v7, "com.android.phone"

    const-string v8, "com.android.phone.edge.GlanceReplyIntentService"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v2, Landroid/os/Messenger;

    new-instance v6, Lcom/android/incallui/edge/CallEdgeManager$IntentServiceResultHandler;

    invoke-direct {v6, p0, v3, v4, v5}, Lcom/android/incallui/edge/CallEdgeManager$IntentServiceResultHandler;-><init>(Lcom/android/incallui/edge/CallEdgeManager;Ljava/lang/String;J)V

    invoke-direct {v2, v6}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    const-string v6, "com.android.incallui.Messenger"

    invoke-virtual {v1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/incallui/edge/CallEdgeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/incallui/edge/CallEdgeManager;->rejectCallWithGlanceReplyMessage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private rejectCallWithGlanceReplyMessage(Ljava/lang/String;)V
    .locals 4

    const-string v1, "CallEdgeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rejectCallWithGlanceReplyMessage"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v3, v1, p1}, Lcom/android/incallui/TelecomAdapter;->rejectCall(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/edge/CallEdgeManager;->init()V

    iget-object v1, p0, Lcom/android/incallui/edge/CallEdgeManager;->mContext:Landroid/content/Context;

    const-string v2, "com.android.incallui"

    const-string v3, "GLAN"

    invoke-static {v1, v2, v3}, Lcom/android/incallui/secutils/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private declared-synchronized resetHRMSensing()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "CallEdgeManager"

    const-string v1, "resetHRMSensing"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->sensorStartwithClose:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private sendBroadcastForMissedEvent()V
    .locals 7

    const-string v4, "tel:"

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v5, "tel:"

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lcom/android/incallui/edge/CallEdgeManager;->sendBroadcastForMissedEvent(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method private sendBroadcastForMissedEvent(Ljava/lang/String;J)V
    .locals 12

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/android/incallui/edge/CallEdgeManager;->mContext:Landroid/content/Context;

    if-nez v7, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v7, "sendBroadcastForMissedEvent:"

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v7, "samsung.people.uris"

    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->putCharSequenceArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lcom/android/incallui/edge/CallEdgeManager;->mContext:Landroid/content/Context;

    const v8, 0x7f0d0142

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v7, "samsung.people.titles"

    invoke-virtual {v0, v7, v5}, Landroid/os/Bundle;->putCharSequenceArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    new-array v4, v10, [J

    aput-wide p2, v4, v9

    const-string v7, "samsung.people.timestamps"

    invoke-virtual {v0, v7, v4}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    invoke-direct {p0}, Lcom/android/incallui/edge/CallEdgeManager;->createCallLogListPendingIntent()Landroid/app/PendingIntent;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v7, "samsung.people.pendingIntents"

    invoke-virtual {v0, v7, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v7, "samsung.people.subcategory"

    const-string v8, "reject_call"

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendBroadcastForMissedEvent: uris - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " titles - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " timstamps - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-wide v8, v4, v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/incallui/edge/CallEdgeManager;->mContext:Landroid/content/Context;

    const-string v8, "notification"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    invoke-virtual {v1, v10, v0}, Landroid/app/NotificationManager;->postEdgeNotification(ILandroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method private sendBroadcastForMissedEventAgainInternal()V
    .locals 8

    const-string v4, "sendBroadcastForMissedEventAgainInternal"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/incallui/edge/CallEdgeManager;->mContext:Landroid/content/Context;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/incallui/edge/QuickReplyDataSource;

    iget-object v4, p0, Lcom/android/incallui/edge/CallEdgeManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/android/incallui/edge/QuickReplyDataSource;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/incallui/edge/QuickReplyDataSource;->getAllQuickReplies()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v4, "no items for notifying again"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/edge/QuickReplyItem;

    iget-object v4, v2, Lcom/android/incallui/edge/QuickReplyItem;->URI:Ljava/lang/String;

    iget-wide v6, v2, Lcom/android/incallui/edge/QuickReplyItem;->timestamp:J

    invoke-direct {p0, v4, v6, v7}, Lcom/android/incallui/edge/CallEdgeManager;->sendBroadcastForMissedEvent(Ljava/lang/String;J)V

    goto :goto_1
.end method

.method private declared-synchronized startHRMSensing()V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "CallEdgeManager"

    const-string v1, "startHRMSensing"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/incallui/edge/CallEdgeManager;->mHRMSensor:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mIsHRMSencing:Z

    iget-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->sensorStartwithClose:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized stopHRMSensing()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mIsHRMSencing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mIsHRMSencing:Z

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->sensorStartwithClose:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getRawContactId(J)J
    .locals 11

    const/4 v10, 0x1

    const/4 v7, 0x0

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const-string v3, "_id = ?"

    new-array v4, v10, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    new-array v2, v10, [Ljava/lang/String;

    const-string v0, "raw_contact_id"

    aput-object v0, v2, v7

    iget-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    const-wide/16 v8, 0x0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "raw_contact_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-wide v8
.end method

.method public init()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/incallui/motion/CallSContextMotion;->stopFlatMotionListening(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/incallui/edge/CallEdgeManager;->stopHRMSensing()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mCall:Lcom/android/incallui/Call;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mPersonId:J

    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onCallListChange(Lcom/android/incallui/CallList;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/edge/CallEdgeManager;->init()V

    :cond_0
    return-void
.end method

.method public onContactInfoComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 6

    const-string v2, "onContactInfoComplete"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-boolean v2, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-eqz v2, :cond_0

    iget-wide v0, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->personDataId:J

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/edge/CallEdgeManager;->getRawContactId(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/incallui/edge/CallEdgeManager;->mPersonId:J

    const-string v2, "CallEdgeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onContactInfoComplete : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/incallui/edge/CallEdgeManager;->mPersonId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v2, p0, Lcom/android/incallui/edge/CallEdgeManager;->mCall:Lcom/android/incallui/Call;

    invoke-direct {p0, v2}, Lcom/android/incallui/edge/CallEdgeManager;->checkAndStartImportantPeopleUX(Lcom/android/incallui/Call;)V

    return-void

    :cond_0
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/incallui/edge/CallEdgeManager;->mPersonId:J

    goto :goto_0
.end method

.method public onDisconnect(Lcom/android/incallui/Call;)V
    .locals 0

    return-void
.end method

.method public onFlatMotionDown()V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/edge/CallEdgeManager;->startHRMSensing()V

    return-void
.end method

.method public onFlatMotionFalse()V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/edge/CallEdgeManager;->stopHRMSensing()V

    return-void
.end method

.method public onFlatMotionUp()V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/edge/CallEdgeManager;->stopHRMSensing()V

    return-void
.end method

.method public onFlatMotionVerticality()V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/edge/CallEdgeManager;->stopHRMSensing()V

    return-void
.end method

.method public onImageLoadComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 0

    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/Call;)V
    .locals 3

    const-string v0, "onIncomingCall"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "people_stripe"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/incallui/edge/GlanceReplyManager;->isGlanceReplyEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "turn_over_lighting"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "glance reply disabled or turn over lighting disabled, return"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "support_mobilecarrier"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneRelaxMode()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isOllehPhoneRelaxMode()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, "glance reply disabled or turn over lighting disabled when carrier-phone RelaxMode"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iput-object p1, p0, Lcom/android/incallui/edge/CallEdgeManager;->mCall:Lcom/android/incallui/Call;

    iget-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mCall:Lcom/android/incallui/Call;

    invoke-direct {p0, v0}, Lcom/android/incallui/edge/CallEdgeManager;->checkAndStartImportantPeopleUX(Lcom/android/incallui/Call;)V

    goto :goto_0
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v3, 0x0

    const-string v0, "CallEdgeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSensorChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v3

    cmpl-float v0, v0, v4

    if-nez v0, :cond_1

    iput-boolean v5, p0, Lcom/android/incallui/edge/CallEdgeManager;->sensorStartwithClose:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v3

    const/high16 v1, -0x3fc00000    # -3.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->sensorStartwithClose:Z

    if-eqz v0, :cond_2

    iput-boolean v3, p0, Lcom/android/incallui/edge/CallEdgeManager;->sensorStartwithClose:Z

    const-string v0, "CallEdgeManager"

    const-string v1, "onSensorChanged : skip. HRM sensor was closed from the beginning."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/incallui/edge/CallEdgeManager;->resetHRMSensing()V

    goto :goto_0

    :cond_3
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v3

    cmpl-float v0, v0, v4

    if-nez v0, :cond_0

    const-string v0, "CallEdgeManager"

    const-string v1, "onSensorChanged : come close"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->sensorStartwithClose:Z

    if-nez v0, :cond_0

    const-string v0, "CallEdgeManager"

    const-string v1, "onSensorChanged : come close and register handler for message"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public sendBroadcastForMissedEventAgain()V
    .locals 2

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.class public Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;
.super Lcom/android/server/telecom/CallsManagerListenerBase;
.source "AutoRejectedCallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier$AutoRejctedCallList;
    }
.end annotation


# static fields
.field private static final CALL_LOG_PROJECTION:[Ljava/lang/String;

.field private static final CONTENT_URI:Landroid/net/Uri;

.field private static sInstance:Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;


# instance fields
.field private mAutoRejectedCallCount:I

.field private final mAutoRejectedCallList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier$AutoRejctedCallList;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "presentation"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    const-string v0, "content://logs/call"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/telecom/CallsManagerListenerBase;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;->mAutoRejectedCallCount:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;->mAutoRejectedCallList:Ljava/util/List;

    iput-object p1, p0, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-direct {p0}, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;->updateOnStartup()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addAutoRejectedCallList(Lcom/android/server/telecom/Call;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;->mAutoRejectedCallList:Ljava/util/List;

    new-instance v1, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier$AutoRejctedCallList;

    invoke-direct {v1, p1}, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier$AutoRejctedCallList;-><init>(Lcom/android/server/telecom/Call;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private cancelAutoRejectedCallNotification()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;->mAutoRejectedCallCount:I

    invoke-direct {p0}, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;->clearAutoRejectedCallList()V

    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method private clearAutoRejectedCallList()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;->mAutoRejectedCallList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private configureLedOnNotification(Landroid/app/Notification;)V
    .locals 1

    iget v0, p1, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p1, Landroid/app/Notification;->flags:I

    iget v0, p1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p1, Landroid/app/Notification;->defaults:I

    return-void
.end method

.method private createAutoRejectedCallPendingIntent(Landroid/net/Uri;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 1

    const-string v0, "com.android.server.telecom.ACTION_AUTO_REJECTED_CALL_NOTIFICATION"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;->createTelecomPendingIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private createAutoRejectedCallsPendingIntent(Landroid/net/Uri;)Landroid/app/PendingIntent;
    .locals 1

    const-string v0, "com.android.server.telecom.ACTION_AUTO_REJECTED_CALLS_NOTIFICATION"

    invoke-direct {p0, v0, p1}, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;->createTelecomPendingIntent(Ljava/lang/String;Landroid/net/Uri;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private createCallLogPendingIntent()Landroid/app/PendingIntent;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "vnd.android.cursor.dir/calls"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    invoke-virtual {v1, v3, v3}, Landroid/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private createTelecomPendingIntent(Ljava/lang/String;Landroid/net/Uri;)Landroid/app/PendingIntent;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;->createTelecomPendingIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private createTelecomPendingIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/server/telecom/operator/usa/ExtensionBroadcastReceiver;

    invoke-direct {v0, p1, p2, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p3, :cond_0

    const-string v1, "extra_auto_reject_call_number"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object v1, p0, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;->mContext:Landroid/content/Context;

    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;
    .locals 1

    invoke-static {}, Lcom/android/server/telecom/TelecomGlobals;->getInstance()Lcom/android/server/telecom/TelecomGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomGlobals;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;->getInstance(Landroid/content/Context;)Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;
    .locals 2

    const-class v1, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;->sInstance:Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;->sInstance:Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;

    :cond_0
    sget-object v0, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;->sInstance:Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getNameForCall(Lcom/android/server/telecom/Call;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getHandle()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getHandle()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v1

    sget-object v2, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {v1, v0, v2}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;->mContext:Landroid/content/Context;

    const v1, 0x7f08000a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static newInstance(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;->getInstance(Landroid/content/Context;)Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;

    return-void
.end method

.method private sizeAutoRejectedCallList()I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;->sizeAutoRejectedCallList(Z)I

    move-result v0

    return v0
.end method

.method private sizeAutoRejectedCallList(Z)I
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;->mAutoRejectedCallList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;->mAutoRejectedCallList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method private updateOnStartup()V
    .locals 8

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string v0, "updateOnStartup()..."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier$2;

    iget-object v3, p0, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier$2;-><init>(Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;Landroid/content/ContentResolver;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v3, "type="

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x6

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " AND new=1"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "date DESC"

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clearAutoRejectedCalls()V
    .locals 1

    new-instance v0, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier$1;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier$1;-><init>(Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;->cancelAutoRejectedCallNotification()V

    return-void
.end method

.method public isNumberRestricted(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "RESTRICTED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PRIVATE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNumberUnknown(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "UNAVAILABLE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "UNKNOWN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCallStateChanged(Lcom/android/server/telecom/Call;II)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;->showAutoRejectedCallNotification(Lcom/android/server/telecom/Call;II)V

    return-void
.end method

.method public showAutoRejectedCallNotification(Lcom/android/server/telecom/Call;II)V
    .locals 2

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    const/4 v0, 0x7

    if-ne p3, v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;->showAutoRejectedCallNotification(Lcom/android/server/telecom/Call;Z)V

    :cond_0
    return-void
.end method

.method public showAutoRejectedCallNotification(Lcom/android/server/telecom/Call;Z)V
    .locals 11

    const/4 v3, 0x0

    const v10, 0x7f020010

    const/4 v9, 0x0

    const/4 v8, 0x1

    iget v0, p0, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;->mAutoRejectedCallCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;->mAutoRejectedCallCount:I

    invoke-direct {p0, p1}, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;->addAutoRejectedCallList(Lcom/android/server/telecom/Call;)V

    invoke-direct {p0, p1}, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;->getNameForCall(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v1

    iget v0, p0, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;->mAutoRejectedCallCount:I

    if-eq v0, v8, :cond_0

    invoke-direct {p0, v8}, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;->sizeAutoRejectedCallList(Z)I

    move-result v0

    if-ne v0, v8, :cond_3

    :cond_0
    const v0, 0x7f080098

    move v2, v0

    move-object v0, v1

    :goto_0
    iget-object v4, p0, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;->mContext:Landroid/content/Context;

    const v5, 0x7f08009a

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v1, v6, v9

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f02000e

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/high16 v7, 0x7f090000

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getCreationTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v5, p0, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;->createCallLogPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getHandle()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_4

    move-object v0, v3

    :goto_1
    if-eqz p2, :cond_2

    iget v2, p0, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;->mAutoRejectedCallCount:I

    if-eq v2, v8, :cond_1

    invoke-direct {p0, v8}, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;->sizeAutoRejectedCallList(Z)I

    move-result v2

    if-ne v2, v8, :cond_5

    :cond_1
    const-string v2, "Add actions with number %s."

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/server/telecom/Log;->piiHandle(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {p0, v2, v5}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;->isNumberRestricted(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;->isNumberUnknown(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;->mContext:Landroid/content/Context;

    const v2, 0x7f08009b

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;->mAutoRejectedCallList:Ljava/util/List;

    iget v5, p0, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;->mAutoRejectedCallCount:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier$AutoRejctedCallList;

    invoke-virtual {v0}, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier$AutoRejctedCallList;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;->createAutoRejectedCallPendingIntent(Landroid/net/Uri;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v4, v10, v2, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    :cond_2
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;->configureLedOnNotification(Landroid/app/Notification;)V

    const-string v1, "Adding auto rejected call notification for %s."

    new-array v2, v8, [Ljava/lang/Object;

    aput-object p1, v2, v9

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v2, 0x6

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v3, v2, v0, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void

    :cond_3
    const v2, 0x7f080099

    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    const-string v2, "Suppress actions. handle: %s, auto rejectedCalls: %d."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/server/telecom/Log;->piiHandle(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    iget v6, p0, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;->mAutoRejectedCallCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {p0, v2, v5}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;->isNumberRestricted(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;->isNumberUnknown(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;->mContext:Landroid/content/Context;

    const v2, 0x7f08009c

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1}, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;->createAutoRejectedCallsPendingIntent(Landroid/net/Uri;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v4, v10, v0, v1}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    :cond_6
    new-instance v2, Landroid/app/Notification$InboxStyle;

    invoke-direct {v2, v4}, Landroid/app/Notification$InboxStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-direct {p0}, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;->sizeAutoRejectedCallList()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_2

    iget-object v5, p0, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;->mAutoRejectedCallList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier$AutoRejctedCallList;

    invoke-virtual {v0}, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier$AutoRejctedCallList;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->formatPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/Notification$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2
.end method

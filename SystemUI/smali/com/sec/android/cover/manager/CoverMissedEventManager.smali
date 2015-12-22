.class public Lcom/sec/android/cover/manager/CoverMissedEventManager;
.super Ljava/lang/Object;
.source "CoverMissedEventManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/manager/CoverMissedEventManager$NotiMissedEventsAdapter;,
        Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;,
        Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;
    }
.end annotation


# static fields
.field public static final MISSED_TYPE_NOTIFICATION:I = 0x0

.field public static final MISSED_TYPE_REMOTEVIEWS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MissedEventManager"

.field private static instance:Lcom/sec/android/cover/manager/CoverMissedEventManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCoverState:Lcom/samsung/android/cover/CoverState;

.field private mMissedEventCallCount:I

.field private mMissedEventMessageCount:I

.field private mNotiMissedEventsAdapter:Lcom/sec/android/cover/manager/CoverMissedEventManager$NotiMissedEventsAdapter;

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager;->mMissedEventMessageCount:I

    iput v0, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager;->mMissedEventCallCount:I

    new-instance v0, Lcom/samsung/android/cover/CoverState;

    invoke-direct {v0}, Lcom/samsung/android/cover/CoverState;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    new-instance v0, Lcom/sec/android/cover/manager/CoverMissedEventManager$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/manager/CoverMissedEventManager$1;-><init>(Lcom/sec/android/cover/manager/CoverMissedEventManager;)V

    iput-object v0, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    iput-object p1, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/sec/android/cover/manager/CoverMissedEventManager$NotiMissedEventsAdapter;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/manager/CoverMissedEventManager$NotiMissedEventsAdapter;-><init>(Lcom/sec/android/cover/manager/CoverMissedEventManager;)V

    iput-object v0, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager;->mNotiMissedEventsAdapter:Lcom/sec/android/cover/manager/CoverMissedEventManager$NotiMissedEventsAdapter;

    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/cover/manager/CoverMissedEventManager;Lcom/samsung/android/cover/CoverState;)Lcom/samsung/android/cover/CoverState;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/cover/manager/CoverMissedEventManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverMissedEventManager;
    .locals 1

    sget-object v0, Lcom/sec/android/cover/manager/CoverMissedEventManager;->instance:Lcom/sec/android/cover/manager/CoverMissedEventManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/cover/manager/CoverMissedEventManager;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/manager/CoverMissedEventManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/cover/manager/CoverMissedEventManager;->instance:Lcom/sec/android/cover/manager/CoverMissedEventManager;

    :cond_0
    sget-object v0, Lcom/sec/android/cover/manager/CoverMissedEventManager;->instance:Lcom/sec/android/cover/manager/CoverMissedEventManager;

    return-object v0
.end method


# virtual methods
.method public addMissedEvent(Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;)V
    .locals 3

    iget v0, p1, Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;->getRemoteType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "missed_call"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;->getEventCount()I

    move-result v0

    iput v0, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager;->mMissedEventCallCount:I

    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager;->mNotiMissedEventsAdapter:Lcom/sec/android/cover/manager/CoverMissedEventManager$NotiMissedEventsAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/manager/CoverMissedEventManager$NotiMissedEventsAdapter;->addMissedEvent(Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;)V

    :cond_0
    :goto_0
    const-string v0, "MissedEventManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMissedEventCallCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager;->mMissedEventCallCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mMissedEventMessageCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager;->mMissedEventMessageCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;->getRemoteType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "new_message"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;->getEventCount()I

    move-result v0

    iput v0, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager;->mMissedEventMessageCount:I

    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager;->mNotiMissedEventsAdapter:Lcom/sec/android/cover/manager/CoverMissedEventManager$NotiMissedEventsAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/manager/CoverMissedEventManager$NotiMissedEventsAdapter;->addMissedEvent(Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;)V

    goto :goto_0
.end method

.method public clearMissedEvent()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager;->mNotiMissedEventsAdapter:Lcom/sec/android/cover/manager/CoverMissedEventManager$NotiMissedEventsAdapter;

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverMissedEventManager$NotiMissedEventsAdapter;->clearMissedEvent()V

    iput v1, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager;->mMissedEventMessageCount:I

    iput v1, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager;->mMissedEventCallCount:I

    return-void
.end method

.method public getMissedEventAdapter()Lcom/sec/android/cover/manager/CoverMissedEventManager$NotiMissedEventsAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager;->mNotiMissedEventsAdapter:Lcom/sec/android/cover/manager/CoverMissedEventManager$NotiMissedEventsAdapter;

    return-object v0
.end method

.method public getMissedEventCallCount()I
    .locals 1

    iget v0, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager;->mMissedEventCallCount:I

    return v0
.end method

.method public getMissedEventCount()I
    .locals 2

    iget v0, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager;->mMissedEventMessageCount:I

    iget v1, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager;->mMissedEventCallCount:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getMissedEventMessageCount()I
    .locals 1

    iget v0, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager;->mMissedEventMessageCount:I

    return v0
.end method

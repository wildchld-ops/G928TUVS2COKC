.class public Lcom/sec/android/cover/manager/CoverEventHistoryManager;
.super Ljava/lang/Object;
.source "CoverEventHistoryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/manager/CoverEventHistoryManager$CoverEventItem;
    }
.end annotation


# static fields
.field private static final MAX_HISTORY_COUNT:I = 0x14

.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcom/sec/android/cover/manager/CoverEventHistoryManager;


# instance fields
.field private mEventTable:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/cover/manager/CoverEventHistoryManager$CoverEventItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/cover/manager/CoverEventHistoryManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/manager/CoverEventHistoryManager;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/sec/android/cover/manager/CoverEventHistoryManager;

    invoke-direct {v0}, Lcom/sec/android/cover/manager/CoverEventHistoryManager;-><init>()V

    sput-object v0, Lcom/sec/android/cover/manager/CoverEventHistoryManager;->instance:Lcom/sec/android/cover/manager/CoverEventHistoryManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/manager/CoverEventHistoryManager;->mEventTable:Ljava/util/ArrayList;

    return-void
.end method

.method public static getInstance()Lcom/sec/android/cover/manager/CoverEventHistoryManager;
    .locals 1

    sget-object v0, Lcom/sec/android/cover/manager/CoverEventHistoryManager;->instance:Lcom/sec/android/cover/manager/CoverEventHistoryManager;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized add(Lcom/samsung/android/cover/CoverState;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/sec/android/cover/manager/CoverEventHistoryManager$CoverEventItem;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, p1, v2, v3}, Lcom/sec/android/cover/manager/CoverEventHistoryManager$CoverEventItem;-><init>(Lcom/samsung/android/cover/CoverState;J)V

    iget-object v2, p0, Lcom/sec/android/cover/manager/CoverEventHistoryManager;->mEventTable:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/sec/android/cover/manager/CoverEventHistoryManager;->mEventTable:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/cover/manager/CoverEventHistoryManager;->mEventTable:Ljava/util/ArrayList;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized dump()V
    .locals 11

    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/sec/android/cover/manager/CoverEventHistoryManager;->mEventTable:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v4, 0x0

    add-int/lit8 v1, v5, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v6, p0, Lcom/sec/android/cover/manager/CoverEventHistoryManager;->mEventTable:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/manager/CoverEventHistoryManager$CoverEventItem;

    if-eqz v4, :cond_0

    iget-wide v6, v0, Lcom/sec/android/cover/manager/CoverEventHistoryManager$CoverEventItem;->mTimeStamp:J

    iget-wide v8, v4, Lcom/sec/android/cover/manager/CoverEventHistoryManager$CoverEventItem;->mTimeStamp:J

    sub-long v2, v6, v8

    :goto_1
    sget-object v6, Lcom/sec/android/cover/manager/CoverEventHistoryManager;->TAG:Ljava/lang/String;

    const-string v7, "%s\t+%dms"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, v0, Lcom/sec/android/cover/manager/CoverEventHistoryManager$CoverEventItem;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v10}, Lcom/samsung/android/cover/CoverState;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_1

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public declared-synchronized findEvent(Lcom/samsung/android/cover/CoverState;)Lcom/sec/android/cover/manager/CoverEventHistoryManager$CoverEventItem;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/manager/CoverEventHistoryManager;->mEventTable:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/manager/CoverEventHistoryManager;->mEventTable:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/cover/manager/CoverEventHistoryManager$CoverEventItem;

    iget-object v3, v1, Lcom/sec/android/cover/manager/CoverEventHistoryManager$CoverEventItem;->mCoverState:Lcom/samsung/android/cover/CoverState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, p1, :cond_0

    :goto_1
    monitor-exit p0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.class public Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;
.super Ljava/lang/Object;
.source "PreferredPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/PreferredPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreferredPackageRecord"
.end annotation


# static fields
.field static final BINDED:I = 0x2

.field static final CACHED:I = 0x1

.field static final DIED:I = 0x4

.field static final RESUMED:I = 0x0

.field static final START_READY:I = 0x3


# instance fields
.field lastPauseTime:J

.field final packageName:Ljava/lang/String;

.field processName:Ljava/lang/String;

.field scoreList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/app/usage/PreferredScoreInfo;",
            ">;"
        }
    .end annotation
.end field

.field scoreMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/usage/PreferredScoreInfo;",
            ">;"
        }
    .end annotation
.end field

.field state:I

.field usageCounting:J


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 3

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;JLjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->scoreMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->scoreList:Ljava/util/LinkedList;

    iput-object p1, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->packageName:Ljava/lang/String;

    iput-wide p2, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->lastPauseTime:J

    invoke-virtual {p0, p4}, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->setScoreList(Ljava/lang/String;)V

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->state:I

    return-void
.end method


# virtual methods
.method doIncreaseScore(Ljava/lang/String;I)V
    .locals 7

    sget-boolean v4, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "PreferredPackage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Score "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->packageName:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/server/am/PreferredPackageManager;->getTrimmedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " --> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lcom/android/server/am/PreferredPackageManager;->getTrimmedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "p)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v4, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "PreferredPackage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Score_Before : Pkg : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->packageName:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/server/am/PreferredPackageManager;->getTrimmedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Score : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->getScoreListString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v5, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->scoreList:Ljava/util/LinkedList;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->scoreMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/usage/PreferredScoreInfo;

    if-nez v3, :cond_4

    new-instance v3, Landroid/app/usage/PreferredScoreInfo;

    invoke-direct {v3, p1, p2}, Landroid/app/usage/PreferredScoreInfo;-><init>(Ljava/lang/String;I)V

    iget-object v4, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->scoreMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object v4, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->scoreList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v1, 0x0

    if-nez v2, :cond_5

    iget-object v4, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->scoreList:Ljava/util/LinkedList;

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v3}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    :cond_2
    :goto_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v4, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    if-eqz v4, :cond_3

    const-string v4, "PreferredPackage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Score_After  : Pkg : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->packageName:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/server/am/PreferredPackageManager;->getTrimmedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Score : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->getScoreListString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    :cond_4
    :try_start_1
    iget v4, v3, Landroid/app/usage/PreferredScoreInfo;->score:I

    add-int/2addr v4, p2

    iput v4, v3, Landroid/app/usage/PreferredScoreInfo;->score:I

    iget-object v4, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->scoreList:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    :cond_5
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_6

    :try_start_2
    iget-object v4, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->scoreList:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/usage/PreferredScoreInfo;

    iget v4, v4, Landroid/app/usage/PreferredScoreInfo;->score:I

    iget v6, v3, Landroid/app/usage/PreferredScoreInfo;->score:I

    if-gt v4, v6, :cond_7

    iget-object v4, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->scoreList:Ljava/util/LinkedList;

    invoke-virtual {v4, v0, v3}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    const/4 v1, 0x1

    :cond_6
    if-nez v1, :cond_2

    iget-object v4, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->scoreList:Ljava/util/LinkedList;

    invoke-virtual {v4, v2, v3}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public getCount()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->usageCounting:J

    return-wide v0
.end method

.method public getLastPauseTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->lastPauseTime:J

    return-wide v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getScoreListShortString()Ljava/lang/String;
    .locals 6

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->scoreList:Ljava/util/LinkedList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->scoreList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/PreferredScoreInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Landroid/app/usage/PreferredScoreInfo;->pkgName:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/server/am/PreferredPackageManager;->getTrimmedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v1, Landroid/app/usage/PreferredScoreInfo;->score:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ") - "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getScoreListString()Ljava/lang/String;
    .locals 6

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->scoreList:Ljava/util/LinkedList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->scoreList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/PreferredScoreInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Landroid/app/usage/PreferredScoreInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v1, Landroid/app/usage/PreferredScoreInfo;->score:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "-"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method getState()I
    .locals 1

    iget v0, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->state:I

    return v0
.end method

.method increaseUsageCounting()V
    .locals 4

    iget-wide v0, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->usageCounting:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->usageCounting:J

    return-void
.end method

.method setScoreList(Ljava/lang/String;)V
    .locals 15

    const/4 v12, 0x0

    const/4 v6, 0x0

    const-wide/16 v8, 0x0

    const-string v2, "-"

    const-string v3, ":"

    const/4 v4, 0x0

    iget-object v14, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->scoreList:Ljava/util/LinkedList;

    monitor-enter v14

    if-eqz p1, :cond_2

    :try_start_0
    new-instance v10, Ljava/util/StringTokenizer;

    move-object/from16 v0, p1

    invoke-direct {v10, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v5, v4

    :goto_0
    :try_start_1
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-virtual {v10}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Ljava/lang/String;

    move-object v12, v0

    new-instance v11, Ljava/util/StringTokenizer;

    invoke-direct {v11, v12, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    goto :goto_1

    :cond_0
    iget-object v13, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->scoreMap:Ljava/util/HashMap;

    invoke-virtual {v13, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/usage/PreferredScoreInfo;

    if-nez v7, :cond_3

    new-instance v7, Landroid/app/usage/PreferredScoreInfo;

    long-to-int v13, v8

    invoke-direct {v7, v6, v13}, Landroid/app/usage/PreferredScoreInfo;-><init>(Ljava/lang/String;I)V

    iget-object v13, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->scoreMap:Ljava/util/HashMap;

    invoke-virtual {v13, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v13, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->scoreList:Ljava/util/LinkedList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v4, v5, 0x1

    :try_start_2
    invoke-virtual {v13, v5, v7}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    :goto_2
    move v5, v4

    goto :goto_0

    :cond_1
    move v4, v5

    :cond_2
    monitor-exit v14

    return-void

    :catchall_0
    move-exception v13

    :goto_3
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v13

    :catchall_1
    move-exception v13

    move v4, v5

    goto :goto_3

    :cond_3
    move v4, v5

    goto :goto_2
.end method

.method setState(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->state:I

    return-void
.end method

.method updateLastPauseTime(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    iput-wide p1, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->lastPauseTime:J

    :cond_0
    return-void
.end method

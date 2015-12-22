.class public Lcom/sec/android/app/launcher/utils/CallTimeChecker;
.super Ljava/lang/Object;
.source "CallTimeChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/launcher/utils/CallTimeChecker$CheckPoint;
    }
.end annotation


# static fields
.field private static final INIT_SIZE:I = 0x10

.field public static final TAG:Ljava/lang/String;

.field private static final isProductShip:Z

.field private static sLogBuffer:Ljava/lang/StringBuilder;

.field private static sMillis:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/launcher/utils/CallTimeChecker$CheckPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    const-class v1, Lcom/sec/android/app/launcher/utils/CallTimeChecker;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/launcher/utils/CallTimeChecker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v1, Lcom/sec/android/app/launcher/utils/CallTimeChecker;->sMillis:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v1, Lcom/sec/android/app/launcher/utils/CallTimeChecker;->sLogBuffer:Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/sec/android/app/launcher/utils/CallTimeChecker;->isProductShip:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static check(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/utils/CallTimeChecker;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/sec/android/app/launcher/utils/CallTimeChecker;->check(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static check(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lcom/sec/android/app/launcher/utils/CallTimeChecker;->check(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static check(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8

    :try_start_0
    sget-boolean v0, Lcom/sec/android/app/launcher/utils/CallTimeChecker;->isProductShip:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/sec/android/app/launcher/utils/CallTimeChecker;->sMillis:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/launcher/utils/CallTimeChecker$CheckPoint;

    if-eqz v7, :cond_0

    iget-wide v2, v7, Lcom/sec/android/app/launcher/utils/CallTimeChecker$CheckPoint;->mMillis:J

    iput-wide p2, v7, Lcom/sec/android/app/launcher/utils/CallTimeChecker$CheckPoint;->mMillis:J

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/launcher/utils/CallTimeChecker;->printLog(Ljava/lang/String;Ljava/lang/String;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    sget-object v0, Lcom/sec/android/app/launcher/utils/CallTimeChecker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static clear()V
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/utils/CallTimeChecker;->sMillis:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public static end(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/utils/CallTimeChecker;->sMillis:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static endWithCheck(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-static {p0, p1, v2, v3}, Lcom/sec/android/app/launcher/utils/CallTimeChecker;->check(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {p0}, Lcom/sec/android/app/launcher/utils/CallTimeChecker;->end(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/sec/android/app/launcher/utils/CallTimeChecker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static printLog(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 4

    sget-object v0, Lcom/sec/android/app/launcher/utils/CallTimeChecker;->sLogBuffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    sget-object v0, Lcom/sec/android/app/launcher/utils/CallTimeChecker;->sLogBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/sec/android/app/launcher/utils/CallTimeChecker;->sMillis:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/utils/CallTimeChecker$CheckPoint;

    iget-object v0, v0, Lcom/sec/android/app/launcher/utils/CallTimeChecker$CheckPoint;->mLastCheckPointMsg:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sub-long v2, p4, p2

    long-to-float v1, v2

    const v2, 0x49742400    # 1000000.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " msec"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "CallTimeChecker"

    sget-object v1, Lcom/sec/android/app/launcher/utils/CallTimeChecker;->sLogBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/launcher/utils/CallTimeChecker;->sMillis:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/utils/CallTimeChecker$CheckPoint;

    iput-object p1, v0, Lcom/sec/android/app/launcher/utils/CallTimeChecker$CheckPoint;->mLastCheckPointMsg:Ljava/lang/String;

    return-void
.end method

.method public static start(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/utils/CallTimeChecker;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/sec/android/app/launcher/utils/CallTimeChecker;->start(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static start(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lcom/sec/android/app/launcher/utils/CallTimeChecker;->start(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static start(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8

    :try_start_0
    sget-boolean v0, Lcom/sec/android/app/launcher/utils/CallTimeChecker;->isProductShip:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v7, Lcom/sec/android/app/launcher/utils/CallTimeChecker$CheckPoint;

    invoke-direct {v7, p1, p2, p3}, Lcom/sec/android/app/launcher/utils/CallTimeChecker$CheckPoint;-><init>(Ljava/lang/String;J)V

    sget-object v0, Lcom/sec/android/app/launcher/utils/CallTimeChecker;->sMillis:Ljava/util/HashMap;

    invoke-virtual {v0, p0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/launcher/utils/CallTimeChecker;->printLog(Ljava/lang/String;Ljava/lang/String;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    sget-object v0, Lcom/sec/android/app/launcher/utils/CallTimeChecker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

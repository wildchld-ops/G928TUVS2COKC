.class public final Lcom/nuance/nmsp/client/sdk/oem/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/nmdp/speechkit/ck$j;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/nmsp/client/sdk/oem/g$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/Vector;

.field private b:Ljava/lang/Object;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/g;->a:Ljava/util/Vector;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/g;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/g;->c:Z

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/g;->c:Z

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/g;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/g;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/nuance/nmdp/speechkit/co;J)V
    .locals 10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p2

    new-instance v2, Lcom/nuance/nmsp/client/sdk/oem/g$a;

    invoke-direct {v2, p1, v0, v1}, Lcom/nuance/nmsp/client/sdk/oem/g$a;-><init>(Lcom/nuance/nmdp/speechkit/co;J)V

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/g;->b:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/g;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/g;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/sdk/oem/g$a;

    iget-wide v6, v0, Lcom/nuance/nmsp/client/sdk/oem/g$a;->a:J

    iget-wide v8, v2, Lcom/nuance/nmsp/client/sdk/oem/g$a;->a:J

    cmp-long v0, v6, v8

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/g;->a:Ljava/util/Vector;

    invoke-virtual {v0, v2, v1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/g;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v3

    :goto_1
    return-void

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/g;->a:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/g;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public final a(Lcom/nuance/nmdp/speechkit/co;)Z
    .locals 4

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/g;->b:Ljava/lang/Object;

    monitor-enter v3

    move v2, v1

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/g;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/g;->a:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/sdk/oem/g$a;

    iget-object v0, v0, Lcom/nuance/nmsp/client/sdk/oem/g$a;->b:Lcom/nuance/nmdp/speechkit/co;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/g;->a:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->removeElementAt(I)V

    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final run()V
    .locals 6

    :goto_0
    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/g;->c:Z

    if-nez v0, :cond_4

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/g;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/g;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/g;->a:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/sdk/oem/g$a;

    iget-wide v2, v0, Lcom/nuance/nmsp/client/sdk/oem/g$a;->a:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/g;->a:Ljava/util/Vector;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Vector;->removeElementAt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    if-eqz v0, :cond_3

    :try_start_1
    iget-object v0, v0, Lcom/nuance/nmsp/client/sdk/oem/g$a;->b:Lcom/nuance/nmdp/speechkit/co;

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/co;->run()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_2
    iget-wide v2, v0, Lcom/nuance/nmsp/client/sdk/oem/g$a;->a:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/g;->b:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    :try_start_4
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/g;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0x14

    :try_start_6
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_0

    :cond_4
    return-void

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1
.end method

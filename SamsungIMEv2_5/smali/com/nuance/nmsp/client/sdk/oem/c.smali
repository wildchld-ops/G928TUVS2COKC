.class public final Lcom/nuance/nmsp/client/sdk/oem/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/nmdp/speechkit/cl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/nmsp/client/sdk/oem/c$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Ljava/util/Vector;

.field private c:Lcom/nuance/nmsp/client/sdk/oem/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/c;->a:Ljava/lang/Object;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/c;->b:Ljava/util/Vector;

    new-instance v0, Lcom/nuance/nmsp/client/sdk/oem/g;

    invoke-direct {v0}, Lcom/nuance/nmsp/client/sdk/oem/g;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/c;->c:Lcom/nuance/nmsp/client/sdk/oem/g;

    return-void
.end method

.method static synthetic a(Lcom/nuance/nmsp/client/sdk/oem/c;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/c;->a:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lcom/nuance/nmsp/client/sdk/oem/c;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/c;->b:Ljava/util/Vector;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/nuance/nmdp/speechkit/co;J)V
    .locals 2

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/c;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/c;->c:Lcom/nuance/nmsp/client/sdk/oem/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/c;->c:Lcom/nuance/nmsp/client/sdk/oem/g;

    invoke-virtual {v0, p1, p2, p3}, Lcom/nuance/nmsp/client/sdk/oem/g;->a(Lcom/nuance/nmdp/speechkit/co;J)V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/cl$b;Ljava/lang/Object;)V
    .locals 6

    new-instance v0, Lcom/nuance/nmsp/client/sdk/oem/c$a;

    invoke-direct {v0, p1, p2}, Lcom/nuance/nmsp/client/sdk/oem/c$a;-><init>(Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/cl$b;)V

    check-cast p3, Ljava/lang/Thread;

    iput-object p3, v0, Lcom/nuance/nmsp/client/sdk/oem/c$a;->a:Ljava/lang/Thread;

    new-instance v1, Lcom/nuance/nmsp/client/sdk/oem/c$1;

    invoke-direct {v1, p0}, Lcom/nuance/nmsp/client/sdk/oem/c$1;-><init>(Lcom/nuance/nmsp/client/sdk/oem/c;)V

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/c;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/c;->c:Lcom/nuance/nmsp/client/sdk/oem/g;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/c;->b:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const-wide/16 v4, 0x0

    invoke-virtual {p0, v1, v4, v5}, Lcom/nuance/nmsp/client/sdk/oem/c;->a(Lcom/nuance/nmdp/speechkit/co;J)V

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final a(Lcom/nuance/nmdp/speechkit/co;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/c;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/c;->c:Lcom/nuance/nmsp/client/sdk/oem/g;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/c;->c:Lcom/nuance/nmsp/client/sdk/oem/g;

    invoke-virtual {v0, p1}, Lcom/nuance/nmsp/client/sdk/oem/g;->a(Lcom/nuance/nmdp/speechkit/co;)Z

    move-result v0

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a()[Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method

.method public final c()V
    .locals 2

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/c;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/c;->c:Lcom/nuance/nmsp/client/sdk/oem/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/c;->c:Lcom/nuance/nmsp/client/sdk/oem/g;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/oem/g;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/c;->c:Lcom/nuance/nmsp/client/sdk/oem/g;

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/c;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/c;->b:Ljava/util/Vector;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

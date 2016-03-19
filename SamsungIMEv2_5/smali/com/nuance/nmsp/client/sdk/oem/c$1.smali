.class final Lcom/nuance/nmsp/client/sdk/oem/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/nmdp/speechkit/co;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmsp/client/sdk/oem/c;->a(Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/cl$b;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/nuance/nmsp/client/sdk/oem/c;


# direct methods
.method constructor <init>(Lcom/nuance/nmsp/client/sdk/oem/c;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/oem/c$1;->a:Lcom/nuance/nmsp/client/sdk/oem/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/c$1;->a:Lcom/nuance/nmsp/client/sdk/oem/c;

    invoke-static {v1}, Lcom/nuance/nmsp/client/sdk/oem/c;->a(Lcom/nuance/nmsp/client/sdk/oem/c;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/c$1;->a:Lcom/nuance/nmsp/client/sdk/oem/c;

    invoke-static {v2}, Lcom/nuance/nmsp/client/sdk/oem/c;->b(Lcom/nuance/nmsp/client/sdk/oem/c;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/c$1;->a:Lcom/nuance/nmsp/client/sdk/oem/c;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/c;->b(Lcom/nuance/nmsp/client/sdk/oem/c;)Ljava/util/Vector;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/sdk/oem/c$a;

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/c$1;->a:Lcom/nuance/nmsp/client/sdk/oem/c;

    invoke-static {v2}, Lcom/nuance/nmsp/client/sdk/oem/c;->b(Lcom/nuance/nmsp/client/sdk/oem/c;)Ljava/util/Vector;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Vector;->removeElementAt(I)V

    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    :try_start_2
    iget-object v1, v0, Lcom/nuance/nmsp/client/sdk/oem/c$a;->b:Lcom/nuance/nmdp/speechkit/cl$b;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/nuance/nmsp/client/sdk/oem/c$a;->b:Lcom/nuance/nmdp/speechkit/cl$b;

    iget-object v2, v0, Lcom/nuance/nmsp/client/sdk/oem/c$a;->c:Ljava/lang/Object;

    iget-object v0, v0, Lcom/nuance/nmsp/client/sdk/oem/c$a;->a:Ljava/lang/Thread;

    invoke-interface {v1, v2, v0}, Lcom/nuance/nmdp/speechkit/cl$b;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

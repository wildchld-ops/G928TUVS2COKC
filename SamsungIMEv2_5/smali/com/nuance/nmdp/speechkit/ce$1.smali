.class final Lcom/nuance/nmdp/speechkit/ce$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/nmdp/speechkit/ca;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/ce;-><init>(Lcom/nuance/nmdp/speechkit/cb;Ljava/lang/Object;Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/ca;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/nuance/nmdp/speechkit/ca;

.field private synthetic b:Lcom/nuance/nmdp/speechkit/ce;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/ce;Lcom/nuance/nmdp/speechkit/ca;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/ce$1;->b:Lcom/nuance/nmdp/speechkit/ce;

    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/ce$1;->a:Lcom/nuance/nmdp/speechkit/ca;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ce$1;->b:Lcom/nuance/nmdp/speechkit/ce;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/ce;->a(Lcom/nuance/nmdp/speechkit/ce;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ce$1;->b:Lcom/nuance/nmdp/speechkit/ce;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/ce;->b(Lcom/nuance/nmdp/speechkit/ce;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ce$1;->a:Lcom/nuance/nmdp/speechkit/ca;

    invoke-interface {v0, p1}, Lcom/nuance/nmdp/speechkit/ca;->a(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ce$1;->a:Lcom/nuance/nmdp/speechkit/ca;

    invoke-interface {v0, p1}, Lcom/nuance/nmdp/speechkit/ca;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ce$1;->b:Lcom/nuance/nmdp/speechkit/ce;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/ce;->a(Lcom/nuance/nmdp/speechkit/ce;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ce$1;->b:Lcom/nuance/nmdp/speechkit/ce;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/ce;->b(Lcom/nuance/nmdp/speechkit/ce;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ce$1;->a:Lcom/nuance/nmdp/speechkit/ca;

    invoke-interface {v0, p1}, Lcom/nuance/nmdp/speechkit/ca;->c(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

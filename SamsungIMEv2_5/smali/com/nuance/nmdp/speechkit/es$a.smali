.class public final Lcom/nuance/nmdp/speechkit/es$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/es;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# instance fields
.field private synthetic a:Lcom/nuance/nmdp/speechkit/es;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/es;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/es$a;->a:Lcom/nuance/nmdp/speechkit/es;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/es$a;->a:Lcom/nuance/nmdp/speechkit/es;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/es;->a(Lcom/nuance/nmdp/speechkit/es;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/es$a;->a:Lcom/nuance/nmdp/speechkit/es;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/es;->b(Lcom/nuance/nmdp/speechkit/es;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/es$a;->a:Lcom/nuance/nmdp/speechkit/es;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/es;->c(Lcom/nuance/nmdp/speechkit/es;)Z

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/es$a;->a:Lcom/nuance/nmdp/speechkit/es;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/es;->a(Lcom/nuance/nmdp/speechkit/es;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/es$a;->a:Lcom/nuance/nmdp/speechkit/es;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/es;->d(Lcom/nuance/nmdp/speechkit/es;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/es$a;->a:Lcom/nuance/nmdp/speechkit/es;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/es;->a(Lcom/nuance/nmdp/speechkit/es;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/es$a;->a:Lcom/nuance/nmdp/speechkit/es;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/es;->d(Lcom/nuance/nmdp/speechkit/es;)V

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/es$a;->a:Lcom/nuance/nmdp/speechkit/es;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/es;->b(Lcom/nuance/nmdp/speechkit/es;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/es$a;->a:Lcom/nuance/nmdp/speechkit/es;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/es;->c(Lcom/nuance/nmdp/speechkit/es;)Z

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/es$a;->a:Lcom/nuance/nmdp/speechkit/es;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/es;->a(Lcom/nuance/nmdp/speechkit/es;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

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

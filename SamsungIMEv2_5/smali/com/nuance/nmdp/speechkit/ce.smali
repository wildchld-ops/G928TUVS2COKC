.class public final Lcom/nuance/nmdp/speechkit/ce;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/nuance/nmdp/speechkit/cb;

.field private final b:Ljava/lang/Object;

.field private final c:Ljava/lang/Object;

.field private final d:Lcom/nuance/nmdp/speechkit/ca;

.field private final e:Ljava/lang/Object;

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>(Lcom/nuance/nmdp/speechkit/cb;Ljava/lang/Object;Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/ca;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/ce;->a:Lcom/nuance/nmdp/speechkit/cb;

    iput-object p3, p0, Lcom/nuance/nmdp/speechkit/ce;->b:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/ce;->f:Z

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/ce;->g:Z

    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/ce;->c:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/ce;->e:Ljava/lang/Object;

    new-instance v0, Lcom/nuance/nmdp/speechkit/ce$1;

    invoke-direct {v0, p0, p4}, Lcom/nuance/nmdp/speechkit/ce$1;-><init>(Lcom/nuance/nmdp/speechkit/ce;Lcom/nuance/nmdp/speechkit/ca;)V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/ce;->d:Lcom/nuance/nmdp/speechkit/ca;

    return-void
.end method

.method static synthetic a(Lcom/nuance/nmdp/speechkit/ce;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ce;->e:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lcom/nuance/nmdp/speechkit/ce;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/ce;->g:Z

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/ce;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/ce;->f:Z

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ce;->a:Lcom/nuance/nmdp/speechkit/cb;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/ce;->c:Ljava/lang/Object;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/ce;->d:Lcom/nuance/nmdp/speechkit/ca;

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/ce;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/nmdp/speechkit/cb;->a(Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/ca;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Prompt already started"

    invoke-static {p0, v0}, Lcom/nuance/nmdp/speechkit/ab;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/ce;->f:Z

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/ce;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/ce;->g:Z

    if-nez v0, :cond_0

    const-string v0, "Stopping prompt"

    invoke-static {p0, v0}, Lcom/nuance/nmdp/speechkit/ab;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/ce;->g:Z

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ce;->a:Lcom/nuance/nmdp/speechkit/cb;

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/cb;->a()V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

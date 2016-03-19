.class final Lcom/nuance/nmdp/speechkit/eg$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/nmdp/speechkit/co;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmdp/speechkit/eg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/nuance/nmdp/speechkit/eg;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/eg;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/eg$1;->a:Lcom/nuance/nmdp/speechkit/eg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/eg$1;->a:Lcom/nuance/nmdp/speechkit/eg;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/eg;->a(Lcom/nuance/nmdp/speechkit/eg;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/eg$1;->a:Lcom/nuance/nmdp/speechkit/eg;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/eg;->b(Lcom/nuance/nmdp/speechkit/eg;)S

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/eg$1;->a:Lcom/nuance/nmdp/speechkit/eg;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/eg;->c(Lcom/nuance/nmdp/speechkit/eg;)Lcom/nuance/nmdp/speechkit/el;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_3
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/eg$1;->a:Lcom/nuance/nmdp/speechkit/eg;

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/eg$1;->a:Lcom/nuance/nmdp/speechkit/eg;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/eg;->d(Lcom/nuance/nmdp/speechkit/eg;)Lcom/nuance/nmdp/speechkit/eg$a;

    move-result-object v0

    const-string v1, "TIMEOUT_CMD"

    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/eg;->a(Lcom/nuance/nmdp/speechkit/eg$a;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/eg$1;->a:Lcom/nuance/nmdp/speechkit/eg;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/eg;->c(Lcom/nuance/nmdp/speechkit/eg;)Lcom/nuance/nmdp/speechkit/el;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/nuance/nmdp/speechkit/el;->a(S)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

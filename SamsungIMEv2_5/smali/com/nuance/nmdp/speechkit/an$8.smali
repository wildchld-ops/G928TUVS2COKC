.class final Lcom/nuance/nmdp/speechkit/an$8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/nmdp/speechkit/df;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmdp/speechkit/an;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/nuance/nmdp/speechkit/an;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/an;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/an$8;->a:Lcom/nuance/nmdp/speechkit/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/an$8;->a:Lcom/nuance/nmdp/speechkit/an;

    const-string v1, "Connection failed"

    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/ab;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/an$8;->a:Lcom/nuance/nmdp/speechkit/an;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/an;->b(Lcom/nuance/nmdp/speechkit/an;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/an$8;->a:Lcom/nuance/nmdp/speechkit/an;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connected with session ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/nuance/nmdp/speechkit/ab;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/an$8;->a:Lcom/nuance/nmdp/speechkit/an;

    invoke-static {v0, p1}, Lcom/nuance/nmdp/speechkit/an;->a(Lcom/nuance/nmdp/speechkit/an;Ljava/lang/String;)Ljava/lang/String;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/an$8;->a:Lcom/nuance/nmdp/speechkit/an;

    const-string v1, "Disconnected reasoncode"

    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/ab;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

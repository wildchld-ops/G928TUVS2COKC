.class final Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/nmdp/speechkit/co;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;


# direct methods
.method constructor <init>(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c$3;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c$3;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->d(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;)Landroid/media/AudioTrack;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c$3;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->d(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;)Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c$3;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->d(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;)Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c$3;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->d(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;)Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c$3;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;

    iget-object v0, v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmdp/speechkit/eq;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c$3;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;

    iget-object v0, v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmdp/speechkit/eq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/eq;->e()V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c$3;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;

    iget-object v0, v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->b(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)V

    :cond_1
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c$3;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->e(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;)Lcom/nuance/nmdp/speechkit/ck$c;

    move-result-object v0

    sget-object v2, Lcom/nuance/nmdp/speechkit/ck$b;->a:Lcom/nuance/nmdp/speechkit/ck$b;

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c$3;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/nuance/nmdp/speechkit/ck$c;->a(Lcom/nuance/nmdp/speechkit/ck$b;Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_2
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c$3;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->f(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;)Z

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

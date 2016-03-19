.class public final Lcom/nuance/nmdp/speechkit/ac;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/nmdp/speechkit/ac$a;
    }
.end annotation


# instance fields
.field private a:Landroid/os/Handler;

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nuance/nmdp/speechkit/ac$a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/ac;->a:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/ac;->b:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/ac;->c:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/nuance/nmdp/speechkit/ac;->start()V

    return-void
.end method

.method public static a()V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;I)V
    .locals 4

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ac;->a:Landroid/os/Handler;

    if-eqz v0, :cond_1

    if-lez p2, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ac;->a:Landroid/os/Handler;

    int-to-long v2, p2

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ac;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ac;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/nuance/nmdp/speechkit/ac$a;

    invoke-direct {v1, p1, p2}, Lcom/nuance/nmdp/speechkit/ac$a;-><init>(Ljava/lang/Runnable;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final run()V
    .locals 8

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/ac;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/ac;->a:Landroid/os/Handler;

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ac;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ac;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/ac$a;

    iget v4, v0, Lcom/nuance/nmdp/speechkit/ac$a;->b:I

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/ac;->a:Landroid/os/Handler;

    iget-object v5, v0, Lcom/nuance/nmdp/speechkit/ac$a;->a:Ljava/lang/Runnable;

    iget v0, v0, Lcom/nuance/nmdp/speechkit/ac$a;->b:I

    int-to-long v6, v0

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/ac;->a:Landroid/os/Handler;

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/ac$a;->a:Ljava/lang/Runnable;

    invoke-virtual {v4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ac;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method

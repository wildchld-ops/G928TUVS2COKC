.class final Lcom/nuance/nmdp/speechkit/eq$1;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/eq;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/nuance/nmdp/speechkit/eq;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/eq;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/eq$1;->a:Lcom/nuance/nmdp/speechkit/eq;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    sget-object v0, Lcom/nuance/nmdp/speechkit/es;->b:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/eq$1;->a:Lcom/nuance/nmdp/speechkit/eq;

    invoke-static {v1}, Lcom/nuance/nmdp/speechkit/eq;->a(Lcom/nuance/nmdp/speechkit/eq;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    sget v2, Lcom/nuance/nmdp/speechkit/es;->c:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/eq$1;->a:Lcom/nuance/nmdp/speechkit/eq;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/eq;->a(Lcom/nuance/nmdp/speechkit/eq;)Ljava/lang/Object;

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

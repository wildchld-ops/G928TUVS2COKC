.class public final Lcom/nuance/nmdp/speechkit/by;
.super Ljava/lang/Thread;


# static fields
.field private static a:Lcom/nuance/nmdp/speechkit/ac;

.field private static final b:Ljava/lang/Object;

.field private static c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/nuance/nmdp/speechkit/by;->a:Lcom/nuance/nmdp/speechkit/ac;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/nuance/nmdp/speechkit/by;->b:Ljava/lang/Object;

    return-void
.end method

.method public static a()V
    .locals 3

    sget-object v1, Lcom/nuance/nmdp/speechkit/by;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/nuance/nmdp/speechkit/by;->a:Lcom/nuance/nmdp/speechkit/ac;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nuance/nmdp/speechkit/ac;

    sget-object v2, Lcom/nuance/nmdp/speechkit/by;->b:Ljava/lang/Object;

    invoke-direct {v0, v2}, Lcom/nuance/nmdp/speechkit/ac;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/nuance/nmdp/speechkit/by;->a:Lcom/nuance/nmdp/speechkit/ac;

    :cond_0
    sget v0, Lcom/nuance/nmdp/speechkit/by;->c:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/nuance/nmdp/speechkit/by;->c:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/nuance/nmdp/speechkit/by;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public static a(Ljava/lang/Runnable;I)V
    .locals 3

    sget-object v1, Lcom/nuance/nmdp/speechkit/by;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/nuance/nmdp/speechkit/by;->a:Lcom/nuance/nmdp/speechkit/ac;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-string v2, "Job added while JobRunner not active"

    invoke-static {v0, v2}, Lcom/nuance/nmdp/speechkit/ab;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    sget-object v0, Lcom/nuance/nmdp/speechkit/by;->a:Lcom/nuance/nmdp/speechkit/ac;

    new-instance v2, Lcom/nuance/nmdp/speechkit/by$2;

    invoke-direct {v2, p0}, Lcom/nuance/nmdp/speechkit/by$2;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2, p1}, Lcom/nuance/nmdp/speechkit/ac;->a(Ljava/lang/Runnable;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b()V
    .locals 3

    sget-object v1, Lcom/nuance/nmdp/speechkit/by;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/nuance/nmdp/speechkit/by;->a:Lcom/nuance/nmdp/speechkit/ac;

    if-eqz v0, :cond_2

    sget v0, Lcom/nuance/nmdp/speechkit/by;->c:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/nuance/nmdp/speechkit/by;->c:I

    sget v0, Lcom/nuance/nmdp/speechkit/by;->c:I

    if-gez v0, :cond_0

    sget-object v0, Lcom/nuance/nmdp/speechkit/by;->a:Lcom/nuance/nmdp/speechkit/ac;

    const-string v2, "JobRunner shutdown more often than initialized"

    invoke-static {v0, v2}, Lcom/nuance/nmdp/speechkit/ab;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    sput v0, Lcom/nuance/nmdp/speechkit/by;->c:I

    :cond_0
    sget v0, Lcom/nuance/nmdp/speechkit/by;->c:I

    if-gtz v0, :cond_1

    sget-object v0, Lcom/nuance/nmdp/speechkit/by;->a:Lcom/nuance/nmdp/speechkit/ac;

    new-instance v2, Lcom/nuance/nmdp/speechkit/by$1;

    invoke-direct {v2, v0}, Lcom/nuance/nmdp/speechkit/by$1;-><init>(Lcom/nuance/nmdp/speechkit/ac;)V

    const/4 v0, 0x0

    invoke-static {v2, v0}, Lcom/nuance/nmdp/speechkit/by;->a(Ljava/lang/Runnable;I)V

    const/4 v0, 0x0

    sput-object v0, Lcom/nuance/nmdp/speechkit/by;->a:Lcom/nuance/nmdp/speechkit/ac;

    :cond_1
    :goto_0
    monitor-exit v1

    return-void

    :cond_2
    const/4 v0, 0x0

    const-string v2, "JobRunner shutdown when not active"

    invoke-static {v0, v2}, Lcom/nuance/nmdp/speechkit/ab;->c(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic c()Lcom/nuance/nmdp/speechkit/ac;
    .locals 1

    sget-object v0, Lcom/nuance/nmdp/speechkit/by;->a:Lcom/nuance/nmdp/speechkit/ac;

    return-object v0
.end method

.class abstract Lcom/nuance/nmdp/speechkit/q;
.super Lcom/nuance/nmdp/speechkit/aa;

# interfaces
.implements Lcom/nuance/nmdp/speechkit/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/nuance/nmdp/speechkit/aa;",
        "Lcom/nuance/nmdp/speechkit/h;"
    }
.end annotation


# instance fields
.field private b:Lcom/nuance/nmdp/speechkit/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/nmdp/speechkit/n",
            "<TResultType;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/nuance/nmdp/speechkit/v;

.field private d:F

.field private e:Ljava/lang/Runnable;

.field private f:Ljava/lang/String;

.field private final g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/nuance/nmdp/speechkit/v;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0, p6}, Lcom/nuance/nmdp/speechkit/aa;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/q;->c:Lcom/nuance/nmdp/speechkit/v;

    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/nmdp/speechkit/q;->d:F

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/q;->g:Ljava/lang/Object;

    iput-object p5, p0, Lcom/nuance/nmdp/speechkit/q;->f:Ljava/lang/String;

    new-instance v0, Lcom/nuance/nmdp/speechkit/q$1;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/nuance/nmdp/speechkit/q$1;-><init>(Lcom/nuance/nmdp/speechkit/q;Ljava/lang/String;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/q;->e:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/nuance/nmdp/speechkit/q;F)F
    .locals 0

    iput p1, p0, Lcom/nuance/nmdp/speechkit/q;->d:F

    return p1
.end method

.method static synthetic a(Lcom/nuance/nmdp/speechkit/q;Lcom/nuance/nmdp/speechkit/n;)Lcom/nuance/nmdp/speechkit/n;
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/q;->b:Lcom/nuance/nmdp/speechkit/n;

    return-object p1
.end method

.method static synthetic a(Lcom/nuance/nmdp/speechkit/q;)Lcom/nuance/nmdp/speechkit/v;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/q;->c:Lcom/nuance/nmdp/speechkit/v;

    return-object v0
.end method

.method static synthetic b(Lcom/nuance/nmdp/speechkit/q;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/q;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/nuance/nmdp/speechkit/q;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/q;->g:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic d(Lcom/nuance/nmdp/speechkit/q;)Lcom/nuance/nmdp/speechkit/n;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/q;->b:Lcom/nuance/nmdp/speechkit/n;

    return-object v0
.end method


# virtual methods
.method protected abstract a(Lcom/nuance/nmdp/speechkit/an;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/bd;)Lcom/nuance/nmdp/speechkit/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/nmdp/speechkit/an;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/nuance/nmdp/speechkit/bd;",
            ")",
            "Lcom/nuance/nmdp/speechkit/n",
            "<TResultType;>;"
        }
    .end annotation
.end method

.method protected final a()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/q;->e:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/q;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/by;->a(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/q;->e:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/q;->c:Lcom/nuance/nmdp/speechkit/v;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/v;->e()V

    new-instance v0, Lcom/nuance/nmdp/speechkit/q$6;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/q$6;-><init>(Lcom/nuance/nmdp/speechkit/q;)V

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/by;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getAudioLevel()F
    .locals 2

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/q;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/nuance/nmdp/speechkit/q;->d:F

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setPrompt(ILcom/nuance/nmdp/speechkit/Prompt;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/q;->c:Lcom/nuance/nmdp/speechkit/v;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/v;->e()V

    new-instance v0, Lcom/nuance/nmdp/speechkit/q$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/nuance/nmdp/speechkit/q$3;-><init>(Lcom/nuance/nmdp/speechkit/q;ILcom/nuance/nmdp/speechkit/Prompt;)V

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/by;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/q;->c:Lcom/nuance/nmdp/speechkit/v;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/v;->e()V

    new-instance v0, Lcom/nuance/nmdp/speechkit/q$4;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/q$4;-><init>(Lcom/nuance/nmdp/speechkit/q;)V

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/by;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stopRecording()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/q;->c:Lcom/nuance/nmdp/speechkit/v;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/v;->e()V

    new-instance v0, Lcom/nuance/nmdp/speechkit/q$5;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/q$5;-><init>(Lcom/nuance/nmdp/speechkit/q;)V

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/by;->a(Ljava/lang/Runnable;)V

    return-void
.end method

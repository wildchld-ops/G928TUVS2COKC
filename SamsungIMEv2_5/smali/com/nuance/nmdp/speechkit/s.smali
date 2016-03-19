.class final Lcom/nuance/nmdp/speechkit/s;
.super Lcom/nuance/nmdp/speechkit/b;

# interfaces
.implements Lcom/nuance/nmdp/speechkit/GenericCommand;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nuance/nmdp/speechkit/b",
        "<",
        "Lcom/nuance/nmdp/speechkit/GenericResult;",
        ">;",
        "Lcom/nuance/nmdp/speechkit/GenericCommand;"
    }
.end annotation


# instance fields
.field private b:Lcom/nuance/nmdp/speechkit/GenericCommand$Listener;

.field private c:Lcom/nuance/nmdp/speechkit/SpeechError;


# direct methods
.method public constructor <init>(Lcom/nuance/nmdp/speechkit/v;Lcom/nuance/nmdp/speechkit/GenericCommand$Listener;Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p1}, Lcom/nuance/nmdp/speechkit/v;->l()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/nuance/nmdp/speechkit/b;-><init>(Lcom/nuance/nmdp/speechkit/v;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/s;->c:Lcom/nuance/nmdp/speechkit/SpeechError;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/s;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/s;->b:Lcom/nuance/nmdp/speechkit/GenericCommand$Listener;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/nuance/nmdp/speechkit/s;->a()V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/nuance/nmdp/speechkit/s;)Lcom/nuance/nmdp/speechkit/GenericCommand$Listener;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/s;->b:Lcom/nuance/nmdp/speechkit/GenericCommand$Listener;

    return-object v0
.end method

.method static synthetic a(Lcom/nuance/nmdp/speechkit/s;Lcom/nuance/nmdp/speechkit/SpeechError;)Lcom/nuance/nmdp/speechkit/SpeechError;
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/s;->c:Lcom/nuance/nmdp/speechkit/SpeechError;

    return-object p1
.end method

.method static synthetic a(Lcom/nuance/nmdp/speechkit/s;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/nuance/nmdp/speechkit/s;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Lcom/nuance/nmdp/speechkit/s;)Lcom/nuance/nmdp/speechkit/SpeechError;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/s;->c:Lcom/nuance/nmdp/speechkit/SpeechError;

    return-object v0
.end method


# virtual methods
.method protected final a(Lcom/nuance/nmdp/speechkit/an;Ljava/lang/String;Ljava/util/List;)Lcom/nuance/nmdp/speechkit/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/nmdp/speechkit/an;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/nmdp/speechkit/ar;",
            ">;)",
            "Lcom/nuance/nmdp/speechkit/a",
            "<",
            "Lcom/nuance/nmdp/speechkit/GenericResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/nuance/nmdp/speechkit/s$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/nuance/nmdp/speechkit/s$1;-><init>(Lcom/nuance/nmdp/speechkit/s;Lcom/nuance/nmdp/speechkit/an;Ljava/lang/String;)V

    return-object v0
.end method

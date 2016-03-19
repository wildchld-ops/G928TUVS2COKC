.class final Lcom/nuance/nmdp/speechkit/j;
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

.field private c:Ljava/lang/String;

.field private d:Lcom/nuance/nmdp/speechkit/SpeechError;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/v;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/GenericCommand$Listener;Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p1}, Lcom/nuance/nmdp/speechkit/v;->k()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p4}, Lcom/nuance/nmdp/speechkit/b;-><init>(Lcom/nuance/nmdp/speechkit/v;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/j;->d:Lcom/nuance/nmdp/speechkit/SpeechError;

    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/j;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/j;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p3, p0, Lcom/nuance/nmdp/speechkit/j;->b:Lcom/nuance/nmdp/speechkit/GenericCommand$Listener;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/nuance/nmdp/speechkit/j;->a()V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/nuance/nmdp/speechkit/j;)Lcom/nuance/nmdp/speechkit/GenericCommand$Listener;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/j;->b:Lcom/nuance/nmdp/speechkit/GenericCommand$Listener;

    return-object v0
.end method

.method static synthetic a(Lcom/nuance/nmdp/speechkit/j;Lcom/nuance/nmdp/speechkit/SpeechError;)Lcom/nuance/nmdp/speechkit/SpeechError;
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/j;->d:Lcom/nuance/nmdp/speechkit/SpeechError;

    return-object p1
.end method

.method static synthetic a(Lcom/nuance/nmdp/speechkit/j;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/nuance/nmdp/speechkit/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Lcom/nuance/nmdp/speechkit/j;)Lcom/nuance/nmdp/speechkit/SpeechError;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/j;->d:Lcom/nuance/nmdp/speechkit/SpeechError;

    return-object v0
.end method


# virtual methods
.method protected final a(Lcom/nuance/nmdp/speechkit/an;Ljava/lang/String;Ljava/util/List;)Lcom/nuance/nmdp/speechkit/a;
    .locals 6
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

    new-instance v0, Lcom/nuance/nmdp/speechkit/j$1;

    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/j;->c:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/nuance/nmdp/speechkit/j$1;-><init>(Lcom/nuance/nmdp/speechkit/j;Lcom/nuance/nmdp/speechkit/an;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

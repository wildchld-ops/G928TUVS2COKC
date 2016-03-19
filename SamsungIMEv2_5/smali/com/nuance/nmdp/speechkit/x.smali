.class final Lcom/nuance/nmdp/speechkit/x;
.super Lcom/nuance/nmdp/speechkit/q;

# interfaces
.implements Lcom/nuance/nmdp/speechkit/TextRecognizer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nuance/nmdp/speechkit/q",
        "<",
        "Lcom/nuance/nmdp/speechkit/GenericRecognition;",
        ">;",
        "Lcom/nuance/nmdp/speechkit/TextRecognizer;"
    }
.end annotation


# instance fields
.field private b:Lcom/nuance/nmdp/speechkit/TextRecognizer$Listener;

.field private final c:Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;


# direct methods
.method public constructor <init>(Lcom/nuance/nmdp/speechkit/v;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;Lcom/nuance/nmdp/speechkit/TextRecognizer$Listener;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/nmdp/speechkit/v;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;",
            "Lcom/nuance/nmdp/speechkit/TextRecognizer$Listener;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const-string v2, "websearch"

    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/nuance/nmdp/speechkit/q;-><init>(Lcom/nuance/nmdp/speechkit/v;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/x;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p5, p0, Lcom/nuance/nmdp/speechkit/x;->b:Lcom/nuance/nmdp/speechkit/TextRecognizer$Listener;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object p4, p0, Lcom/nuance/nmdp/speechkit/x;->c:Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;

    invoke-virtual {p0}, Lcom/nuance/nmdp/speechkit/x;->a()V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/nuance/nmdp/speechkit/x;)Lcom/nuance/nmdp/speechkit/TextRecognizer$Listener;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/x;->b:Lcom/nuance/nmdp/speechkit/TextRecognizer$Listener;

    return-object v0
.end method

.method static synthetic a(Lcom/nuance/nmdp/speechkit/x;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/nuance/nmdp/speechkit/x;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Lcom/nuance/nmdp/speechkit/x;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/nuance/nmdp/speechkit/x;->a(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/nuance/nmdp/speechkit/an;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/bd;)Lcom/nuance/nmdp/speechkit/n;
    .locals 7
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
            "<",
            "Lcom/nuance/nmdp/speechkit/GenericRecognition;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/nuance/nmdp/speechkit/x$1;

    iget-object v5, p0, Lcom/nuance/nmdp/speechkit/x;->c:Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p5

    move-object v4, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/nuance/nmdp/speechkit/x$1;-><init>(Lcom/nuance/nmdp/speechkit/x;Lcom/nuance/nmdp/speechkit/an;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;Lcom/nuance/nmdp/speechkit/bd;)V

    return-object v0
.end method

.method public final setListener(Lcom/nuance/nmdp/speechkit/TextRecognizer$Listener;)V
    .locals 2

    const-string v0, "listener"

    invoke-static {p1, v0}, Lcom/nuance/nmdp/speechkit/v;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/x;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/x;->b:Lcom/nuance/nmdp/speechkit/TextRecognizer$Listener;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

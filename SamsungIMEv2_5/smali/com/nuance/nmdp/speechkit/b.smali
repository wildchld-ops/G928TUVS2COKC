.class abstract Lcom/nuance/nmdp/speechkit/b;
.super Lcom/nuance/nmdp/speechkit/aa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/nuance/nmdp/speechkit/aa;"
    }
.end annotation


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/nmdp/speechkit/ar;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/nuance/nmdp/speechkit/v;

.field private e:Lcom/nuance/nmdp/speechkit/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/nmdp/speechkit/a",
            "<TResultType;>;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/v;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0, p3}, Lcom/nuance/nmdp/speechkit/aa;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/b;->b:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/b;->c:Ljava/util/List;

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/b;->d:Lcom/nuance/nmdp/speechkit/v;

    new-instance v0, Lcom/nuance/nmdp/speechkit/b$1;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/b$1;-><init>(Lcom/nuance/nmdp/speechkit/b;)V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/b;->f:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/nuance/nmdp/speechkit/b;Lcom/nuance/nmdp/speechkit/a;)Lcom/nuance/nmdp/speechkit/a;
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/b;->e:Lcom/nuance/nmdp/speechkit/a;

    return-object p1
.end method

.method static synthetic a(Lcom/nuance/nmdp/speechkit/b;)Lcom/nuance/nmdp/speechkit/v;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/b;->d:Lcom/nuance/nmdp/speechkit/v;

    return-object v0
.end method

.method static synthetic b(Lcom/nuance/nmdp/speechkit/b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/nuance/nmdp/speechkit/b;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/b;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/nuance/nmdp/speechkit/b;)Lcom/nuance/nmdp/speechkit/a;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/b;->e:Lcom/nuance/nmdp/speechkit/a;

    return-object v0
.end method


# virtual methods
.method protected abstract a(Lcom/nuance/nmdp/speechkit/an;Ljava/lang/String;Ljava/util/List;)Lcom/nuance/nmdp/speechkit/a;
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
            "<TResultType;>;"
        }
    .end annotation
.end method

.method protected final a()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/b;->f:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/b;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/by;->a(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/b;->f:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public addParam(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/b;->c:Ljava/util/List;

    new-instance v1, Lcom/nuance/nmdp/speechkit/ar;

    invoke-direct {v1, p1, p2}, Lcom/nuance/nmdp/speechkit/ar;-><init>(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addParam(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$String;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/b;->c:Ljava/util/List;

    new-instance v1, Lcom/nuance/nmdp/speechkit/ar;

    invoke-direct {v1, p1, p2}, Lcom/nuance/nmdp/speechkit/ar;-><init>(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/b;->d:Lcom/nuance/nmdp/speechkit/v;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/v;->e()V

    new-instance v0, Lcom/nuance/nmdp/speechkit/b$3;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/b$3;-><init>(Lcom/nuance/nmdp/speechkit/b;)V

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/by;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/b;->d:Lcom/nuance/nmdp/speechkit/v;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/v;->e()V

    new-instance v0, Lcom/nuance/nmdp/speechkit/b$2;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/b$2;-><init>(Lcom/nuance/nmdp/speechkit/b;)V

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/by;->a(Ljava/lang/Runnable;)V

    return-void
.end method

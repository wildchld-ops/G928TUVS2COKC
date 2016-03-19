.class abstract Lcom/nuance/nmdp/speechkit/i;
.super Lcom/nuance/nmdp/speechkit/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nuance/nmdp/speechkit/a",
        "<",
        "Lcom/nuance/nmdp/speechkit/GenericResult;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/an;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/nmdp/speechkit/an;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/nmdp/speechkit/ar;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p4}, Lcom/nuance/nmdp/speechkit/a;-><init>(Lcom/nuance/nmdp/speechkit/an;Ljava/lang/String;Ljava/util/List;)V

    iput-object p3, p0, Lcom/nuance/nmdp/speechkit/i;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final a(Lcom/nuance/nmdp/speechkit/an;Ljava/lang/String;Ljava/util/List;Lcom/nuance/nmdp/speechkit/cg;Lcom/nuance/nmdp/speechkit/ai;)Lcom/nuance/nmdp/speechkit/ah;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/nmdp/speechkit/an;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/nmdp/speechkit/ar;",
            ">;",
            "Lcom/nuance/nmdp/speechkit/cg",
            "<",
            "Lcom/nuance/nmdp/speechkit/GenericResult;",
            ">;",
            "Lcom/nuance/nmdp/speechkit/ai;",
            ")",
            "Lcom/nuance/nmdp/speechkit/ah;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/i;->a:Ljava/lang/String;

    invoke-virtual {p1, p3, v0, p4, p5}, Lcom/nuance/nmdp/speechkit/an;->a(Ljava/util/List;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/cg;Lcom/nuance/nmdp/speechkit/ai;)Lcom/nuance/nmdp/speechkit/ah;

    move-result-object v0

    return-object v0
.end method

.method protected final a()Lcom/nuance/nmdp/speechkit/cg;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nuance/nmdp/speechkit/cg",
            "<",
            "Lcom/nuance/nmdp/speechkit/GenericResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/nuance/nmdp/speechkit/g;

    invoke-direct {v0}, Lcom/nuance/nmdp/speechkit/g;-><init>()V

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/g;->a()Lcom/nuance/nmdp/speechkit/cg;

    move-result-object v0

    return-object v0
.end method

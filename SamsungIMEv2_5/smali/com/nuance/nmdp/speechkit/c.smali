.class abstract Lcom/nuance/nmdp/speechkit/c;
.super Lcom/nuance/nmdp/speechkit/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nuance/nmdp/speechkit/a",
        "<",
        "Lcom/nuance/nmdp/speechkit/DataUploadResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/an;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/nmdp/speechkit/an;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/nmdp/speechkit/ar;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/nmdp/speechkit/a;-><init>(Lcom/nuance/nmdp/speechkit/an;Ljava/lang/String;Ljava/util/List;)V

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
            "Lcom/nuance/nmdp/speechkit/DataUploadResult;",
            ">;",
            "Lcom/nuance/nmdp/speechkit/ai;",
            ")",
            "Lcom/nuance/nmdp/speechkit/ah;"
        }
    .end annotation

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/nuance/nmdp/speechkit/an;->a(Ljava/lang/String;Ljava/util/List;Lcom/nuance/nmdp/speechkit/cg;Lcom/nuance/nmdp/speechkit/ai;)Lcom/nuance/nmdp/speechkit/ah;

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
            "Lcom/nuance/nmdp/speechkit/DataUploadResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/nuance/nmdp/speechkit/e;

    invoke-direct {v0}, Lcom/nuance/nmdp/speechkit/e;-><init>()V

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/e;->a()Lcom/nuance/nmdp/speechkit/cg;

    move-result-object v0

    return-object v0
.end method

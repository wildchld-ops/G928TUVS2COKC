.class abstract Lcom/nuance/nmdp/speechkit/w;
.super Lcom/nuance/nmdp/speechkit/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nuance/nmdp/speechkit/n",
        "<",
        "Lcom/nuance/nmdp/speechkit/GenericRecognition;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/nmdp/speechkit/ar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/an;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;Lcom/nuance/nmdp/speechkit/bd;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/nmdp/speechkit/an;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;",
            "Lcom/nuance/nmdp/speechkit/bd;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move-object v4, p2

    move-object v5, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/nuance/nmdp/speechkit/n;-><init>(Lcom/nuance/nmdp/speechkit/an;ZZLjava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/bd;)V

    iput-object p4, p0, Lcom/nuance/nmdp/speechkit/w;->a:Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/w;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected final a(Lcom/nuance/nmdp/speechkit/an;ZZLjava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/bd;Lcom/nuance/nmdp/speechkit/cb;Lcom/nuance/nmdp/speechkit/cb;Lcom/nuance/nmdp/speechkit/cb;Lcom/nuance/nmdp/speechkit/cb;Lcom/nuance/nmdp/speechkit/cg;Lcom/nuance/nmdp/speechkit/bb;)Lcom/nuance/nmdp/speechkit/ba;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/nmdp/speechkit/an;",
            "ZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/nuance/nmdp/speechkit/bd;",
            "Lcom/nuance/nmdp/speechkit/cb;",
            "Lcom/nuance/nmdp/speechkit/cb;",
            "Lcom/nuance/nmdp/speechkit/cb;",
            "Lcom/nuance/nmdp/speechkit/cb;",
            "Lcom/nuance/nmdp/speechkit/cg",
            "<",
            "Lcom/nuance/nmdp/speechkit/GenericRecognition;",
            ">;",
            "Lcom/nuance/nmdp/speechkit/bb;",
            ")",
            "Lcom/nuance/nmdp/speechkit/ba;"
        }
    .end annotation

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/w;->a:Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;

    move-object v0, p1

    move-object v1, p4

    move-object v2, p5

    move-object/from16 v4, p11

    move-object v5, p6

    move-object/from16 v6, p12

    invoke-virtual/range {v0 .. v6}, Lcom/nuance/nmdp/speechkit/an;->a(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;Lcom/nuance/nmdp/speechkit/cg;Lcom/nuance/nmdp/speechkit/bd;Lcom/nuance/nmdp/speechkit/bb;)Lcom/nuance/nmdp/speechkit/ba;

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
            "Lcom/nuance/nmdp/speechkit/GenericRecognition;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/nuance/nmdp/speechkit/f;

    invoke-direct {v0}, Lcom/nuance/nmdp/speechkit/f;-><init>()V

    return-object v0
.end method

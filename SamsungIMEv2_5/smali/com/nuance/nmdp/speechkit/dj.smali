.class public final Lcom/nuance/nmdp/speechkit/dj;
.super Lcom/nuance/nmdp/speechkit/cy;

# interfaces
.implements Lcom/nuance/nmdp/speechkit/de;


# instance fields
.field public a:Ljava/lang/String;

.field private b:Lcom/nuance/nmdp/speechkit/dk;

.field private c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;SLjava/lang/String;[BLjava/lang/String;Lcom/nuance/nmdp/speechkit/cj;Lcom/nuance/nmdp/speechkit/cj;Ljava/util/Vector;Lcom/nuance/nmdp/speechkit/df;)V
    .locals 10

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    invoke-direct/range {v1 .. v6}, Lcom/nuance/nmdp/speechkit/cy;-><init>(Ljava/lang/String;SLjava/lang/String;Lcom/nuance/nmdp/speechkit/cj;Lcom/nuance/nmdp/speechkit/cj;)V

    if-nez p3, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, " application id is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iput-object p3, p0, Lcom/nuance/nmdp/speechkit/dj;->a:Ljava/lang/String;

    if-nez p4, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, " application key is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    if-eqz p8, :cond_2

    invoke-virtual/range {p8 .. p8}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_4

    :cond_2
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    :cond_3
    new-instance v1, Lcom/nuance/nmdp/speechkit/dk;

    invoke-virtual {p0}, Lcom/nuance/nmdp/speechkit/dj;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/nuance/nmdp/speechkit/dj;->c()S

    move-result v3

    invoke-virtual {p0}, Lcom/nuance/nmdp/speechkit/dj;->a()Lcom/nuance/nmdp/speechkit/cl;

    move-result-object v8

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v9, p9

    invoke-direct/range {v1 .. v9}, Lcom/nuance/nmdp/speechkit/dk;-><init>(Ljava/lang/String;SLjava/lang/String;[BLjava/lang/String;Ljava/util/Vector;Lcom/nuance/nmdp/speechkit/cl;Lcom/nuance/nmdp/speechkit/df;)V

    iput-object v1, p0, Lcom/nuance/nmdp/speechkit/dj;->b:Lcom/nuance/nmdp/speechkit/dk;

    return-void

    :cond_4
    new-instance v7, Ljava/util/Vector;

    invoke-virtual/range {p8 .. p8}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-direct {v7, v1}, Ljava/util/Vector;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual/range {p8 .. p8}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v2, v1, :cond_3

    move-object/from16 v0, p8

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/nmdp/speechkit/cz;

    invoke-virtual {v1}, Lcom/nuance/nmdp/speechkit/cz;->d()Lcom/nuance/nmdp/speechkit/cz$a;

    move-result-object v3

    sget-object v4, Lcom/nuance/nmdp/speechkit/cz$a;->a:Lcom/nuance/nmdp/speechkit/cz$a;

    if-ne v3, v4, :cond_5

    invoke-virtual {v1}, Lcom/nuance/nmdp/speechkit/cz;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DEVICE_CMD_LOG_TO_SERVER_ENABLED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, p0, Lcom/nuance/nmdp/speechkit/dj;->c:Ljava/lang/Object;

    :cond_5
    invoke-virtual {v7, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method


# virtual methods
.method public final b_()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dj;->b:Lcom/nuance/nmdp/speechkit/dk;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/dk;->c()V

    return-void
.end method

.method public final g()Lcom/nuance/nmdp/speechkit/dk;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dj;->b:Lcom/nuance/nmdp/speechkit/dk;

    return-object v0
.end method

.method public final h()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dj;->c:Ljava/lang/Object;

    return-object v0
.end method

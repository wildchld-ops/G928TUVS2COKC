.class public final Lcom/nuance/nmdp/speechkit/as;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Ljava/lang/String;

.field private final d:[B

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/nmdp/speechkit/as;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/nmdp/speechkit/as;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;)V
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;->getType()I

    move-result v0

    iput v0, p0, Lcom/nuance/nmdp/speechkit/as;->a:I

    iget v0, p0, Lcom/nuance/nmdp/speechkit/as;->a:I

    packed-switch v0, :pswitch_data_0

    iput v1, p0, Lcom/nuance/nmdp/speechkit/as;->b:I

    iput-object v2, p0, Lcom/nuance/nmdp/speechkit/as;->c:Ljava/lang/String;

    iput-object v2, p0, Lcom/nuance/nmdp/speechkit/as;->d:[B

    iput-object v2, p0, Lcom/nuance/nmdp/speechkit/as;->f:Ljava/util/List;

    iput-object v2, p0, Lcom/nuance/nmdp/speechkit/as;->e:Ljava/util/Map;

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iput v1, p0, Lcom/nuance/nmdp/speechkit/as;->b:I

    iput-object v2, p0, Lcom/nuance/nmdp/speechkit/as;->c:Ljava/lang/String;

    iput-object v2, p0, Lcom/nuance/nmdp/speechkit/as;->d:[B

    iput-object v2, p0, Lcom/nuance/nmdp/speechkit/as;->f:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/as;->e:Ljava/util/Map;

    check-cast p1, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;

    invoke-virtual {p1}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->getEntries()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/as;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Lcom/nuance/nmdp/speechkit/as;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;

    invoke-direct {v4, v0}, Lcom/nuance/nmdp/speechkit/as;-><init>(Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :pswitch_1
    check-cast p1, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;

    iput v1, p0, Lcom/nuance/nmdp/speechkit/as;->b:I

    iput-object v2, p0, Lcom/nuance/nmdp/speechkit/as;->c:Ljava/lang/String;

    iput-object v2, p0, Lcom/nuance/nmdp/speechkit/as;->d:[B

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/as;->f:Ljava/util/List;

    iput-object v2, p0, Lcom/nuance/nmdp/speechkit/as;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/as;->f:Ljava/util/List;

    new-instance v3, Lcom/nuance/nmdp/speechkit/as;

    invoke-direct {v3, v0}, Lcom/nuance/nmdp/speechkit/as;-><init>(Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_2
    iput v1, p0, Lcom/nuance/nmdp/speechkit/as;->b:I

    iput-object v2, p0, Lcom/nuance/nmdp/speechkit/as;->c:Ljava/lang/String;

    check-cast p1, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Bytes;

    invoke-virtual {p1}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Bytes;->get()[B

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/as;->d:[B

    iput-object v2, p0, Lcom/nuance/nmdp/speechkit/as;->f:Ljava/util/List;

    iput-object v2, p0, Lcom/nuance/nmdp/speechkit/as;->e:Ljava/util/Map;

    goto :goto_0

    :pswitch_3
    iput v1, p0, Lcom/nuance/nmdp/speechkit/as;->b:I

    check-cast p1, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$String;

    invoke-virtual {p1}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$String;->get()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/as;->c:Ljava/lang/String;

    iput-object v2, p0, Lcom/nuance/nmdp/speechkit/as;->d:[B

    iput-object v2, p0, Lcom/nuance/nmdp/speechkit/as;->f:Ljava/util/List;

    iput-object v2, p0, Lcom/nuance/nmdp/speechkit/as;->e:Ljava/util/Map;

    goto/16 :goto_0

    :pswitch_4
    check-cast p1, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Integer;

    invoke-virtual {p1}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Integer;->get()I

    move-result v0

    iput v0, p0, Lcom/nuance/nmdp/speechkit/as;->b:I

    iput-object v2, p0, Lcom/nuance/nmdp/speechkit/as;->c:Ljava/lang/String;

    iput-object v2, p0, Lcom/nuance/nmdp/speechkit/as;->d:[B

    iput-object v2, p0, Lcom/nuance/nmdp/speechkit/as;->f:Ljava/util/List;

    iput-object v2, p0, Lcom/nuance/nmdp/speechkit/as;->e:Ljava/util/Map;

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/nmdp/speechkit/as;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/as;->e:Ljava/util/Map;

    return-object v0
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/nmdp/speechkit/as;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/as;->f:Ljava/util/List;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/as;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/nuance/nmdp/speechkit/as;->b:I

    return v0
.end method

.method public final e()[B
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/as;->d:[B

    return-object v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lcom/nuance/nmdp/speechkit/as;->a:I

    return v0
.end method

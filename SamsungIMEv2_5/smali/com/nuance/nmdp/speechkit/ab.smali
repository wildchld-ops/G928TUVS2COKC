.class public final Lcom/nuance/nmdp/speechkit/ab;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/ab;->b:Landroid/content/Context;

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "sdk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/ab;->a:Z

    return-void
.end method

.method public static a([B)Lcom/nuance/nmdp/speechkit/dw;
    .locals 6

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    aget-byte v2, p0, v5

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    int-to-short v1, v1

    array-length v2, p0

    add-int/lit8 v2, v2, -0x2

    new-array v2, v2, [B

    const/4 v3, 0x2

    array-length v4, v2

    invoke-static {p0, v3, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-object v0

    :pswitch_1
    new-instance v0, Lcom/nuance/nmdp/speechkit/ea;

    invoke-direct {v0, v2}, Lcom/nuance/nmdp/speechkit/ea;-><init>([B)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/nuance/nmdp/speechkit/dz;

    invoke-direct {v0, v2}, Lcom/nuance/nmdp/speechkit/dz;-><init>([B)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/nuance/nmdp/speechkit/eb;

    invoke-direct {v0, v2}, Lcom/nuance/nmdp/speechkit/eb;-><init>([B)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7201
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static a(Lcom/nuance/nmdp/speechkit/ak;Ljava/util/Map;)Lcom/nuance/nmdp/speechkit/ej;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/nmdp/speechkit/ak;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/nmdp/speechkit/as;",
            ">;)",
            "Lcom/nuance/nmdp/speechkit/ej;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/nuance/nmdp/speechkit/ak;->g()Lcom/nuance/nmdp/speechkit/ej;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/as;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/as;->f()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/as;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/nuance/nmdp/speechkit/ej;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/as;->d()I

    move-result v0

    invoke-interface {v2, v1, v0}, Lcom/nuance/nmdp/speechkit/ej;->b(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/as;->e()[B

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/nuance/nmdp/speechkit/ej;->a(Ljava/lang/String;[B)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/as;->a()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/nmdp/speechkit/ab;->a(Lcom/nuance/nmdp/speechkit/ak;Ljava/util/Map;)Lcom/nuance/nmdp/speechkit/ej;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/nuance/nmdp/speechkit/ej;->a(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/ej;)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/as;->b()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/nmdp/speechkit/ab;->a(Lcom/nuance/nmdp/speechkit/ak;Ljava/util/List;)Lcom/nuance/nmdp/speechkit/eo;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/nuance/nmdp/speechkit/ej;->a(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/eo;)V

    goto :goto_0

    :cond_0
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Lcom/nuance/nmdp/speechkit/de;Lcom/nuance/nmdp/speechkit/di;Ljava/util/Vector;)Lcom/nuance/nmdp/speechkit/ek;
    .locals 4

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "manager can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "nmasListener can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz p2, :cond_4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    invoke-virtual {p2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/cz;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->d()Lcom/nuance/nmdp/speechkit/cz$a;

    move-result-object v2

    sget-object v3, Lcom/nuance/nmdp/speechkit/cz$a;->c:Lcom/nuance/nmdp/speechkit/cz$a;

    if-eq v2, v3, :cond_2

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->d()Lcom/nuance/nmdp/speechkit/cz$a;

    move-result-object v2

    sget-object v3, Lcom/nuance/nmdp/speechkit/cz$a;->d:Lcom/nuance/nmdp/speechkit/cz$a;

    if-eq v2, v3, :cond_2

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->d()Lcom/nuance/nmdp/speechkit/cz$a;

    move-result-object v2

    sget-object v3, Lcom/nuance/nmdp/speechkit/cz$a;->e:Lcom/nuance/nmdp/speechkit/cz$a;

    if-eq v2, v3, :cond_2

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->d()Lcom/nuance/nmdp/speechkit/cz$a;

    move-result-object v2

    sget-object v3, Lcom/nuance/nmdp/speechkit/cz$a;->f:Lcom/nuance/nmdp/speechkit/cz$a;

    if-eq v2, v3, :cond_2

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->d()Lcom/nuance/nmdp/speechkit/cz$a;

    move-result-object v2

    sget-object v3, Lcom/nuance/nmdp/speechkit/cz$a;->g:Lcom/nuance/nmdp/speechkit/cz$a;

    if-eq v2, v3, :cond_2

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->d()Lcom/nuance/nmdp/speechkit/cz$a;

    move-result-object v2

    sget-object v3, Lcom/nuance/nmdp/speechkit/cz$a;->h:Lcom/nuance/nmdp/speechkit/cz$a;

    if-eq v2, v3, :cond_2

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->d()Lcom/nuance/nmdp/speechkit/cz$a;

    move-result-object v2

    sget-object v3, Lcom/nuance/nmdp/speechkit/cz$a;->i:Lcom/nuance/nmdp/speechkit/cz$a;

    if-eq v2, v3, :cond_2

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->d()Lcom/nuance/nmdp/speechkit/cz$a;

    move-result-object v2

    sget-object v3, Lcom/nuance/nmdp/speechkit/cz$a;->j:Lcom/nuance/nmdp/speechkit/cz$a;

    if-ne v2, v3, :cond_3

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Parameter type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->d()Lcom/nuance/nmdp/speechkit/cz$a;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " not allowed. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/nuance/nmdp/speechkit/dn;

    check-cast p0, Lcom/nuance/nmdp/speechkit/dj;

    invoke-direct {v0, p0, p1, p2}, Lcom/nuance/nmdp/speechkit/dn;-><init>(Lcom/nuance/nmdp/speechkit/dj;Lcom/nuance/nmdp/speechkit/di;Ljava/util/Vector;)V

    return-object v0
.end method

.method private static a(Lcom/nuance/nmdp/speechkit/ak;Ljava/util/List;)Lcom/nuance/nmdp/speechkit/eo;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/nmdp/speechkit/ak;",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/nmdp/speechkit/as;",
            ">;)",
            "Lcom/nuance/nmdp/speechkit/eo;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/nuance/nmdp/speechkit/ak;->h()Lcom/nuance/nmdp/speechkit/eo;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/as;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/as;->f()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/as;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/nuance/nmdp/speechkit/eo;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/as;->d()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/nuance/nmdp/speechkit/eo;->i(I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/as;->e()[B

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/nuance/nmdp/speechkit/eo;->b([B)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/as;->a()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/nmdp/speechkit/ab;->a(Lcom/nuance/nmdp/speechkit/ak;Ljava/util/Map;)Lcom/nuance/nmdp/speechkit/ej;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/nuance/nmdp/speechkit/eo;->a(Lcom/nuance/nmdp/speechkit/ej;)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/as;->b()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/nmdp/speechkit/ab;->a(Lcom/nuance/nmdp/speechkit/ak;Ljava/util/List;)Lcom/nuance/nmdp/speechkit/eo;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/nuance/nmdp/speechkit/eo;->a(Lcom/nuance/nmdp/speechkit/eo;)V

    goto :goto_0

    :cond_0
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Lcom/nuance/nmdp/speechkit/ej;)Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;
    .locals 4

    new-instance v1, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;-><init>(Ljava/util/Map;)V

    invoke-interface {p0}, Lcom/nuance/nmdp/speechkit/ej;->a()Ljava/util/Enumeration;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p0, v0}, Lcom/nuance/nmdp/speechkit/ej;->c(Ljava/lang/String;)S

    move-result v3

    sparse-switch v3, :sswitch_data_0

    const-string v0, "PdxValue"

    const-string v3, "Unsupported PDX type found in dictionary, skipping"

    invoke-static {v0, v3}, Lcom/nuance/nmdp/speechkit/ab;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_0
    invoke-interface {p0, v0}, Lcom/nuance/nmdp/speechkit/ej;->h(Ljava/lang/String;)Lcom/nuance/nmdp/speechkit/ej;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/nmdp/speechkit/ab;->a(Lcom/nuance/nmdp/speechkit/ej;)Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;)V

    goto :goto_0

    :sswitch_1
    invoke-interface {p0, v0}, Lcom/nuance/nmdp/speechkit/ej;->i(Ljava/lang/String;)Lcom/nuance/nmdp/speechkit/eo;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/nmdp/speechkit/ab;->a(Lcom/nuance/nmdp/speechkit/eo;)Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;)V

    goto :goto_0

    :sswitch_2
    invoke-interface {p0, v0}, Lcom/nuance/nmdp/speechkit/ej;->d(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;I)V

    goto :goto_0

    :sswitch_3
    invoke-interface {p0, v0}, Lcom/nuance/nmdp/speechkit/ej;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_4
    invoke-interface {p0, v0}, Lcom/nuance/nmdp/speechkit/ej;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_5
    invoke-interface {p0, v0}, Lcom/nuance/nmdp/speechkit/ej;->e(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;[B)V

    goto :goto_0

    :cond_0
    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_5
        0x10 -> :sswitch_1
        0x16 -> :sswitch_4
        0xc0 -> :sswitch_2
        0xc1 -> :sswitch_3
        0xe0 -> :sswitch_0
    .end sparse-switch
.end method

.method private static a(Lcom/nuance/nmdp/speechkit/eo;)Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;
    .locals 4

    new-instance v1, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;-><init>(Ljava/util/List;)V

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Lcom/nuance/nmdp/speechkit/eo;->a()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-interface {p0, v0}, Lcom/nuance/nmdp/speechkit/eo;->b(I)S

    move-result v2

    sparse-switch v2, :sswitch_data_0

    const-string v2, "PdxValue"

    const-string v3, "Unsupported PDX type found in sequence, skipping"

    invoke-static {v2, v3}, Lcom/nuance/nmdp/speechkit/ab;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :sswitch_0
    invoke-interface {p0, v0}, Lcom/nuance/nmdp/speechkit/eo;->g(I)Lcom/nuance/nmdp/speechkit/ej;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/nmdp/speechkit/ab;->a(Lcom/nuance/nmdp/speechkit/ej;)Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;->add(Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;)V

    goto :goto_1

    :sswitch_1
    invoke-interface {p0, v0}, Lcom/nuance/nmdp/speechkit/eo;->h(I)Lcom/nuance/nmdp/speechkit/eo;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/nmdp/speechkit/ab;->a(Lcom/nuance/nmdp/speechkit/eo;)Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;->add(Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;)V

    goto :goto_1

    :sswitch_2
    invoke-interface {p0, v0}, Lcom/nuance/nmdp/speechkit/eo;->c(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;->add(I)V

    goto :goto_1

    :sswitch_3
    invoke-interface {p0, v0}, Lcom/nuance/nmdp/speechkit/eo;->e(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;->add(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_4
    invoke-interface {p0, v0}, Lcom/nuance/nmdp/speechkit/eo;->f(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;->add(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_5
    invoke-interface {p0, v0}, Lcom/nuance/nmdp/speechkit/eo;->d(I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;->add([B)V

    goto :goto_1

    :cond_0
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_5
        0x10 -> :sswitch_1
        0x16 -> :sswitch_4
        0xc0 -> :sswitch_2
        0xc1 -> :sswitch_3
        0xe0 -> :sswitch_0
    .end sparse-switch
.end method

.method public static a([BI)S
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public static a(I[BI)V
    .locals 2

    int-to-short v0, p0

    shr-int/lit8 v1, p0, 0x10

    int-to-short v1, v1

    invoke-static {v0, p1, p2}, Lcom/nuance/nmdp/speechkit/ab;->a(S[BI)V

    add-int/lit8 v0, p2, 0x2

    invoke-static {v1, p1, v0}, Lcom/nuance/nmdp/speechkit/ab;->a(S[BI)V

    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    const-string v0, "SpeechKit"

    invoke-static {p0, p1}, Lcom/nuance/nmdp/speechkit/ab;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "SpeechKit"

    invoke-static {p0, p1}, Lcom/nuance/nmdp/speechkit/ab;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static a(S[BI)V
    .locals 2

    int-to-byte v0, p0

    shr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    aput-byte v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    aput-byte v1, p1, v0

    return-void
.end method

.method public static a(BBS[B)[B
    .locals 8

    const/16 v7, 0x8

    const/4 v6, 0x0

    array-length v0, p3

    add-int/lit8 v1, v0, 0x8

    new-array v1, v1, [B

    new-instance v2, Lcom/nuance/nmdp/speechkit/cp;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/nuance/nmdp/speechkit/cp;-><init>(BBSI)V

    new-array v3, v7, [B

    iget-byte v4, v2, Lcom/nuance/nmdp/speechkit/cp;->a:B

    aput-byte v4, v3, v6

    const/4 v4, 0x1

    iget-byte v5, v2, Lcom/nuance/nmdp/speechkit/cp;->b:B

    aput-byte v5, v3, v4

    iget-short v4, v2, Lcom/nuance/nmdp/speechkit/cp;->c:S

    const/4 v5, 0x2

    invoke-static {v4, v3, v5}, Lcom/nuance/nmdp/speechkit/ab;->a(S[BI)V

    iget v2, v2, Lcom/nuance/nmdp/speechkit/cp;->d:I

    const/4 v4, 0x4

    invoke-static {v2, v3, v4}, Lcom/nuance/nmdp/speechkit/ab;->a(I[BI)V

    invoke-static {v3, v6, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p3, v6, v1, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public static a([B[B)[B
    .locals 4

    const/16 v3, 0x10

    const/4 v2, 0x0

    array-length v0, p0

    add-int/lit8 v0, v0, 0x10

    new-array v0, v0, [B

    invoke-static {p1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p0

    invoke-static {p0, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static b([BI)I
    .locals 3

    const v2, 0xffff

    invoke-static {p0, p1}, Lcom/nuance/nmdp/speechkit/ab;->a([BI)S

    move-result v0

    and-int/2addr v0, v2

    add-int/lit8 v1, p1, 0x2

    invoke-static {p0, v1}, Lcom/nuance/nmdp/speechkit/ab;->a([BI)S

    move-result v1

    and-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    return v0
.end method

.method public static b(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    const-string v0, "SpeechKit"

    invoke-static {p0, p1}, Lcom/nuance/nmdp/speechkit/ab;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static c(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    const-string v0, "SpeechKit"

    invoke-static {p0, p1}, Lcom/nuance/nmdp/speechkit/ab;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    sget-boolean v0, Lcom/nuance/nmdp/speechkit/bx;->a:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-ltz v1, :cond_2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ab;->b:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v0, "carrier"

    :cond_1
    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ab;->b:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ab;->b:Landroid/content/Context;

    new-instance v1, Lcom/nuance/nmsp/client/sdk/oem/b;

    invoke-direct {v1, v0}, Lcom/nuance/nmsp/client/sdk/oem/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/oem/b;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public final d()Lcom/nuance/nmdp/speechkit/cj;
    .locals 2

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ab;->b:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/ab;->a:Z

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/nuance/nmdp/speechkit/cj;->a:Lcom/nuance/nmdp/speechkit/cj;

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/nuance/nmdp/speechkit/cj;->b:Lcom/nuance/nmdp/speechkit/cj;

    goto :goto_0
.end method

.method public final e()Lcom/nuance/nmdp/speechkit/cj;
    .locals 2

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ab;->b:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/nmdp/speechkit/cj;->a:Lcom/nuance/nmdp/speechkit/cj;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/nuance/nmdp/speechkit/cj;->b:Lcom/nuance/nmdp/speechkit/cj;

    goto :goto_0
.end method

.method public final f()[B
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ab;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_0
.end method

.method public final g()[B
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ab;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_0
.end method

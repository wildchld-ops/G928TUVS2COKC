.class public abstract Lcom/a/a/h;
.super Lcom/a/a/a;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/h$1;,
        Lcom/a/a/h$d;,
        Lcom/a/a/h$c;,
        Lcom/a/a/h$b;,
        Lcom/a/a/h$a;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/a/a/a;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lcom/a/a/h$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/a/a/a;-><init>()V

    return-void
.end method

.method static synthetic access$300(Lcom/a/a/g;Lcom/a/a/n;Lcom/a/a/d;Lcom/a/a/f;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, Lcom/a/a/h;->parseUnknownField(Lcom/a/a/g;Lcom/a/a/n;Lcom/a/a/d;Lcom/a/a/f;I)Z

    move-result v0

    return v0
.end method

.method public static newRepeatedGeneratedExtension(Lcom/a/a/n;Lcom/a/a/n;Lcom/a/a/i$b;ILcom/a/a/x$a;Z)Lcom/a/a/h$c;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/a/a/n;",
            "Type:",
            "Ljava/lang/Object;",
            ">(TContainingType;",
            "Lcom/a/a/n;",
            "Lcom/a/a/i$b",
            "<*>;I",
            "Lcom/a/a/x$a;",
            "Z)",
            "Lcom/a/a/h$c",
            "<TContainingType;TType;>;"
        }
    .end annotation

    const/4 v6, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    new-instance v8, Lcom/a/a/h$c;

    new-instance v0, Lcom/a/a/h$b;

    const/4 v4, 0x1

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/a/a/h$b;-><init>(Lcom/a/a/i$b;ILcom/a/a/x$a;ZZLcom/a/a/h$1;)V

    move-object v1, v8

    move-object v2, p0

    move-object v3, v7

    move-object v4, p1

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/a/a/h$c;-><init>(Lcom/a/a/n;Ljava/lang/Object;Lcom/a/a/n;Lcom/a/a/h$b;Lcom/a/a/h$1;)V

    return-object v8
.end method

.method public static newSingularGeneratedExtension(Lcom/a/a/n;Ljava/lang/Object;Lcom/a/a/n;Lcom/a/a/i$b;ILcom/a/a/x$a;)Lcom/a/a/h$c;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/a/a/n;",
            "Type:",
            "Ljava/lang/Object;",
            ">(TContainingType;TType;",
            "Lcom/a/a/n;",
            "Lcom/a/a/i$b",
            "<*>;I",
            "Lcom/a/a/x$a;",
            ")",
            "Lcom/a/a/h$c",
            "<TContainingType;TType;>;"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v4, 0x0

    new-instance v7, Lcom/a/a/h$c;

    new-instance v0, Lcom/a/a/h$b;

    move-object v1, p3

    move v2, p4

    move-object v3, p5

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/a/a/h$b;-><init>(Lcom/a/a/i$b;ILcom/a/a/x$a;ZZLcom/a/a/h$1;)V

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/a/a/h$c;-><init>(Lcom/a/a/n;Ljava/lang/Object;Lcom/a/a/n;Lcom/a/a/h$b;Lcom/a/a/h$1;)V

    return-object v7
.end method

.method private static parseUnknownField(Lcom/a/a/g;Lcom/a/a/n;Lcom/a/a/d;Lcom/a/a/f;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType::",
            "Lcom/a/a/n;",
            ">(",
            "Lcom/a/a/g",
            "<",
            "Lcom/a/a/h$b;",
            ">;TMessageType;",
            "Lcom/a/a/d;",
            "Lcom/a/a/f;",
            "I)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p4}, Lcom/a/a/x;->a(I)I

    move-result v2

    invoke-static {p4}, Lcom/a/a/x;->b(I)I

    move-result v3

    invoke-virtual {p3, p1, v3}, Lcom/a/a/f;->a(Lcom/a/a/n;I)Lcom/a/a/h$c;

    move-result-object v3

    if-nez v3, :cond_0

    move v2, v1

    :goto_0
    if-eqz v2, :cond_3

    invoke-virtual {p2, p4}, Lcom/a/a/d;->b(I)Z

    move-result v0

    :goto_1
    return v0

    :cond_0
    invoke-static {v3}, Lcom/a/a/h$c;->a(Lcom/a/a/h$c;)Lcom/a/a/h$b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/a/a/h$b;->a()Lcom/a/a/x$a;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/a/a/g;->a(Lcom/a/a/x$a;Z)I

    move-result v4

    if-ne v2, v4, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lcom/a/a/h$c;->a(Lcom/a/a/h$c;)Lcom/a/a/h$b;

    move-result-object v4

    invoke-static {v4}, Lcom/a/a/h$b;->b(Lcom/a/a/h$b;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v3}, Lcom/a/a/h$c;->a(Lcom/a/a/h$c;)Lcom/a/a/h$b;

    move-result-object v4

    invoke-static {v4}, Lcom/a/a/h$b;->c(Lcom/a/a/h$b;)Lcom/a/a/x$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/a/a/x$a;->c()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v3}, Lcom/a/a/h$c;->a(Lcom/a/a/h$c;)Lcom/a/a/h$b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/a/a/h$b;->a()Lcom/a/a/x$a;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/a/a/g;->a(Lcom/a/a/x$a;Z)I

    move-result v4

    if-ne v2, v4, :cond_2

    move v2, v0

    move v0, v1

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_7

    invoke-virtual {p2}, Lcom/a/a/d;->s()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/a/a/d;->d(I)I

    move-result v0

    invoke-static {v3}, Lcom/a/a/h$c;->a(Lcom/a/a/h$c;)Lcom/a/a/h$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/h$b;->a()Lcom/a/a/x$a;

    move-result-object v2

    sget-object v4, Lcom/a/a/x$a;->n:Lcom/a/a/x$a;

    if-ne v2, v4, :cond_5

    :goto_2
    invoke-virtual {p2}, Lcom/a/a/d;->w()I

    move-result v2

    if-lez v2, :cond_6

    invoke-virtual {p2}, Lcom/a/a/d;->n()I

    move-result v2

    invoke-static {v3}, Lcom/a/a/h$c;->a(Lcom/a/a/h$c;)Lcom/a/a/h$b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/a/a/h$b;->e()Lcom/a/a/i$b;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/a/a/i$b;->a(I)Lcom/a/a/i$a;

    move-result-object v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    invoke-static {v3}, Lcom/a/a/h$c;->a(Lcom/a/a/h$c;)Lcom/a/a/h$b;

    move-result-object v4

    invoke-virtual {p0, v4, v2}, Lcom/a/a/g;->b(Lcom/a/a/g$a;Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    :goto_3
    invoke-virtual {p2}, Lcom/a/a/d;->w()I

    move-result v2

    if-lez v2, :cond_6

    invoke-static {v3}, Lcom/a/a/h$c;->a(Lcom/a/a/h$c;)Lcom/a/a/h$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/h$b;->a()Lcom/a/a/x$a;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/a/a/g;->a(Lcom/a/a/d;Lcom/a/a/x$a;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3}, Lcom/a/a/h$c;->a(Lcom/a/a/h$c;)Lcom/a/a/h$b;

    move-result-object v4

    invoke-virtual {p0, v4, v2}, Lcom/a/a/g;->b(Lcom/a/a/g$a;Ljava/lang/Object;)V

    goto :goto_3

    :cond_6
    invoke-virtual {p2, v0}, Lcom/a/a/d;->e(I)V

    :goto_4
    move v0, v1

    goto/16 :goto_1

    :cond_7
    sget-object v0, Lcom/a/a/h$1;->a:[I

    invoke-static {v3}, Lcom/a/a/h$c;->a(Lcom/a/a/h$c;)Lcom/a/a/h$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/h$b;->d()Lcom/a/a/x$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/x$b;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    invoke-static {v3}, Lcom/a/a/h$c;->a(Lcom/a/a/h$c;)Lcom/a/a/h$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/h$b;->a()Lcom/a/a/x$a;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/a/a/g;->a(Lcom/a/a/d;Lcom/a/a/x$a;)Ljava/lang/Object;

    move-result-object v0

    :cond_8
    :goto_5
    invoke-static {v3}, Lcom/a/a/h$c;->a(Lcom/a/a/h$c;)Lcom/a/a/h$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/h$b;->b()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {v3}, Lcom/a/a/h$c;->a(Lcom/a/a/h$c;)Lcom/a/a/h$b;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/a/a/g;->b(Lcom/a/a/g$a;Ljava/lang/Object;)V

    goto :goto_4

    :pswitch_0
    const/4 v2, 0x0

    invoke-static {v3}, Lcom/a/a/h$c;->a(Lcom/a/a/h$c;)Lcom/a/a/h$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/h$b;->b()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {v3}, Lcom/a/a/h$c;->a(Lcom/a/a/h$c;)Lcom/a/a/h$b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/a/a/g;->a(Lcom/a/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/n;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/a/a/n;->toBuilder()Lcom/a/a/n$a;

    move-result-object v0

    :goto_6
    if-nez v0, :cond_9

    invoke-static {v3}, Lcom/a/a/h$c;->b(Lcom/a/a/h$c;)Lcom/a/a/n;

    move-result-object v0

    invoke-interface {v0}, Lcom/a/a/n;->newBuilderForType()Lcom/a/a/n$a;

    move-result-object v0

    :cond_9
    invoke-static {v3}, Lcom/a/a/h$c;->a(Lcom/a/a/h$c;)Lcom/a/a/h$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/h$b;->a()Lcom/a/a/x$a;

    move-result-object v2

    sget-object v4, Lcom/a/a/x$a;->j:Lcom/a/a/x$a;

    if-ne v2, v4, :cond_a

    invoke-virtual {v3}, Lcom/a/a/h$c;->a()I

    move-result v2

    invoke-virtual {p2, v2, v0, p3}, Lcom/a/a/d;->a(ILcom/a/a/n$a;Lcom/a/a/f;)V

    :goto_7
    invoke-interface {v0}, Lcom/a/a/n$a;->build()Lcom/a/a/n;

    move-result-object v0

    goto :goto_5

    :cond_a
    invoke-virtual {p2, v0, p3}, Lcom/a/a/d;->a(Lcom/a/a/n$a;Lcom/a/a/f;)V

    goto :goto_7

    :pswitch_1
    invoke-virtual {p2}, Lcom/a/a/d;->n()I

    move-result v0

    invoke-static {v3}, Lcom/a/a/h$c;->a(Lcom/a/a/h$c;)Lcom/a/a/h$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/h$b;->e()Lcom/a/a/i$b;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/a/a/i$b;->a(I)Lcom/a/a/i$a;

    move-result-object v0

    if-nez v0, :cond_8

    move v0, v1

    goto/16 :goto_1

    :cond_b
    invoke-static {v3}, Lcom/a/a/h$c;->a(Lcom/a/a/h$c;)Lcom/a/a/h$b;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/a/a/g;->a(Lcom/a/a/g$a;Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_c
    move-object v0, v2

    goto :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getParserForType()Lcom/a/a/p;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/p",
            "<+",
            "Lcom/a/a/n;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is supposed to be overridden by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected makeExtensionsImmutable()V
    .locals 0

    return-void
.end method

.method protected parseUnknownField(Lcom/a/a/d;Lcom/a/a/f;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p3}, Lcom/a/a/d;->b(I)Z

    move-result v0

    return v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    new-instance v0, Lcom/a/a/h$d;

    invoke-direct {v0, p0}, Lcom/a/a/h$d;-><init>(Lcom/a/a/n;)V

    return-object v0
.end method

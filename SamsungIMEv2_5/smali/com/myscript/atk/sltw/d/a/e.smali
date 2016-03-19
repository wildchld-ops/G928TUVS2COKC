.class public final Lcom/myscript/atk/sltw/d/a/e;
.super Ljava/lang/Object;
.source "StylusCoreHelper.java"


# instance fields
.field private a:Lcom/myscript/atk/sltw/f/b/a;

.field private b:Lcom/myscript/atk/sltw/f/a/b;

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/myscript/atk/sltw/f/b/a;Lcom/myscript/atk/sltw/f/a/b;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/myscript/atk/sltw/d/a/e;->c:Z

    iput-boolean v0, p0, Lcom/myscript/atk/sltw/d/a/e;->d:Z

    iput-object p1, p0, Lcom/myscript/atk/sltw/d/a/e;->a:Lcom/myscript/atk/sltw/f/b/a;

    iput-object p2, p0, Lcom/myscript/atk/sltw/d/a/e;->b:Lcom/myscript/atk/sltw/f/a/b;

    return-void
.end method

.method public static a(Lcom/myscript/atk/styluscore/Rect;)Landroid/graphics/RectF;
    .locals 5

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/Rect;->getLeft()F

    move-result v0

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/Rect;->getTop()F

    move-result v1

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/Rect;->getRight()F

    move-result v2

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/Rect;->getBottom()F

    move-result v3

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v4
.end method

.method private a(Lcom/myscript/atk/styluscore/InkItem;)Lcom/myscript/atk/sltw/f/c;
    .locals 4

    iget-object v0, p0, Lcom/myscript/atk/sltw/d/a/e;->b:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a/b;->i()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v0, p0, Lcom/myscript/atk/sltw/d/a/e;->b:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/f/a/b;->b(I)Lcom/myscript/atk/sltw/f/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/c;->a()Lcom/myscript/atk/styluscore/InkItem;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/myscript/atk/styluscore/InkItem;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const-string v0, "StylusCoreHelper"

    const-string v1, "Found StylusCore stroke item without matching VOStroke object!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static a(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/Segment;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/Segment;

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/Segment;->selectedCandidate()Lcom/myscript/atk/styluscore/Candidate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/Candidate;->label()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/myscript/atk/styluscore/Candidate;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/myscript/atk/styluscore/Candidate;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/Segment;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/Candidate;->segments()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/Segment;

    invoke-static {v2, v0}, Lcom/myscript/atk/sltw/d/a/e;->a(Ljava/util/List;Lcom/myscript/atk/styluscore/Segment;)V

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    invoke-interface {v2}, Ljava/util/List;->size()I

    return-object v2
.end method

.method public static a(Lcom/myscript/atk/styluscore/InkField;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/myscript/atk/styluscore/InkField;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/Segment;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/InkField;->segments()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/Segment;

    invoke-static {v1, v0}, Lcom/myscript/atk/sltw/d/a/e;->a(Ljava/util/List;Lcom/myscript/atk/styluscore/Segment;)V

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/Segment;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {p0}, Lcom/myscript/atk/sltw/d/a/b;->a(Ljava/lang/String;)Lcom/myscript/atk/styluscore/InkItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0, p0, p1}, Lcom/myscript/atk/styluscore/InkField;->fromItemList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/myscript/atk/styluscore/InkField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/InkField;->segments()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/Segment;

    invoke-static {v2, v0}, Lcom/myscript/atk/sltw/d/a/e;->a(Ljava/util/List;Lcom/myscript/atk/styluscore/Segment;)V

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    invoke-interface {v2}, Ljava/util/List;->size()I

    return-object v2
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/Segment;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v4, "1"

    invoke-static {v4}, Lcom/myscript/atk/sltw/d/a/b;->a(Ljava/lang/String;)Lcom/myscript/atk/styluscore/InkItem;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "StylusCoreHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "splitWords - graphemesPositions("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") is ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "]"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move-object v1, p0

    move-object v2, p1

    move v4, v3

    move v5, v3

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/myscript/atk/styluscore/InkField;->fromItemList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;FFFLjava/util/List;)Lcom/myscript/atk/styluscore/InkField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/InkField;->segments()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/Segment;

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/Segment;->selectedCandidate()Lcom/myscript/atk/styluscore/Candidate;

    move-result-object v4

    invoke-virtual {v4}, Lcom/myscript/atk/styluscore/Candidate;->label()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    invoke-interface {v2}, Ljava/util/List;->size()I

    return-object v2
.end method

.method public static a(Ljava/util/List;III)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/Segment;",
            ">;III)",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/Segment;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/Segment;

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/Segment;->candidates()Ljava/util/List;

    move-result-object v3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v1, :cond_0

    if-ne v1, p1, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, p2, :cond_0

    invoke-virtual {v0, p2}, Lcom/myscript/atk/styluscore/Segment;->select(I)Z

    :cond_0
    invoke-static {v2, v0}, Lcom/myscript/atk/sltw/d/a/e;->a(Ljava/util/List;Lcom/myscript/atk/styluscore/Segment;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/Segment;

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/Segment;->candidates()Ljava/util/List;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, p1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p2, :cond_2

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0, p2}, Lcom/myscript/atk/styluscore/Segment;->select(I)Z

    invoke-static {v2, v0}, Lcom/myscript/atk/sltw/d/a/e;->a(Ljava/util/List;Lcom/myscript/atk/styluscore/Segment;)V

    :cond_2
    return-object v2
.end method

.method private a()V
    .locals 4

    iget-object v0, p0, Lcom/myscript/atk/sltw/d/a/e;->b:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a/b;->j()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/myscript/atk/sltw/d/a/e;->b:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v2, v0}, Lcom/myscript/atk/sltw/f/a/b;->c(I)Lcom/myscript/atk/sltw/f/d;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/myscript/atk/sltw/f/d;->h(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static a(Lcom/myscript/atk/styluscore/InkField;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/myscript/atk/styluscore/InkField;",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/InkItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/InkItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/InkItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/InkItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/InkItem;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/InkField;->items()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/InkItem;

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/myscript/atk/styluscore/InkItem;->is(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/myscript/atk/styluscore/InkItem;->is(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static a(Ljava/util/List;Lcom/myscript/atk/styluscore/Segment;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/Segment;",
            ">;",
            "Lcom/myscript/atk/styluscore/Segment;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/myscript/atk/styluscore/Segment;->selectedCandidate()Lcom/myscript/atk/styluscore/Candidate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/Candidate;->label()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private static a(Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/sltw/f/a;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/sltw/f/a;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/sltw/f/a;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a;->d()Landroid/graphics/RectF;

    move-result-object v6

    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/sltw/f/a;

    :goto_0
    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a;->d()Landroid/graphics/RectF;

    move-result-object v3

    iget v0, v3, Landroid/graphics/RectF;->left:F

    iget v1, v6, Landroid/graphics/RectF;->left:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-gtz v0, :cond_4

    const/4 v0, 0x1

    move v1, v0

    :goto_1
    move-object v0, v3

    :goto_2
    if-eqz v0, :cond_2

    invoke-static {v0, v6}, Lcom/myscript/atk/sltw/d/a/c;->a(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    move-object v0, v2

    goto :goto_2

    :cond_3
    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/sltw/f/a;

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    move v1, v0

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_7

    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/sltw/f/a;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a;->d()Landroid/graphics/RectF;

    move-result-object v0

    goto :goto_2

    :cond_6
    move-object v0, v2

    goto :goto_2

    :cond_7
    invoke-interface {v4}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/sltw/f/a;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a;->d()Landroid/graphics/RectF;

    move-result-object v0

    goto :goto_2

    :cond_8
    move-object v0, v2

    goto :goto_2
.end method

.method public static a(Lcom/myscript/atk/styluscore/Segment;Ljava/util/List;)[Lcom/myscript/atk/sltw/f/a;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/myscript/atk/styluscore/Segment;",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/sltw/f/a;",
            ">;)[",
            "Lcom/myscript/atk/sltw/f/a;"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/Segment;->selectedCandidate()Lcom/myscript/atk/styluscore/Candidate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/Candidate;->segments()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    new-array v6, v0, [Lcom/myscript/atk/sltw/f/a;

    move v1, v2

    move v3, v4

    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_b

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/Segment;

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/Segment;->items()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/InkItem;

    invoke-virtual {v0, v4}, Lcom/myscript/atk/styluscore/InkItem;->is(I)Z

    move-result v9

    if-eqz v9, :cond_0

    :goto_1
    if-eqz v0, :cond_1

    if-nez p1, :cond_3

    :cond_1
    move-object v7, v5

    :goto_2
    if-nez v7, :cond_a

    move v0, v4

    :goto_3
    and-int/2addr v3, v0

    aput-object v7, v6, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    move-object v0, v5

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/InkItem;->boundingRect()Lcom/myscript/atk/styluscore/Rect;

    move-result-object v9

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/sltw/f/a;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a;->c()Lcom/myscript/atk/styluscore/InkItem;

    move-result-object v7

    invoke-virtual {v7}, Lcom/myscript/atk/styluscore/InkItem;->boundingRect()Lcom/myscript/atk/styluscore/Rect;

    move-result-object v7

    if-nez v7, :cond_5

    if-nez v9, :cond_5

    move v7, v4

    :goto_4
    if-eqz v7, :cond_4

    move-object v7, v0

    goto :goto_2

    :cond_5
    if-eqz v7, :cond_6

    if-nez v9, :cond_7

    :cond_6
    move v7, v2

    goto :goto_4

    :cond_7
    invoke-virtual {v7}, Lcom/myscript/atk/styluscore/Rect;->getLeft()F

    move-result v11

    invoke-virtual {v9}, Lcom/myscript/atk/styluscore/Rect;->getLeft()F

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Float;->compare(FF)I

    move-result v11

    if-nez v11, :cond_8

    invoke-virtual {v7}, Lcom/myscript/atk/styluscore/Rect;->getRight()F

    move-result v11

    invoke-virtual {v9}, Lcom/myscript/atk/styluscore/Rect;->getRight()F

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Float;->compare(FF)I

    move-result v11

    if-nez v11, :cond_8

    invoke-virtual {v7}, Lcom/myscript/atk/styluscore/Rect;->getTop()F

    move-result v11

    invoke-virtual {v9}, Lcom/myscript/atk/styluscore/Rect;->getTop()F

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Float;->compare(FF)I

    move-result v11

    if-nez v11, :cond_8

    invoke-virtual {v7}, Lcom/myscript/atk/styluscore/Rect;->getBottom()F

    move-result v7

    invoke-virtual {v9}, Lcom/myscript/atk/styluscore/Rect;->getBottom()F

    move-result v11

    invoke-static {v7, v11}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-nez v7, :cond_8

    move v7, v4

    goto :goto_4

    :cond_8
    move v7, v2

    goto :goto_4

    :cond_9
    move-object v7, v5

    goto :goto_2

    :cond_a
    move v0, v2

    goto :goto_3

    :cond_b
    if-eqz v3, :cond_c

    move-object v0, v5

    :goto_5
    return-object v0

    :cond_c
    move-object v0, v6

    goto :goto_5
.end method

.method public static a(Lcom/myscript/atk/styluscore/Segment;)[Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/Segment;->candidates()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v3

    if-ge v1, v0, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/Candidate;

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/Candidate;->segments()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/myscript/atk/sltw/d/a/e;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method public static b(Lcom/myscript/atk/styluscore/InkField;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/InkField;->items()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/InkItem;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/myscript/atk/styluscore/InkItem;->is(I)Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 v0, v1, 0x1

    :goto_2
    move v1, v0

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method private static b(Ljava/util/List;Ljava/util/List;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/Segment;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/Segment;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v4, 0x0

    invoke-static {}, Lcom/myscript/atk/sltw/g/a;->a()Lcom/myscript/atk/sltw/g/a;

    const/4 v1, -0x1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v8

    move v3, v4

    move-object v5, v0

    move v6, v1

    move-object v7, v0

    :goto_0
    if-ge v3, v8, :cond_1

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/Segment;

    invoke-static {v0}, Lcom/myscript/atk/sltw/d/a/e;->a(Lcom/myscript/atk/styluscore/Segment;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/Segment;->selectedIndex()I

    move-result v2

    if-eqz v7, :cond_0

    add-int/lit8 v9, v8, -0x1

    if-eq v3, v9, :cond_0

    aget-object v9, v1, v2

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    aget-object v9, v5, v6

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    aget-object v9, v1, v2

    invoke-static {v9, v4}, Lcom/myscript/atk/sltw/g/a;->a(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_0

    aget-object v5, v5, v6

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/myscript/atk/sltw/g/a;->a(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v7, v0}, Lcom/myscript/atk/sltw/d/a/d;->a(Lcom/myscript/atk/styluscore/Segment;Lcom/myscript/atk/styluscore/Segment;)Lcom/myscript/atk/styluscore/Segment;

    move-result-object v2

    invoke-interface {p1, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Lcom/myscript/atk/sltw/d/a/e;->a(Lcom/myscript/atk/styluscore/Segment;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcom/myscript/atk/styluscore/Segment;->selectedIndex()I

    move-result v1

    :goto_1
    add-int/lit8 v3, v3, 0x1

    move-object v5, v0

    move v6, v1

    move-object v7, v2

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v11, v1

    move v1, v2

    move-object v2, v0

    move-object v0, v11

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method private b(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/InkItem;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/InkItem;

    iget-object v2, p0, Lcom/myscript/atk/sltw/d/a/e;->b:Lcom/myscript/atk/sltw/f/a/b;

    iget-object v3, p0, Lcom/myscript/atk/sltw/d/a/e;->a:Lcom/myscript/atk/sltw/f/b/a;

    invoke-virtual {v3, v0}, Lcom/myscript/atk/sltw/f/b/a;->a(Lcom/myscript/atk/styluscore/InkItem;)Lcom/myscript/atk/sltw/f/c;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/myscript/atk/sltw/f/a/b;->a(Lcom/myscript/atk/sltw/f/c;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static b(Lcom/myscript/atk/styluscore/Segment;)[Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/Segment;->candidates()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v3

    if-ge v1, v0, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/Candidate;

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/Candidate;->label()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method private static c(Ljava/util/List;Ljava/util/List;)I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/Segment;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/Segment;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v1, -0x1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v9

    move v5, v4

    move-object v6, v0

    move v7, v1

    move-object v8, v0

    :goto_0
    if-ge v5, v9, :cond_1

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/Segment;

    invoke-static {v0}, Lcom/myscript/atk/sltw/d/a/e;->a(Lcom/myscript/atk/styluscore/Segment;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/Segment;->selectedIndex()I

    move-result v2

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v8, :cond_2

    aget-object v3, v6, v7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    :goto_1
    if-eqz v8, :cond_0

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    aget-object v10, v1, v2

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    aget-object v10, v6, v7

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    aget-object v10, v1, v2

    invoke-virtual {v10, v4}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Lcom/myscript/atk/sltw/g/a;->c(C)Z

    move-result v10

    if-eqz v10, :cond_0

    aget-object v6, v6, v7

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/myscript/atk/sltw/g/a;->d(C)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v8, v0}, Lcom/myscript/atk/sltw/d/a/d;->a(Lcom/myscript/atk/styluscore/Segment;Lcom/myscript/atk/styluscore/Segment;)Lcom/myscript/atk/styluscore/Segment;

    move-result-object v2

    invoke-interface {p1, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Lcom/myscript/atk/sltw/d/a/e;->a(Lcom/myscript/atk/styluscore/Segment;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcom/myscript/atk/styluscore/Segment;->selectedIndex()I

    move-result v1

    :goto_2
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move-object v6, v0

    move v7, v1

    move-object v8, v2

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v12, v1

    move v1, v2

    move-object v2, v0

    move-object v0, v12

    goto :goto_2

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_2
    move v3, v4

    goto :goto_1
.end method

.method private c(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/InkItem;",
            ">;)V"
        }
    .end annotation

    const/4 v10, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/myscript/atk/sltw/d/a/e;->b:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a/b;->i()I

    move-result v4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    new-array v6, v4, [Z

    new-array v7, v5, [Z

    move v3, v1

    :goto_0
    if-ge v3, v4, :cond_2

    iget-object v0, p0, Lcom/myscript/atk/sltw/d/a/e;->b:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v0, v3}, Lcom/myscript/atk/sltw/f/a/b;->b(I)Lcom/myscript/atk/sltw/f/c;

    move-result-object v8

    move v2, v1

    :goto_1
    if-ge v2, v5, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/InkItem;

    invoke-virtual {v8}, Lcom/myscript/atk/sltw/f/c;->a()Lcom/myscript/atk/styluscore/InkItem;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/myscript/atk/styluscore/InkItem;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    aput-boolean v10, v6, v3

    aput-boolean v10, v7, v2

    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_2
    if-ge v0, v4, :cond_4

    aget-boolean v3, v6, v0

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/myscript/atk/sltw/d/a/e;->b:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v3, v0}, Lcom/myscript/atk/sltw/f/a/b;->b(I)Lcom/myscript/atk/sltw/f/c;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_3
    if-ge v1, v5, :cond_6

    aget-boolean v0, v7, v1

    if-nez v0, :cond_5

    iget-object v4, p0, Lcom/myscript/atk/sltw/d/a/e;->a:Lcom/myscript/atk/sltw/f/b/a;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/InkItem;

    invoke-virtual {v4, v0}, Lcom/myscript/atk/sltw/f/b/a;->a(Lcom/myscript/atk/styluscore/InkItem;)Lcom/myscript/atk/sltw/f/c;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/myscript/atk/sltw/d/a/e;->b:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v0, v2}, Lcom/myscript/atk/sltw/f/a/b;->d(Ljava/util/List;)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/d/a/e;->b:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v0, v3}, Lcom/myscript/atk/sltw/f/a/b;->c(Ljava/util/List;)V

    return-void
.end method

.method public static c(Lcom/myscript/atk/styluscore/InkField;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/InkField;->pendingStrokes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/InkItem;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/myscript/atk/styluscore/InkItem;->is(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Lcom/myscript/atk/styluscore/Segment;)[Lcom/myscript/atk/sltw/f/c;
    .locals 4

    invoke-virtual {p1}, Lcom/myscript/atk/styluscore/Segment;->items()Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/InkItem;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/myscript/atk/styluscore/InkItem;->is(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v3, v0, [Lcom/myscript/atk/sltw/f/c;

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    array-length v0, v3

    if-ge v1, v0, :cond_2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/InkItem;

    invoke-direct {p0, v0}, Lcom/myscript/atk/sltw/d/a/e;->a(Lcom/myscript/atk/styluscore/InkItem;)Lcom/myscript/atk/sltw/f/c;

    move-result-object v0

    aput-object v0, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    return-object v3
.end method

.method private d(Lcom/myscript/atk/styluscore/InkField;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/myscript/atk/sltw/d/a/e;->b:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a/b;->j()I

    move-result v2

    invoke-virtual {p1, v6}, Lcom/myscript/atk/styluscore/InkField;->tagRange(I)Lcom/myscript/atk/styluscore/InkRange;

    move-result-object v0

    invoke-virtual {p1}, Lcom/myscript/atk/styluscore/InkField;->topLevelSegment()Lcom/myscript/atk/styluscore/Segment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/myscript/atk/styluscore/Segment;->inkRange()Lcom/myscript/atk/styluscore/InkRange;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/myscript/atk/styluscore/InkRange;->substracted(Lcom/myscript/atk/styluscore/InkRange;)Lcom/myscript/atk/styluscore/InkRange;

    move-result-object v3

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_2

    iget-object v4, p0, Lcom/myscript/atk/sltw/d/a/e;->b:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v4, v0}, Lcom/myscript/atk/sltw/f/a/b;->c(I)Lcom/myscript/atk/sltw/f/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/myscript/atk/sltw/f/d;->A()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lcom/myscript/atk/sltw/f/d;->e()Lcom/myscript/atk/styluscore/Segment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/myscript/atk/styluscore/Segment;->inkRange()Lcom/myscript/atk/styluscore/InkRange;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/myscript/atk/styluscore/InkRange;->intersects(Lcom/myscript/atk/styluscore/InkRange;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    invoke-virtual {v4, v6}, Lcom/myscript/atk/sltw/f/d;->g(Z)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v4, v1}, Lcom/myscript/atk/sltw/f/d;->g(Z)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private d(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/Segment;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/Segment;

    invoke-direct {p0, v0}, Lcom/myscript/atk/sltw/d/a/e;->c(Lcom/myscript/atk/styluscore/Segment;)[Lcom/myscript/atk/sltw/f/c;

    move-result-object v2

    iget-object v3, p0, Lcom/myscript/atk/sltw/d/a/e;->b:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v3}, Lcom/myscript/atk/sltw/f/a/b;->d()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/myscript/atk/sltw/d/a/e;->a(Lcom/myscript/atk/styluscore/Segment;Ljava/util/List;)[Lcom/myscript/atk/sltw/f/a;

    move-result-object v3

    iget-object v4, p0, Lcom/myscript/atk/sltw/d/a/e;->b:Lcom/myscript/atk/sltw/f/a/b;

    iget-object v5, p0, Lcom/myscript/atk/sltw/d/a/e;->a:Lcom/myscript/atk/sltw/f/b/a;

    invoke-virtual {v5, v0, v2, v3}, Lcom/myscript/atk/sltw/f/b/a;->a(Lcom/myscript/atk/styluscore/Segment;[Lcom/myscript/atk/sltw/f/c;[Lcom/myscript/atk/sltw/f/a;)Lcom/myscript/atk/sltw/f/d;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/myscript/atk/sltw/f/a/b;->b(Lcom/myscript/atk/sltw/f/d;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private e(Lcom/myscript/atk/styluscore/InkField;)V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/myscript/atk/sltw/d/a/e;->b:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a/b;->j()I

    move-result v2

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/myscript/atk/styluscore/InkField;->tagRange(I)Lcom/myscript/atk/styluscore/InkRange;

    move-result-object v3

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_1

    iget-object v4, p0, Lcom/myscript/atk/sltw/d/a/e;->b:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v4, v0}, Lcom/myscript/atk/sltw/f/a/b;->c(I)Lcom/myscript/atk/sltw/f/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/myscript/atk/sltw/f/d;->e()Lcom/myscript/atk/styluscore/Segment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/myscript/atk/styluscore/Segment;->inkRange()Lcom/myscript/atk/styluscore/InkRange;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/myscript/atk/styluscore/InkRange;->intersects(Lcom/myscript/atk/styluscore/InkRange;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/myscript/atk/sltw/f/d;->h(Z)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v4, v1}, Lcom/myscript/atk/sltw/f/d;->h(Z)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private e(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/Segment;",
            ">;)V"
        }
    .end annotation

    const/4 v11, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/myscript/atk/sltw/d/a/e;->b:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a/b;->j()I

    move-result v6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-array v7, v6, [Z

    new-array v8, v1, [Z

    iget-boolean v2, p0, Lcom/myscript/atk/sltw/d/a/e;->d:Z

    if-eqz v2, :cond_1

    invoke-static {p1, v0}, Lcom/myscript/atk/sltw/d/a/e;->c(Ljava/util/List;Ljava/util/List;)I

    move-result v1

    move-object p1, v0

    :cond_0
    :goto_0
    move v5, v3

    move v2, v3

    :goto_1
    if-ge v5, v6, :cond_3

    iget-object v0, p0, Lcom/myscript/atk/sltw/d/a/e;->b:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v0, v5}, Lcom/myscript/atk/sltw/f/a/b;->c(I)Lcom/myscript/atk/sltw/f/d;

    move-result-object v9

    move v4, v2

    :goto_2
    if-ge v4, v1, :cond_a

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/Segment;

    invoke-virtual {v9}, Lcom/myscript/atk/sltw/f/d;->e()Lcom/myscript/atk/styluscore/Segment;

    move-result-object v10

    invoke-virtual {v10, v0}, Lcom/myscript/atk/styluscore/Segment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    aput-boolean v11, v7, v5

    aput-boolean v11, v8, v4

    add-int/lit8 v0, v4, 0x1

    :goto_3
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move v2, v0

    goto :goto_1

    :cond_1
    iget-boolean v2, p0, Lcom/myscript/atk/sltw/d/a/e;->c:Z

    if-eqz v2, :cond_0

    invoke-static {p1, v0}, Lcom/myscript/atk/sltw/d/a/e;->b(Ljava/util/List;Ljava/util/List;)I

    move-result v1

    move-object p1, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v0, v3

    :goto_4
    if-ge v0, v6, :cond_5

    aget-boolean v4, v7, v0

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/myscript/atk/sltw/d/a/e;->b:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v4, v0}, Lcom/myscript/atk/sltw/f/a/b;->c(I)Lcom/myscript/atk/sltw/f/d;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/myscript/atk/sltw/d/a/e;->b:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v0, v2}, Lcom/myscript/atk/sltw/f/a/b;->e(Ljava/util/List;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v4, v3

    :goto_5
    if-ge v4, v1, :cond_9

    aget-boolean v0, v8, v4

    if-nez v0, :cond_8

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/Segment;

    invoke-direct {p0, v0}, Lcom/myscript/atk/sltw/d/a/e;->c(Lcom/myscript/atk/styluscore/Segment;)[Lcom/myscript/atk/sltw/f/c;

    move-result-object v6

    iget-object v2, p0, Lcom/myscript/atk/sltw/d/a/e;->b:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/f/a/b;->d()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/myscript/atk/sltw/d/a/e;->a(Lcom/myscript/atk/styluscore/Segment;Ljava/util/List;)[Lcom/myscript/atk/sltw/f/a;

    move-result-object v7

    move v2, v3

    :goto_6
    array-length v9, v6

    if-ge v2, v9, :cond_7

    aget-object v9, v6, v2

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    new-instance v10, Lcom/myscript/atk/sltw/f/c;

    invoke-direct {v10, v9}, Lcom/myscript/atk/sltw/f/c;-><init>(Lcom/myscript/atk/sltw/f/c;)V

    aput-object v10, v6, v2

    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_6
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_7
    iget-object v2, p0, Lcom/myscript/atk/sltw/d/a/e;->a:Lcom/myscript/atk/sltw/f/b/a;

    invoke-virtual {v2, v0, v6, v7}, Lcom/myscript/atk/sltw/f/b/a;->a(Lcom/myscript/atk/styluscore/Segment;[Lcom/myscript/atk/sltw/f/c;[Lcom/myscript/atk/sltw/f/a;)Lcom/myscript/atk/sltw/f/d;

    move-result-object v0

    iget-object v2, p0, Lcom/myscript/atk/sltw/d/a/e;->b:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v2, v0, v4}, Lcom/myscript/atk/sltw/f/a/b;->a(Lcom/myscript/atk/sltw/f/d;I)V

    :cond_8
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_5

    :cond_9
    return-void

    :cond_a
    move v0, v2

    goto :goto_3
.end method

.method private f(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/InkItem;",
            ">;)V"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/InkItem;

    iget-object v3, p0, Lcom/myscript/atk/sltw/d/a/e;->a:Lcom/myscript/atk/sltw/f/b/a;

    invoke-static {v0}, Lcom/myscript/atk/sltw/f/b/a;->b(Lcom/myscript/atk/styluscore/InkItem;)Lcom/myscript/atk/sltw/f/a;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/myscript/atk/sltw/d/a/e;->b:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/f/a/b;->a(Ljava/util/List;)V

    return-void
.end method

.method private g(Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/InkItem;",
            ">;)Z"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/InkItem;

    iget-object v3, p0, Lcom/myscript/atk/sltw/d/a/e;->a:Lcom/myscript/atk/sltw/f/b/a;

    invoke-static {v0}, Lcom/myscript/atk/sltw/f/b/a;->b(Lcom/myscript/atk/styluscore/InkItem;)Lcom/myscript/atk/sltw/f/a;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v6, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/myscript/atk/sltw/d/a/e;->b:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a/b;->d()Ljava/util/List;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    move v3, v2

    :goto_1
    if-ge v3, v7, :cond_1

    if-ge v3, v4, :cond_1

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/sltw/f/a;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/myscript/atk/sltw/f/a;

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/f/a;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/f/a;->a(Z)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_1
    invoke-static {v6, v5}, Lcom/myscript/atk/sltw/d/a/e;->a(Ljava/util/List;Ljava/util/List;)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/d/a/e;->b:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a/b;->d()Ljava/util/List;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/myscript/atk/sltw/d/a/e;->a(Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/myscript/atk/sltw/d/a/e;->b:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v0, v6}, Lcom/myscript/atk/sltw/f/a/b;->b(Ljava/util/List;)V

    :cond_2
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/myscript/atk/sltw/d/a/e;->b:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v0, v5}, Lcom/myscript/atk/sltw/f/a/b;->a(Ljava/util/List;)V

    :cond_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_4

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    :cond_4
    const/4 v0, 0x1

    :goto_2
    return v0

    :cond_5
    move v0, v2

    goto :goto_2
.end method


# virtual methods
.method public final a(Lcom/myscript/atk/styluscore/InkField;F)V
    .locals 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/myscript/atk/sltw/d/a/e;->b:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a/b;->a()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/sltw/d/a/e;->a(Lcom/myscript/atk/styluscore/InkField;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-direct {p0, v1}, Lcom/myscript/atk/sltw/d/a/e;->f(Ljava/util/List;)V

    invoke-direct {p0, v2}, Lcom/myscript/atk/sltw/d/a/e;->b(Ljava/util/List;)V

    invoke-static {p1}, Lcom/myscript/atk/sltw/d/a/e;->a(Lcom/myscript/atk/styluscore/InkField;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/myscript/atk/sltw/d/a/e;->d(Ljava/util/List;)V

    invoke-direct {p0, p1}, Lcom/myscript/atk/sltw/d/a/e;->d(Lcom/myscript/atk/styluscore/InkField;)V

    invoke-direct {p0, p1}, Lcom/myscript/atk/sltw/d/a/e;->e(Lcom/myscript/atk/styluscore/InkField;)V

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/myscript/atk/sltw/d/a/e;->c:Z

    return-void
.end method

.method public final a(Lcom/myscript/atk/styluscore/InkField;Z)Z
    .locals 6

    const/4 v3, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/sltw/d/a/e;->a(Lcom/myscript/atk/styluscore/InkField;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-direct {p0, v1}, Lcom/myscript/atk/sltw/d/a/e;->g(Ljava/util/List;)Z

    move-result v0

    invoke-direct {p0, v2}, Lcom/myscript/atk/sltw/d/a/e;->c(Ljava/util/List;)V

    invoke-static {p1}, Lcom/myscript/atk/sltw/d/a/e;->a(Lcom/myscript/atk/styluscore/InkField;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/myscript/atk/sltw/d/a/e;->e(Ljava/util/List;)V

    invoke-direct {p0, p1}, Lcom/myscript/atk/sltw/d/a/e;->d(Lcom/myscript/atk/styluscore/InkField;)V

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/myscript/atk/sltw/d/a/e;->a()V

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/myscript/atk/sltw/d/a/e;->e(Lcom/myscript/atk/styluscore/InkField;)V

    goto :goto_0
.end method

.method public final b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/myscript/atk/sltw/d/a/e;->d:Z

    return-void
.end method

.class public final Lcom/myscript/atk/sltw/d/a/d;
.super Ljava/lang/Object;
.source "SegmentFactory.java"


# direct methods
.method public static a(Lcom/myscript/atk/styluscore/Segment;)I
    .locals 6

    const/4 v0, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/Segment;->selectedCandidate()Lcom/myscript/atk/styluscore/Candidate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/myscript/atk/styluscore/Candidate;->segments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v0, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    move v2, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/Segment;

    add-int/lit8 v1, v2, -0x1

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/myscript/atk/styluscore/Segment;

    invoke-static {v0, v1}, Lcom/myscript/atk/sltw/d/a/d;->b(Lcom/myscript/atk/styluscore/Segment;Lcom/myscript/atk/styluscore/Segment;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    invoke-static {v0, v1}, Lcom/myscript/atk/sltw/d/a/d;->c(Lcom/myscript/atk/styluscore/Segment;Lcom/myscript/atk/styluscore/Segment;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    move v0, v3

    goto :goto_0
.end method

.method private static a(Lcom/myscript/atk/styluscore/Candidate;)Lcom/myscript/atk/styluscore/Candidate;
    .locals 4

    new-instance v2, Lcom/myscript/atk/styluscore/Candidate;

    invoke-direct {v2}, Lcom/myscript/atk/styluscore/Candidate;-><init>()V

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/Candidate;->type()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/myscript/atk/styluscore/Candidate;->setType(I)V

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/Candidate;->flags()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/myscript/atk/styluscore/Candidate;->setFlags(I)V

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/Candidate;->normalizedRecognitionScore()F

    move-result v0

    invoke-virtual {v2, v0}, Lcom/myscript/atk/styluscore/Candidate;->setNormalizedRecognitionScore(F)V

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/Candidate;->resemblanceScore()F

    move-result v0

    invoke-virtual {v2, v0}, Lcom/myscript/atk/styluscore/Candidate;->setResemblanceScore(F)V

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/Candidate;->segments()Ljava/util/List;

    move-result-object v1

    const/4 v0, 0x0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/Segment;

    invoke-static {v0, v1}, Lcom/myscript/atk/sltw/d/a/d;->b(Lcom/myscript/atk/styluscore/Segment;Lcom/myscript/atk/styluscore/Segment;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/Segment;->selectedCandidate()Lcom/myscript/atk/styluscore/Candidate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/myscript/atk/styluscore/Candidate;->label()Ljava/lang/String;

    const-string v1, "\u0e4d\u0e32"

    invoke-static {v0, v1}, Lcom/myscript/atk/sltw/d/a/d;->a(Lcom/myscript/atk/styluscore/Segment;Ljava/lang/String;)Lcom/myscript/atk/styluscore/Segment;

    move-result-object v1

    :goto_1
    invoke-virtual {v2, v1}, Lcom/myscript/atk/styluscore/Candidate;->append(Lcom/myscript/atk/styluscore/Segment;)V

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, v0

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method public static a(Lcom/myscript/atk/styluscore/Segment;I)Lcom/myscript/atk/styluscore/Segment;
    .locals 5

    new-instance v1, Lcom/myscript/atk/styluscore/Segment;

    invoke-direct {v1}, Lcom/myscript/atk/styluscore/Segment;-><init>()V

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/Segment;->baseline()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/myscript/atk/styluscore/Segment;->setBaseline(F)V

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/Segment;->baselineSkew()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/myscript/atk/styluscore/Segment;->setBaselineSkew(F)V

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/Segment;->midlineShift()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/myscript/atk/styluscore/Segment;->setMidlineShift(F)V

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/Segment;->inkRange()Lcom/myscript/atk/styluscore/InkRange;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/myscript/atk/styluscore/Segment;->append(Lcom/myscript/atk/styluscore/InkRange;)V

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/Segment;->selectedCandidate()Lcom/myscript/atk/styluscore/Candidate;

    move-result-object v2

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/Segment;->candidates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/Candidate;

    invoke-virtual {v0, v2}, Lcom/myscript/atk/styluscore/Candidate;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x2

    if-ne p1, v4, :cond_0

    invoke-static {v0}, Lcom/myscript/atk/sltw/d/a/d;->a(Lcom/myscript/atk/styluscore/Candidate;)Lcom/myscript/atk/styluscore/Candidate;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/myscript/atk/styluscore/Segment;->append(Lcom/myscript/atk/styluscore/Candidate;)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x3

    if-ne p1, v4, :cond_1

    invoke-static {v0}, Lcom/myscript/atk/sltw/d/a/d;->b(Lcom/myscript/atk/styluscore/Candidate;)Lcom/myscript/atk/styluscore/Candidate;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/myscript/atk/styluscore/Segment;->append(Lcom/myscript/atk/styluscore/Candidate;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v0}, Lcom/myscript/atk/styluscore/Segment;->append(Lcom/myscript/atk/styluscore/Candidate;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v0}, Lcom/myscript/atk/styluscore/Segment;->append(Lcom/myscript/atk/styluscore/Candidate;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/Segment;->selectedIndex()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/myscript/atk/styluscore/Segment;->select(I)Z

    return-object v1
.end method

.method public static a(Lcom/myscript/atk/styluscore/Segment;Lcom/myscript/atk/styluscore/Segment;)Lcom/myscript/atk/styluscore/Segment;
    .locals 2

    new-instance v0, Lcom/myscript/atk/styluscore/Segment;

    invoke-direct {v0, p0}, Lcom/myscript/atk/styluscore/Segment;-><init>(Lcom/myscript/atk/styluscore/Segment;)V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/myscript/atk/styluscore/Segment;->grafted(Lcom/myscript/atk/styluscore/Segment;I)Lcom/myscript/atk/styluscore/Segment;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/myscript/atk/styluscore/Segment;Ljava/lang/String;)Lcom/myscript/atk/styluscore/Segment;
    .locals 3

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/Segment;->selectedCandidate()Lcom/myscript/atk/styluscore/Candidate;

    move-result-object v0

    new-instance v1, Lcom/myscript/atk/styluscore/Candidate;

    invoke-direct {v1}, Lcom/myscript/atk/styluscore/Candidate;-><init>()V

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/Candidate;->type()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/myscript/atk/styluscore/Candidate;->setType(I)V

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/Candidate;->flags()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/myscript/atk/styluscore/Candidate;->setFlags(I)V

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/Candidate;->normalizedRecognitionScore()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/myscript/atk/styluscore/Candidate;->setNormalizedRecognitionScore(F)V

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/Candidate;->resemblanceScore()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/myscript/atk/styluscore/Candidate;->setResemblanceScore(F)V

    invoke-virtual {v1, p1}, Lcom/myscript/atk/styluscore/Candidate;->setLabel(Ljava/lang/String;)V

    new-instance v0, Lcom/myscript/atk/styluscore/Segment;

    invoke-direct {v0}, Lcom/myscript/atk/styluscore/Segment;-><init>()V

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/Segment;->baseline()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/myscript/atk/styluscore/Segment;->setBaseline(F)V

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/Segment;->baselineSkew()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/myscript/atk/styluscore/Segment;->setBaselineSkew(F)V

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/Segment;->midlineShift()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/myscript/atk/styluscore/Segment;->setMidlineShift(F)V

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/Segment;->inkRange()Lcom/myscript/atk/styluscore/InkRange;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/myscript/atk/styluscore/Segment;->append(Lcom/myscript/atk/styluscore/InkRange;)V

    invoke-virtual {v0, v1}, Lcom/myscript/atk/styluscore/Segment;->append(Lcom/myscript/atk/styluscore/Candidate;)V

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/Segment;->selectLastCandidate()Z

    return-object v0
.end method

.method public static a(Lcom/myscript/atk/styluscore/Segment;Ljava/util/Map;)Lcom/myscript/atk/styluscore/Segment;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/myscript/atk/styluscore/Segment;",
            "Ljava/util/Map",
            "<",
            "Lcom/myscript/atk/sltw/f/a;",
            "Lcom/myscript/atk/sltw/f/a;",
            ">;)",
            "Lcom/myscript/atk/styluscore/Segment;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/Segment;->items()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/InkItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/myscript/atk/styluscore/InkItem;->is(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/InkItem;->boundingRect()Lcom/myscript/atk/styluscore/Rect;

    move-result-object v0

    new-instance v4, Landroid/graphics/RectF;

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/Rect;->getLeft()F

    move-result v1

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/Rect;->getTop()F

    move-result v5

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/Rect;->getRight()F

    move-result v6

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/Rect;->getBottom()F

    move-result v0

    invoke-direct {v4, v1, v5, v6, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/myscript/atk/sltw/f/a;

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/f/a;->d()Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/myscript/atk/sltw/d/a/c;->a(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/sltw/f/a;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a;->d()Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {v0}, Lcom/myscript/atk/sltw/d/a/c;->a(Landroid/graphics/RectF;)Lcom/myscript/atk/styluscore/Rect;

    move-result-object v0

    invoke-static {v0}, Lcom/myscript/atk/styluscore/InkItem;->createGuideBox(Lcom/myscript/atk/styluscore/Rect;)Lcom/myscript/atk/styluscore/InkItem;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v2}, Lcom/myscript/atk/styluscore/Segment;->rebased(Ljava/util/List;)Lcom/myscript/atk/styluscore/Segment;

    move-result-object v0

    return-object v0
.end method

.method private static b(Lcom/myscript/atk/styluscore/Candidate;)Lcom/myscript/atk/styluscore/Candidate;
    .locals 11

    const/4 v1, 0x0

    const/4 v3, 0x0

    new-instance v7, Lcom/myscript/atk/styluscore/Candidate;

    invoke-direct {v7}, Lcom/myscript/atk/styluscore/Candidate;-><init>()V

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/Candidate;->type()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/myscript/atk/styluscore/Candidate;->setType(I)V

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/Candidate;->flags()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/myscript/atk/styluscore/Candidate;->setFlags(I)V

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/Candidate;->normalizedRecognitionScore()F

    move-result v0

    invoke-virtual {v7, v0}, Lcom/myscript/atk/styluscore/Candidate;->setNormalizedRecognitionScore(F)V

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/Candidate;->resemblanceScore()F

    move-result v0

    invoke-virtual {v7, v0}, Lcom/myscript/atk/styluscore/Candidate;->setResemblanceScore(F)V

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/Candidate;->segments()Ljava/util/List;

    move-result-object v8

    move v2, v3

    move-object v4, v1

    move-object v5, v1

    move v1, v3

    :goto_0
    add-int v0, v2, v1

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_4

    add-int v0, v2, v1

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/Segment;

    invoke-static {v0, v5}, Lcom/myscript/atk/sltw/d/a/d;->c(Lcom/myscript/atk/styluscore/Segment;Lcom/myscript/atk/styluscore/Segment;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v5}, Lcom/myscript/atk/styluscore/Segment;->selectedCandidate()Lcom/myscript/atk/styluscore/Candidate;

    move-result-object v4

    invoke-virtual {v4}, Lcom/myscript/atk/styluscore/Candidate;->label()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/Segment;->selectedCandidate()Lcom/myscript/atk/styluscore/Candidate;

    move-result-object v6

    invoke-virtual {v6}, Lcom/myscript/atk/styluscore/Candidate;->label()Ljava/lang/String;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/myscript/atk/sltw/d/a/d;->a(Lcom/myscript/atk/styluscore/Segment;Ljava/lang/String;)Lcom/myscript/atk/styluscore/Segment;

    move-result-object v6

    add-int/lit8 v4, v1, 0x1

    const/4 v1, 0x1

    move v10, v1

    move-object v1, v6

    move v6, v10

    :goto_1
    if-eqz v6, :cond_2

    add-int v0, v2, v4

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    if-ne v0, v5, :cond_0

    invoke-virtual {v7, v1}, Lcom/myscript/atk/styluscore/Candidate;->append(Lcom/myscript/atk/styluscore/Segment;)V

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    move-object v5, v0

    move-object v10, v1

    move v1, v4

    move-object v4, v10

    goto :goto_0

    :cond_2
    if-eqz v5, :cond_3

    invoke-virtual {v7, v5}, Lcom/myscript/atk/styluscore/Candidate;->append(Lcom/myscript/atk/styluscore/Segment;)V

    :cond_3
    add-int v5, v2, v4

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v5, v6, :cond_1

    invoke-virtual {v7, v0}, Lcom/myscript/atk/styluscore/Candidate;->append(Lcom/myscript/atk/styluscore/Segment;)V

    goto :goto_2

    :cond_4
    return-object v7

    :cond_5
    move v6, v3

    move v10, v1

    move-object v1, v4

    move v4, v10

    goto :goto_1
.end method

.method private static b(Lcom/myscript/atk/styluscore/Segment;Lcom/myscript/atk/styluscore/Segment;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/myscript/atk/styluscore/Segment;->selectedCandidate()Lcom/myscript/atk/styluscore/Candidate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/myscript/atk/styluscore/Candidate;->label()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/Segment;->selectedCandidate()Lcom/myscript/atk/styluscore/Candidate;

    move-result-object v2

    invoke-virtual {v2}, Lcom/myscript/atk/styluscore/Candidate;->label()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/myscript/atk/sltw/g/a;->b(C)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0xe33

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static c(Lcom/myscript/atk/styluscore/Segment;Lcom/myscript/atk/styluscore/Segment;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p1}, Lcom/myscript/atk/styluscore/Segment;->selectedCandidate()Lcom/myscript/atk/styluscore/Candidate;

    move-result-object v2

    invoke-virtual {v2}, Lcom/myscript/atk/styluscore/Candidate;->label()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/Segment;->selectedCandidate()Lcom/myscript/atk/styluscore/Candidate;

    move-result-object v3

    invoke-virtual {v3}, Lcom/myscript/atk/styluscore/Candidate;->label()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/myscript/atk/sltw/g/a;->d(C)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/myscript/atk/sltw/g/a;->c(C)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v0, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

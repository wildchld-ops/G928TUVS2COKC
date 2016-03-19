.class public final Lcom/myscript/atk/sltw/d/a/a;
.super Ljava/lang/Object;
.source "InkFieldFactory.java"


# direct methods
.method public static a(FLjava/util/List;)Lcom/myscript/atk/styluscore/InkField;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/sltw/f/a;",
            ">;)",
            "Lcom/myscript/atk/styluscore/InkField;"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

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

    check-cast v0, Lcom/myscript/atk/sltw/f/a;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a;->c()Lcom/myscript/atk/styluscore/InkItem;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/myscript/atk/styluscore/InkField;->fromItemList(Ljava/util/List;)Lcom/myscript/atk/styluscore/InkField;

    move-result-object v1

    const/16 v0, 0x11

    :goto_1
    invoke-virtual {v1}, Lcom/myscript/atk/styluscore/InkField;->inkLayout()Lcom/myscript/atk/styluscore/InkLayout;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/myscript/atk/styluscore/InkLayout;->setGuidelines(F)V

    invoke-virtual {v2, v0}, Lcom/myscript/atk/styluscore/InkLayout;->setModifiers(I)V

    invoke-virtual {v1, v2}, Lcom/myscript/atk/styluscore/InkField;->setInkLayout(Lcom/myscript/atk/styluscore/InkLayout;)V

    return-object v1

    :cond_1
    new-instance v1, Lcom/myscript/atk/styluscore/InkField;

    invoke-direct {v1}, Lcom/myscript/atk/styluscore/InkField;-><init>()V

    const/16 v0, 0x10

    goto :goto_1
.end method

.method public static a(Lcom/myscript/atk/sltw/f/a/b;FFZ)Lcom/myscript/atk/styluscore/InkField;
    .locals 16

    invoke-virtual/range {p0 .. p0}, Lcom/myscript/atk/sltw/f/a/b;->j()I

    move-result v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v6, Lcom/myscript/atk/styluscore/InkRange;

    invoke-direct {v6}, Lcom/myscript/atk/styluscore/InkRange;-><init>()V

    new-instance v7, Lcom/myscript/atk/styluscore/InkRange;

    invoke-direct {v7}, Lcom/myscript/atk/styluscore/InkRange;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v4, :cond_6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/myscript/atk/sltw/f/a/b;->c(I)Lcom/myscript/atk/sltw/f/d;

    move-result-object v10

    const/4 v1, 0x0

    invoke-virtual {v10}, Lcom/myscript/atk/sltw/f/d;->e()Lcom/myscript/atk/styluscore/Segment;

    move-result-object v11

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v11}, Lcom/myscript/atk/styluscore/Segment;->items()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move v2, v1

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/myscript/atk/styluscore/InkItem;

    const/4 v14, 0x2

    invoke-virtual {v1, v14}, Lcom/myscript/atk/styluscore/InkItem;->is(I)Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-virtual {v1}, Lcom/myscript/atk/styluscore/InkItem;->boundingRect()Lcom/myscript/atk/styluscore/Rect;

    move-result-object v14

    invoke-virtual {v14}, Lcom/myscript/atk/styluscore/Rect;->getWidth()F

    move-result v14

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-nez v14, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/myscript/atk/sltw/f/a/b;->d()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_0

    const/4 v1, 0x1

    move v2, v1

    goto :goto_1

    :cond_0
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    if-nez v2, :cond_5

    invoke-static {v11}, Lcom/myscript/atk/styluscore/InkField;->fromSegment(Lcom/myscript/atk/styluscore/Segment;)Lcom/myscript/atk/styluscore/InkField;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-virtual {v10}, Lcom/myscript/atk/sltw/f/d;->a()[Lcom/myscript/atk/sltw/f/a;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    invoke-virtual {v10}, Lcom/myscript/atk/sltw/f/d;->w()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v10}, Lcom/myscript/atk/sltw/f/d;->e()Lcom/myscript/atk/styluscore/Segment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/myscript/atk/styluscore/Segment;->inkRange()Lcom/myscript/atk/styluscore/InkRange;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/myscript/atk/styluscore/InkRange;->append(Lcom/myscript/atk/styluscore/InkRange;)Lcom/myscript/atk/styluscore/InkRange;

    :cond_3
    invoke-virtual {v10}, Lcom/myscript/atk/sltw/f/d;->x()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v10}, Lcom/myscript/atk/sltw/f/d;->e()Lcom/myscript/atk/styluscore/Segment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/myscript/atk/styluscore/Segment;->inkRange()Lcom/myscript/atk/styluscore/InkRange;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/myscript/atk/styluscore/InkRange;->append(Lcom/myscript/atk/styluscore/InkRange;)Lcom/myscript/atk/styluscore/InkRange;

    :cond_4
    invoke-virtual {v10}, Lcom/myscript/atk/sltw/f/d;->m()[Lcom/myscript/atk/sltw/f/c;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_0

    :cond_5
    const-string v1, " "

    invoke-static {v12, v1}, Lcom/myscript/atk/styluscore/InkField;->fromItemList(Ljava/util/List;Ljava/lang/String;)Lcom/myscript/atk/styluscore/InkField;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    const/16 v1, 0x10

    invoke-virtual/range {p0 .. p0}, Lcom/myscript/atk/sltw/f/a/b;->d()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_7
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/myscript/atk/sltw/f/a;

    const/4 v3, 0x0

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/myscript/atk/sltw/f/a;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/f/a;->d()Landroid/graphics/RectF;

    move-result-object v11

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/f/a;->d()Landroid/graphics/RectF;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/myscript/atk/sltw/d/a/c;->a(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v11

    if-eqz v11, :cond_8

    :goto_4
    if-eqz v1, :cond_7

    invoke-interface {v4, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    move/from16 v0, p1

    invoke-static {v0, v4}, Lcom/myscript/atk/sltw/d/a/a;->a(FLjava/util/List;)Lcom/myscript/atk/styluscore/InkField;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/myscript/atk/styluscore/InkField;->topLevelSegment()Lcom/myscript/atk/styluscore/Segment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/myscript/atk/styluscore/Segment;->inkRange()Lcom/myscript/atk/styluscore/InkRange;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/myscript/atk/styluscore/InkRange;->append(Lcom/myscript/atk/styluscore/InkRange;)Lcom/myscript/atk/styluscore/InkRange;

    const/16 v1, 0x11

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/myscript/atk/sltw/f/a/b;->i()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v3, :cond_c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/myscript/atk/sltw/f/a/b;->b(I)Lcom/myscript/atk/sltw/f/c;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    invoke-virtual {v9}, Lcom/myscript/atk/sltw/f/c;->a()Lcom/myscript/atk/styluscore/InkItem;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_c
    const/4 v2, 0x0

    invoke-static {v5, v2}, Lcom/myscript/atk/styluscore/InkField;->grafted(Ljava/util/List;I)Lcom/myscript/atk/styluscore/InkField;

    move-result-object v2

    invoke-virtual {v2}, Lcom/myscript/atk/styluscore/InkField;->inkLayout()Lcom/myscript/atk/styluscore/InkLayout;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/myscript/atk/styluscore/InkLayout;->setMidlineShift(F)V

    if-eqz p3, :cond_d

    or-int/lit8 v1, v1, 0x40

    :cond_d
    invoke-virtual {v3, v1}, Lcom/myscript/atk/styluscore/InkLayout;->setModifiers(I)V

    new-instance v1, Lcom/myscript/atk/styluscore/InkTag;

    const/4 v5, 0x1

    invoke-direct {v1, v5, v6}, Lcom/myscript/atk/styluscore/InkTag;-><init>(ILcom/myscript/atk/styluscore/InkRange;)V

    invoke-virtual {v2, v1}, Lcom/myscript/atk/styluscore/InkField;->setTag(Lcom/myscript/atk/styluscore/InkTag;)V

    new-instance v1, Lcom/myscript/atk/styluscore/InkTag;

    const/4 v5, 0x4

    invoke-direct {v1, v5, v7}, Lcom/myscript/atk/styluscore/InkTag;-><init>(ILcom/myscript/atk/styluscore/InkRange;)V

    invoke-virtual {v2, v1}, Lcom/myscript/atk/styluscore/InkField;->setTag(Lcom/myscript/atk/styluscore/InkTag;)V

    invoke-virtual {v2, v3}, Lcom/myscript/atk/styluscore/InkField;->setInkLayout(Lcom/myscript/atk/styluscore/InkLayout;)V

    invoke-virtual {v2, v4}, Lcom/myscript/atk/styluscore/InkField;->setPendingStrokes(Ljava/util/List;)V

    const/high16 v1, 0x20000

    invoke-virtual {v2, v1}, Lcom/myscript/atk/styluscore/InkField;->formatted(I)Lcom/myscript/atk/styluscore/InkField;

    move-result-object v1

    return-object v1

    :cond_e
    move-object v1, v3

    goto :goto_4
.end method

.method public static a(Lcom/myscript/atk/styluscore/InkField;FLjava/util/List;)Lcom/myscript/atk/styluscore/InkField;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/myscript/atk/styluscore/InkField;",
            "F",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/sltw/f/a;",
            ">;)",
            "Lcom/myscript/atk/styluscore/InkField;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/InkField;->topLevelSegment()Lcom/myscript/atk/styluscore/Segment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/Segment;->inkRange()Lcom/myscript/atk/styluscore/InkRange;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/myscript/atk/styluscore/InkRange;->has(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-static {p1, p2}, Lcom/myscript/atk/sltw/d/a/a;->a(FLjava/util/List;)Lcom/myscript/atk/styluscore/InkField;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/myscript/atk/styluscore/InkField;->grafted(Ljava/util/List;I)Lcom/myscript/atk/styluscore/InkField;

    move-result-object p0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;FF[Landroid/graphics/RectF;Ljava/util/List;)Lcom/myscript/atk/styluscore/InkField;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "FF[",
            "Landroid/graphics/RectF;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/myscript/atk/styluscore/InkField;"
        }
    .end annotation

    const/4 v4, 0x0

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p4

    if-ge v1, v2, :cond_0

    aget-object v2, p4, v1

    invoke-static {v2}, Lcom/myscript/atk/sltw/d/a/c;->a(Landroid/graphics/RectF;)Lcom/myscript/atk/styluscore/Rect;

    move-result-object v2

    invoke-static {v2}, Lcom/myscript/atk/styluscore/InkItem;->createCharBox(Lcom/myscript/atk/styluscore/Rect;)Lcom/myscript/atk/styluscore/InkItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-nez p5, :cond_1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/InkField;->fromItemList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;FFF)Lcom/myscript/atk/styluscore/InkField;

    move-result-object v0

    :goto_1
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/myscript/atk/styluscore/InkField;->formatted(I)Lcom/myscript/atk/styluscore/InkField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/InkField;->inkLayout()Lcom/myscript/atk/styluscore/InkLayout;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/myscript/atk/styluscore/InkLayout;->setGuidelines(F)V

    invoke-virtual {v1, p3}, Lcom/myscript/atk/styluscore/InkLayout;->setMidlineShift(F)V

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/myscript/atk/styluscore/InkLayout;->setModifiers(I)V

    invoke-virtual {v0, v1}, Lcom/myscript/atk/styluscore/InkField;->setInkLayout(Lcom/myscript/atk/styluscore/InkLayout;)V

    return-object v0

    :cond_1
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v5, p3

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/myscript/atk/styluscore/InkField;->fromItemList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;FFFLjava/util/List;)Lcom/myscript/atk/styluscore/InkField;

    move-result-object v0

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;FF[Landroid/graphics/RectF;Ljava/util/List;Ljava/util/List;)Lcom/myscript/atk/styluscore/InkField;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "FF[",
            "Landroid/graphics/RectF;",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/sltw/f/a;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/myscript/atk/styluscore/InkField;"
        }
    .end annotation

    const/4 v1, 0x0

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v4, 0x0

    if-eqz p5, :cond_4

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    array-length v0, p4

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v2

    add-int v7, v0, v2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    move v6, v1

    :goto_0
    add-int v2, v6, v1

    if-ge v2, v7, :cond_2

    move v2, v1

    :goto_1
    array-length v1, p4

    if-ge v2, v1, :cond_0

    aget-object v1, p4, v2

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpl-float v1, v1, v4

    if-nez v1, :cond_0

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_0
    array-length v1, p4

    if-ge v2, v1, :cond_6

    aget-object v1, p4, v2

    iget v1, v1, Landroid/graphics/RectF;->left:F

    move v3, v1

    :goto_2
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v1

    if-ge v6, v1, :cond_5

    invoke-interface {p5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/myscript/atk/sltw/f/a;

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/f/a;->c()Lcom/myscript/atk/styluscore/InkItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/myscript/atk/styluscore/InkItem;->boundingRect()Lcom/myscript/atk/styluscore/Rect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/myscript/atk/styluscore/Rect;->getLeft()F

    move-result v1

    :goto_3
    cmpg-float v1, v3, v1

    if-gtz v1, :cond_1

    aget-object v1, p4, v2

    invoke-static {v1}, Lcom/myscript/atk/sltw/d/a/c;->a(Landroid/graphics/RectF;)Lcom/myscript/atk/styluscore/Rect;

    move-result-object v1

    invoke-static {v1}, Lcom/myscript/atk/styluscore/InkItem;->createCharBox(Lcom/myscript/atk/styluscore/Rect;)Lcom/myscript/atk/styluscore/InkItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/myscript/atk/sltw/f/a;

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/f/a;->c()Lcom/myscript/atk/styluscore/InkItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v6, 0x1

    move v6, v1

    move v1, v2

    goto :goto_0

    :cond_2
    if-nez p6, :cond_3

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/InkField;->fromItemList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;FFF)Lcom/myscript/atk/styluscore/InkField;

    move-result-object v0

    :goto_4
    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/InkField;->inkLayout()Lcom/myscript/atk/styluscore/InkLayout;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/myscript/atk/styluscore/InkLayout;->setGuidelines(F)V

    invoke-virtual {v1, p3}, Lcom/myscript/atk/styluscore/InkLayout;->setMidlineShift(F)V

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lcom/myscript/atk/styluscore/InkLayout;->setModifiers(I)V

    invoke-virtual {v0, v1}, Lcom/myscript/atk/styluscore/InkField;->setInkLayout(Lcom/myscript/atk/styluscore/InkLayout;)V

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/InkField;->topLevelSegment()Lcom/myscript/atk/styluscore/Segment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/myscript/atk/styluscore/Segment;->inkRange()Lcom/myscript/atk/styluscore/InkRange;

    move-result-object v1

    new-instance v2, Lcom/myscript/atk/styluscore/InkTag;

    const/4 v3, 0x4

    invoke-direct {v2, v3, v1}, Lcom/myscript/atk/styluscore/InkTag;-><init>(ILcom/myscript/atk/styluscore/InkRange;)V

    invoke-virtual {v0, v2}, Lcom/myscript/atk/styluscore/InkField;->setTag(Lcom/myscript/atk/styluscore/InkTag;)V

    :goto_5
    return-object v0

    :cond_3
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v5, p3

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lcom/myscript/atk/styluscore/InkField;->fromItemList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;FFFLjava/util/List;)Lcom/myscript/atk/styluscore/InkField;

    move-result-object v0

    goto :goto_4

    :cond_4
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/sltw/d/a/a;->a(Ljava/lang/String;Ljava/lang/String;FF[Landroid/graphics/RectF;Ljava/util/List;)Lcom/myscript/atk/styluscore/InkField;

    move-result-object v0

    goto :goto_5

    :cond_5
    move v1, v5

    goto :goto_3

    :cond_6
    move v3, v5

    goto/16 :goto_2
.end method

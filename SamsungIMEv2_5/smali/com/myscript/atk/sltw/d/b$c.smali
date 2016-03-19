.class final Lcom/myscript/atk/sltw/d/b$c;
.super Lcom/myscript/atk/styluscore/InputMethodListener;
.source "RecognizerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/myscript/atk/sltw/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/myscript/atk/sltw/d/b;

.field private b:I

.field private c:F

.field private d:F

.field private final e:Z


# direct methods
.method public constructor <init>(Lcom/myscript/atk/sltw/d/b;Z)V
    .locals 0

    iput-object p1, p0, Lcom/myscript/atk/sltw/d/b$c;->a:Lcom/myscript/atk/sltw/d/b;

    invoke-direct {p0}, Lcom/myscript/atk/styluscore/InputMethodListener;-><init>()V

    iput-boolean p2, p0, Lcom/myscript/atk/sltw/d/b$c;->e:Z

    return-void
.end method


# virtual methods
.method public final eraseGesture(Lcom/myscript/atk/styluscore/InputMethod;Lcom/myscript/atk/styluscore/InkRange;)V
    .locals 12

    const/4 v4, 0x1

    const/4 v11, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/myscript/atk/styluscore/InputMethod;->field()Lcom/myscript/atk/styluscore/InkField;

    move-result-object v5

    iget-object v0, p0, Lcom/myscript/atk/sltw/d/b$c;->a:Lcom/myscript/atk/sltw/d/b;

    invoke-static {v0}, Lcom/myscript/atk/sltw/d/b;->c(Lcom/myscript/atk/sltw/d/b;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v5, p2}, Lcom/myscript/atk/styluscore/InkField;->cutAround(Lcom/myscript/atk/styluscore/InkRange;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v6, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/InkField;

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/InkField;->getGuideBoxes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/myscript/atk/styluscore/InkField;

    invoke-virtual {v1}, Lcom/myscript/atk/styluscore/InkField;->getGuideBoxes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v5}, Lcom/myscript/atk/styluscore/InkField;->getGuideBoxes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/myscript/atk/styluscore/InkItem;

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/InkField;->getGuideBoxes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/myscript/atk/styluscore/InkItem;

    invoke-virtual {v1}, Lcom/myscript/atk/styluscore/InkItem;->boundingRect()Lcom/myscript/atk/styluscore/Rect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/myscript/atk/styluscore/Rect;->getX()F

    move-result v1

    invoke-virtual {v2}, Lcom/myscript/atk/styluscore/InkItem;->boundingRect()Lcom/myscript/atk/styluscore/Rect;

    move-result-object v2

    invoke-virtual {v2}, Lcom/myscript/atk/styluscore/Rect;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/InkField;->transform()Lcom/myscript/atk/styluscore/Transform;

    move-result-object v2

    invoke-virtual {v2, v1, v11}, Lcom/myscript/atk/styluscore/Transform;->translate(FF)Lcom/myscript/atk/styluscore/Transform;

    invoke-virtual {v0, v2}, Lcom/myscript/atk/styluscore/InkField;->mapped(Lcom/myscript/atk/styluscore/Transform;)Lcom/myscript/atk/styluscore/InkField;

    move-result-object v0

    :cond_0
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/InkField;

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/InkField;->getGuideBoxes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_1
    invoke-virtual {v5}, Lcom/myscript/atk/styluscore/InkField;->getGuideBoxes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_2

    new-instance v2, Lcom/myscript/atk/styluscore/Rect;

    invoke-direct {v2}, Lcom/myscript/atk/styluscore/Rect;-><init>()V

    invoke-static {v2}, Lcom/myscript/atk/styluscore/InkItem;->createGuideBox(Lcom/myscript/atk/styluscore/Rect;)Lcom/myscript/atk/styluscore/InkItem;

    move-result-object v2

    invoke-static {v2}, Lcom/myscript/atk/styluscore/InkField;->fromItem(Lcom/myscript/atk/styluscore/InkItem;)Lcom/myscript/atk/styluscore/InkField;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v2, v3

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/myscript/atk/styluscore/InkField;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Lcom/myscript/atk/styluscore/InkField;->items()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/InkItem;

    const/4 v10, 0x2

    invoke-virtual {v0, v10}, Lcom/myscript/atk/styluscore/InkItem;->is(I)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/InkItem;->boundingRect()Lcom/myscript/atk/styluscore/Rect;

    move-result-object v10

    invoke-virtual {v10}, Lcom/myscript/atk/styluscore/Rect;->getWidth()F

    move-result v10

    cmpl-float v10, v10, v11

    if-nez v10, :cond_3

    move v2, v4

    goto :goto_3

    :cond_3
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    if-eqz v2, :cond_5

    const-string v0, " "

    invoke-static {v3, v0}, Lcom/myscript/atk/styluscore/InkField;->fromItemList(Ljava/util/List;Ljava/lang/String;)Lcom/myscript/atk/styluscore/InkField;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    invoke-virtual {v5}, Lcom/myscript/atk/styluscore/InkField;->getGuideBoxes()Ljava/util/List;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/myscript/atk/styluscore/InkField;->fromParts(Ljava/util/List;Ljava/util/List;)Lcom/myscript/atk/styluscore/InkField;

    move-result-object v0

    :goto_4
    invoke-virtual {p1, v0}, Lcom/myscript/atk/styluscore/InputMethod;->setField(Lcom/myscript/atk/styluscore/InkField;)V

    const/4 v0, 0x5

    iput v0, p0, Lcom/myscript/atk/sltw/d/b$c;->b:I

    return-void

    :cond_7
    invoke-virtual {p1, v5, p2, v3}, Lcom/myscript/atk/styluscore/InputMethod;->defaultEraseGesture(Lcom/myscript/atk/styluscore/InkField;Lcom/myscript/atk/styluscore/InkRange;Z)Lcom/myscript/atk/styluscore/InkField;

    move-result-object v0

    goto :goto_4
.end method

.method public final flowSync(Lcom/myscript/atk/styluscore/InputMethod;I)V
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/d/b$c;->a:Lcom/myscript/atk/sltw/d/b;

    invoke-static {v0}, Lcom/myscript/atk/sltw/d/b;->d(Lcom/myscript/atk/sltw/d/b;)Lcom/myscript/atk/sltw/d/b$f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/d/b$c;->a:Lcom/myscript/atk/sltw/d/b;

    invoke-static {v0}, Lcom/myscript/atk/sltw/d/b;->d(Lcom/myscript/atk/sltw/d/b;)Lcom/myscript/atk/sltw/d/b$f;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/myscript/atk/sltw/d/b$f;->a(I)V

    :cond_0
    return-void
.end method

.method public final insertGesture(Lcom/myscript/atk/styluscore/InputMethod;Lcom/myscript/atk/styluscore/InkLocation;)V
    .locals 2

    invoke-virtual {p1}, Lcom/myscript/atk/styluscore/InputMethod;->gestureStrokes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/InkItem;

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/InkItem;->barycenter()Lcom/myscript/atk/styluscore/Point;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/Point;->x()F

    move-result v1

    iput v1, p0, Lcom/myscript/atk/sltw/d/b$c;->c:F

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/Point;->y()F

    move-result v0

    iput v0, p0, Lcom/myscript/atk/sltw/d/b$c;->d:F

    const/4 v0, 0x2

    iput v0, p0, Lcom/myscript/atk/sltw/d/b$c;->b:I

    return-void
.end method

.method public final joinGesture(Lcom/myscript/atk/styluscore/InputMethod;Lcom/myscript/atk/styluscore/InkLocation;)V
    .locals 2

    invoke-virtual {p1}, Lcom/myscript/atk/styluscore/InputMethod;->gestureType()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/myscript/atk/styluscore/InputMethod;->gestureStrokes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/InkItem;

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/InkItem;->barycenter()Lcom/myscript/atk/styluscore/Point;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/Point;->x()F

    move-result v1

    iput v1, p0, Lcom/myscript/atk/sltw/d/b$c;->c:F

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/Point;->y()F

    move-result v0

    iput v0, p0, Lcom/myscript/atk/sltw/d/b$c;->d:F

    const/4 v0, 0x3

    iput v0, p0, Lcom/myscript/atk/sltw/d/b$c;->b:I

    :cond_0
    return-void
.end method

.method public final overwriteGesture(Lcom/myscript/atk/styluscore/InputMethod;Lcom/myscript/atk/styluscore/InkRange;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/myscript/atk/styluscore/InputMethodListener;->overwriteGesture(Lcom/myscript/atk/styluscore/InputMethod;Lcom/myscript/atk/styluscore/InkRange;)V

    const/4 v0, 0x6

    iput v0, p0, Lcom/myscript/atk/sltw/d/b$c;->b:I

    return-void
.end method

.method public final returnGesture(Lcom/myscript/atk/styluscore/InputMethod;Lcom/myscript/atk/styluscore/InkLocation;)V
    .locals 2

    iget-object v0, p0, Lcom/myscript/atk/sltw/d/b$c;->a:Lcom/myscript/atk/sltw/d/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/d/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/myscript/atk/styluscore/InputMethod;->field()Lcom/myscript/atk/styluscore/InkField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/InkField;->pendingStrokes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/myscript/atk/styluscore/InputMethod;->gestureStrokes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/InkItem;

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/InkItem;->barycenter()Lcom/myscript/atk/styluscore/Point;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/Point;->x()F

    move-result v1

    iput v1, p0, Lcom/myscript/atk/sltw/d/b$c;->c:F

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/Point;->y()F

    move-result v0

    iput v0, p0, Lcom/myscript/atk/sltw/d/b$c;->d:F

    const/4 v0, 0x4

    iput v0, p0, Lcom/myscript/atk/sltw/d/b$c;->b:I

    goto :goto_0
.end method

.method public final selectionGesture(Lcom/myscript/atk/styluscore/InputMethod;Lcom/myscript/atk/styluscore/InkRange;)V
    .locals 2

    invoke-virtual {p1}, Lcom/myscript/atk/styluscore/InputMethod;->gestureStrokes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/InkItem;

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/InkItem;->barycenter()Lcom/myscript/atk/styluscore/Point;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/Point;->x()F

    move-result v1

    iput v1, p0, Lcom/myscript/atk/sltw/d/b$c;->c:F

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/Point;->y()F

    move-result v0

    iput v0, p0, Lcom/myscript/atk/sltw/d/b$c;->d:F

    const/4 v0, 0x7

    iput v0, p0, Lcom/myscript/atk/sltw/d/b$c;->b:I

    return-void
.end method

.method public final singleTapGesture(Lcom/myscript/atk/styluscore/InputMethod;Lcom/myscript/atk/styluscore/InkLocation;)V
    .locals 2

    invoke-virtual {p1}, Lcom/myscript/atk/styluscore/InputMethod;->gestureStrokes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/InkItem;

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/InkItem;->barycenter()Lcom/myscript/atk/styluscore/Point;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/Point;->x()F

    move-result v1

    iput v1, p0, Lcom/myscript/atk/sltw/d/b$c;->c:F

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/Point;->y()F

    move-result v0

    iput v0, p0, Lcom/myscript/atk/sltw/d/b$c;->d:F

    const/4 v0, 0x1

    iput v0, p0, Lcom/myscript/atk/sltw/d/b$c;->b:I

    return-void
.end method

.method public final underlineGesture(Lcom/myscript/atk/styluscore/InputMethod;Lcom/myscript/atk/styluscore/InkRange;)V
    .locals 2

    iget-object v0, p0, Lcom/myscript/atk/sltw/d/b$c;->a:Lcom/myscript/atk/sltw/d/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/d/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/myscript/atk/styluscore/InputMethod;->field()Lcom/myscript/atk/styluscore/InkField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/InkField;->pendingStrokes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/myscript/atk/styluscore/InputMethod;->gestureStrokes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/InkItem;

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/InkItem;->barycenter()Lcom/myscript/atk/styluscore/Point;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/Point;->x()F

    move-result v1

    iput v1, p0, Lcom/myscript/atk/sltw/d/b$c;->c:F

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/Point;->y()F

    move-result v0

    iput v0, p0, Lcom/myscript/atk/sltw/d/b$c;->d:F

    const/16 v0, 0x8

    iput v0, p0, Lcom/myscript/atk/sltw/d/b$c;->b:I

    goto :goto_0
.end method

.method public final update(Lcom/myscript/atk/styluscore/InputMethod;)V
    .locals 3

    invoke-virtual {p1}, Lcom/myscript/atk/styluscore/InputMethod;->field()Lcom/myscript/atk/styluscore/InkField;

    move-result-object v0

    iget-boolean v1, p0, Lcom/myscript/atk/sltw/d/b$c;->e:Z

    iget-object v2, p0, Lcom/myscript/atk/sltw/d/b$c;->a:Lcom/myscript/atk/sltw/d/b;

    invoke-static {v2}, Lcom/myscript/atk/sltw/d/b;->c(Lcom/myscript/atk/sltw/d/b;)Z

    move-result v2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/myscript/atk/sltw/d/b$c;->a:Lcom/myscript/atk/sltw/d/b;

    invoke-static {v1}, Lcom/myscript/atk/sltw/d/b;->d(Lcom/myscript/atk/sltw/d/b;)Lcom/myscript/atk/sltw/d/b$f;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/myscript/atk/sltw/d/b$c;->a:Lcom/myscript/atk/sltw/d/b;

    invoke-static {v1}, Lcom/myscript/atk/sltw/d/b;->d(Lcom/myscript/atk/sltw/d/b;)Lcom/myscript/atk/sltw/d/b$f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/myscript/atk/sltw/d/b$f;->a(Lcom/myscript/atk/styluscore/InkField;)V

    :cond_0
    iget-object v0, p0, Lcom/myscript/atk/sltw/d/b$c;->a:Lcom/myscript/atk/sltw/d/b;

    invoke-static {v0}, Lcom/myscript/atk/sltw/d/b;->e(Lcom/myscript/atk/sltw/d/b;)Lcom/myscript/atk/sltw/d/b$e;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/myscript/atk/sltw/d/b$c;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/myscript/atk/sltw/d/b$c;->a:Lcom/myscript/atk/sltw/d/b;

    invoke-static {v0}, Lcom/myscript/atk/sltw/d/b;->e(Lcom/myscript/atk/sltw/d/b;)Lcom/myscript/atk/sltw/d/b$e;

    move-result-object v0

    iget v1, p0, Lcom/myscript/atk/sltw/d/b$c;->c:F

    iget v2, p0, Lcom/myscript/atk/sltw/d/b$c;->d:F

    invoke-interface {v0, v1}, Lcom/myscript/atk/sltw/d/b$e;->a(F)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/myscript/atk/sltw/d/b$c;->b:I

    :cond_2
    return-void

    :cond_3
    iget v0, p0, Lcom/myscript/atk/sltw/d/b$c;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/myscript/atk/sltw/d/b$c;->a:Lcom/myscript/atk/sltw/d/b;

    invoke-static {v0}, Lcom/myscript/atk/sltw/d/b;->e(Lcom/myscript/atk/sltw/d/b;)Lcom/myscript/atk/sltw/d/b$e;

    move-result-object v0

    iget v1, p0, Lcom/myscript/atk/sltw/d/b$c;->c:F

    iget v2, p0, Lcom/myscript/atk/sltw/d/b$c;->d:F

    invoke-interface {v0, v1}, Lcom/myscript/atk/sltw/d/b$e;->b(F)V

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/myscript/atk/sltw/d/b$c;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/myscript/atk/sltw/d/b$c;->a:Lcom/myscript/atk/sltw/d/b;

    invoke-static {v0}, Lcom/myscript/atk/sltw/d/b;->e(Lcom/myscript/atk/sltw/d/b;)Lcom/myscript/atk/sltw/d/b$e;

    move-result-object v0

    iget v1, p0, Lcom/myscript/atk/sltw/d/b$c;->c:F

    iget v2, p0, Lcom/myscript/atk/sltw/d/b$c;->d:F

    invoke-interface {v0, v1}, Lcom/myscript/atk/sltw/d/b$e;->c(F)V

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/myscript/atk/sltw/d/b$c;->b:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/myscript/atk/sltw/d/b$c;->a:Lcom/myscript/atk/sltw/d/b;

    invoke-static {v0}, Lcom/myscript/atk/sltw/d/b;->e(Lcom/myscript/atk/sltw/d/b;)Lcom/myscript/atk/sltw/d/b$e;

    move-result-object v0

    iget v1, p0, Lcom/myscript/atk/sltw/d/b$c;->c:F

    iget v2, p0, Lcom/myscript/atk/sltw/d/b$c;->d:F

    invoke-interface {v0, v1}, Lcom/myscript/atk/sltw/d/b$e;->d(F)V

    goto :goto_0

    :cond_6
    iget v0, p0, Lcom/myscript/atk/sltw/d/b$c;->b:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/myscript/atk/sltw/d/b$c;->a:Lcom/myscript/atk/sltw/d/b;

    invoke-static {v0}, Lcom/myscript/atk/sltw/d/b;->e(Lcom/myscript/atk/sltw/d/b;)Lcom/myscript/atk/sltw/d/b$e;

    move-result-object v0

    invoke-interface {v0}, Lcom/myscript/atk/sltw/d/b$e;->d()V

    goto :goto_0

    :cond_7
    iget v0, p0, Lcom/myscript/atk/sltw/d/b$c;->b:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/myscript/atk/sltw/d/b$c;->a:Lcom/myscript/atk/sltw/d/b;

    invoke-static {v0}, Lcom/myscript/atk/sltw/d/b;->e(Lcom/myscript/atk/sltw/d/b;)Lcom/myscript/atk/sltw/d/b$e;

    move-result-object v0

    invoke-interface {v0}, Lcom/myscript/atk/sltw/d/b$e;->e()V

    goto :goto_0

    :cond_8
    iget v0, p0, Lcom/myscript/atk/sltw/d/b$c;->b:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/myscript/atk/sltw/d/b$c;->a:Lcom/myscript/atk/sltw/d/b;

    invoke-static {v0}, Lcom/myscript/atk/sltw/d/b;->e(Lcom/myscript/atk/sltw/d/b;)Lcom/myscript/atk/sltw/d/b$e;

    move-result-object v0

    iget v1, p0, Lcom/myscript/atk/sltw/d/b$c;->c:F

    iget v2, p0, Lcom/myscript/atk/sltw/d/b$c;->d:F

    invoke-interface {v0, v1}, Lcom/myscript/atk/sltw/d/b$e;->e(F)V

    goto :goto_0

    :cond_9
    iget v0, p0, Lcom/myscript/atk/sltw/d/b$c;->b:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/myscript/atk/sltw/d/b$c;->a:Lcom/myscript/atk/sltw/d/b;

    invoke-static {v0}, Lcom/myscript/atk/sltw/d/b;->e(Lcom/myscript/atk/sltw/d/b;)Lcom/myscript/atk/sltw/d/b$e;

    move-result-object v0

    iget v1, p0, Lcom/myscript/atk/sltw/d/b$c;->c:F

    iget v2, p0, Lcom/myscript/atk/sltw/d/b$c;->d:F

    invoke-interface {v0, v1}, Lcom/myscript/atk/sltw/d/b$e;->f(F)V

    goto/16 :goto_0
.end method

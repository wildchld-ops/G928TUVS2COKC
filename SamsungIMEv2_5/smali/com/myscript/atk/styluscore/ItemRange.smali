.class public Lcom/myscript/atk/styluscore/ItemRange;
.super Ljava/lang/Object;
.source "ItemRange.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_ItemRange__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/ItemRange;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/myscript/atk/styluscore/ItemRange;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/myscript/atk/styluscore/ItemRange;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/myscript/atk/styluscore/InkItem;)V
    .locals 3

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InkItem;->getCPtr(Lcom/myscript/atk/styluscore/InkItem;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_ItemRange__SWIG_2(JLcom/myscript/atk/styluscore/InkItem;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/ItemRange;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(Lcom/myscript/atk/styluscore/InkItem;Lcom/myscript/atk/styluscore/IntegerRange;)V
    .locals 6

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InkItem;->getCPtr(Lcom/myscript/atk/styluscore/InkItem;)J

    move-result-wide v0

    invoke-static {p2}, Lcom/myscript/atk/styluscore/IntegerRange;->getCPtr(Lcom/myscript/atk/styluscore/IntegerRange;)J

    move-result-wide v3

    move-object v2, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_ItemRange__SWIG_3(JLcom/myscript/atk/styluscore/InkItem;JLcom/myscript/atk/styluscore/IntegerRange;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/ItemRange;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(Lcom/myscript/atk/styluscore/InkItem;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/myscript/atk/styluscore/InkItem;",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/IntegerRange;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/myscript/atk/styluscore/ItemRange;->SwigConstructItemRange(Lcom/myscript/atk/styluscore/InkItem;Ljava/util/List;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/ItemRange;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(Lcom/myscript/atk/styluscore/ItemRange;)V
    .locals 3

    invoke-static {p1}, Lcom/myscript/atk/styluscore/ItemRange;->getCPtr(Lcom/myscript/atk/styluscore/ItemRange;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_ItemRange__SWIG_1(JLcom/myscript/atk/styluscore/ItemRange;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/ItemRange;-><init>(JZ)V

    return-void
.end method

.method private static SwigConstructItemRange(Lcom/myscript/atk/styluscore/InkItem;Ljava/util/List;)J
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/myscript/atk/styluscore/InkItem;",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/IntegerRange;",
            ">;)J"
        }
    .end annotation

    new-instance v5, Lcom/myscript/atk/styluscore/ListIntegerRange;

    invoke-direct {v5, p1}, Lcom/myscript/atk/styluscore/ListIntegerRange;-><init>(Ljava/lang/Iterable;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_0

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/IntegerRange;

    invoke-virtual {v5, v0}, Lcom/myscript/atk/styluscore/ListIntegerRange;->native_add(Lcom/myscript/atk/styluscore/IntegerRange;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/myscript/atk/styluscore/InkItem;->getCPtr(Lcom/myscript/atk/styluscore/InkItem;)J

    move-result-wide v0

    invoke-static {v5}, Lcom/myscript/atk/styluscore/ListIntegerRange;->getCPtr(Lcom/myscript/atk/styluscore/ListIntegerRange;)J

    move-result-wide v3

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_ItemRange__SWIG_4(JLcom/myscript/atk/styluscore/InkItem;JLcom/myscript/atk/styluscore/ListIntegerRange;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected static getCPtr(Lcom/myscript/atk/styluscore/ItemRange;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ItemRange;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public append(Lcom/myscript/atk/styluscore/IntegerRange;)V
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ItemRange;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/IntegerRange;->getCPtr(Lcom/myscript/atk/styluscore/IntegerRange;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ItemRange_append__SWIG_0(JLcom/myscript/atk/styluscore/ItemRange;JLcom/myscript/atk/styluscore/IntegerRange;)V

    return-void
.end method

.method public append(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/IntegerRange;",
            ">;)V"
        }
    .end annotation

    new-instance v5, Lcom/myscript/atk/styluscore/ListIntegerRange;

    invoke-direct {v5, p1}, Lcom/myscript/atk/styluscore/ListIntegerRange;-><init>(Ljava/lang/Iterable;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_0

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/IntegerRange;

    invoke-virtual {v5, v0}, Lcom/myscript/atk/styluscore/ListIntegerRange;->native_add(Lcom/myscript/atk/styluscore/IntegerRange;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ItemRange;->swigCPtr:J

    invoke-static {v5}, Lcom/myscript/atk/styluscore/ListIntegerRange;->getCPtr(Lcom/myscript/atk/styluscore/ListIntegerRange;)J

    move-result-wide v3

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ItemRange_append__SWIG_1(JLcom/myscript/atk/styluscore/ItemRange;JLcom/myscript/atk/styluscore/ListIntegerRange;)V

    return-void
.end method

.method public boundingRect()Lcom/myscript/atk/styluscore/Rect;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/Rect;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/ItemRange;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ItemRange_boundingRect(JLcom/myscript/atk/styluscore/ItemRange;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/Rect;-><init>(JZ)V

    return-object v0
.end method

.method public contains(Lcom/myscript/atk/styluscore/InkLocation;)Z
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ItemRange;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InkLocation;->getCPtr(Lcom/myscript/atk/styluscore/InkLocation;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ItemRange_contains__SWIG_0(JLcom/myscript/atk/styluscore/ItemRange;JLcom/myscript/atk/styluscore/InkLocation;)Z

    move-result v0

    return v0
.end method

.method public contains(Lcom/myscript/atk/styluscore/ItemRange;)Z
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ItemRange;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/ItemRange;->getCPtr(Lcom/myscript/atk/styluscore/ItemRange;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ItemRange_contains__SWIG_1(JLcom/myscript/atk/styluscore/ItemRange;JLcom/myscript/atk/styluscore/ItemRange;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ItemRange;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/myscript/atk/styluscore/ItemRange;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myscript/atk/styluscore/ItemRange;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ItemRange;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->delete_ItemRange(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/myscript/atk/styluscore/ItemRange;->swigCPtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/myscript/atk/styluscore/ItemRange;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/myscript/atk/styluscore/ItemRange;

    invoke-virtual {p0, p1}, Lcom/myscript/atk/styluscore/ItemRange;->nativeEquals(Lcom/myscript/atk/styluscore/ItemRange;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public extractPaths()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/Path;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/myscript/atk/styluscore/ListPath;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/ItemRange;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ItemRange_extractPaths(JLcom/myscript/atk/styluscore/ItemRange;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/ListPath;-><init>(JZ)V

    return-object v0
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/ItemRange;->delete()V

    return-void
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ItemRange;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ItemRange_hashCode(JLcom/myscript/atk/styluscore/ItemRange;)I

    move-result v0

    return v0
.end method

.method public intersected(Lcom/myscript/atk/styluscore/ItemRange;)Lcom/myscript/atk/styluscore/ItemRange;
    .locals 7

    new-instance v6, Lcom/myscript/atk/styluscore/ItemRange;

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ItemRange;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/ItemRange;->getCPtr(Lcom/myscript/atk/styluscore/ItemRange;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ItemRange_intersected(JLcom/myscript/atk/styluscore/ItemRange;JLcom/myscript/atk/styluscore/ItemRange;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/myscript/atk/styluscore/ItemRange;-><init>(JZ)V

    return-object v6
.end method

.method public intersects(Lcom/myscript/atk/styluscore/ItemRange;)Z
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ItemRange;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/ItemRange;->getCPtr(Lcom/myscript/atk/styluscore/ItemRange;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ItemRange_intersects(JLcom/myscript/atk/styluscore/ItemRange;JLcom/myscript/atk/styluscore/ItemRange;)Z

    move-result v0

    return v0
.end method

.method public is(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ItemRange;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ItemRange_is(JLcom/myscript/atk/styluscore/ItemRange;I)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ItemRange;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ItemRange_isEmpty(JLcom/myscript/atk/styluscore/ItemRange;)Z

    move-result v0

    return v0
.end method

.method public isolatedForwardLigatureRemoved()Lcom/myscript/atk/styluscore/ItemRange;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/ItemRange;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/ItemRange;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ItemRange_isolatedForwardLigatureRemoved(JLcom/myscript/atk/styluscore/ItemRange;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/ItemRange;-><init>(JZ)V

    return-object v0
.end method

.method public item()Lcom/myscript/atk/styluscore/InkItem;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/InkItem;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/ItemRange;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ItemRange_item(JLcom/myscript/atk/styluscore/ItemRange;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/InkItem;-><init>(JZ)V

    return-object v0
.end method

.method public length()I
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ItemRange;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ItemRange_length(JLcom/myscript/atk/styluscore/ItemRange;)I

    move-result v0

    return v0
.end method

.method public mapped(Lcom/myscript/atk/styluscore/Transform;Ljava/util/List;)Lcom/myscript/atk/styluscore/ItemRange;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/myscript/atk/styluscore/Transform;",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/InkItem;",
            ">;)",
            "Lcom/myscript/atk/styluscore/ItemRange;"
        }
    .end annotation

    new-instance v8, Lcom/myscript/atk/styluscore/ListInkItem;

    invoke-direct {v8, p2}, Lcom/myscript/atk/styluscore/ListInkItem;-><init>(Ljava/lang/Iterable;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v10

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v10, :cond_0

    invoke-interface {p2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/InkItem;

    invoke-virtual {v8, v0}, Lcom/myscript/atk/styluscore/ListInkItem;->native_add(Lcom/myscript/atk/styluscore/InkItem;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v11, Lcom/myscript/atk/styluscore/ItemRange;

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ItemRange;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Transform;->getCPtr(Lcom/myscript/atk/styluscore/Transform;)J

    move-result-wide v3

    invoke-static {v8}, Lcom/myscript/atk/styluscore/ListInkItem;->getCPtr(Lcom/myscript/atk/styluscore/ListInkItem;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v8}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ItemRange_mapped(JLcom/myscript/atk/styluscore/ItemRange;JLcom/myscript/atk/styluscore/Transform;JLcom/myscript/atk/styluscore/ListInkItem;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v11, v0, v1, v2}, Lcom/myscript/atk/styluscore/ItemRange;-><init>(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p2}, Ljava/util/List;->clear()V

    invoke-interface {p2, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v11

    :catchall_0
    move-exception v0

    invoke-interface {p2}, Ljava/util/List;->clear()V

    invoke-interface {p2, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    throw v0
.end method

.method public nativeEquals(Lcom/myscript/atk/styluscore/ItemRange;)Z
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ItemRange;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/ItemRange;->getCPtr(Lcom/myscript/atk/styluscore/ItemRange;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ItemRange_nativeEquals(JLcom/myscript/atk/styluscore/ItemRange;JLcom/myscript/atk/styluscore/ItemRange;)Z

    move-result v0

    return v0
.end method

.method public notEquals(Lcom/myscript/atk/styluscore/ItemRange;)Z
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ItemRange;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/ItemRange;->getCPtr(Lcom/myscript/atk/styluscore/ItemRange;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ItemRange_notEquals(JLcom/myscript/atk/styluscore/ItemRange;JLcom/myscript/atk/styluscore/ItemRange;)Z

    move-result v0

    return v0
.end method

.method public rangeAt(I)Lcom/myscript/atk/styluscore/IntegerRange;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/IntegerRange;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/ItemRange;->swigCPtr:J

    invoke-static {v2, v3, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ItemRange_rangeAt(JLcom/myscript/atk/styluscore/ItemRange;I)J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/IntegerRange;-><init>(JZ)V

    return-object v0
.end method

.method public rangeCount()I
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ItemRange;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ItemRange_rangeCount(JLcom/myscript/atk/styluscore/ItemRange;)I

    move-result v0

    return v0
.end method

.method public ranges()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/IntegerRange;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/myscript/atk/styluscore/ListIntegerRange;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/ItemRange;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ItemRange_ranges(JLcom/myscript/atk/styluscore/ItemRange;)J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/ListIntegerRange;-><init>(JZ)V

    return-object v0
.end method

.method public setItem(Lcom/myscript/atk/styluscore/InkItem;)V
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ItemRange;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InkItem;->getCPtr(Lcom/myscript/atk/styluscore/InkItem;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ItemRange_setItem(JLcom/myscript/atk/styluscore/ItemRange;JLcom/myscript/atk/styluscore/InkItem;)V

    return-void
.end method

.method public setRangeAt(ILcom/myscript/atk/styluscore/IntegerRange;)V
    .locals 7

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ItemRange;->swigCPtr:J

    invoke-static {p2}, Lcom/myscript/atk/styluscore/IntegerRange;->getCPtr(Lcom/myscript/atk/styluscore/IntegerRange;)J

    move-result-wide v4

    move-object v2, p0

    move v3, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ItemRange_setRangeAt(JLcom/myscript/atk/styluscore/ItemRange;IJLcom/myscript/atk/styluscore/IntegerRange;)V

    return-void
.end method

.method public simplified(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/InkItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/ItemRange;",
            ">;"
        }
    .end annotation

    new-instance v5, Lcom/myscript/atk/styluscore/ListInkItem;

    invoke-direct {v5, p1}, Lcom/myscript/atk/styluscore/ListInkItem;-><init>(Ljava/lang/Iterable;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v11

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v11, :cond_0

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/InkItem;

    invoke-virtual {v5, v0}, Lcom/myscript/atk/styluscore/ListInkItem;->native_add(Lcom/myscript/atk/styluscore/InkItem;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    new-instance v8, Lcom/myscript/atk/styluscore/ListInt;

    invoke-direct {v8, p2}, Lcom/myscript/atk/styluscore/ListInt;-><init>(Ljava/lang/Iterable;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v10

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v10, :cond_1

    invoke-interface {p2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/myscript/atk/styluscore/ListInt;->native_add(I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    :try_start_0
    new-instance v12, Lcom/myscript/atk/styluscore/ListItemRange;

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ItemRange;->swigCPtr:J

    invoke-static {v5}, Lcom/myscript/atk/styluscore/ListInkItem;->getCPtr(Lcom/myscript/atk/styluscore/ListInkItem;)J

    move-result-wide v3

    invoke-static {v8}, Lcom/myscript/atk/styluscore/ListInt;->getCPtr(Lcom/myscript/atk/styluscore/ListInt;)J

    move-result-wide v6

    move-object v2, p0

    invoke-static/range {v0 .. v8}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ItemRange_simplified(JLcom/myscript/atk/styluscore/ItemRange;JLcom/myscript/atk/styluscore/ListInkItem;JLcom/myscript/atk/styluscore/ListInt;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v12, v0, v1, v2}, Lcom/myscript/atk/styluscore/ListItemRange;-><init>(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-interface {p1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p2}, Ljava/util/List;->clear()V

    invoke-interface {p2, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v12

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-interface {p1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p2}, Ljava/util/List;->clear()V

    invoke-interface {p2, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    throw v0
.end method

.method public split(Lcom/myscript/atk/styluscore/ItemRange;Lcom/myscript/atk/styluscore/ItemRange;Lcom/myscript/atk/styluscore/ItemRange;)V
    .locals 12

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ItemRange;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/ItemRange;->getCPtr(Lcom/myscript/atk/styluscore/ItemRange;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/myscript/atk/styluscore/ItemRange;->getCPtr(Lcom/myscript/atk/styluscore/ItemRange;)J

    move-result-wide v6

    invoke-static {p3}, Lcom/myscript/atk/styluscore/ItemRange;->getCPtr(Lcom/myscript/atk/styluscore/ItemRange;)J

    move-result-wide v9

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    move-object v11, p3

    invoke-static/range {v0 .. v11}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ItemRange_split(JLcom/myscript/atk/styluscore/ItemRange;JLcom/myscript/atk/styluscore/ItemRange;JLcom/myscript/atk/styluscore/ItemRange;JLcom/myscript/atk/styluscore/ItemRange;)V

    return-void
.end method

.method public substracted(Lcom/myscript/atk/styluscore/ItemRange;)Lcom/myscript/atk/styluscore/ItemRange;
    .locals 7

    new-instance v6, Lcom/myscript/atk/styluscore/ItemRange;

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ItemRange;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/ItemRange;->getCPtr(Lcom/myscript/atk/styluscore/ItemRange;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ItemRange_substracted(JLcom/myscript/atk/styluscore/ItemRange;JLcom/myscript/atk/styluscore/ItemRange;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/myscript/atk/styluscore/ItemRange;-><init>(JZ)V

    return-object v6
.end method

.method public timeShifted(J)Lcom/myscript/atk/styluscore/ItemRange;
    .locals 5

    new-instance v0, Lcom/myscript/atk/styluscore/ItemRange;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/ItemRange;->swigCPtr:J

    invoke-static {v2, v3, p0, p1, p2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ItemRange_timeShifted(JLcom/myscript/atk/styluscore/ItemRange;J)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/ItemRange;-><init>(JZ)V

    return-object v0
.end method

.method public timeStamp(Lcom/myscript/atk/styluscore/VoTimeStamp;)Lcom/myscript/atk/styluscore/ItemRange;
    .locals 7

    new-instance v6, Lcom/myscript/atk/styluscore/ItemRange;

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ItemRange;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/VoTimeStamp;->getCPtr(Lcom/myscript/atk/styluscore/VoTimeStamp;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ItemRange_timeStamp(JLcom/myscript/atk/styluscore/ItemRange;JLcom/myscript/atk/styluscore/VoTimeStamp;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/myscript/atk/styluscore/ItemRange;-><init>(JZ)V

    return-object v6
.end method

.method public united(Lcom/myscript/atk/styluscore/ItemRange;)Lcom/myscript/atk/styluscore/ItemRange;
    .locals 7

    new-instance v6, Lcom/myscript/atk/styluscore/ItemRange;

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ItemRange;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/ItemRange;->getCPtr(Lcom/myscript/atk/styluscore/ItemRange;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ItemRange_united(JLcom/myscript/atk/styluscore/ItemRange;JLcom/myscript/atk/styluscore/ItemRange;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/myscript/atk/styluscore/ItemRange;-><init>(JZ)V

    return-object v6
.end method

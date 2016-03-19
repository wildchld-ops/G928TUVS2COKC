.class public Lcom/myscript/atk/styluscore/IntegerRange;
.super Ljava/lang/Object;
.source "IntegerRange.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_IntegerRange__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/IntegerRange;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 3

    invoke-static {p1, p2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_IntegerRange__SWIG_1(II)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/IntegerRange;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/myscript/atk/styluscore/IntegerRange;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/myscript/atk/styluscore/IntegerRange;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/myscript/atk/styluscore/IntegerRange;)V
    .locals 3

    invoke-static {p1}, Lcom/myscript/atk/styluscore/IntegerRange;->getCPtr(Lcom/myscript/atk/styluscore/IntegerRange;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_IntegerRange__SWIG_2(JLcom/myscript/atk/styluscore/IntegerRange;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/IntegerRange;-><init>(JZ)V

    return-void
.end method

.method protected static getCPtr(Lcom/myscript/atk/styluscore/IntegerRange;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/IntegerRange;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public begin()I
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/IntegerRange;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->IntegerRange_begin(JLcom/myscript/atk/styluscore/IntegerRange;)I

    move-result v0

    return v0
.end method

.method public contains(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/IntegerRange;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->IntegerRange_contains__SWIG_0(JLcom/myscript/atk/styluscore/IntegerRange;I)Z

    move-result v0

    return v0
.end method

.method public contains(Lcom/myscript/atk/styluscore/IntegerRange;)Z
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/IntegerRange;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/IntegerRange;->getCPtr(Lcom/myscript/atk/styluscore/IntegerRange;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->IntegerRange_contains__SWIG_1(JLcom/myscript/atk/styluscore/IntegerRange;JLcom/myscript/atk/styluscore/IntegerRange;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/IntegerRange;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/myscript/atk/styluscore/IntegerRange;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myscript/atk/styluscore/IntegerRange;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/IntegerRange;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->delete_IntegerRange(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/myscript/atk/styluscore/IntegerRange;->swigCPtr:J
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

.method public end()I
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/IntegerRange;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->IntegerRange_end(JLcom/myscript/atk/styluscore/IntegerRange;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/myscript/atk/styluscore/IntegerRange;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/myscript/atk/styluscore/IntegerRange;

    invoke-virtual {p0, p1}, Lcom/myscript/atk/styluscore/IntegerRange;->nativeEquals(Lcom/myscript/atk/styluscore/IntegerRange;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/IntegerRange;->delete()V

    return-void
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/IntegerRange;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->IntegerRange_hashCode(JLcom/myscript/atk/styluscore/IntegerRange;)I

    move-result v0

    return v0
.end method

.method public intersectedWith(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/IntegerRange;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/IntegerRange;",
            ">;"
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
    new-instance v8, Lcom/myscript/atk/styluscore/ListIntegerRange;

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/IntegerRange;->swigCPtr:J

    invoke-static {v5}, Lcom/myscript/atk/styluscore/ListIntegerRange;->getCPtr(Lcom/myscript/atk/styluscore/ListIntegerRange;)J

    move-result-wide v3

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->IntegerRange_intersectedWith(JLcom/myscript/atk/styluscore/IntegerRange;JLcom/myscript/atk/styluscore/ListIntegerRange;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v8, v0, v1, v2}, Lcom/myscript/atk/styluscore/ListIntegerRange;-><init>(JZ)V

    return-object v8
.end method

.method public intersects(Lcom/myscript/atk/styluscore/IntegerRange;)Z
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/IntegerRange;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/IntegerRange;->getCPtr(Lcom/myscript/atk/styluscore/IntegerRange;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->IntegerRange_intersects(JLcom/myscript/atk/styluscore/IntegerRange;JLcom/myscript/atk/styluscore/IntegerRange;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/IntegerRange;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->IntegerRange_isEmpty(JLcom/myscript/atk/styluscore/IntegerRange;)Z

    move-result v0

    return v0
.end method

.method public length()I
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/IntegerRange;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->IntegerRange_length(JLcom/myscript/atk/styluscore/IntegerRange;)I

    move-result v0

    return v0
.end method

.method public nativeEquals(Lcom/myscript/atk/styluscore/IntegerRange;)Z
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/IntegerRange;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/IntegerRange;->getCPtr(Lcom/myscript/atk/styluscore/IntegerRange;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->IntegerRange_nativeEquals(JLcom/myscript/atk/styluscore/IntegerRange;JLcom/myscript/atk/styluscore/IntegerRange;)Z

    move-result v0

    return v0
.end method

.method public notEquals(Lcom/myscript/atk/styluscore/IntegerRange;)Z
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/IntegerRange;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/IntegerRange;->getCPtr(Lcom/myscript/atk/styluscore/IntegerRange;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->IntegerRange_notEquals(JLcom/myscript/atk/styluscore/IntegerRange;JLcom/myscript/atk/styluscore/IntegerRange;)Z

    move-result v0

    return v0
.end method

.method public substractedFrom(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/IntegerRange;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/IntegerRange;",
            ">;"
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
    new-instance v8, Lcom/myscript/atk/styluscore/ListIntegerRange;

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/IntegerRange;->swigCPtr:J

    invoke-static {v5}, Lcom/myscript/atk/styluscore/ListIntegerRange;->getCPtr(Lcom/myscript/atk/styluscore/ListIntegerRange;)J

    move-result-wide v3

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->IntegerRange_substractedFrom(JLcom/myscript/atk/styluscore/IntegerRange;JLcom/myscript/atk/styluscore/ListIntegerRange;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v8, v0, v1, v2}, Lcom/myscript/atk/styluscore/ListIntegerRange;-><init>(JZ)V

    return-object v8
.end method

.method public unitedTo(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/IntegerRange;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/IntegerRange;",
            ">;"
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
    new-instance v8, Lcom/myscript/atk/styluscore/ListIntegerRange;

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/IntegerRange;->swigCPtr:J

    invoke-static {v5}, Lcom/myscript/atk/styluscore/ListIntegerRange;->getCPtr(Lcom/myscript/atk/styluscore/ListIntegerRange;)J

    move-result-wide v3

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->IntegerRange_unitedTo(JLcom/myscript/atk/styluscore/IntegerRange;JLcom/myscript/atk/styluscore/ListIntegerRange;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v8, v0, v1, v2}, Lcom/myscript/atk/styluscore/ListIntegerRange;-><init>(JZ)V

    return-object v8
.end method

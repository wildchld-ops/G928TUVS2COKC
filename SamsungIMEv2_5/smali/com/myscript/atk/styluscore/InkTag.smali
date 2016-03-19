.class public Lcom/myscript/atk/styluscore/InkTag;
.super Ljava/lang/Object;
.source "InkTag.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/myscript/atk/styluscore/InkTag$Name;
    }
.end annotation


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_InkTag__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/InkTag;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(ILcom/myscript/atk/styluscore/InkRange;)V
    .locals 3

    invoke-static {p2}, Lcom/myscript/atk/styluscore/InkRange;->getCPtr(Lcom/myscript/atk/styluscore/InkRange;)J

    move-result-wide v0

    invoke-static {p1, v0, v1, p2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_InkTag__SWIG_1(IJLcom/myscript/atk/styluscore/InkRange;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/InkTag;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/myscript/atk/styluscore/InkTag;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/myscript/atk/styluscore/InkTag;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/myscript/atk/styluscore/InkTag;)V
    .locals 3

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InkTag;->getCPtr(Lcom/myscript/atk/styluscore/InkTag;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_InkTag__SWIG_2(JLcom/myscript/atk/styluscore/InkTag;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/InkTag;-><init>(JZ)V

    return-void
.end method

.method protected static getCPtr(Lcom/myscript/atk/styluscore/InkTag;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkTag;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkTag;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/myscript/atk/styluscore/InkTag;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myscript/atk/styluscore/InkTag;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkTag;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->delete_InkTag(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/myscript/atk/styluscore/InkTag;->swigCPtr:J
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

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/InkTag;->delete()V

    return-void
.end method

.method public mapped(Lcom/myscript/atk/styluscore/Transform;Ljava/util/List;)Lcom/myscript/atk/styluscore/InkTag;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/myscript/atk/styluscore/Transform;",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/InkItem;",
            ">;)",
            "Lcom/myscript/atk/styluscore/InkTag;"
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
    new-instance v11, Lcom/myscript/atk/styluscore/InkTag;

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkTag;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Transform;->getCPtr(Lcom/myscript/atk/styluscore/Transform;)J

    move-result-wide v3

    invoke-static {v8}, Lcom/myscript/atk/styluscore/ListInkItem;->getCPtr(Lcom/myscript/atk/styluscore/ListInkItem;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v8}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkTag_mapped(JLcom/myscript/atk/styluscore/InkTag;JLcom/myscript/atk/styluscore/Transform;JLcom/myscript/atk/styluscore/ListInkItem;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v11, v0, v1, v2}, Lcom/myscript/atk/styluscore/InkTag;-><init>(JZ)V
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

.method public name()I
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkTag;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkTag_name(JLcom/myscript/atk/styluscore/InkTag;)I

    move-result v0

    return v0
.end method

.method public nativeEquals(Lcom/myscript/atk/styluscore/InkTag;)Z
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkTag;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InkTag;->getCPtr(Lcom/myscript/atk/styluscore/InkTag;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkTag_nativeEquals(JLcom/myscript/atk/styluscore/InkTag;JLcom/myscript/atk/styluscore/InkTag;)Z

    move-result v0

    return v0
.end method

.method public range()Lcom/myscript/atk/styluscore/InkRange;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/InkRange;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/InkTag;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkTag_range(JLcom/myscript/atk/styluscore/InkTag;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/InkRange;-><init>(JZ)V

    return-object v0
.end method

.method public setName(I)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkTag;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkTag_setName(JLcom/myscript/atk/styluscore/InkTag;I)V

    return-void
.end method

.method public setRange(Lcom/myscript/atk/styluscore/InkRange;)V
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkTag;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InkRange;->getCPtr(Lcom/myscript/atk/styluscore/InkRange;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkTag_setRange(JLcom/myscript/atk/styluscore/InkTag;JLcom/myscript/atk/styluscore/InkRange;)V

    return-void
.end method

.method public simplified(Ljava/util/List;Ljava/util/List;)Lcom/myscript/atk/styluscore/InkTag;
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
            "Lcom/myscript/atk/styluscore/InkTag;"
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
    new-instance v12, Lcom/myscript/atk/styluscore/InkTag;

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkTag;->swigCPtr:J

    invoke-static {v5}, Lcom/myscript/atk/styluscore/ListInkItem;->getCPtr(Lcom/myscript/atk/styluscore/ListInkItem;)J

    move-result-wide v3

    invoke-static {v8}, Lcom/myscript/atk/styluscore/ListInt;->getCPtr(Lcom/myscript/atk/styluscore/ListInt;)J

    move-result-wide v6

    move-object v2, p0

    invoke-static/range {v0 .. v8}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkTag_simplified(JLcom/myscript/atk/styluscore/InkTag;JLcom/myscript/atk/styluscore/ListInkItem;JLcom/myscript/atk/styluscore/ListInt;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v12, v0, v1, v2}, Lcom/myscript/atk/styluscore/InkTag;-><init>(JZ)V
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

.method public timeShifted(J)Lcom/myscript/atk/styluscore/InkTag;
    .locals 5

    new-instance v0, Lcom/myscript/atk/styluscore/InkTag;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/InkTag;->swigCPtr:J

    invoke-static {v2, v3, p0, p1, p2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkTag_timeShifted(JLcom/myscript/atk/styluscore/InkTag;J)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/InkTag;-><init>(JZ)V

    return-object v0
.end method

.class public Lcom/myscript/atk/styluscore/ListSegment;
.super Ljava/util/ArrayList;
.source "ListSegment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/myscript/atk/styluscore/Segment;",
        ">;"
    }
.end annotation


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_ListSegment__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/ListSegment;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 3

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iput-boolean p3, p0, Lcom/myscript/atk/styluscore/ListSegment;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/myscript/atk/styluscore/ListSegment;->swigCPtr:J

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/ListSegment;->native_size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/myscript/atk/styluscore/ListSegment;->native_at(I)Lcom/myscript/atk/styluscore/Segment;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/myscript/atk/styluscore/ListSegment;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/myscript/atk/styluscore/ListSegment;)V
    .locals 3

    invoke-static {p1}, Lcom/myscript/atk/styluscore/ListSegment;->getCPtr(Lcom/myscript/atk/styluscore/ListSegment;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_ListSegment__SWIG_1(JLcom/myscript/atk/styluscore/ListSegment;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/ListSegment;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/myscript/atk/styluscore/Segment;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/myscript/atk/styluscore/ListSegment;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/Segment;

    invoke-virtual {p0, v0}, Lcom/myscript/atk/styluscore/ListSegment;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getCPtr(Lcom/myscript/atk/styluscore/ListSegment;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ListSegment;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ListSegment;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/myscript/atk/styluscore/ListSegment;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myscript/atk/styluscore/ListSegment;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ListSegment;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->delete_ListSegment(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/myscript/atk/styluscore/ListSegment;->swigCPtr:J
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

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/ListSegment;->delete()V

    return-void
.end method

.method public native_add(Lcom/myscript/atk/styluscore/Segment;)V
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ListSegment;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Segment;->getCPtr(Lcom/myscript/atk/styluscore/Segment;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ListSegment_native_add(JLcom/myscript/atk/styluscore/ListSegment;JLcom/myscript/atk/styluscore/Segment;)V

    return-void
.end method

.method public native_at(I)Lcom/myscript/atk/styluscore/Segment;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/Segment;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/ListSegment;->swigCPtr:J

    invoke-static {v2, v3, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ListSegment_native_at(JLcom/myscript/atk/styluscore/ListSegment;I)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/Segment;-><init>(JZ)V

    return-object v0
.end method

.method public native_size()I
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ListSegment;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ListSegment_native_size(JLcom/myscript/atk/styluscore/ListSegment;)I

    move-result v0

    return v0
.end method

.class public Lcom/myscript/atk/styluscore/Segment;
.super Ljava/lang/Object;
.source "Segment.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_Segment__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/Segment;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/myscript/atk/styluscore/Segment;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/myscript/atk/styluscore/Segment;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/myscript/atk/styluscore/Segment;)V
    .locals 3

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Segment;->getCPtr(Lcom/myscript/atk/styluscore/Segment;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_Segment__SWIG_1(JLcom/myscript/atk/styluscore/Segment;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/Segment;-><init>(JZ)V

    return-void
.end method

.method public static fromCandidate(Lcom/myscript/atk/styluscore/Candidate;)Lcom/myscript/atk/styluscore/Segment;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/Segment;

    invoke-static {p0}, Lcom/myscript/atk/styluscore/Candidate;->getCPtr(Lcom/myscript/atk/styluscore/Candidate;)J

    move-result-wide v2

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Segment_fromCandidate(JLcom/myscript/atk/styluscore/Candidate;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/Segment;-><init>(JZ)V

    return-object v0
.end method

.method public static fromLabel(Ljava/lang/String;)Lcom/myscript/atk/styluscore/Segment;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/Segment;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Segment_fromLabel__SWIG_2([B)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/Segment;-><init>(JZ)V

    return-object v0
.end method

.method public static fromLabel(Ljava/lang/String;I)Lcom/myscript/atk/styluscore/Segment;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/Segment;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Segment_fromLabel__SWIG_1([BI)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/Segment;-><init>(JZ)V

    return-object v0
.end method

.method public static fromLabel(Ljava/lang/String;II)Lcom/myscript/atk/styluscore/Segment;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/Segment;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Segment_fromLabel__SWIG_0([BII)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/Segment;-><init>(JZ)V

    return-object v0
.end method

.method public static getBaselineSkewUndefined()F
    .locals 1

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Segment_baselineSkewUndefined_get()F

    move-result v0

    return v0
.end method

.method public static getBaselineUndefined()F
    .locals 1

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Segment_baselineUndefined_get()F

    move-result v0

    return v0
.end method

.method protected static getCPtr(Lcom/myscript/atk/styluscore/Segment;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Segment;->swigCPtr:J

    goto :goto_0
.end method

.method public static getMidlineShiftUndefined()F
    .locals 1

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Segment_midlineShiftUndefined_get()F

    move-result v0

    return v0
.end method

.method public static leftToRightBarycenterOrder(Lcom/myscript/atk/styluscore/Segment;Lcom/myscript/atk/styluscore/Segment;)Z
    .locals 6

    invoke-static {p0}, Lcom/myscript/atk/styluscore/Segment;->getCPtr(Lcom/myscript/atk/styluscore/Segment;)J

    move-result-wide v0

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Segment;->getCPtr(Lcom/myscript/atk/styluscore/Segment;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Segment_leftToRightBarycenterOrder(JLcom/myscript/atk/styluscore/Segment;JLcom/myscript/atk/styluscore/Segment;)Z

    move-result v0

    return v0
.end method

.method public static rightToLeftBarycenterOrder(Lcom/myscript/atk/styluscore/Segment;Lcom/myscript/atk/styluscore/Segment;)Z
    .locals 6

    invoke-static {p0}, Lcom/myscript/atk/styluscore/Segment;->getCPtr(Lcom/myscript/atk/styluscore/Segment;)J

    move-result-wide v0

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Segment;->getCPtr(Lcom/myscript/atk/styluscore/Segment;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Segment_rightToLeftBarycenterOrder(JLcom/myscript/atk/styluscore/Segment;JLcom/myscript/atk/styluscore/Segment;)Z

    move-result v0

    return v0
.end method

.method public static timeStampOrder(Lcom/myscript/atk/styluscore/Segment;Lcom/myscript/atk/styluscore/Segment;)Z
    .locals 6

    invoke-static {p0}, Lcom/myscript/atk/styluscore/Segment;->getCPtr(Lcom/myscript/atk/styluscore/Segment;)J

    move-result-wide v0

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Segment;->getCPtr(Lcom/myscript/atk/styluscore/Segment;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Segment_timeStampOrder(JLcom/myscript/atk/styluscore/Segment;JLcom/myscript/atk/styluscore/Segment;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public append(Lcom/myscript/atk/styluscore/Candidate;)V
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Segment;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Candidate;->getCPtr(Lcom/myscript/atk/styluscore/Candidate;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Segment_append__SWIG_2(JLcom/myscript/atk/styluscore/Segment;JLcom/myscript/atk/styluscore/Candidate;)V

    return-void
.end method

.method public append(Lcom/myscript/atk/styluscore/InkRange;)V
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Segment;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InkRange;->getCPtr(Lcom/myscript/atk/styluscore/InkRange;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Segment_append__SWIG_1(JLcom/myscript/atk/styluscore/Segment;JLcom/myscript/atk/styluscore/InkRange;)V

    return-void
.end method

.method public append(Lcom/myscript/atk/styluscore/ItemRange;)V
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Segment;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/ItemRange;->getCPtr(Lcom/myscript/atk/styluscore/ItemRange;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Segment_append__SWIG_0(JLcom/myscript/atk/styluscore/Segment;JLcom/myscript/atk/styluscore/ItemRange;)V

    return-void
.end method

.method public appendAt(ILcom/myscript/atk/styluscore/Candidate;)V
    .locals 7

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Segment;->swigCPtr:J

    invoke-static {p2}, Lcom/myscript/atk/styluscore/Candidate;->getCPtr(Lcom/myscript/atk/styluscore/Candidate;)J

    move-result-wide v4

    move-object v2, p0

    move v3, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Segment_appendAt(JLcom/myscript/atk/styluscore/Segment;IJLcom/myscript/atk/styluscore/Candidate;)V

    return-void
.end method

.method public baseline()F
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Segment;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Segment_baseline(JLcom/myscript/atk/styluscore/Segment;)F

    move-result v0

    return v0
.end method

.method public baselineSkew()F
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Segment;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Segment_baselineSkew(JLcom/myscript/atk/styluscore/Segment;)F

    move-result v0

    return v0
.end method

.method public beautified(Lcom/myscript/atk/styluscore/InkRange;)Lcom/myscript/atk/styluscore/Segment;
    .locals 7

    new-instance v6, Lcom/myscript/atk/styluscore/Segment;

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Segment;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InkRange;->getCPtr(Lcom/myscript/atk/styluscore/InkRange;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Segment_beautified(JLcom/myscript/atk/styluscore/Segment;JLcom/myscript/atk/styluscore/InkRange;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/myscript/atk/styluscore/Segment;-><init>(JZ)V

    return-object v6
.end method

.method public begin()Lcom/myscript/atk/styluscore/InkLocation;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/InkLocation;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/Segment;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Segment_begin(JLcom/myscript/atk/styluscore/Segment;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/InkLocation;-><init>(JZ)V

    return-object v0
.end method

.method public bottomBound()F
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Segment;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Segment_bottomBound(JLcom/myscript/atk/styluscore/Segment;)F

    move-result v0

    return v0
.end method

.method public candidates()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/Candidate;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/myscript/atk/styluscore/ListCandidate;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/Segment;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Segment_candidates(JLcom/myscript/atk/styluscore/Segment;)J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/ListCandidate;-><init>(JZ)V

    return-object v0
.end method

.method public contains(Lcom/myscript/atk/styluscore/InkLocation;)Z
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Segment;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InkLocation;->getCPtr(Lcom/myscript/atk/styluscore/InkLocation;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Segment_contains(JLcom/myscript/atk/styluscore/Segment;JLcom/myscript/atk/styluscore/InkLocation;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Segment;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/myscript/atk/styluscore/Segment;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myscript/atk/styluscore/Segment;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Segment;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->delete_Segment(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/myscript/atk/styluscore/Segment;->swigCPtr:J
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

.method public duration()I
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Segment;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Segment_duration(JLcom/myscript/atk/styluscore/Segment;)I

    move-result v0

    return v0
.end method

.method public end()Lcom/myscript/atk/styluscore/InkLocation;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/InkLocation;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/Segment;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Segment_end(JLcom/myscript/atk/styluscore/Segment;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/InkLocation;-><init>(JZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/myscript/atk/styluscore/Segment;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/myscript/atk/styluscore/Segment;

    invoke-virtual {p0, p1}, Lcom/myscript/atk/styluscore/Segment;->nativeEquals(Lcom/myscript/atk/styluscore/Segment;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/Segment;->delete()V

    return-void
.end method

.method public fontified(Ljava/util/List;FF)Lcom/myscript/atk/styluscore/Segment;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/Rect;",
            ">;FF)",
            "Lcom/myscript/atk/styluscore/Segment;"
        }
    .end annotation

    new-instance v5, Lcom/myscript/atk/styluscore/ListRect;

    invoke-direct {v5, p1}, Lcom/myscript/atk/styluscore/ListRect;-><init>(Ljava/lang/Iterable;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v9, :cond_0

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/Rect;

    invoke-virtual {v5, v0}, Lcom/myscript/atk/styluscore/ListRect;->native_add(Lcom/myscript/atk/styluscore/Rect;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v10, Lcom/myscript/atk/styluscore/Segment;

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Segment;->swigCPtr:J

    invoke-static {v5}, Lcom/myscript/atk/styluscore/ListRect;->getCPtr(Lcom/myscript/atk/styluscore/ListRect;)J

    move-result-wide v3

    move-object v2, p0

    move v6, p2

    move v7, p3

    invoke-static/range {v0 .. v7}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Segment_fontified(JLcom/myscript/atk/styluscore/Segment;JLcom/myscript/atk/styluscore/ListRect;FF)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v10, v0, v1, v2}, Lcom/myscript/atk/styluscore/Segment;-><init>(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-interface {p1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v10

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-interface {p1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    throw v0
.end method

.method public getUserParams(I)Ljava/lang/Object;
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Segment;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Segment_getUserParams(JLcom/myscript/atk/styluscore/Segment;I)I

    move-result v0

    invoke-static {v0}, Lcom/myscript/atk/styluscore/UserParamsGrefHelper;->getUserParams(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public grafted(Lcom/myscript/atk/styluscore/Segment;I)Lcom/myscript/atk/styluscore/Segment;
    .locals 8

    new-instance v7, Lcom/myscript/atk/styluscore/Segment;

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Segment;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Segment;->getCPtr(Lcom/myscript/atk/styluscore/Segment;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Segment_grafted(JLcom/myscript/atk/styluscore/Segment;JLcom/myscript/atk/styluscore/Segment;I)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v7, v0, v1, v2}, Lcom/myscript/atk/styluscore/Segment;-><init>(JZ)V

    return-object v7
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Segment;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Segment_hashCode(JLcom/myscript/atk/styluscore/Segment;)I

    move-result v0

    return v0
.end method

.method public inkRange()Lcom/myscript/atk/styluscore/InkRange;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/InkRange;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/Segment;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Segment_inkRange(JLcom/myscript/atk/styluscore/Segment;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/InkRange;-><init>(JZ)V

    return-object v0
.end method

.method public is(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Segment;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Segment_is(JLcom/myscript/atk/styluscore/Segment;I)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Segment;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Segment_isEmpty(JLcom/myscript/atk/styluscore/Segment;)Z

    move-result v0

    return v0
.end method

.method public isLower(Lcom/myscript/atk/styluscore/Segment;)Z
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Segment;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Segment;->getCPtr(Lcom/myscript/atk/styluscore/Segment;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Segment_isLower(JLcom/myscript/atk/styluscore/Segment;JLcom/myscript/atk/styluscore/Segment;)Z

    move-result v0

    return v0
.end method

.method public isMirrored()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Segment;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Segment_isMirrored(JLcom/myscript/atk/styluscore/Segment;)Z

    move-result v0

    return v0
.end method

.method public items()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/InkItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/myscript/atk/styluscore/ListInkItem;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/Segment;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Segment_items(JLcom/myscript/atk/styluscore/Segment;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/ListInkItem;-><init>(JZ)V

    return-object v0
.end method

.method public keepOnlySelectedCandidate()V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Segment;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Segment_keepOnlySelectedCandidate(JLcom/myscript/atk/styluscore/Segment;)V

    return-void
.end method

.method public leftBound()F
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Segment;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Segment_leftBound(JLcom/myscript/atk/styluscore/Segment;)F

    move-result v0

    return v0
.end method

.method public mapped(Lcom/myscript/atk/styluscore/Transform;Ljava/util/List;)Lcom/myscript/atk/styluscore/Segment;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/myscript/atk/styluscore/Transform;",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/InkItem;",
            ">;)",
            "Lcom/myscript/atk/styluscore/Segment;"
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
    new-instance v11, Lcom/myscript/atk/styluscore/Segment;

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Segment;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Transform;->getCPtr(Lcom/myscript/atk/styluscore/Transform;)J

    move-result-wide v3

    invoke-static {v8}, Lcom/myscript/atk/styluscore/ListInkItem;->getCPtr(Lcom/myscript/atk/styluscore/ListInkItem;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v8}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Segment_mapped(JLcom/myscript/atk/styluscore/Segment;JLcom/myscript/atk/styluscore/Transform;JLcom/myscript/atk/styluscore/ListInkItem;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v11, v0, v1, v2}, Lcom/myscript/atk/styluscore/Segment;-><init>(JZ)V
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

.method public midlineShift()F
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Segment;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Segment_midlineShift(JLcom/myscript/atk/styluscore/Segment;)F

    move-result v0

    return v0
.end method

.method public mirrored()Lcom/myscript/atk/styluscore/Segment;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/Segment;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/Segment;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Segment_mirrored(JLcom/myscript/atk/styluscore/Segment;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/Segment;-><init>(JZ)V

    return-object v0
.end method

.method public nativeEquals(Lcom/myscript/atk/styluscore/Segment;)Z
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Segment;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Segment;->getCPtr(Lcom/myscript/atk/styluscore/Segment;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Segment_nativeEquals(JLcom/myscript/atk/styluscore/Segment;JLcom/myscript/atk/styluscore/Segment;)Z

    move-result v0

    return v0
.end method

.method public normalized()Lcom/myscript/atk/styluscore/Segment;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/Segment;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/Segment;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Segment_normalized__SWIG_2(JLcom/myscript/atk/styluscore/Segment;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/Segment;-><init>(JZ)V

    return-object v0
.end method

.method public normalized(Lcom/myscript/atk/styluscore/InkRange;)Lcom/myscript/atk/styluscore/Segment;
    .locals 7

    new-instance v6, Lcom/myscript/atk/styluscore/Segment;

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Segment;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InkRange;->getCPtr(Lcom/myscript/atk/styluscore/InkRange;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Segment_normalized__SWIG_1(JLcom/myscript/atk/styluscore/Segment;JLcom/myscript/atk/styluscore/InkRange;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/myscript/atk/styluscore/Segment;-><init>(JZ)V

    return-object v6
.end method

.method public normalized(Lcom/myscript/atk/styluscore/InkRange;Z)Lcom/myscript/atk/styluscore/Segment;
    .locals 8

    new-instance v7, Lcom/myscript/atk/styluscore/Segment;

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Segment;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InkRange;->getCPtr(Lcom/myscript/atk/styluscore/InkRange;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Segment_normalized__SWIG_0(JLcom/myscript/atk/styluscore/Segment;JLcom/myscript/atk/styluscore/InkRange;Z)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v7, v0, v1, v2}, Lcom/myscript/atk/styluscore/Segment;-><init>(JZ)V

    return-object v7
.end method

.method public notEquals(Lcom/myscript/atk/styluscore/Segment;)Z
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Segment;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Segment;->getCPtr(Lcom/myscript/atk/styluscore/Segment;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Segment_notEquals(JLcom/myscript/atk/styluscore/Segment;JLcom/myscript/atk/styluscore/Segment;)Z

    move-result v0

    return v0
.end method

.method public promoted()Lcom/myscript/atk/styluscore/Segment;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/Segment;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/Segment;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Segment_promoted(JLcom/myscript/atk/styluscore/Segment;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/Segment;-><init>(JZ)V

    return-object v0
.end method

.method public rebased(Ljava/util/List;)Lcom/myscript/atk/styluscore/Segment;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/InkItem;",
            ">;)",
            "Lcom/myscript/atk/styluscore/Segment;"
        }
    .end annotation

    new-instance v5, Lcom/myscript/atk/styluscore/ListInkItem;

    invoke-direct {v5, p1}, Lcom/myscript/atk/styluscore/ListInkItem;-><init>(Ljava/lang/Iterable;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_0

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/InkItem;

    invoke-virtual {v5, v0}, Lcom/myscript/atk/styluscore/ListInkItem;->native_add(Lcom/myscript/atk/styluscore/InkItem;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    new-instance v8, Lcom/myscript/atk/styluscore/Segment;

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Segment;->swigCPtr:J

    invoke-static {v5}, Lcom/myscript/atk/styluscore/ListInkItem;->getCPtr(Lcom/myscript/atk/styluscore/ListInkItem;)J

    move-result-wide v3

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Segment_rebased(JLcom/myscript/atk/styluscore/Segment;JLcom/myscript/atk/styluscore/ListInkItem;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v8, v0, v1, v2}, Lcom/myscript/atk/styluscore/Segment;-><init>(JZ)V

    return-object v8
.end method

.method public reorder(I)Lcom/myscript/atk/styluscore/Segment;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/Segment;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/Segment;->swigCPtr:J

    invoke-static {v2, v3, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Segment_reorder(JLcom/myscript/atk/styluscore/Segment;I)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/Segment;-><init>(JZ)V

    return-object v0
.end method

.method public replaceAt(ILcom/myscript/atk/styluscore/Candidate;)V
    .locals 7

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Segment;->swigCPtr:J

    invoke-static {p2}, Lcom/myscript/atk/styluscore/Candidate;->getCPtr(Lcom/myscript/atk/styluscore/Candidate;)J

    move-result-wide v4

    move-object v2, p0

    move v3, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Segment_replaceAt(JLcom/myscript/atk/styluscore/Segment;IJLcom/myscript/atk/styluscore/Candidate;)V

    return-void
.end method

.method public rightBound()F
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Segment;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Segment_rightBound(JLcom/myscript/atk/styluscore/Segment;)F

    move-result v0

    return v0
.end method

.method public segmentsOfType(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/Segment;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/myscript/atk/styluscore/ListSegment;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/Segment;->swigCPtr:J

    invoke-static {v2, v3, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Segment_segmentsOfType__SWIG_0(JLcom/myscript/atk/styluscore/Segment;I)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/ListSegment;-><init>(JZ)V

    return-object v0
.end method

.method public segmentsOfType(II)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/Segment;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/myscript/atk/styluscore/ListSegment;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/Segment;->swigCPtr:J

    invoke-static {v2, v3, p0, p1, p2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Segment_segmentsOfType__SWIG_1(JLcom/myscript/atk/styluscore/Segment;II)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/ListSegment;-><init>(JZ)V

    return-object v0
.end method

.method public segmentsOfType(III)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/Segment;",
            ">;"
        }
    .end annotation

    new-instance v6, Lcom/myscript/atk/styluscore/ListSegment;

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Segment;->swigCPtr:J

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Segment_segmentsOfType__SWIG_2(JLcom/myscript/atk/styluscore/Segment;III)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/myscript/atk/styluscore/ListSegment;-><init>(JZ)V

    return-object v6
.end method

.method public select(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Segment;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Segment_select(JLcom/myscript/atk/styluscore/Segment;I)Z

    move-result v0

    return v0
.end method

.method public selectLastCandidate()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Segment;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Segment_selectLastCandidate(JLcom/myscript/atk/styluscore/Segment;)Z

    move-result v0

    return v0
.end method

.method public selectedCandidate()Lcom/myscript/atk/styluscore/Candidate;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/Candidate;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/Segment;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Segment_selectedCandidate(JLcom/myscript/atk/styluscore/Segment;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/Candidate;-><init>(JZ)V

    return-object v0
.end method

.method public selectedIndex()I
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Segment;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Segment_selectedIndex(JLcom/myscript/atk/styluscore/Segment;)I

    move-result v0

    return v0
.end method

.method public setBaseline(F)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Segment;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Segment_setBaseline(JLcom/myscript/atk/styluscore/Segment;F)V

    return-void
.end method

.method public setBaselineSkew(F)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Segment;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Segment_setBaselineSkew(JLcom/myscript/atk/styluscore/Segment;F)V

    return-void
.end method

.method public setInkRange(Lcom/myscript/atk/styluscore/InkRange;)V
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Segment;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InkRange;->getCPtr(Lcom/myscript/atk/styluscore/InkRange;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Segment_setInkRange(JLcom/myscript/atk/styluscore/Segment;JLcom/myscript/atk/styluscore/InkRange;)V

    return-void
.end method

.method public setMidlineShift(F)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Segment;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Segment_setMidlineShift(JLcom/myscript/atk/styluscore/Segment;F)V

    return-void
.end method

.method public simplified(Ljava/util/List;Ljava/util/List;)Lcom/myscript/atk/styluscore/Segment;
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
            "Lcom/myscript/atk/styluscore/Segment;"
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
    new-instance v12, Lcom/myscript/atk/styluscore/Segment;

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Segment;->swigCPtr:J

    invoke-static {v5}, Lcom/myscript/atk/styluscore/ListInkItem;->getCPtr(Lcom/myscript/atk/styluscore/ListInkItem;)J

    move-result-wide v3

    invoke-static {v8}, Lcom/myscript/atk/styluscore/ListInt;->getCPtr(Lcom/myscript/atk/styluscore/ListInt;)J

    move-result-wide v6

    move-object v2, p0

    invoke-static/range {v0 .. v8}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Segment_simplified(JLcom/myscript/atk/styluscore/Segment;JLcom/myscript/atk/styluscore/ListInkItem;JLcom/myscript/atk/styluscore/ListInt;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v12, v0, v1, v2}, Lcom/myscript/atk/styluscore/Segment;-><init>(JZ)V
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

.method public split(Lcom/myscript/atk/styluscore/InkRange;Lcom/myscript/atk/styluscore/Segment;Lcom/myscript/atk/styluscore/Segment;)V
    .locals 12

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Segment;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InkRange;->getCPtr(Lcom/myscript/atk/styluscore/InkRange;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/myscript/atk/styluscore/Segment;->getCPtr(Lcom/myscript/atk/styluscore/Segment;)J

    move-result-wide v6

    invoke-static {p3}, Lcom/myscript/atk/styluscore/Segment;->getCPtr(Lcom/myscript/atk/styluscore/Segment;)J

    move-result-wide v9

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    move-object v11, p3

    invoke-static/range {v0 .. v11}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Segment_split(JLcom/myscript/atk/styluscore/Segment;JLcom/myscript/atk/styluscore/InkRange;JLcom/myscript/atk/styluscore/Segment;JLcom/myscript/atk/styluscore/Segment;)V

    return-void
.end method

.method public strokeCount()I
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Segment;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Segment_strokeCount(JLcom/myscript/atk/styluscore/Segment;)I

    move-result v0

    return v0
.end method

.method public timeShifted(J)Lcom/myscript/atk/styluscore/Segment;
    .locals 5

    new-instance v0, Lcom/myscript/atk/styluscore/Segment;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/Segment;->swigCPtr:J

    invoke-static {v2, v3, p0, p1, p2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Segment_timeShifted(JLcom/myscript/atk/styluscore/Segment;J)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/Segment;-><init>(JZ)V

    return-object v0
.end method

.method public timeStamp()Lcom/myscript/atk/styluscore/VoTimeStamp;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/VoTimeStamp;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/Segment;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Segment_timeStamp(JLcom/myscript/atk/styluscore/Segment;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/VoTimeStamp;-><init>(JZ)V

    return-object v0
.end method

.method public topBound()F
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Segment;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Segment_topBound(JLcom/myscript/atk/styluscore/Segment;)F

    move-result v0

    return v0
.end method

.method public updateUserParametersListener(Lcom/myscript/atk/styluscore/InkItemUserParamsListener;)Lcom/myscript/atk/styluscore/Segment;
    .locals 7

    new-instance v6, Lcom/myscript/atk/styluscore/Segment;

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Segment;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InkItemUserParamsListener;->getCPtr(Lcom/myscript/atk/styluscore/InkItemUserParamsListener;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Segment_updateUserParametersListener(JLcom/myscript/atk/styluscore/Segment;JLcom/myscript/atk/styluscore/InkItemUserParamsListener;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/myscript/atk/styluscore/Segment;-><init>(JZ)V

    return-object v6
.end method

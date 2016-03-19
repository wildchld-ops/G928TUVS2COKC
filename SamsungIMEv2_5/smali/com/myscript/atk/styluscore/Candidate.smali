.class public Lcom/myscript/atk/styluscore/Candidate;
.super Ljava/lang/Object;
.source "Candidate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/myscript/atk/styluscore/Candidate$Flags;,
        Lcom/myscript/atk/styluscore/Candidate$Type;
    }
.end annotation


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_Candidate__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/Candidate;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/myscript/atk/styluscore/Candidate;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/myscript/atk/styluscore/Candidate;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/myscript/atk/styluscore/Candidate;)V
    .locals 3

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Candidate;->getCPtr(Lcom/myscript/atk/styluscore/Candidate;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_Candidate__SWIG_1(JLcom/myscript/atk/styluscore/Candidate;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/Candidate;-><init>(JZ)V

    return-void
.end method

.method protected static getCPtr(Lcom/myscript/atk/styluscore/Candidate;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Candidate;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public append(Lcom/myscript/atk/styluscore/Segment;)V
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Candidate;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Segment;->getCPtr(Lcom/myscript/atk/styluscore/Segment;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Candidate_append(JLcom/myscript/atk/styluscore/Candidate;JLcom/myscript/atk/styluscore/Segment;)V

    return-void
.end method

.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Candidate;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/myscript/atk/styluscore/Candidate;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myscript/atk/styluscore/Candidate;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Candidate;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->delete_Candidate(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/myscript/atk/styluscore/Candidate;->swigCPtr:J
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

    instance-of v0, p1, Lcom/myscript/atk/styluscore/Candidate;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/myscript/atk/styluscore/Candidate;

    invoke-virtual {p0, p1}, Lcom/myscript/atk/styluscore/Candidate;->nativeEquals(Lcom/myscript/atk/styluscore/Candidate;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/Candidate;->delete()V

    return-void
.end method

.method public flags()I
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Candidate;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Candidate_flags(JLcom/myscript/atk/styluscore/Candidate;)I

    move-result v0

    return v0
.end method

.method public grafted(Lcom/myscript/atk/styluscore/Candidate;I)Lcom/myscript/atk/styluscore/Candidate;
    .locals 8

    new-instance v7, Lcom/myscript/atk/styluscore/Candidate;

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Candidate;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Candidate;->getCPtr(Lcom/myscript/atk/styluscore/Candidate;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Candidate_grafted(JLcom/myscript/atk/styluscore/Candidate;JLcom/myscript/atk/styluscore/Candidate;I)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v7, v0, v1, v2}, Lcom/myscript/atk/styluscore/Candidate;-><init>(JZ)V

    return-object v7
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Candidate;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Candidate_hashCode(JLcom/myscript/atk/styluscore/Candidate;)I

    move-result v0

    return v0
.end method

.method public isBidiMarker()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Candidate;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Candidate_isBidiMarker(JLcom/myscript/atk/styluscore/Candidate;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Candidate;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Candidate_isEmpty(JLcom/myscript/atk/styluscore/Candidate;)Z

    move-result v0

    return v0
.end method

.method public isLineBreak()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Candidate;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Candidate_isLineBreak(JLcom/myscript/atk/styluscore/Candidate;)Z

    move-result v0

    return v0
.end method

.method public isSpace()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Candidate;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Candidate_isSpace(JLcom/myscript/atk/styluscore/Candidate;)Z

    move-result v0

    return v0
.end method

.method public isTab()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Candidate;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Candidate_isTab(JLcom/myscript/atk/styluscore/Candidate;)Z

    move-result v0

    return v0
.end method

.method public isWhitespace()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Candidate;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Candidate_isWhitespace(JLcom/myscript/atk/styluscore/Candidate;)Z

    move-result v0

    return v0
.end method

.method public label()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/Candidate;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Candidate_label(JLcom/myscript/atk/styluscore/Candidate;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public mapped(Lcom/myscript/atk/styluscore/Transform;Ljava/util/List;)Lcom/myscript/atk/styluscore/Candidate;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/myscript/atk/styluscore/Transform;",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/InkItem;",
            ">;)",
            "Lcom/myscript/atk/styluscore/Candidate;"
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
    new-instance v11, Lcom/myscript/atk/styluscore/Candidate;

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Candidate;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Transform;->getCPtr(Lcom/myscript/atk/styluscore/Transform;)J

    move-result-wide v3

    invoke-static {v8}, Lcom/myscript/atk/styluscore/ListInkItem;->getCPtr(Lcom/myscript/atk/styluscore/ListInkItem;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v8}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Candidate_mapped(JLcom/myscript/atk/styluscore/Candidate;JLcom/myscript/atk/styluscore/Transform;JLcom/myscript/atk/styluscore/ListInkItem;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v11, v0, v1, v2}, Lcom/myscript/atk/styluscore/Candidate;-><init>(JZ)V
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

.method public mirrored()Lcom/myscript/atk/styluscore/Candidate;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/Candidate;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/Candidate;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Candidate_mirrored(JLcom/myscript/atk/styluscore/Candidate;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/Candidate;-><init>(JZ)V

    return-object v0
.end method

.method public nativeEquals(Lcom/myscript/atk/styluscore/Candidate;)Z
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Candidate;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Candidate;->getCPtr(Lcom/myscript/atk/styluscore/Candidate;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Candidate_nativeEquals(JLcom/myscript/atk/styluscore/Candidate;JLcom/myscript/atk/styluscore/Candidate;)Z

    move-result v0

    return v0
.end method

.method public normalized(Lcom/myscript/atk/styluscore/InkRange;Ljava/util/List;)Lcom/myscript/atk/styluscore/Candidate;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/myscript/atk/styluscore/InkRange;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/myscript/atk/styluscore/Candidate;"
        }
    .end annotation

    new-instance v8, Lcom/myscript/atk/styluscore/ListInt;

    invoke-direct {v8, p2}, Lcom/myscript/atk/styluscore/ListInt;-><init>(Ljava/lang/Iterable;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v10

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v10, :cond_0

    invoke-interface {p2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/myscript/atk/styluscore/ListInt;->native_add(I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    new-instance v11, Lcom/myscript/atk/styluscore/Candidate;

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Candidate;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InkRange;->getCPtr(Lcom/myscript/atk/styluscore/InkRange;)J

    move-result-wide v3

    invoke-static {v8}, Lcom/myscript/atk/styluscore/ListInt;->getCPtr(Lcom/myscript/atk/styluscore/ListInt;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v8}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Candidate_normalized__SWIG_1(JLcom/myscript/atk/styluscore/Candidate;JLcom/myscript/atk/styluscore/InkRange;JLcom/myscript/atk/styluscore/ListInt;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v11, v0, v1, v2}, Lcom/myscript/atk/styluscore/Candidate;-><init>(JZ)V

    return-object v11
.end method

.method public normalized(Lcom/myscript/atk/styluscore/InkRange;Ljava/util/List;Z)Lcom/myscript/atk/styluscore/Candidate;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/myscript/atk/styluscore/InkRange;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)",
            "Lcom/myscript/atk/styluscore/Candidate;"
        }
    .end annotation

    new-instance v8, Lcom/myscript/atk/styluscore/ListInt;

    invoke-direct {v8, p2}, Lcom/myscript/atk/styluscore/ListInt;-><init>(Ljava/lang/Iterable;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v11

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v11, :cond_0

    invoke-interface {p2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/myscript/atk/styluscore/ListInt;->native_add(I)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    new-instance v12, Lcom/myscript/atk/styluscore/Candidate;

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Candidate;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InkRange;->getCPtr(Lcom/myscript/atk/styluscore/InkRange;)J

    move-result-wide v3

    invoke-static {v8}, Lcom/myscript/atk/styluscore/ListInt;->getCPtr(Lcom/myscript/atk/styluscore/ListInt;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move/from16 v9, p3

    invoke-static/range {v0 .. v9}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Candidate_normalized__SWIG_0(JLcom/myscript/atk/styluscore/Candidate;JLcom/myscript/atk/styluscore/InkRange;JLcom/myscript/atk/styluscore/ListInt;Z)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v12, v0, v1, v2}, Lcom/myscript/atk/styluscore/Candidate;-><init>(JZ)V

    return-object v12
.end method

.method public normalizedRecognitionScore()F
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Candidate;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Candidate_normalizedRecognitionScore(JLcom/myscript/atk/styluscore/Candidate;)F

    move-result v0

    return v0
.end method

.method public notEquals(Lcom/myscript/atk/styluscore/Candidate;)Z
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Candidate;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Candidate;->getCPtr(Lcom/myscript/atk/styluscore/Candidate;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Candidate_notEquals(JLcom/myscript/atk/styluscore/Candidate;JLcom/myscript/atk/styluscore/Candidate;)Z

    move-result v0

    return v0
.end method

.method public resemblanceScore()F
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Candidate;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Candidate_resemblanceScore(JLcom/myscript/atk/styluscore/Candidate;)F

    move-result v0

    return v0
.end method

.method public seamlesslyGraftsTo(Lcom/myscript/atk/styluscore/Candidate;)Z
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Candidate;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Candidate;->getCPtr(Lcom/myscript/atk/styluscore/Candidate;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Candidate_seamlesslyGraftsTo(JLcom/myscript/atk/styluscore/Candidate;JLcom/myscript/atk/styluscore/Candidate;)Z

    move-result v0

    return v0
.end method

.method public segments()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/Segment;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/myscript/atk/styluscore/ListSegment;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/Candidate;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Candidate_segments(JLcom/myscript/atk/styluscore/Candidate;)J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/ListSegment;-><init>(JZ)V

    return-object v0
.end method

.method public setFlags(I)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Candidate;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Candidate_setFlags(JLcom/myscript/atk/styluscore/Candidate;I)V

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 3

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Candidate;->swigCPtr:J

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Candidate_setLabel(JLcom/myscript/atk/styluscore/Candidate;[B)V

    return-void
.end method

.method public setNormalizedRecognitionScore(F)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Candidate;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Candidate_setNormalizedRecognitionScore(JLcom/myscript/atk/styluscore/Candidate;F)V

    return-void
.end method

.method public setResemblanceScore(F)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Candidate;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Candidate_setResemblanceScore(JLcom/myscript/atk/styluscore/Candidate;F)V

    return-void
.end method

.method public setSegments(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/Segment;",
            ">;)V"
        }
    .end annotation

    new-instance v5, Lcom/myscript/atk/styluscore/ListSegment;

    invoke-direct {v5, p1}, Lcom/myscript/atk/styluscore/ListSegment;-><init>(Ljava/lang/Iterable;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_0

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/Segment;

    invoke-virtual {v5, v0}, Lcom/myscript/atk/styluscore/ListSegment;->native_add(Lcom/myscript/atk/styluscore/Segment;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Candidate;->swigCPtr:J

    invoke-static {v5}, Lcom/myscript/atk/styluscore/ListSegment;->getCPtr(Lcom/myscript/atk/styluscore/ListSegment;)J

    move-result-wide v3

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Candidate_setSegments(JLcom/myscript/atk/styluscore/Candidate;JLcom/myscript/atk/styluscore/ListSegment;)V

    return-void
.end method

.method public setType(I)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Candidate;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Candidate_setType(JLcom/myscript/atk/styluscore/Candidate;I)V

    return-void
.end method

.method public simplified(Ljava/util/List;Ljava/util/List;)Lcom/myscript/atk/styluscore/Candidate;
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
            "Lcom/myscript/atk/styluscore/Candidate;"
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
    new-instance v12, Lcom/myscript/atk/styluscore/Candidate;

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Candidate;->swigCPtr:J

    invoke-static {v5}, Lcom/myscript/atk/styluscore/ListInkItem;->getCPtr(Lcom/myscript/atk/styluscore/ListInkItem;)J

    move-result-wide v3

    invoke-static {v8}, Lcom/myscript/atk/styluscore/ListInt;->getCPtr(Lcom/myscript/atk/styluscore/ListInt;)J

    move-result-wide v6

    move-object v2, p0

    invoke-static/range {v0 .. v8}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Candidate_simplified(JLcom/myscript/atk/styluscore/Candidate;JLcom/myscript/atk/styluscore/ListInkItem;JLcom/myscript/atk/styluscore/ListInt;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v12, v0, v1, v2}, Lcom/myscript/atk/styluscore/Candidate;-><init>(JZ)V
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

.method public split(Lcom/myscript/atk/styluscore/InkRange;Lcom/myscript/atk/styluscore/Candidate;Lcom/myscript/atk/styluscore/Candidate;Z)V
    .locals 13

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Candidate;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InkRange;->getCPtr(Lcom/myscript/atk/styluscore/InkRange;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/myscript/atk/styluscore/Candidate;->getCPtr(Lcom/myscript/atk/styluscore/Candidate;)J

    move-result-wide v6

    invoke-static/range {p3 .. p3}, Lcom/myscript/atk/styluscore/Candidate;->getCPtr(Lcom/myscript/atk/styluscore/Candidate;)J

    move-result-wide v9

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    move-object/from16 v11, p3

    move/from16 v12, p4

    invoke-static/range {v0 .. v12}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Candidate_split(JLcom/myscript/atk/styluscore/Candidate;JLcom/myscript/atk/styluscore/InkRange;JLcom/myscript/atk/styluscore/Candidate;JLcom/myscript/atk/styluscore/Candidate;Z)V

    return-void
.end method

.method public timeShifted(J)Lcom/myscript/atk/styluscore/Candidate;
    .locals 5

    new-instance v0, Lcom/myscript/atk/styluscore/Candidate;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/Candidate;->swigCPtr:J

    invoke-static {v2, v3, p0, p1, p2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Candidate_timeShifted(JLcom/myscript/atk/styluscore/Candidate;J)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/Candidate;-><init>(JZ)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/Candidate;->label()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/Candidate;->flags()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, " *"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public type()I
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Candidate;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Candidate_type(JLcom/myscript/atk/styluscore/Candidate;)I

    move-result v0

    return v0
.end method

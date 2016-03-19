.class public Lcom/myscript/atk/styluscore/SearchResult;
.super Ljava/lang/Object;
.source "SearchResult.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_SearchResult__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/SearchResult;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/myscript/atk/styluscore/SearchResult;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/myscript/atk/styluscore/SearchResult;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/myscript/atk/styluscore/SearchResult;)V
    .locals 3

    invoke-static {p1}, Lcom/myscript/atk/styluscore/SearchResult;->getCPtr(Lcom/myscript/atk/styluscore/SearchResult;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_SearchResult__SWIG_1(JLcom/myscript/atk/styluscore/SearchResult;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/SearchResult;-><init>(JZ)V

    return-void
.end method

.method protected static getCPtr(Lcom/myscript/atk/styluscore/SearchResult;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/SearchResult;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/SearchResult;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/myscript/atk/styluscore/SearchResult;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myscript/atk/styluscore/SearchResult;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/SearchResult;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->delete_SearchResult(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/myscript/atk/styluscore/SearchResult;->swigCPtr:J
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

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/SearchResult;->delete()V

    return-void
.end method

.method public getInputRange()Lcom/myscript/atk/styluscore/InkRange;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/InkRange;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/SearchResult;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->SearchResult_getInputRange(JLcom/myscript/atk/styluscore/SearchResult;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/InkRange;-><init>(JZ)V

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/SearchResult;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->SearchResult_getLabel(JLcom/myscript/atk/styluscore/SearchResult;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public getOccurrence()I
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/SearchResult;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->SearchResult_getOccurrence(JLcom/myscript/atk/styluscore/SearchResult;)I

    move-result v0

    return v0
.end method

.method public getScore()F
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/SearchResult;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->SearchResult_getScore(JLcom/myscript/atk/styluscore/SearchResult;)F

    move-result v0

    return v0
.end method

.method public nativeEquals(Lcom/myscript/atk/styluscore/SearchResult;)Z
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/SearchResult;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/SearchResult;->getCPtr(Lcom/myscript/atk/styluscore/SearchResult;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->SearchResult_nativeEquals(JLcom/myscript/atk/styluscore/SearchResult;JLcom/myscript/atk/styluscore/SearchResult;)Z

    move-result v0

    return v0
.end method

.method public notEquals(Lcom/myscript/atk/styluscore/SearchResult;)Z
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/SearchResult;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/SearchResult;->getCPtr(Lcom/myscript/atk/styluscore/SearchResult;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->SearchResult_notEquals(JLcom/myscript/atk/styluscore/SearchResult;JLcom/myscript/atk/styluscore/SearchResult;)Z

    move-result v0

    return v0
.end method

.method public setInputRange(Lcom/myscript/atk/styluscore/InkRange;)V
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/SearchResult;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InkRange;->getCPtr(Lcom/myscript/atk/styluscore/InkRange;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->SearchResult_setInputRange(JLcom/myscript/atk/styluscore/SearchResult;JLcom/myscript/atk/styluscore/InkRange;)V

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 3

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/SearchResult;->swigCPtr:J

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->SearchResult_setLabel(JLcom/myscript/atk/styluscore/SearchResult;[B)V

    return-void
.end method

.method public setOccurrence(I)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/SearchResult;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->SearchResult_setOccurrence(JLcom/myscript/atk/styluscore/SearchResult;I)V

    return-void
.end method

.method public setScore(F)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/SearchResult;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->SearchResult_setScore(JLcom/myscript/atk/styluscore/SearchResult;F)V

    return-void
.end method

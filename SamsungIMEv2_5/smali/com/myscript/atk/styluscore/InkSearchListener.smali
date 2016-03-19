.class public Lcom/myscript/atk/styluscore/InkSearchListener;
.super Ljava/lang/Object;
.source "InkSearchListener.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_InkSearchListener__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/InkSearchListener;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/myscript/atk/styluscore/InkSearchListener;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/myscript/atk/styluscore/InkSearchListener;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/myscript/atk/styluscore/InkSearchListener;)V
    .locals 3

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InkSearchListener;->getCPtr(Lcom/myscript/atk/styluscore/InkSearchListener;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_InkSearchListener__SWIG_1(JLcom/myscript/atk/styluscore/InkSearchListener;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/InkSearchListener;-><init>(JZ)V

    return-void
.end method

.method protected static getCPtr(Lcom/myscript/atk/styluscore/InkSearchListener;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkSearchListener;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public configured(Lcom/myscript/atk/styluscore/InkSearch;I)V
    .locals 7

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkSearchListener;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InkSearch;->getCPtr(Lcom/myscript/atk/styluscore/InkSearch;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkSearchListener_configured(JLcom/myscript/atk/styluscore/InkSearchListener;JLcom/myscript/atk/styluscore/InkSearch;I)V

    return-void
.end method

.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkSearchListener;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/myscript/atk/styluscore/InkSearchListener;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myscript/atk/styluscore/InkSearchListener;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkSearchListener;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->delete_InkSearchListener(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/myscript/atk/styluscore/InkSearchListener;->swigCPtr:J
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

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/InkSearchListener;->delete()V

    return-void
.end method

.method public indexingCanceled()V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkSearchListener;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkSearchListener_indexingCanceled(JLcom/myscript/atk/styluscore/InkSearchListener;)V

    return-void
.end method

.method public indexingProgress(II)Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkSearchListener;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkSearchListener_indexingProgress(JLcom/myscript/atk/styluscore/InkSearchListener;II)Z

    move-result v0

    return v0
.end method

.method public searchCallBack(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/SearchResult;",
            ">;)V"
        }
    .end annotation

    new-instance v5, Lcom/myscript/atk/styluscore/ListSearchResult;

    invoke-direct {v5, p1}, Lcom/myscript/atk/styluscore/ListSearchResult;-><init>(Ljava/lang/Iterable;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_0

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/SearchResult;

    invoke-virtual {v5, v0}, Lcom/myscript/atk/styluscore/ListSearchResult;->native_add(Lcom/myscript/atk/styluscore/SearchResult;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    :try_start_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkSearchListener;->swigCPtr:J

    invoke-static {v5}, Lcom/myscript/atk/styluscore/ListSearchResult;->getCPtr(Lcom/myscript/atk/styluscore/ListSearchResult;)J

    move-result-wide v3

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkSearchListener_searchCallBack(JLcom/myscript/atk/styluscore/InkSearchListener;JLcom/myscript/atk/styluscore/ListSearchResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-interface {p1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-interface {p1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    throw v0
.end method

.method public searchCanceled()V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkSearchListener;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkSearchListener_searchCanceled(JLcom/myscript/atk/styluscore/InkSearchListener;)V

    return-void
.end method

.method public searchProgress(II)Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkSearchListener;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkSearchListener_searchProgress(JLcom/myscript/atk/styluscore/InkSearchListener;II)Z

    move-result v0

    return v0
.end method

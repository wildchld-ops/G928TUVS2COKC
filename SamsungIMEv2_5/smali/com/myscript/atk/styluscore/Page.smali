.class public Lcom/myscript/atk/styluscore/Page;
.super Ljava/lang/Object;
.source "Page.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_Page__SWIG_1()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/Page;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/myscript/atk/styluscore/Page;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/myscript/atk/styluscore/Page;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/myscript/atk/styluscore/Document;I)V
    .locals 3

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Document;->getCPtr(Lcom/myscript/atk/styluscore/Document;)J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_Page__SWIG_0(JLcom/myscript/atk/styluscore/Document;I)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/Page;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(Lcom/myscript/atk/styluscore/Page;)V
    .locals 3

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Page;->getCPtr(Lcom/myscript/atk/styluscore/Page;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_Page__SWIG_2(JLcom/myscript/atk/styluscore/Page;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/Page;-><init>(JZ)V

    return-void
.end method

.method protected static getCPtr(Lcom/myscript/atk/styluscore/Page;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Page;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public addObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/String;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/Page;->swigCPtr:J

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v2, v3, p0, v1, v4}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Page_addObject(JLcom/myscript/atk/styluscore/Page;[B[B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public canRedo()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Page;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Page_canRedo(JLcom/myscript/atk/styluscore/Page;)Z

    move-result v0

    return v0
.end method

.method public canUndo()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Page;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Page_canUndo(JLcom/myscript/atk/styluscore/Page;)Z

    move-result v0

    return v0
.end method

.method public close()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Page;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Page_close(JLcom/myscript/atk/styluscore/Page;)Z

    move-result v0

    return v0
.end method

.method public creationDate()D
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Page;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Page_creationDate(JLcom/myscript/atk/styluscore/Page;)D

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Page;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/myscript/atk/styluscore/Page;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myscript/atk/styluscore/Page;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Page;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->delete_Page(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/myscript/atk/styluscore/Page;->swigCPtr:J
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

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/Page;->delete()V

    return-void
.end method

.method public height()F
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Page;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Page_height(JLcom/myscript/atk/styluscore/Page;)F

    move-result v0

    return v0
.end method

.method public modificationDate()D
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Page;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Page_modificationDate(JLcom/myscript/atk/styluscore/Page;)D

    move-result-wide v0

    return-wide v0
.end method

.method public readDate()D
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Page;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Page_readDate(JLcom/myscript/atk/styluscore/Page;)D

    move-result-wide v0

    return-wide v0
.end method

.method public redo()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Page;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Page_redo(JLcom/myscript/atk/styluscore/Page;)Z

    move-result v0

    return v0
.end method

.method public save()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Page;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Page_save(JLcom/myscript/atk/styluscore/Page;)Z

    move-result v0

    return v0
.end method

.method public saveToTemp()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Page;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Page_saveToTemp(JLcom/myscript/atk/styluscore/Page;)Z

    move-result v0

    return v0
.end method

.method public setBackgroundColor(Lcom/myscript/atk/styluscore/Color;)V
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Page;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Color;->getCPtr(Lcom/myscript/atk/styluscore/Color;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Page_setBackgroundColor(JLcom/myscript/atk/styluscore/Page;JLcom/myscript/atk/styluscore/Color;)V

    return-void
.end method

.method public setBackgroundImage(IILcom/myscript/atk/styluscore/SWIGTYPE_p_void;)V
    .locals 7

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Page;->swigCPtr:J

    invoke-static {p3}, Lcom/myscript/atk/styluscore/SWIGTYPE_p_void;->getCPtr(Lcom/myscript/atk/styluscore/SWIGTYPE_p_void;)J

    move-result-wide v5

    move-object v2, p0

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v6}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Page_setBackgroundImage(JLcom/myscript/atk/styluscore/Page;IIJ)V

    return-void
.end method

.method public setCreationDate(D)Z
    .locals 3

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Page;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Page_setCreationDate(JLcom/myscript/atk/styluscore/Page;D)Z

    move-result v0

    return v0
.end method

.method public setHeight(F)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Page;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Page_setHeight(JLcom/myscript/atk/styluscore/Page;F)V

    return-void
.end method

.method public setModificationDate(D)Z
    .locals 3

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Page;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Page_setModificationDate(JLcom/myscript/atk/styluscore/Page;D)Z

    move-result v0

    return v0
.end method

.method public setReadDate(D)Z
    .locals 3

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Page;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Page_setReadDate(JLcom/myscript/atk/styluscore/Page;D)Z

    move-result v0

    return v0
.end method

.method public setWidth(F)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Page;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Page_setWidth(JLcom/myscript/atk/styluscore/Page;F)V

    return-void
.end method

.method public strokeCount()I
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Page;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Page_strokeCount(JLcom/myscript/atk/styluscore/Page;)I

    move-result v0

    return v0
.end method

.method public undo()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Page;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Page_undo(JLcom/myscript/atk/styluscore/Page;)Z

    move-result v0

    return v0
.end method

.method public width()F
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Page;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Page_width(JLcom/myscript/atk/styluscore/Page;)F

    move-result v0

    return v0
.end method

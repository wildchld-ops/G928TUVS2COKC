.class public Lcom/myscript/atk/styluscore/Document;
.super Ljava/lang/Object;
.source "Document.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_Document__SWIG_1()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/Document;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/myscript/atk/styluscore/Document;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/myscript/atk/styluscore/Document;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/myscript/atk/styluscore/Document;)V
    .locals 3

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Document;->getCPtr(Lcom/myscript/atk/styluscore/Document;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_Document__SWIG_2(JLcom/myscript/atk/styluscore/Document;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/Document;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_Document__SWIG_0([B)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/Document;-><init>(JZ)V

    return-void
.end method

.method public static flushProxy()V
    .locals 0

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Document_flushProxy()V

    return-void
.end method

.method protected static getCPtr(Lcom/myscript/atk/styluscore/Document;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Document;->swigCPtr:J

    goto :goto_0
.end method

.method public static getDefaultHeight()F
    .locals 1

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Document_DefaultHeight_get()F

    move-result v0

    return v0
.end method

.method public static getDefaultWidth()F
    .locals 1

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Document_DefaultWidth_get()F

    move-result v0

    return v0
.end method

.method public static setDefaultHeight(F)V
    .locals 0

    invoke-static {p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Document_DefaultHeight_set(F)V

    return-void
.end method

.method public static setDefaultWidth(F)V
    .locals 0

    invoke-static {p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Document_DefaultWidth_set(F)V

    return-void
.end method


# virtual methods
.method public addListener(Lcom/myscript/atk/styluscore/DocumentListener;)V
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Document;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/DocumentListener;->getCPtr(Lcom/myscript/atk/styluscore/DocumentListener;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Document_addListener(JLcom/myscript/atk/styluscore/Document;JLcom/myscript/atk/styluscore/DocumentListener;)V

    return-void
.end method

.method public addPage()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Document;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Document_addPage(JLcom/myscript/atk/styluscore/Document;)Z

    move-result v0

    return v0
.end method

.method public addPageAt(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Document;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Document_addPageAt(JLcom/myscript/atk/styluscore/Document;I)Z

    move-result v0

    return v0
.end method

.method public closeDocument()V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Document;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Document_closeDocument(JLcom/myscript/atk/styluscore/Document;)V

    return-void
.end method

.method public creationDate()D
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Document;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Document_creationDate(JLcom/myscript/atk/styluscore/Document;)D

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Document;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/myscript/atk/styluscore/Document;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myscript/atk/styluscore/Document;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Document;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->delete_Document(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/myscript/atk/styluscore/Document;->swigCPtr:J
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

.method public filePath()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/Document;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Document_filePath(JLcom/myscript/atk/styluscore/Document;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/Document;->delete()V

    return-void
.end method

.method public height()F
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Document;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Document_height(JLcom/myscript/atk/styluscore/Document;)F

    move-result v0

    return v0
.end method

.method public isModified()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Document;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Document_isModified(JLcom/myscript/atk/styluscore/Document;)Z

    move-result v0

    return v0
.end method

.method public modificationDate()D
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Document;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Document_modificationDate(JLcom/myscript/atk/styluscore/Document;)D

    move-result-wide v0

    return-wide v0
.end method

.method public move(Ljava/lang/String;)Z
    .locals 3

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Document;->swigCPtr:J

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Document_move(JLcom/myscript/atk/styluscore/Document;[B)Z

    move-result v0

    return v0
.end method

.method public numberOfPages()I
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Document;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Document_numberOfPages(JLcom/myscript/atk/styluscore/Document;)I

    move-result v0

    return v0
.end method

.method public page(I)Lcom/myscript/atk/styluscore/Page;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/Page;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/Document;->swigCPtr:J

    invoke-static {v2, v3, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Document_page(JLcom/myscript/atk/styluscore/Document;I)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/Page;-><init>(JZ)V

    return-object v0
.end method

.method public readDate()D
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Document;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Document_readDate(JLcom/myscript/atk/styluscore/Document;)D

    move-result-wide v0

    return-wide v0
.end method

.method public remove()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Document;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Document_remove(JLcom/myscript/atk/styluscore/Document;)Z

    move-result v0

    return v0
.end method

.method public removeFirstPage()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Document;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Document_removeFirstPage(JLcom/myscript/atk/styluscore/Document;)Z

    move-result v0

    return v0
.end method

.method public removeLastPage()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Document;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Document_removeLastPage(JLcom/myscript/atk/styluscore/Document;)Z

    move-result v0

    return v0
.end method

.method public removeListener(Lcom/myscript/atk/styluscore/DocumentListener;)V
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Document;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/DocumentListener;->getCPtr(Lcom/myscript/atk/styluscore/DocumentListener;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Document_removeListener(JLcom/myscript/atk/styluscore/Document;JLcom/myscript/atk/styluscore/DocumentListener;)V

    return-void
.end method

.method public removePageAt(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Document;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Document_removePageAt(JLcom/myscript/atk/styluscore/Document;I)Z

    move-result v0

    return v0
.end method

.method public save()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Document;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Document_save__SWIG_1(JLcom/myscript/atk/styluscore/Document;)Z

    move-result v0

    return v0
.end method

.method public save(Z)Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Document;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Document_save__SWIG_0(JLcom/myscript/atk/styluscore/Document;Z)Z

    move-result v0

    return v0
.end method

.method public saveAs(Ljava/lang/String;)Z
    .locals 3

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Document;->swigCPtr:J

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Document_saveAs__SWIG_1(JLcom/myscript/atk/styluscore/Document;[B)Z

    move-result v0

    return v0
.end method

.method public saveAs(Ljava/lang/String;Z)Z
    .locals 3

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Document;->swigCPtr:J

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v1, p0, v2, p2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Document_saveAs__SWIG_0(JLcom/myscript/atk/styluscore/Document;[BZ)Z

    move-result v0

    return v0
.end method

.method public saveToTemp()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Document;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Document_saveToTemp__SWIG_1(JLcom/myscript/atk/styluscore/Document;)Z

    move-result v0

    return v0
.end method

.method public saveToTemp(Z)Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Document;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Document_saveToTemp__SWIG_0(JLcom/myscript/atk/styluscore/Document;Z)Z

    move-result v0

    return v0
.end method

.method public setCreationDate(D)Z
    .locals 3

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Document;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Document_setCreationDate(JLcom/myscript/atk/styluscore/Document;D)Z

    move-result v0

    return v0
.end method

.method public setHeight(F)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Document;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Document_setHeight(JLcom/myscript/atk/styluscore/Document;F)V

    return-void
.end method

.method public setModificationDate(D)Z
    .locals 3

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Document;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Document_setModificationDate(JLcom/myscript/atk/styluscore/Document;D)Z

    move-result v0

    return v0
.end method

.method public setReadDate(D)Z
    .locals 3

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Document;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Document_setReadDate(JLcom/myscript/atk/styluscore/Document;D)Z

    move-result v0

    return v0
.end method

.method public setWidth(F)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Document;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Document_setWidth(JLcom/myscript/atk/styluscore/Document;F)V

    return-void
.end method

.method public width()F
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Document;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Document_width(JLcom/myscript/atk/styluscore/Document;)F

    move-result v0

    return v0
.end method

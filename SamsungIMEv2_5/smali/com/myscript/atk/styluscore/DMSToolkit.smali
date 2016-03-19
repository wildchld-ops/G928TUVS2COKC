.class public Lcom/myscript/atk/styluscore/DMSToolkit;
.super Ljava/lang/Object;
.source "DMSToolkit.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_DMSToolkit__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/DMSToolkit;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/myscript/atk/styluscore/DMSToolkit;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/myscript/atk/styluscore/DMSToolkit;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/myscript/atk/styluscore/DMSToolkit;)V
    .locals 3

    invoke-static {p1}, Lcom/myscript/atk/styluscore/DMSToolkit;->getCPtr(Lcom/myscript/atk/styluscore/DMSToolkit;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_DMSToolkit__SWIG_1(JLcom/myscript/atk/styluscore/DMSToolkit;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/DMSToolkit;-><init>(JZ)V

    return-void
.end method

.method protected static getCPtr(Lcom/myscript/atk/styluscore/DMSToolkit;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/DMSToolkit;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public createDocumentWithPath(Ljava/lang/String;)Lcom/myscript/atk/styluscore/Document;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/Document;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/DMSToolkit;->swigCPtr:J

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v2, v3, p0, v1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->DMSToolkit_createDocumentWithPath(JLcom/myscript/atk/styluscore/DMSToolkit;[B)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/Document;-><init>(JZ)V

    return-object v0
.end method

.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/DMSToolkit;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/myscript/atk/styluscore/DMSToolkit;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myscript/atk/styluscore/DMSToolkit;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/DMSToolkit;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->delete_DMSToolkit(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/myscript/atk/styluscore/DMSToolkit;->swigCPtr:J
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

.method public deleteDocumentAtPath(Ljava/lang/String;)Z
    .locals 3

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/DMSToolkit;->swigCPtr:J

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->DMSToolkit_deleteDocumentAtPath(JLcom/myscript/atk/styluscore/DMSToolkit;[B)Z

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/DMSToolkit;->delete()V

    return-void
.end method

.method public getFilePaths()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/myscript/atk/styluscore/ListString;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/DMSToolkit;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->DMSToolkit_getFilePaths(JLcom/myscript/atk/styluscore/DMSToolkit;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/ListString;-><init>(JZ)V

    return-object v0
.end method

.method public getOriginDirectory()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/DMSToolkit;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->DMSToolkit_getOriginDirectory(JLcom/myscript/atk/styluscore/DMSToolkit;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public getTempDirectory()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/DMSToolkit;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->DMSToolkit_getTempDirectory(JLcom/myscript/atk/styluscore/DMSToolkit;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public moveDocumentToPath(Lcom/myscript/atk/styluscore/Document;Ljava/lang/String;)Z
    .locals 7

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/DMSToolkit;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Document;->getCPtr(Lcom/myscript/atk/styluscore/Document;)J

    move-result-wide v3

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v6}, Lcom/myscript/atk/styluscore/styluscoreJNI;->DMSToolkit_moveDocumentToPath(JLcom/myscript/atk/styluscore/DMSToolkit;JLcom/myscript/atk/styluscore/Document;[B)Z

    move-result v0

    return v0
.end method

.method public moveFileFromPathToPath(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/DMSToolkit;->swigCPtr:J

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v0, v1, p0, v2, v3}, Lcom/myscript/atk/styluscore/styluscoreJNI;->DMSToolkit_moveFileFromPathToPath(JLcom/myscript/atk/styluscore/DMSToolkit;[B[B)Z

    move-result v0

    return v0
.end method

.method public saveDocument(Lcom/myscript/atk/styluscore/Document;Z)Z
    .locals 7

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/DMSToolkit;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Document;->getCPtr(Lcom/myscript/atk/styluscore/Document;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/myscript/atk/styluscore/styluscoreJNI;->DMSToolkit_saveDocument(JLcom/myscript/atk/styluscore/DMSToolkit;JLcom/myscript/atk/styluscore/Document;Z)Z

    move-result v0

    return v0
.end method

.method public saveDocumentAs(Lcom/myscript/atk/styluscore/Document;Ljava/lang/String;Z)Z
    .locals 8

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/DMSToolkit;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Document;->getCPtr(Lcom/myscript/atk/styluscore/Document;)J

    move-result-wide v3

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    move-object v2, p0

    move-object v5, p1

    move v7, p3

    invoke-static/range {v0 .. v7}, Lcom/myscript/atk/styluscore/styluscoreJNI;->DMSToolkit_saveDocumentAs(JLcom/myscript/atk/styluscore/DMSToolkit;JLcom/myscript/atk/styluscore/Document;[BZ)Z

    move-result v0

    return v0
.end method

.method public setOriginDirectory(Ljava/lang/String;)V
    .locals 3

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/DMSToolkit;->swigCPtr:J

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->DMSToolkit_setOriginDirectory(JLcom/myscript/atk/styluscore/DMSToolkit;[B)V

    return-void
.end method

.method public setTempDirectory(Ljava/lang/String;)Z
    .locals 3

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/DMSToolkit;->swigCPtr:J

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->DMSToolkit_setTempDirectory(JLcom/myscript/atk/styluscore/DMSToolkit;[B)Z

    move-result v0

    return v0
.end method

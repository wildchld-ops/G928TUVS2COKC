.class public Lcom/myscript/atk/styluscore/InputMethodConfig;
.super Ljava/lang/Object;
.source "InputMethodConfig.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_InputMethodConfig__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/InputMethodConfig;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/myscript/atk/styluscore/InputMethodConfig;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/myscript/atk/styluscore/InputMethodConfig;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/myscript/atk/styluscore/InputMethodConfig;)V
    .locals 3

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InputMethodConfig;->getCPtr(Lcom/myscript/atk/styluscore/InputMethodConfig;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_InputMethodConfig__SWIG_1(JLcom/myscript/atk/styluscore/InputMethodConfig;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/InputMethodConfig;-><init>(JZ)V

    return-void
.end method

.method protected static getCPtr(Lcom/myscript/atk/styluscore/InputMethodConfig;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethodConfig;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public addLexicon(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v5, Lcom/myscript/atk/styluscore/ListString;

    invoke-direct {v5, p1}, Lcom/myscript/atk/styluscore/ListString;-><init>(Ljava/lang/Iterable;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_0

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/myscript/atk/styluscore/ListString;->native_add(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethodConfig;->swigCPtr:J

    invoke-static {v5}, Lcom/myscript/atk/styluscore/ListString;->getCPtr(Lcom/myscript/atk/styluscore/ListString;)J

    move-result-wide v3

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethodConfig_addLexicon(JLcom/myscript/atk/styluscore/InputMethodConfig;JLcom/myscript/atk/styluscore/ListString;)V

    return-void
.end method

.method public addLexiconEntry(Ljava/lang/String;)V
    .locals 3

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethodConfig;->swigCPtr:J

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethodConfig_addLexiconEntry(JLcom/myscript/atk/styluscore/InputMethodConfig;[B)V

    return-void
.end method

.method public addResource(Ljava/lang/String;)V
    .locals 3

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethodConfig;->swigCPtr:J

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethodConfig_addResource(JLcom/myscript/atk/styluscore/InputMethodConfig;[B)V

    return-void
.end method

.method public addResourceDir(Ljava/lang/String;)V
    .locals 3

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethodConfig;->swigCPtr:J

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethodConfig_addResourceDir(JLcom/myscript/atk/styluscore/InputMethodConfig;[B)V

    return-void
.end method

.method public autoIso()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethodConfig;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethodConfig_autoIso(JLcom/myscript/atk/styluscore/InputMethodConfig;)Z

    move-result v0

    return v0
.end method

.method public candidateListSize(I)J
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethodConfig;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethodConfig_candidateListSize(JLcom/myscript/atk/styluscore/InputMethodConfig;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public certificate()Lcom/myscript/atk/styluscore/VectorChar;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/VectorChar;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/InputMethodConfig;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethodConfig_certificate(JLcom/myscript/atk/styluscore/InputMethodConfig;)J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/VectorChar;-><init>(JZ)V

    return-object v0
.end method

.method public coordinateResolution()F
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethodConfig;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethodConfig_coordinateResolution(JLcom/myscript/atk/styluscore/InputMethodConfig;)F

    move-result v0

    return v0
.end method

.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethodConfig;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/myscript/atk/styluscore/InputMethodConfig;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myscript/atk/styluscore/InputMethodConfig;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethodConfig;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->delete_InputMethodConfig(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethodConfig;->swigCPtr:J
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

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/InputMethodConfig;->delete()V

    return-void
.end method

.method public freezeTimeout()I
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethodConfig;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethodConfig_freezeTimeout(JLcom/myscript/atk/styluscore/InputMethodConfig;)I

    move-result v0

    return v0
.end method

.method public isPrefixRecognition()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethodConfig;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethodConfig_isPrefixRecognition(JLcom/myscript/atk/styluscore/InputMethodConfig;)Z

    move-result v0

    return v0
.end method

.method public locale()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/InputMethodConfig;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethodConfig_locale(JLcom/myscript/atk/styluscore/InputMethodConfig;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public localeTextDirection()I
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethodConfig;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethodConfig_localeTextDirection(JLcom/myscript/atk/styluscore/InputMethodConfig;)I

    move-result v0

    return v0
.end method

.method public missingResources()Ljava/util/List;
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

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/InputMethodConfig;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethodConfig_missingResources(JLcom/myscript/atk/styluscore/InputMethodConfig;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/ListString;-><init>(JZ)V

    return-object v0
.end method

.method public nativeEquals(Lcom/myscript/atk/styluscore/InputMethodConfig;)Z
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethodConfig;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InputMethodConfig;->getCPtr(Lcom/myscript/atk/styluscore/InputMethodConfig;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethodConfig_nativeEquals(JLcom/myscript/atk/styluscore/InputMethodConfig;JLcom/myscript/atk/styluscore/InputMethodConfig;)Z

    move-result v0

    return v0
.end method

.method public notEquals(Lcom/myscript/atk/styluscore/InputMethodConfig;)Z
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethodConfig;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InputMethodConfig;->getCPtr(Lcom/myscript/atk/styluscore/InputMethodConfig;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethodConfig_notEquals(JLcom/myscript/atk/styluscore/InputMethodConfig;JLcom/myscript/atk/styluscore/InputMethodConfig;)Z

    move-result v0

    return v0
.end method

.method public productID()I
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethodConfig;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethodConfig_productID(JLcom/myscript/atk/styluscore/InputMethodConfig;)I

    move-result v0

    return v0
.end method

.method public protectionListener()Lcom/myscript/atk/styluscore/styluscore$IRuntimeEngineListener;
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethodConfig;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethodConfig_protectionListener(JLcom/myscript/atk/styluscore/InputMethodConfig;)Lcom/myscript/atk/styluscore/styluscore$IRuntimeEngineListener;

    move-result-object v0

    return-object v0
.end method

.method public resources()Ljava/util/List;
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

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/InputMethodConfig;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethodConfig_resources(JLcom/myscript/atk/styluscore/InputMethodConfig;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/ListString;-><init>(JZ)V

    return-object v0
.end method

.method public searchResource(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/InputMethodConfig;->swigCPtr:J

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v2, v3, p0, v1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethodConfig_searchResource(JLcom/myscript/atk/styluscore/InputMethodConfig;[B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public setAutoIso(Z)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethodConfig;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethodConfig_setAutoIso(JLcom/myscript/atk/styluscore/InputMethodConfig;Z)V

    return-void
.end method

.method public setCandidateListSize(IJ)V
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethodConfig;->swigCPtr:J

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethodConfig_setCandidateListSize(JLcom/myscript/atk/styluscore/InputMethodConfig;IJ)V

    return-void
.end method

.method public setCertificate([B)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethodConfig;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethodConfig_setCertificate(JLcom/myscript/atk/styluscore/InputMethodConfig;[B)V

    return-void
.end method

.method public setCoordinateResolution(F)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethodConfig;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethodConfig_setCoordinateResolution(JLcom/myscript/atk/styluscore/InputMethodConfig;F)V

    return-void
.end method

.method public setFreezeTimeout(I)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethodConfig;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethodConfig_setFreezeTimeout(JLcom/myscript/atk/styluscore/InputMethodConfig;I)V

    return-void
.end method

.method public setLocale(Ljava/lang/String;)V
    .locals 3

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethodConfig;->swigCPtr:J

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethodConfig_setLocale(JLcom/myscript/atk/styluscore/InputMethodConfig;[B)V

    return-void
.end method

.method public setPrefixRecognition(Z)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethodConfig;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethodConfig_setPrefixRecognition(JLcom/myscript/atk/styluscore/InputMethodConfig;Z)V

    return-void
.end method

.method public setProductID(I)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethodConfig;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethodConfig_setProductID(JLcom/myscript/atk/styluscore/InputMethodConfig;I)V

    return-void
.end method

.method public setProtectionListener(Lcom/myscript/atk/styluscore/styluscore$IRuntimeEngineListener;)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethodConfig;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethodConfig_setProtectionListener(JLcom/myscript/atk/styluscore/InputMethodConfig;Lcom/myscript/atk/styluscore/styluscore$IRuntimeEngineListener;)V

    return-void
.end method

.method public setSpeedQualityCompromise(I)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethodConfig;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethodConfig_setSpeedQualityCompromise(JLcom/myscript/atk/styluscore/InputMethodConfig;I)V

    return-void
.end method

.method public setStrictAlienCharacters(Z)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethodConfig;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethodConfig_setStrictAlienCharacters(JLcom/myscript/atk/styluscore/InputMethodConfig;Z)V

    return-void
.end method

.method public setUnfreezeWordCount(I)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethodConfig;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethodConfig_setUnfreezeWordCount(JLcom/myscript/atk/styluscore/InputMethodConfig;I)V

    return-void
.end method

.method public setUnfreezeWordsAccrossLines(Z)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethodConfig;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethodConfig_setUnfreezeWordsAccrossLines(JLcom/myscript/atk/styluscore/InputMethodConfig;Z)V

    return-void
.end method

.method public speedQualityCompromise()I
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethodConfig;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethodConfig_speedQualityCompromise(JLcom/myscript/atk/styluscore/InputMethodConfig;)I

    move-result v0

    return v0
.end method

.method public strictAlienCharacters()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethodConfig;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethodConfig_strictAlienCharacters(JLcom/myscript/atk/styluscore/InputMethodConfig;)Z

    move-result v0

    return v0
.end method

.method public supplementaryLexicon()Ljava/util/List;
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

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/InputMethodConfig;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethodConfig_supplementaryLexicon(JLcom/myscript/atk/styluscore/InputMethodConfig;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/ListString;-><init>(JZ)V

    return-object v0
.end method

.method public unfreezeWordCount()I
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethodConfig;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethodConfig_unfreezeWordCount(JLcom/myscript/atk/styluscore/InputMethodConfig;)I

    move-result v0

    return v0
.end method

.method public unfreezeWordsAccrossLines()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethodConfig;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethodConfig_unfreezeWordsAccrossLines(JLcom/myscript/atk/styluscore/InputMethodConfig;)Z

    move-result v0

    return v0
.end method

.method public updateLexicon(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v5, Lcom/myscript/atk/styluscore/ListString;

    invoke-direct {v5, p1}, Lcom/myscript/atk/styluscore/ListString;-><init>(Ljava/lang/Iterable;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_0

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/myscript/atk/styluscore/ListString;->native_add(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethodConfig;->swigCPtr:J

    invoke-static {v5}, Lcom/myscript/atk/styluscore/ListString;->getCPtr(Lcom/myscript/atk/styluscore/ListString;)J

    move-result-wide v3

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethodConfig_updateLexicon(JLcom/myscript/atk/styluscore/InputMethodConfig;JLcom/myscript/atk/styluscore/ListString;)V

    return-void
.end method

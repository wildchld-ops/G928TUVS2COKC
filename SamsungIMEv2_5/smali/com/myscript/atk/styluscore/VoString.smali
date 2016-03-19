.class public Lcom/myscript/atk/styluscore/VoString;
.super Ljava/lang/Object;
.source "VoString.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_VoString__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/VoString;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(C)V
    .locals 3

    invoke-static {p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_VoString__SWIG_1(C)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/VoString;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/myscript/atk/styluscore/VoString;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/myscript/atk/styluscore/VoString;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/myscript/atk/styluscore/Char;)V
    .locals 3

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Char;->getCPtr(Lcom/myscript/atk/styluscore/Char;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_VoString__SWIG_2(JLcom/myscript/atk/styluscore/Char;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/VoString;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_VoString__SWIG_3([B)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/VoString;-><init>(JZ)V

    return-void
.end method

.method protected static getCPtr(Lcom/myscript/atk/styluscore/VoString;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/VoString;->swigCPtr:J

    goto :goto_0
.end method

.method public static number(D)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->VoString_number__SWIG_2(D)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static number(DC)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->VoString_number__SWIG_1(DC)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static number(DCI)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1, p2, p3}, Lcom/myscript/atk/styluscore/styluscoreJNI;->VoString_number__SWIG_0(DCI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/VoString;->swigCPtr:J

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v2, v3, p0, v1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->VoString_add(JLcom/myscript/atk/styluscore/VoString;[B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public addAffect(Ljava/lang/String;)Lcom/myscript/atk/styluscore/VoString;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/VoString;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/VoString;->swigCPtr:J

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v2, v3, p0, v1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->VoString_addAffect(JLcom/myscript/atk/styluscore/VoString;[B)J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/VoString;-><init>(JZ)V

    return-object v0
.end method

.method public append(Ljava/lang/String;)Lcom/myscript/atk/styluscore/VoString;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/VoString;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/VoString;->swigCPtr:J

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v2, v3, p0, v1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->VoString_append(JLcom/myscript/atk/styluscore/VoString;[B)J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/VoString;-><init>(JZ)V

    return-object v0
.end method

.method public at(I)Lcom/myscript/atk/styluscore/Char;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/Char;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/VoString;->swigCPtr:J

    invoke-static {v2, v3, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->VoString_at(JLcom/myscript/atk/styluscore/VoString;I)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/Char;-><init>(JZ)V

    return-object v0
.end method

.method public byteCount()I
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/VoString;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->VoString_byteCount(JLcom/myscript/atk/styluscore/VoString;)I

    move-result v0

    return v0
.end method

.method public chop(I)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/VoString;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->VoString_chop(JLcom/myscript/atk/styluscore/VoString;I)V

    return-void
.end method

.method public clear()V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/VoString;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->VoString_clear(JLcom/myscript/atk/styluscore/VoString;)V

    return-void
.end method

.method public contains(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/VoString;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->VoString_contains__SWIG_1(JLcom/myscript/atk/styluscore/VoString;I)Z

    move-result v0

    return v0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 3

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/VoString;->swigCPtr:J

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->VoString_contains__SWIG_0(JLcom/myscript/atk/styluscore/VoString;[B)Z

    move-result v0

    return v0
.end method

.method public containsOneCharOf(Ljava/lang/String;)Z
    .locals 3

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/VoString;->swigCPtr:J

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->VoString_containsOneCharOf(JLcom/myscript/atk/styluscore/VoString;[B)Z

    move-result v0

    return v0
.end method

.method public count(Lcom/myscript/atk/styluscore/Char;)I
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/VoString;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Char;->getCPtr(Lcom/myscript/atk/styluscore/Char;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->VoString_count(JLcom/myscript/atk/styluscore/VoString;JLcom/myscript/atk/styluscore/Char;)I

    move-result v0

    return v0
.end method

.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/VoString;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/myscript/atk/styluscore/VoString;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myscript/atk/styluscore/VoString;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/VoString;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->delete_VoString(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/myscript/atk/styluscore/VoString;->swigCPtr:J
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

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/myscript/atk/styluscore/VoString;->nativeEquals(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/VoString;->delete()V

    return-void
.end method

.method public findBytePos(Ljava/lang/String;)I
    .locals 3

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/VoString;->swigCPtr:J

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->VoString_findBytePos__SWIG_1(JLcom/myscript/atk/styluscore/VoString;[B)I

    move-result v0

    return v0
.end method

.method public findBytePos(Ljava/lang/String;I)I
    .locals 3

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/VoString;->swigCPtr:J

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v1, p0, v2, p2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->VoString_findBytePos__SWIG_0(JLcom/myscript/atk/styluscore/VoString;[BI)I

    move-result v0

    return v0
.end method

.method public firstChar()Lcom/myscript/atk/styluscore/Char;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/Char;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/VoString;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->VoString_firstChar(JLcom/myscript/atk/styluscore/VoString;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/Char;-><init>(JZ)V

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/VoString;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->VoString_hashCode(JLcom/myscript/atk/styluscore/VoString;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/VoString;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->VoString_isEmpty(JLcom/myscript/atk/styluscore/VoString;)Z

    move-result v0

    return v0
.end method

.method public isUnicodeChar(J)Z
    .locals 3

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/VoString;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->VoString_isUnicodeChar(JLcom/myscript/atk/styluscore/VoString;J)Z

    move-result v0

    return v0
.end method

.method public lastChar()Lcom/myscript/atk/styluscore/Char;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/Char;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/VoString;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->VoString_lastChar(JLcom/myscript/atk/styluscore/VoString;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/Char;-><init>(JZ)V

    return-object v0
.end method

.method public length()I
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/VoString;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->VoString_length(JLcom/myscript/atk/styluscore/VoString;)I

    move-result v0

    return v0
.end method

.method public mid(I)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/VoString;->swigCPtr:J

    invoke-static {v2, v3, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->VoString_mid__SWIG_1(JLcom/myscript/atk/styluscore/VoString;I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public mid(II)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/VoString;->swigCPtr:J

    invoke-static {v2, v3, p0, p1, p2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->VoString_mid__SWIG_0(JLcom/myscript/atk/styluscore/VoString;II)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public nativeEquals(Ljava/lang/String;)Z
    .locals 3

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/VoString;->swigCPtr:J

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->VoString_nativeEquals(JLcom/myscript/atk/styluscore/VoString;[B)Z

    move-result v0

    return v0
.end method

.method public notEquals(Ljava/lang/String;)Z
    .locals 3

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/VoString;->swigCPtr:J

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->VoString_notEquals(JLcom/myscript/atk/styluscore/VoString;[B)Z

    move-result v0

    return v0
.end method

.method public remapCircledCharacters()V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/VoString;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->VoString_remapCircledCharacters(JLcom/myscript/atk/styluscore/VoString;)V

    return-void
.end method

.method public remove(II)Lcom/myscript/atk/styluscore/VoString;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/VoString;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/VoString;->swigCPtr:J

    invoke-static {v2, v3, p0, p1, p2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->VoString_remove__SWIG_1(JLcom/myscript/atk/styluscore/VoString;II)J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/VoString;-><init>(JZ)V

    return-object v0
.end method

.method public remove(Ljava/lang/String;)Lcom/myscript/atk/styluscore/VoString;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/VoString;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/VoString;->swigCPtr:J

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v2, v3, p0, v1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->VoString_remove__SWIG_0(JLcom/myscript/atk/styluscore/VoString;[B)J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/VoString;-><init>(JZ)V

    return-object v0
.end method

.method public repeated(I)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/VoString;->swigCPtr:J

    invoke-static {v2, v3, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->VoString_repeated(JLcom/myscript/atk/styluscore/VoString;I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public replace(IILjava/lang/String;)Lcom/myscript/atk/styluscore/VoString;
    .locals 7

    new-instance v6, Lcom/myscript/atk/styluscore/VoString;

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/VoString;->swigCPtr:J

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    move-object v2, p0

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->VoString_replace__SWIG_1(JLcom/myscript/atk/styluscore/VoString;II[B)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-direct {v6, v0, v1, v2}, Lcom/myscript/atk/styluscore/VoString;-><init>(JZ)V

    return-object v6
.end method

.method public replace(Ljava/lang/String;Ljava/lang/String;)Lcom/myscript/atk/styluscore/VoString;
    .locals 5

    new-instance v0, Lcom/myscript/atk/styluscore/VoString;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/VoString;->swigCPtr:J

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v2, v3, p0, v1, v4}, Lcom/myscript/atk/styluscore/styluscoreJNI;->VoString_replace__SWIG_0(JLcom/myscript/atk/styluscore/VoString;[B[B)J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/VoString;-><init>(JZ)V

    return-object v0
.end method

.method public split(C)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/myscript/atk/styluscore/ListString;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/VoString;->swigCPtr:J

    invoke-static {v2, v3, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->VoString_split(JLcom/myscript/atk/styluscore/VoString;C)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/ListString;-><init>(JZ)V

    return-object v0
.end method

.method public toDouble()D
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/VoString;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->VoString_toDouble(JLcom/myscript/atk/styluscore/VoString;)D

    move-result-wide v0

    return-wide v0
.end method

.method public toInt()I
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/VoString;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->VoString_toInt(JLcom/myscript/atk/styluscore/VoString;)I

    move-result v0

    return v0
.end method

.method public toLower()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/VoString;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->VoString_toLower(JLcom/myscript/atk/styluscore/VoString;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public toUpper()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/VoString;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->VoString_toUpper(JLcom/myscript/atk/styluscore/VoString;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

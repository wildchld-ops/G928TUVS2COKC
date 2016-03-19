.class public Lcom/myscript/atk/styluscore/ItfReader;
.super Ljava/lang/Object;
.source "ItfReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/myscript/atk/styluscore/ItfReader$Error;
    }
.end annotation


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/myscript/atk/styluscore/ItfReader;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/myscript/atk/styluscore/ItfReader;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/myscript/atk/styluscore/ItfReader;)V
    .locals 3

    invoke-static {p1}, Lcom/myscript/atk/styluscore/ItfReader;->getCPtr(Lcom/myscript/atk/styluscore/ItfReader;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_ItfReader__SWIG_1(JLcom/myscript/atk/styluscore/ItfReader;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/ItfReader;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_ItfReader__SWIG_0([B)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/ItfReader;-><init>(JZ)V

    return-void
.end method

.method public static errorCodeToString(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ItfReader_errorCodeToString(I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method protected static getCPtr(Lcom/myscript/atk/styluscore/ItfReader;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ItfReader;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public comment()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/ItfReader;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ItfReader_comment__SWIG_1(JLcom/myscript/atk/styluscore/ItfReader;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public comment(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/ItfReader;->swigCPtr:J

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v2, v3, p0, v1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ItfReader_comment__SWIG_0(JLcom/myscript/atk/styluscore/ItfReader;[B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public config()Lcom/myscript/atk/styluscore/InputMethodConfig;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/InputMethodConfig;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/ItfReader;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ItfReader_config__SWIG_1(JLcom/myscript/atk/styluscore/ItfReader;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/InputMethodConfig;-><init>(JZ)V

    return-object v0
.end method

.method public config(Ljava/lang/String;)Lcom/myscript/atk/styluscore/InputMethodConfig;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/InputMethodConfig;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/ItfReader;->swigCPtr:J

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v2, v3, p0, v1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ItfReader_config__SWIG_0(JLcom/myscript/atk/styluscore/ItfReader;[B)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/InputMethodConfig;-><init>(JZ)V

    return-object v0
.end method

.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ItfReader;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/myscript/atk/styluscore/ItfReader;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myscript/atk/styluscore/ItfReader;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ItfReader;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->delete_ItfReader(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/myscript/atk/styluscore/ItfReader;->swigCPtr:J
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

.method public errorCode()I
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ItfReader;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ItfReader_errorCode(JLcom/myscript/atk/styluscore/ItfReader;)I

    move-result v0

    return v0
.end method

.method public errorLine()I
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ItfReader;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ItfReader_errorLine(JLcom/myscript/atk/styluscore/ItfReader;)I

    move-result v0

    return v0
.end method

.method public errorString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/ItfReader;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ItfReader_errorString(JLcom/myscript/atk/styluscore/ItfReader;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public failed()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ItfReader;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ItfReader_failed(JLcom/myscript/atk/styluscore/ItfReader;)Z

    move-result v0

    return v0
.end method

.method public field()Lcom/myscript/atk/styluscore/InkField;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/InkField;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/ItfReader;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ItfReader_field__SWIG_1(JLcom/myscript/atk/styluscore/ItfReader;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/InkField;-><init>(JZ)V

    return-object v0
.end method

.method public field(Ljava/lang/String;)Lcom/myscript/atk/styluscore/InkField;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/InkField;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/ItfReader;->swigCPtr:J

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v2, v3, p0, v1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ItfReader_field__SWIG_0(JLcom/myscript/atk/styluscore/ItfReader;[B)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/InkField;-><init>(JZ)V

    return-object v0
.end method

.method public fields()Ljava/util/List;
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

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/ItfReader;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ItfReader_fields(JLcom/myscript/atk/styluscore/ItfReader;)J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/ListString;-><init>(JZ)V

    return-object v0
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/ItfReader;->delete()V

    return-void
.end method

.method public strokes()Ljava/util/List;
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

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/ItfReader;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ItfReader_strokes(JLcom/myscript/atk/styluscore/ItfReader;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/ListInkItem;-><init>(JZ)V

    return-object v0
.end method

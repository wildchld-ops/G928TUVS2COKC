.class public Lcom/myscript/atk/styluscore/ItfWriter;
.super Ljava/lang/Object;
.source "ItfWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/myscript/atk/styluscore/ItfWriter$Property;,
        Lcom/myscript/atk/styluscore/ItfWriter$Error;
    }
.end annotation


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_ItfWriter__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/ItfWriter;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/myscript/atk/styluscore/ItfWriter;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/myscript/atk/styluscore/ItfWriter;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/myscript/atk/styluscore/ItfWriter;)V
    .locals 3

    invoke-static {p1}, Lcom/myscript/atk/styluscore/ItfWriter;->getCPtr(Lcom/myscript/atk/styluscore/ItfWriter;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_ItfWriter__SWIG_1(JLcom/myscript/atk/styluscore/ItfWriter;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/ItfWriter;-><init>(JZ)V

    return-void
.end method

.method public static errorCodeToString(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ItfWriter_errorCodeToString(I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method protected static getCPtr(Lcom/myscript/atk/styluscore/ItfWriter;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ItfWriter;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public addStroke(Lcom/myscript/atk/styluscore/InkItem;)V
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ItfWriter;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InkItem;->getCPtr(Lcom/myscript/atk/styluscore/InkItem;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ItfWriter_addStroke(JLcom/myscript/atk/styluscore/ItfWriter;JLcom/myscript/atk/styluscore/InkItem;)V

    return-void
.end method

.method public addStrokes(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/InkItem;",
            ">;)V"
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
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ItfWriter;->swigCPtr:J

    invoke-static {v5}, Lcom/myscript/atk/styluscore/ListInkItem;->getCPtr(Lcom/myscript/atk/styluscore/ListInkItem;)J

    move-result-wide v3

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ItfWriter_addStrokes(JLcom/myscript/atk/styluscore/ItfWriter;JLcom/myscript/atk/styluscore/ListInkItem;)V

    return-void
.end method

.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ItfWriter;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/myscript/atk/styluscore/ItfWriter;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myscript/atk/styluscore/ItfWriter;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ItfWriter;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->delete_ItfWriter(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/myscript/atk/styluscore/ItfWriter;->swigCPtr:J
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

.method public disableProperty(I)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ItfWriter;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ItfWriter_disableProperty(JLcom/myscript/atk/styluscore/ItfWriter;I)V

    return-void
.end method

.method public enableProperty(I)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ItfWriter;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ItfWriter_enableProperty(JLcom/myscript/atk/styluscore/ItfWriter;I)V

    return-void
.end method

.method public errorCode()I
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ItfWriter;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ItfWriter_errorCode(JLcom/myscript/atk/styluscore/ItfWriter;)I

    move-result v0

    return v0
.end method

.method public errorLine()I
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ItfWriter;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ItfWriter_errorLine(JLcom/myscript/atk/styluscore/ItfWriter;)I

    move-result v0

    return v0
.end method

.method public errorString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/ItfWriter;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ItfWriter_errorString(JLcom/myscript/atk/styluscore/ItfWriter;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public failed()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ItfWriter;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ItfWriter_failed(JLcom/myscript/atk/styluscore/ItfWriter;)Z

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/ItfWriter;->delete()V

    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 3

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ItfWriter;->swigCPtr:J

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ItfWriter_setComment__SWIG_1(JLcom/myscript/atk/styluscore/ItfWriter;[B)V

    return-void
.end method

.method public setComment(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ItfWriter;->swigCPtr:J

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v0, v1, p0, v2, v3}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ItfWriter_setComment__SWIG_0(JLcom/myscript/atk/styluscore/ItfWriter;[B[B)V

    return-void
.end method

.method public setConfig(Lcom/myscript/atk/styluscore/InputMethodConfig;)V
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ItfWriter;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InputMethodConfig;->getCPtr(Lcom/myscript/atk/styluscore/InputMethodConfig;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ItfWriter_setConfig__SWIG_1(JLcom/myscript/atk/styluscore/ItfWriter;JLcom/myscript/atk/styluscore/InputMethodConfig;)V

    return-void
.end method

.method public setConfig(Lcom/myscript/atk/styluscore/InputMethodConfig;Ljava/lang/String;)V
    .locals 7

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ItfWriter;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InputMethodConfig;->getCPtr(Lcom/myscript/atk/styluscore/InputMethodConfig;)J

    move-result-wide v3

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v6}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ItfWriter_setConfig__SWIG_0(JLcom/myscript/atk/styluscore/ItfWriter;JLcom/myscript/atk/styluscore/InputMethodConfig;[B)V

    return-void
.end method

.method public setField(Lcom/myscript/atk/styluscore/InkField;)V
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ItfWriter;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InkField;->getCPtr(Lcom/myscript/atk/styluscore/InkField;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ItfWriter_setField__SWIG_1(JLcom/myscript/atk/styluscore/ItfWriter;JLcom/myscript/atk/styluscore/InkField;)V

    return-void
.end method

.method public setField(Lcom/myscript/atk/styluscore/InkField;Ljava/lang/String;)V
    .locals 7

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ItfWriter;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InkField;->getCPtr(Lcom/myscript/atk/styluscore/InkField;)J

    move-result-wide v3

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v6}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ItfWriter_setField__SWIG_0(JLcom/myscript/atk/styluscore/ItfWriter;JLcom/myscript/atk/styluscore/InkField;[B)V

    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 3

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ItfWriter;->swigCPtr:J

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ItfWriter_write(JLcom/myscript/atk/styluscore/ItfWriter;[B)V

    return-void
.end method

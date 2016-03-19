.class public Lcom/myscript/atk/styluscore/Archive;
.super Ljava/lang/Object;
.source "Archive.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_Archive_empty()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/Archive;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 3

    invoke-static {p1, p2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_Archive_version(J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/Archive;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/myscript/atk/styluscore/Archive;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/myscript/atk/styluscore/Archive;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/myscript/atk/styluscore/Archive;)V
    .locals 3

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Archive;->getCPtr(Lcom/myscript/atk/styluscore/Archive;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_Archive__SWIG_2(JLcom/myscript/atk/styluscore/Archive;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/Archive;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 3

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p1, v0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_Archive__SWIG_0(Z[B)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/Archive;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;I)V
    .locals 3

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p1, v0, p3}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_Archive__SWIG_1(Z[BI)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/Archive;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 3

    invoke-static {p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_Archive_bytes([B)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/Archive;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>([BJ)V
    .locals 4

    invoke-static {p1, p2, p3}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_Archive_bytes_version([BJ)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/Archive;-><init>(JZ)V

    return-void
.end method

.method protected static getCPtr(Lcom/myscript/atk/styluscore/Archive;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Archive;->swigCPtr:J

    goto :goto_0
.end method

.method public static getMaxSupportedVersion()J
    .locals 2

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Archive_getMaxSupportedVersion()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Archive;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/myscript/atk/styluscore/Archive;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myscript/atk/styluscore/Archive;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Archive;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->delete_Archive(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/myscript/atk/styluscore/Archive;->swigCPtr:J
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

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/Archive;->delete()V

    return-void
.end method

.method public getByteCount()I
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Archive;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Archive_getByteCount(JLcom/myscript/atk/styluscore/Archive;)I

    move-result v0

    return v0
.end method

.method public getBytes()[B
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Archive;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Archive_getBytes(JLcom/myscript/atk/styluscore/Archive;)[B

    move-result-object v0

    return-object v0
.end method

.method public getVersion()J
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Archive;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Archive_getVersion(JLcom/myscript/atk/styluscore/Archive;)J

    move-result-wide v0

    return-wide v0
.end method

.method public nativeEquals(Lcom/myscript/atk/styluscore/Archive;)Z
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Archive;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Archive;->getCPtr(Lcom/myscript/atk/styluscore/Archive;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Archive_nativeEquals(JLcom/myscript/atk/styluscore/Archive;JLcom/myscript/atk/styluscore/Archive;)Z

    move-result v0

    return v0
.end method

.method public readInkField(Lcom/myscript/atk/styluscore/InkItemUserParamsListener;)Lcom/myscript/atk/styluscore/InkField;
    .locals 7

    new-instance v6, Lcom/myscript/atk/styluscore/InkField;

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Archive;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InkItemUserParamsListener;->getCPtr(Lcom/myscript/atk/styluscore/InkItemUserParamsListener;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Archive_readInkField(JLcom/myscript/atk/styluscore/Archive;JLcom/myscript/atk/styluscore/InkItemUserParamsListener;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/myscript/atk/styluscore/InkField;-><init>(JZ)V

    return-object v6
.end method

.method public readInkItem(Lcom/myscript/atk/styluscore/InkItemUserParamsListener;)Lcom/myscript/atk/styluscore/InkItem;
    .locals 7

    new-instance v6, Lcom/myscript/atk/styluscore/InkItem;

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Archive;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InkItemUserParamsListener;->getCPtr(Lcom/myscript/atk/styluscore/InkItemUserParamsListener;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Archive_readInkItem(JLcom/myscript/atk/styluscore/Archive;JLcom/myscript/atk/styluscore/InkItemUserParamsListener;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/myscript/atk/styluscore/InkItem;-><init>(JZ)V

    return-object v6
.end method

.method public readInt(Lcom/myscript/atk/styluscore/InkItemUserParamsListener;)I
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Archive;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InkItemUserParamsListener;->getCPtr(Lcom/myscript/atk/styluscore/InkItemUserParamsListener;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Archive_readInt(JLcom/myscript/atk/styluscore/Archive;JLcom/myscript/atk/styluscore/InkItemUserParamsListener;)I

    move-result v0

    return v0
.end method

.method public readSegment(Lcom/myscript/atk/styluscore/InkItemUserParamsListener;)Lcom/myscript/atk/styluscore/Segment;
    .locals 7

    new-instance v6, Lcom/myscript/atk/styluscore/Segment;

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Archive;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InkItemUserParamsListener;->getCPtr(Lcom/myscript/atk/styluscore/InkItemUserParamsListener;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Archive_readSegment(JLcom/myscript/atk/styluscore/Archive;JLcom/myscript/atk/styluscore/InkItemUserParamsListener;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/myscript/atk/styluscore/Segment;-><init>(JZ)V

    return-object v6
.end method

.method public setVersion(J)V
    .locals 3

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Archive;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Archive_setVersion(JLcom/myscript/atk/styluscore/Archive;J)V

    return-void
.end method

.method public writeInkField(Lcom/myscript/atk/styluscore/InkField;)V
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Archive;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InkField;->getCPtr(Lcom/myscript/atk/styluscore/InkField;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Archive_writeInkField(JLcom/myscript/atk/styluscore/Archive;JLcom/myscript/atk/styluscore/InkField;)V

    return-void
.end method

.method public writeInkItem(Lcom/myscript/atk/styluscore/InkItem;)V
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Archive;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InkItem;->getCPtr(Lcom/myscript/atk/styluscore/InkItem;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Archive_writeInkItem(JLcom/myscript/atk/styluscore/Archive;JLcom/myscript/atk/styluscore/InkItem;)V

    return-void
.end method

.method public writeInt(I)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Archive;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Archive_writeInt(JLcom/myscript/atk/styluscore/Archive;I)V

    return-void
.end method

.method public writeSegment(Lcom/myscript/atk/styluscore/Segment;)V
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Archive;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Segment;->getCPtr(Lcom/myscript/atk/styluscore/Segment;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Archive_writeSegment(JLcom/myscript/atk/styluscore/Archive;JLcom/myscript/atk/styluscore/Segment;)V

    return-void
.end method

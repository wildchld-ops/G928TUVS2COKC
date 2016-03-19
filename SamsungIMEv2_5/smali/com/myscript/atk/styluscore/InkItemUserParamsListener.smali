.class public Lcom/myscript/atk/styluscore/InkItemUserParamsListener;
.super Ljava/lang/Object;
.source "InkItemUserParamsListener.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_InkItemUserParamsListener()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/InkItemUserParamsListener;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/myscript/atk/styluscore/InkItemUserParamsListener;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/myscript/atk/styluscore/InkItemUserParamsListener;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/myscript/atk/styluscore/InkItemUserParamsListener;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkItemUserParamsListener;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public createMergedUserParams(Lcom/myscript/atk/styluscore/InkItem;Lcom/myscript/atk/styluscore/InkItem;)Ljava/lang/Object;
    .locals 9

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkItemUserParamsListener;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InkItem;->getCPtr(Lcom/myscript/atk/styluscore/InkItem;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/myscript/atk/styluscore/InkItem;->getCPtr(Lcom/myscript/atk/styluscore/InkItem;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkItemUserParamsListener_createMergedUserParams(JLcom/myscript/atk/styluscore/InkItemUserParamsListener;JLcom/myscript/atk/styluscore/InkItem;JLcom/myscript/atk/styluscore/InkItem;)I

    move-result v0

    invoke-static {v0}, Lcom/myscript/atk/styluscore/UserParamsGrefHelper;->getUserParams(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public createUserParamsFrom(Lcom/myscript/atk/styluscore/InkItem;Lcom/myscript/atk/styluscore/InkItem;ILcom/myscript/atk/styluscore/Transform;)Ljava/lang/Object;
    .locals 13

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkItemUserParamsListener;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InkItem;->getCPtr(Lcom/myscript/atk/styluscore/InkItem;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/myscript/atk/styluscore/InkItem;->getCPtr(Lcom/myscript/atk/styluscore/InkItem;)J

    move-result-wide v6

    invoke-static/range {p4 .. p4}, Lcom/myscript/atk/styluscore/Transform;->getCPtr(Lcom/myscript/atk/styluscore/Transform;)J

    move-result-wide v10

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    move/from16 v9, p3

    move-object/from16 v12, p4

    invoke-static/range {v0 .. v12}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkItemUserParamsListener_createUserParamsFrom(JLcom/myscript/atk/styluscore/InkItemUserParamsListener;JLcom/myscript/atk/styluscore/InkItem;JLcom/myscript/atk/styluscore/InkItem;IJLcom/myscript/atk/styluscore/Transform;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkItemUserParamsListener;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/myscript/atk/styluscore/InkItemUserParamsListener;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myscript/atk/styluscore/InkItemUserParamsListener;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkItemUserParamsListener;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->delete_InkItemUserParamsListener(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/myscript/atk/styluscore/InkItemUserParamsListener;->swigCPtr:J
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

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/InkItemUserParamsListener;->delete()V

    return-void
.end method

.method public fromBytesToUserParams(Lcom/myscript/atk/styluscore/InkItem;[B)Ljava/lang/Object;
    .locals 7

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkItemUserParamsListener;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InkItem;->getCPtr(Lcom/myscript/atk/styluscore/InkItem;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkItemUserParamsListener_fromBytesToUserParams(JLcom/myscript/atk/styluscore/InkItemUserParamsListener;JLcom/myscript/atk/styluscore/InkItem;[B)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public fromUserParamsToBytes(Lcom/myscript/atk/styluscore/InkItem;Ljava/lang/Object;)[B
    .locals 7

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkItemUserParamsListener;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InkItem;->getCPtr(Lcom/myscript/atk/styluscore/InkItem;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkItemUserParamsListener_fromUserParamsToBytes(JLcom/myscript/atk/styluscore/InkItemUserParamsListener;JLcom/myscript/atk/styluscore/InkItem;Ljava/lang/Object;)[B

    move-result-object v0

    return-object v0
.end method

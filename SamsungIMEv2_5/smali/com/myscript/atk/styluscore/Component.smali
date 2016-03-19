.class public Lcom/myscript/atk/styluscore/Component;
.super Ljava/lang/Object;
.source "Component.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/myscript/atk/styluscore/Component;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/myscript/atk/styluscore/Component;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/myscript/atk/styluscore/Component;)V
    .locals 3

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Component;->getCPtr(Lcom/myscript/atk/styluscore/Component;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_Component(JLcom/myscript/atk/styluscore/Component;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/Component;-><init>(JZ)V

    return-void
.end method

.method public static errorCodeToString(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Component_errorCodeToString(I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method protected static getCPtr(Lcom/myscript/atk/styluscore/Component;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Component;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Component;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/myscript/atk/styluscore/Component;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myscript/atk/styluscore/Component;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Component;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->delete_Component(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/myscript/atk/styluscore/Component;->swigCPtr:J
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

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Component;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Component_errorCode(JLcom/myscript/atk/styluscore/Component;)I

    move-result v0

    return v0
.end method

.method public errorString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/Component;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Component_errorString(JLcom/myscript/atk/styluscore/Component;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public failed()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Component;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Component_failed(JLcom/myscript/atk/styluscore/Component;)Z

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/Component;->delete()V

    return-void
.end method

.method public getComponentListener()Lcom/myscript/atk/styluscore/ComponentListener;
    .locals 4

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/Component;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Component_getComponentListener(JLcom/myscript/atk/styluscore/Component;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/myscript/atk/styluscore/ComponentListener;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/myscript/atk/styluscore/ComponentListener;-><init>(JZ)V

    goto :goto_0
.end method

.method public getRendererDelegate()Lcom/myscript/atk/styluscore/IRendererDelegate;
    .locals 4

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/Component;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Component_getRendererDelegate(JLcom/myscript/atk/styluscore/Component;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/myscript/atk/styluscore/IRendererDelegate;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/myscript/atk/styluscore/IRendererDelegate;-><init>(JZ)V

    goto :goto_0
.end method

.method public penAbort()V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Component;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Component_penAbort(JLcom/myscript/atk/styluscore/Component;)V

    return-void
.end method

.method public penDown(FF)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Component;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Component_penDown(JLcom/myscript/atk/styluscore/Component;FF)V

    return-void
.end method

.method public penMove(FF)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Component;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Component_penMove(JLcom/myscript/atk/styluscore/Component;FF)V

    return-void
.end method

.method public penUp(FF)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Component;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Component_penUp(JLcom/myscript/atk/styluscore/Component;FF)V

    return-void
.end method

.method public setComponentListener(Lcom/myscript/atk/styluscore/ComponentListener;)V
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Component;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/ComponentListener;->getCPtr(Lcom/myscript/atk/styluscore/ComponentListener;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Component_setComponentListener(JLcom/myscript/atk/styluscore/Component;JLcom/myscript/atk/styluscore/ComponentListener;)V

    return-void
.end method

.method public setRendererDelegate(Lcom/myscript/atk/styluscore/IRendererDelegate;)V
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Component;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/IRendererDelegate;->getCPtr(Lcom/myscript/atk/styluscore/IRendererDelegate;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Component_setRendererDelegate(JLcom/myscript/atk/styluscore/Component;JLcom/myscript/atk/styluscore/IRendererDelegate;)V

    return-void
.end method

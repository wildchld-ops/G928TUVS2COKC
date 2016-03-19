.class public Lcom/myscript/atk/styluscore/ComponentListener;
.super Ljava/lang/Object;
.source "ComponentListener.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_ComponentListener__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/ComponentListener;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/myscript/atk/styluscore/ComponentListener;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/myscript/atk/styluscore/ComponentListener;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/myscript/atk/styluscore/ComponentListener;)V
    .locals 3

    invoke-static {p1}, Lcom/myscript/atk/styluscore/ComponentListener;->getCPtr(Lcom/myscript/atk/styluscore/ComponentListener;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_ComponentListener__SWIG_1(JLcom/myscript/atk/styluscore/ComponentListener;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/ComponentListener;-><init>(JZ)V

    return-void
.end method

.method protected static getCPtr(Lcom/myscript/atk/styluscore/ComponentListener;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ComponentListener;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public configured(Lcom/myscript/atk/styluscore/Component;I)V
    .locals 7

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ComponentListener;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Component;->getCPtr(Lcom/myscript/atk/styluscore/Component;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ComponentListener_configured(JLcom/myscript/atk/styluscore/ComponentListener;JLcom/myscript/atk/styluscore/Component;I)V

    return-void
.end method

.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ComponentListener;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/myscript/atk/styluscore/ComponentListener;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myscript/atk/styluscore/ComponentListener;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ComponentListener;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->delete_ComponentListener(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/myscript/atk/styluscore/ComponentListener;->swigCPtr:J
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

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/ComponentListener;->delete()V

    return-void
.end method

.method public update(Lcom/myscript/atk/styluscore/Component;)V
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ComponentListener;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Component;->getCPtr(Lcom/myscript/atk/styluscore/Component;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ComponentListener_update(JLcom/myscript/atk/styluscore/ComponentListener;JLcom/myscript/atk/styluscore/Component;)V

    return-void
.end method

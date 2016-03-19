.class public Lcom/myscript/atk/styluscore/Brushes;
.super Ljava/lang/Object;
.source "Brushes.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_Brushes__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/Brushes;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/myscript/atk/styluscore/Brushes;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/myscript/atk/styluscore/Brushes;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/myscript/atk/styluscore/Brushes;)V
    .locals 3

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Brushes;->getCPtr(Lcom/myscript/atk/styluscore/Brushes;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_Brushes__SWIG_1(JLcom/myscript/atk/styluscore/Brushes;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/Brushes;-><init>(JZ)V

    return-void
.end method

.method protected static getCPtr(Lcom/myscript/atk/styluscore/Brushes;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Brushes;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public addBrush(Lcom/myscript/atk/styluscore/Brush;)V
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Brushes;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Brush;->getCPtr(Lcom/myscript/atk/styluscore/Brush;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Brushes_addBrush(JLcom/myscript/atk/styluscore/Brushes;JLcom/myscript/atk/styluscore/Brush;)V

    return-void
.end method

.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Brushes;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/myscript/atk/styluscore/Brushes;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myscript/atk/styluscore/Brushes;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Brushes;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->delete_Brushes(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/myscript/atk/styluscore/Brushes;->swigCPtr:J
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

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/Brushes;->delete()V

    return-void
.end method

.method public getBrushes()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/Brush;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/myscript/atk/styluscore/ListBrush;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/Brushes;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Brushes_getBrushes(JLcom/myscript/atk/styluscore/Brushes;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/ListBrush;-><init>(JZ)V

    return-object v0
.end method

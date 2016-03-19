.class public Lcom/myscript/atk/styluscore/InputMethodListener;
.super Ljava/lang/Object;
.source "InputMethodListener.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_InputMethodListener__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/InputMethodListener;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/myscript/atk/styluscore/InputMethodListener;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/myscript/atk/styluscore/InputMethodListener;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/myscript/atk/styluscore/InputMethodListener;)V
    .locals 3

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InputMethodListener;->getCPtr(Lcom/myscript/atk/styluscore/InputMethodListener;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_InputMethodListener__SWIG_1(JLcom/myscript/atk/styluscore/InputMethodListener;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/InputMethodListener;-><init>(JZ)V

    return-void
.end method

.method protected static getCPtr(Lcom/myscript/atk/styluscore/InputMethodListener;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethodListener;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public angleGesture(Lcom/myscript/atk/styluscore/InputMethod;Lcom/myscript/atk/styluscore/InkRange;)V
    .locals 9

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethodListener;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InputMethod;->getCPtr(Lcom/myscript/atk/styluscore/InputMethod;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/myscript/atk/styluscore/InkRange;->getCPtr(Lcom/myscript/atk/styluscore/InkRange;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethodListener_angleGesture(JLcom/myscript/atk/styluscore/InputMethodListener;JLcom/myscript/atk/styluscore/InputMethod;JLcom/myscript/atk/styluscore/InkRange;)V

    return-void
.end method

.method public backspaceGesture(Lcom/myscript/atk/styluscore/InputMethod;)V
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethodListener;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InputMethod;->getCPtr(Lcom/myscript/atk/styluscore/InputMethod;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethodListener_backspaceGesture(JLcom/myscript/atk/styluscore/InputMethodListener;JLcom/myscript/atk/styluscore/InputMethod;)V

    return-void
.end method

.method public configured(Lcom/myscript/atk/styluscore/InputMethod;I)V
    .locals 7

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethodListener;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InputMethod;->getCPtr(Lcom/myscript/atk/styluscore/InputMethod;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethodListener_configured(JLcom/myscript/atk/styluscore/InputMethodListener;JLcom/myscript/atk/styluscore/InputMethod;I)V

    return-void
.end method

.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethodListener;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/myscript/atk/styluscore/InputMethodListener;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myscript/atk/styluscore/InputMethodListener;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethodListener;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->delete_InputMethodListener(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethodListener;->swigCPtr:J
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

.method public eraseGesture(Lcom/myscript/atk/styluscore/InputMethod;Lcom/myscript/atk/styluscore/InkRange;)V
    .locals 9

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethodListener;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InputMethod;->getCPtr(Lcom/myscript/atk/styluscore/InputMethod;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/myscript/atk/styluscore/InkRange;->getCPtr(Lcom/myscript/atk/styluscore/InkRange;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethodListener_eraseGesture(JLcom/myscript/atk/styluscore/InputMethodListener;JLcom/myscript/atk/styluscore/InputMethod;JLcom/myscript/atk/styluscore/InkRange;)V

    return-void
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/InputMethodListener;->delete()V

    return-void
.end method

.method public flowSync(Lcom/myscript/atk/styluscore/InputMethod;I)V
    .locals 7

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethodListener;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InputMethod;->getCPtr(Lcom/myscript/atk/styluscore/InputMethod;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethodListener_flowSync(JLcom/myscript/atk/styluscore/InputMethodListener;JLcom/myscript/atk/styluscore/InputMethod;I)V

    return-void
.end method

.method public insertGesture(Lcom/myscript/atk/styluscore/InputMethod;Lcom/myscript/atk/styluscore/InkLocation;)V
    .locals 9

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethodListener;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InputMethod;->getCPtr(Lcom/myscript/atk/styluscore/InputMethod;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/myscript/atk/styluscore/InkLocation;->getCPtr(Lcom/myscript/atk/styluscore/InkLocation;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethodListener_insertGesture(JLcom/myscript/atk/styluscore/InputMethodListener;JLcom/myscript/atk/styluscore/InputMethod;JLcom/myscript/atk/styluscore/InkLocation;)V

    return-void
.end method

.method public joinGesture(Lcom/myscript/atk/styluscore/InputMethod;Lcom/myscript/atk/styluscore/InkLocation;)V
    .locals 9

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethodListener;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InputMethod;->getCPtr(Lcom/myscript/atk/styluscore/InputMethod;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/myscript/atk/styluscore/InkLocation;->getCPtr(Lcom/myscript/atk/styluscore/InkLocation;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethodListener_joinGesture(JLcom/myscript/atk/styluscore/InputMethodListener;JLcom/myscript/atk/styluscore/InputMethod;JLcom/myscript/atk/styluscore/InkLocation;)V

    return-void
.end method

.method public junctionGesture(Lcom/myscript/atk/styluscore/InputMethod;Lcom/myscript/atk/styluscore/InkRange;)V
    .locals 9

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethodListener;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InputMethod;->getCPtr(Lcom/myscript/atk/styluscore/InputMethod;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/myscript/atk/styluscore/InkRange;->getCPtr(Lcom/myscript/atk/styluscore/InkRange;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethodListener_junctionGesture(JLcom/myscript/atk/styluscore/InputMethodListener;JLcom/myscript/atk/styluscore/InputMethod;JLcom/myscript/atk/styluscore/InkRange;)V

    return-void
.end method

.method public lengthGesture(Lcom/myscript/atk/styluscore/InputMethod;Lcom/myscript/atk/styluscore/InkRange;)V
    .locals 9

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethodListener;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InputMethod;->getCPtr(Lcom/myscript/atk/styluscore/InputMethod;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/myscript/atk/styluscore/InkRange;->getCPtr(Lcom/myscript/atk/styluscore/InkRange;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethodListener_lengthGesture(JLcom/myscript/atk/styluscore/InputMethodListener;JLcom/myscript/atk/styluscore/InputMethod;JLcom/myscript/atk/styluscore/InkRange;)V

    return-void
.end method

.method public overwriteGesture(Lcom/myscript/atk/styluscore/InputMethod;Lcom/myscript/atk/styluscore/InkRange;)V
    .locals 9

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethodListener;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InputMethod;->getCPtr(Lcom/myscript/atk/styluscore/InputMethod;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/myscript/atk/styluscore/InkRange;->getCPtr(Lcom/myscript/atk/styluscore/InkRange;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethodListener_overwriteGesture(JLcom/myscript/atk/styluscore/InputMethodListener;JLcom/myscript/atk/styluscore/InputMethod;JLcom/myscript/atk/styluscore/InkRange;)V

    return-void
.end method

.method public parallelGesture(Lcom/myscript/atk/styluscore/InputMethod;Lcom/myscript/atk/styluscore/InkRange;)V
    .locals 9

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethodListener;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InputMethod;->getCPtr(Lcom/myscript/atk/styluscore/InputMethod;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/myscript/atk/styluscore/InkRange;->getCPtr(Lcom/myscript/atk/styluscore/InkRange;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethodListener_parallelGesture(JLcom/myscript/atk/styluscore/InputMethodListener;JLcom/myscript/atk/styluscore/InputMethod;JLcom/myscript/atk/styluscore/InkRange;)V

    return-void
.end method

.method public perpendicularGesture(Lcom/myscript/atk/styluscore/InputMethod;Lcom/myscript/atk/styluscore/InkRange;)V
    .locals 9

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethodListener;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InputMethod;->getCPtr(Lcom/myscript/atk/styluscore/InputMethod;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/myscript/atk/styluscore/InkRange;->getCPtr(Lcom/myscript/atk/styluscore/InkRange;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethodListener_perpendicularGesture(JLcom/myscript/atk/styluscore/InputMethodListener;JLcom/myscript/atk/styluscore/InputMethod;JLcom/myscript/atk/styluscore/InkRange;)V

    return-void
.end method

.method public progress(Lcom/myscript/atk/styluscore/InputMethod;II)V
    .locals 8

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethodListener;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InputMethod;->getCPtr(Lcom/myscript/atk/styluscore/InputMethod;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-static/range {v0 .. v7}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethodListener_progress(JLcom/myscript/atk/styluscore/InputMethodListener;JLcom/myscript/atk/styluscore/InputMethod;II)V

    return-void
.end method

.method public returnGesture(Lcom/myscript/atk/styluscore/InputMethod;Lcom/myscript/atk/styluscore/InkLocation;)V
    .locals 9

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethodListener;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InputMethod;->getCPtr(Lcom/myscript/atk/styluscore/InputMethod;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/myscript/atk/styluscore/InkLocation;->getCPtr(Lcom/myscript/atk/styluscore/InkLocation;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethodListener_returnGesture(JLcom/myscript/atk/styluscore/InputMethodListener;JLcom/myscript/atk/styluscore/InputMethod;JLcom/myscript/atk/styluscore/InkLocation;)V

    return-void
.end method

.method public selectionGesture(Lcom/myscript/atk/styluscore/InputMethod;Lcom/myscript/atk/styluscore/InkRange;)V
    .locals 9

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethodListener;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InputMethod;->getCPtr(Lcom/myscript/atk/styluscore/InputMethod;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/myscript/atk/styluscore/InkRange;->getCPtr(Lcom/myscript/atk/styluscore/InkRange;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethodListener_selectionGesture(JLcom/myscript/atk/styluscore/InputMethodListener;JLcom/myscript/atk/styluscore/InputMethod;JLcom/myscript/atk/styluscore/InkRange;)V

    return-void
.end method

.method public singleTapGesture(Lcom/myscript/atk/styluscore/InputMethod;Lcom/myscript/atk/styluscore/InkLocation;)V
    .locals 9

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethodListener;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InputMethod;->getCPtr(Lcom/myscript/atk/styluscore/InputMethod;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/myscript/atk/styluscore/InkLocation;->getCPtr(Lcom/myscript/atk/styluscore/InkLocation;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethodListener_singleTapGesture(JLcom/myscript/atk/styluscore/InputMethodListener;JLcom/myscript/atk/styluscore/InputMethod;JLcom/myscript/atk/styluscore/InkLocation;)V

    return-void
.end method

.method public spaceGesture(Lcom/myscript/atk/styluscore/InputMethod;)V
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethodListener;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InputMethod;->getCPtr(Lcom/myscript/atk/styluscore/InputMethod;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethodListener_spaceGesture(JLcom/myscript/atk/styluscore/InputMethodListener;JLcom/myscript/atk/styluscore/InputMethod;)V

    return-void
.end method

.method public underlineGesture(Lcom/myscript/atk/styluscore/InputMethod;Lcom/myscript/atk/styluscore/InkRange;)V
    .locals 9

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethodListener;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InputMethod;->getCPtr(Lcom/myscript/atk/styluscore/InputMethod;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/myscript/atk/styluscore/InkRange;->getCPtr(Lcom/myscript/atk/styluscore/InkRange;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethodListener_underlineGesture(JLcom/myscript/atk/styluscore/InputMethodListener;JLcom/myscript/atk/styluscore/InputMethod;JLcom/myscript/atk/styluscore/InkRange;)V

    return-void
.end method

.method public update(Lcom/myscript/atk/styluscore/InputMethod;)V
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethodListener;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InputMethod;->getCPtr(Lcom/myscript/atk/styluscore/InputMethod;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethodListener_update(JLcom/myscript/atk/styluscore/InputMethodListener;JLcom/myscript/atk/styluscore/InputMethod;)V

    return-void
.end method

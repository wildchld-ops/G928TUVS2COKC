.class public Lcom/myscript/atk/styluscore/CalcInputMethod;
.super Lcom/myscript/atk/styluscore/InputMethod;
.source "CalcInputMethod.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/myscript/atk/styluscore/CalcInputMethod$RoundingMode;,
        Lcom/myscript/atk/styluscore/CalcInputMethod$AngleUnit;
    }
.end annotation


# instance fields
.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_CalcInputMethod__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/CalcInputMethod;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 3

    invoke-static {p1, p2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->CalcInputMethod_SWIGUpcast(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lcom/myscript/atk/styluscore/InputMethod;-><init>(JZ)V

    iput-wide p1, p0, Lcom/myscript/atk/styluscore/CalcInputMethod;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/myscript/atk/styluscore/CalcInputMethod;)V
    .locals 3

    invoke-static {p1}, Lcom/myscript/atk/styluscore/CalcInputMethod;->getCPtr(Lcom/myscript/atk/styluscore/CalcInputMethod;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_CalcInputMethod__SWIG_2(JLcom/myscript/atk/styluscore/CalcInputMethod;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/CalcInputMethod;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_CalcInputMethod__SWIG_1([B)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/CalcInputMethod;-><init>(JZ)V

    return-void
.end method

.method protected static getCPtr(Lcom/myscript/atk/styluscore/CalcInputMethod;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/CalcInputMethod;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/CalcInputMethod;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/myscript/atk/styluscore/CalcInputMethod;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myscript/atk/styluscore/CalcInputMethod;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/CalcInputMethod;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->delete_CalcInputMethod(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/myscript/atk/styluscore/CalcInputMethod;->swigCPtr:J

    :cond_1
    invoke-super {p0}, Lcom/myscript/atk/styluscore/InputMethod;->delete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/CalcInputMethod;->delete()V

    return-void
.end method

.method public solve(Lcom/myscript/atk/styluscore/InkField;ILjava/lang/Object;ILcom/myscript/atk/styluscore/Char;I)Lcom/myscript/atk/styluscore/InkField;
    .locals 14

    new-instance v0, Lcom/myscript/atk/styluscore/InkField;

    iget-wide v1, p0, Lcom/myscript/atk/styluscore/CalcInputMethod;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InkField;->getCPtr(Lcom/myscript/atk/styluscore/InkField;)J

    move-result-wide v4

    invoke-static/range {p5 .. p5}, Lcom/myscript/atk/styluscore/Char;->getCPtr(Lcom/myscript/atk/styluscore/Char;)J

    move-result-wide v10

    move-object v3, p0

    move-object v6, p1

    move/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v9, p4

    move-object/from16 v12, p5

    move/from16 v13, p6

    invoke-static/range {v1 .. v13}, Lcom/myscript/atk/styluscore/styluscoreJNI;->CalcInputMethod_solve(JLcom/myscript/atk/styluscore/CalcInputMethod;JLcom/myscript/atk/styluscore/InkField;ILjava/lang/Object;IJLcom/myscript/atk/styluscore/Char;I)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/InkField;-><init>(JZ)V

    return-object v0
.end method

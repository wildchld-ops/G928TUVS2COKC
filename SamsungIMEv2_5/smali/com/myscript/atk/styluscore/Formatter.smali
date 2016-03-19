.class public Lcom/myscript/atk/styluscore/Formatter;
.super Ljava/lang/Object;
.source "Formatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/myscript/atk/styluscore/Formatter$CalcOutputFormat;
    }
.end annotation


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_Formatter__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/Formatter;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/myscript/atk/styluscore/Formatter;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/myscript/atk/styluscore/Formatter;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/myscript/atk/styluscore/Formatter;)V
    .locals 3

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Formatter;->getCPtr(Lcom/myscript/atk/styluscore/Formatter;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_Formatter__SWIG_1(JLcom/myscript/atk/styluscore/Formatter;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/Formatter;-><init>(JZ)V

    return-void
.end method

.method public static fontifyCalculationField(Lcom/myscript/atk/styluscore/InkField;Ljava/util/List;Lcom/myscript/atk/styluscore/Rect;)Lcom/myscript/atk/styluscore/InkField;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/myscript/atk/styluscore/InkField;",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/Rect;",
            ">;",
            "Lcom/myscript/atk/styluscore/Rect;",
            ")",
            "Lcom/myscript/atk/styluscore/InkField;"
        }
    .end annotation

    new-instance v5, Lcom/myscript/atk/styluscore/ListRect;

    invoke-direct {v5, p1}, Lcom/myscript/atk/styluscore/ListRect;-><init>(Ljava/lang/Iterable;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v10, :cond_0

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/Rect;

    invoke-virtual {v5, v0}, Lcom/myscript/atk/styluscore/ListRect;->native_add(Lcom/myscript/atk/styluscore/Rect;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    new-instance v11, Lcom/myscript/atk/styluscore/InkField;

    invoke-static {p0}, Lcom/myscript/atk/styluscore/InkField;->getCPtr(Lcom/myscript/atk/styluscore/InkField;)J

    move-result-wide v0

    invoke-static {v5}, Lcom/myscript/atk/styluscore/ListRect;->getCPtr(Lcom/myscript/atk/styluscore/ListRect;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/myscript/atk/styluscore/Rect;->getCPtr(Lcom/myscript/atk/styluscore/Rect;)J

    move-result-wide v6

    move-object v2, p0

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Formatter_fontifyCalculationField(JLcom/myscript/atk/styluscore/InkField;JLcom/myscript/atk/styluscore/ListRect;JLcom/myscript/atk/styluscore/Rect;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v11, v0, v1, v2}, Lcom/myscript/atk/styluscore/InkField;-><init>(JZ)V

    return-object v11
.end method

.method public static fontifyRange(Lcom/myscript/atk/styluscore/InkField;Lcom/myscript/atk/styluscore/InkRange;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lcom/myscript/atk/styluscore/InkField;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/myscript/atk/styluscore/InkField;",
            "Lcom/myscript/atk/styluscore/InkRange;",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/Rect;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;)",
            "Lcom/myscript/atk/styluscore/InkField;"
        }
    .end annotation

    new-instance v10, Lcom/myscript/atk/styluscore/ListRect;

    move-object/from16 v0, p2

    invoke-direct {v10, v0}, Lcom/myscript/atk/styluscore/ListRect;-><init>(Ljava/lang/Iterable;)V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v19

    const/16 v17, 0x0

    :goto_0
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/myscript/atk/styluscore/Rect;

    invoke-virtual {v10, v2}, Lcom/myscript/atk/styluscore/ListRect;->native_add(Lcom/myscript/atk/styluscore/Rect;)V

    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    :cond_0
    new-instance v13, Lcom/myscript/atk/styluscore/ListFloat;

    move-object/from16 v0, p3

    invoke-direct {v13, v0}, Lcom/myscript/atk/styluscore/ListFloat;-><init>(Ljava/lang/Iterable;)V

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v18

    const/16 v17, 0x0

    :goto_1
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v13, v2}, Lcom/myscript/atk/styluscore/ListFloat;->native_add(F)V

    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    :cond_1
    new-instance v16, Lcom/myscript/atk/styluscore/ListFloat;

    move-object/from16 v0, v16

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/myscript/atk/styluscore/ListFloat;-><init>(Ljava/lang/Iterable;)V

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v20

    const/16 v17, 0x0

    :goto_2
    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_2

    move-object/from16 v0, p4

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/myscript/atk/styluscore/ListFloat;->native_add(F)V

    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    :cond_2
    new-instance v21, Lcom/myscript/atk/styluscore/InkField;

    invoke-static/range {p0 .. p0}, Lcom/myscript/atk/styluscore/InkField;->getCPtr(Lcom/myscript/atk/styluscore/InkField;)J

    move-result-wide v2

    invoke-static/range {p1 .. p1}, Lcom/myscript/atk/styluscore/InkRange;->getCPtr(Lcom/myscript/atk/styluscore/InkRange;)J

    move-result-wide v5

    invoke-static {v10}, Lcom/myscript/atk/styluscore/ListRect;->getCPtr(Lcom/myscript/atk/styluscore/ListRect;)J

    move-result-wide v8

    invoke-static {v13}, Lcom/myscript/atk/styluscore/ListFloat;->getCPtr(Lcom/myscript/atk/styluscore/ListFloat;)J

    move-result-wide v11

    invoke-static/range {v16 .. v16}, Lcom/myscript/atk/styluscore/ListFloat;->getCPtr(Lcom/myscript/atk/styluscore/ListFloat;)J

    move-result-wide v14

    move-object/from16 v4, p0

    move-object/from16 v7, p1

    invoke-static/range {v2 .. v16}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Formatter_fontifyRange(JLcom/myscript/atk/styluscore/InkField;JLcom/myscript/atk/styluscore/InkRange;JLcom/myscript/atk/styluscore/ListRect;JLcom/myscript/atk/styluscore/ListFloat;JLcom/myscript/atk/styluscore/ListFloat;)J

    move-result-wide v2

    const/4 v4, 0x1

    move-object/from16 v0, v21

    invoke-direct {v0, v2, v3, v4}, Lcom/myscript/atk/styluscore/InkField;-><init>(JZ)V

    return-object v21
.end method

.method public static fontifyRangeOnOneLine(Lcom/myscript/atk/styluscore/InkField;Lcom/myscript/atk/styluscore/InkRange;Ljava/util/List;FF)Lcom/myscript/atk/styluscore/InkField;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/myscript/atk/styluscore/InkField;",
            "Lcom/myscript/atk/styluscore/InkRange;",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/Rect;",
            ">;FF)",
            "Lcom/myscript/atk/styluscore/InkField;"
        }
    .end annotation

    new-instance v10, Lcom/myscript/atk/styluscore/ListRect;

    move-object/from16 v0, p2

    invoke-direct {v10, v0}, Lcom/myscript/atk/styluscore/ListRect;-><init>(Ljava/lang/Iterable;)V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v14

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v14, :cond_0

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/myscript/atk/styluscore/Rect;

    invoke-virtual {v10, v2}, Lcom/myscript/atk/styluscore/ListRect;->native_add(Lcom/myscript/atk/styluscore/Rect;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_0
    new-instance v15, Lcom/myscript/atk/styluscore/InkField;

    invoke-static/range {p0 .. p0}, Lcom/myscript/atk/styluscore/InkField;->getCPtr(Lcom/myscript/atk/styluscore/InkField;)J

    move-result-wide v2

    invoke-static/range {p1 .. p1}, Lcom/myscript/atk/styluscore/InkRange;->getCPtr(Lcom/myscript/atk/styluscore/InkRange;)J

    move-result-wide v5

    invoke-static {v10}, Lcom/myscript/atk/styluscore/ListRect;->getCPtr(Lcom/myscript/atk/styluscore/ListRect;)J

    move-result-wide v8

    move-object/from16 v4, p0

    move-object/from16 v7, p1

    move/from16 v11, p3

    move/from16 v12, p4

    invoke-static/range {v2 .. v12}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Formatter_fontifyRangeOnOneLine(JLcom/myscript/atk/styluscore/InkField;JLcom/myscript/atk/styluscore/InkRange;JLcom/myscript/atk/styluscore/ListRect;FF)J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-direct {v15, v2, v3, v4}, Lcom/myscript/atk/styluscore/InkField;-><init>(JZ)V

    return-object v15
.end method

.method public static formatCalcOutput(Lcom/myscript/atk/styluscore/InkField;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/myscript/atk/styluscore/InkField;->getCPtr(Lcom/myscript/atk/styluscore/InkField;)J

    move-result-wide v2

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Formatter_formatCalcOutput__SWIG_1(JLcom/myscript/atk/styluscore/InkField;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static formatCalcOutput(Lcom/myscript/atk/styluscore/InkField;I)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/myscript/atk/styluscore/InkField;->getCPtr(Lcom/myscript/atk/styluscore/InkField;)J

    move-result-wide v2

    invoke-static {v2, v3, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Formatter_formatCalcOutput__SWIG_0(JLcom/myscript/atk/styluscore/InkField;I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method protected static getCPtr(Lcom/myscript/atk/styluscore/Formatter;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Formatter;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Formatter;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/myscript/atk/styluscore/Formatter;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myscript/atk/styluscore/Formatter;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Formatter;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->delete_Formatter(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/myscript/atk/styluscore/Formatter;->swigCPtr:J
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

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/Formatter;->delete()V

    return-void
.end method

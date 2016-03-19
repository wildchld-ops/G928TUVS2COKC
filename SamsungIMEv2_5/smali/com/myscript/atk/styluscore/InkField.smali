.class public Lcom/myscript/atk/styluscore/InkField;
.super Ljava/lang/Object;
.source "InkField.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/myscript/atk/styluscore/InkField$FormattingOption;
    }
.end annotation


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_InkField__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/InkField;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/myscript/atk/styluscore/InkField;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/myscript/atk/styluscore/InkField;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/myscript/atk/styluscore/InkField;)V
    .locals 3

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InkField;->getCPtr(Lcom/myscript/atk/styluscore/InkField;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_InkField__SWIG_1(JLcom/myscript/atk/styluscore/InkField;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/InkField;-><init>(JZ)V

    return-void
.end method

.method public static fromCandidate(Lcom/myscript/atk/styluscore/Candidate;)Lcom/myscript/atk/styluscore/InkField;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/InkField;

    invoke-static {p0}, Lcom/myscript/atk/styluscore/Candidate;->getCPtr(Lcom/myscript/atk/styluscore/Candidate;)J

    move-result-wide v2

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkField_fromCandidate(JLcom/myscript/atk/styluscore/Candidate;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/InkField;-><init>(JZ)V

    return-object v0
.end method

.method public static fromItem(Lcom/myscript/atk/styluscore/InkItem;)Lcom/myscript/atk/styluscore/InkField;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/InkField;

    invoke-static {p0}, Lcom/myscript/atk/styluscore/InkItem;->getCPtr(Lcom/myscript/atk/styluscore/InkItem;)J

    move-result-wide v2

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkField_fromItem__SWIG_6(JLcom/myscript/atk/styluscore/InkItem;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/InkField;-><init>(JZ)V

    return-object v0
.end method

.method public static fromItem(Lcom/myscript/atk/styluscore/InkItem;Ljava/lang/String;)Lcom/myscript/atk/styluscore/InkField;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/InkField;

    invoke-static {p0}, Lcom/myscript/atk/styluscore/InkItem;->getCPtr(Lcom/myscript/atk/styluscore/InkItem;)J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v2, v3, p0, v1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkField_fromItem__SWIG_5(JLcom/myscript/atk/styluscore/InkItem;[B)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/InkField;-><init>(JZ)V

    return-object v0
.end method

.method public static fromItem(Lcom/myscript/atk/styluscore/InkItem;Ljava/lang/String;F)Lcom/myscript/atk/styluscore/InkField;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/InkField;

    invoke-static {p0}, Lcom/myscript/atk/styluscore/InkItem;->getCPtr(Lcom/myscript/atk/styluscore/InkItem;)J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v2, v3, p0, v1, p2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkField_fromItem__SWIG_4(JLcom/myscript/atk/styluscore/InkItem;[BF)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/InkField;-><init>(JZ)V

    return-object v0
.end method

.method public static fromItem(Lcom/myscript/atk/styluscore/InkItem;Ljava/lang/String;FI)Lcom/myscript/atk/styluscore/InkField;
    .locals 7

    new-instance v6, Lcom/myscript/atk/styluscore/InkField;

    invoke-static {p0}, Lcom/myscript/atk/styluscore/InkItem;->getCPtr(Lcom/myscript/atk/styluscore/InkItem;)J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    move-object v2, p0

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkField_fromItem__SWIG_3(JLcom/myscript/atk/styluscore/InkItem;[BFI)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/myscript/atk/styluscore/InkField;-><init>(JZ)V

    return-object v6
.end method

.method public static fromItem(Lcom/myscript/atk/styluscore/InkItem;Ljava/lang/String;FII)Lcom/myscript/atk/styluscore/InkField;
    .locals 8

    new-instance v7, Lcom/myscript/atk/styluscore/InkField;

    invoke-static {p0}, Lcom/myscript/atk/styluscore/InkItem;->getCPtr(Lcom/myscript/atk/styluscore/InkItem;)J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    move-object v2, p0

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkField_fromItem__SWIG_2(JLcom/myscript/atk/styluscore/InkItem;[BFII)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v7, v0, v1, v2}, Lcom/myscript/atk/styluscore/InkField;-><init>(JZ)V

    return-object v7
.end method

.method public static fromItem(Lcom/myscript/atk/styluscore/InkItem;Ljava/lang/String;FIIF)Lcom/myscript/atk/styluscore/InkField;
    .locals 9

    new-instance v8, Lcom/myscript/atk/styluscore/InkField;

    invoke-static {p0}, Lcom/myscript/atk/styluscore/InkItem;->getCPtr(Lcom/myscript/atk/styluscore/InkItem;)J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    move-object v2, p0

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkField_fromItem__SWIG_1(JLcom/myscript/atk/styluscore/InkItem;[BFIIF)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v8, v0, v1, v2}, Lcom/myscript/atk/styluscore/InkField;-><init>(JZ)V

    return-object v8
.end method

.method public static fromItem(Lcom/myscript/atk/styluscore/InkItem;Ljava/lang/String;FIIFF)Lcom/myscript/atk/styluscore/InkField;
    .locals 10

    new-instance v9, Lcom/myscript/atk/styluscore/InkField;

    invoke-static {p0}, Lcom/myscript/atk/styluscore/InkItem;->getCPtr(Lcom/myscript/atk/styluscore/InkItem;)J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    move-object v2, p0

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    invoke-static/range {v0 .. v8}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkField_fromItem__SWIG_0(JLcom/myscript/atk/styluscore/InkItem;[BFIIFF)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v9, v0, v1, v2}, Lcom/myscript/atk/styluscore/InkField;-><init>(JZ)V

    return-object v9
.end method

.method public static fromItemList(Ljava/util/List;)Lcom/myscript/atk/styluscore/InkField;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/InkItem;",
            ">;)",
            "Lcom/myscript/atk/styluscore/InkField;"
        }
    .end annotation

    new-instance v1, Lcom/myscript/atk/styluscore/ListInkItem;

    invoke-direct {v1, p0}, Lcom/myscript/atk/styluscore/ListInkItem;-><init>(Ljava/lang/Iterable;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/myscript/atk/styluscore/InkItem;

    invoke-virtual {v1, v3}, Lcom/myscript/atk/styluscore/ListInkItem;->native_add(Lcom/myscript/atk/styluscore/InkItem;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/myscript/atk/styluscore/InkField;

    invoke-static {v1}, Lcom/myscript/atk/styluscore/ListInkItem;->getCPtr(Lcom/myscript/atk/styluscore/ListInkItem;)J

    move-result-wide v4

    invoke-static {v4, v5, v1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkField_fromItemList__SWIG_7(JLcom/myscript/atk/styluscore/ListInkItem;)J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6}, Lcom/myscript/atk/styluscore/InkField;-><init>(JZ)V

    return-object v3
.end method

.method public static fromItemList(Ljava/util/List;Ljava/lang/String;)Lcom/myscript/atk/styluscore/InkField;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/InkItem;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/myscript/atk/styluscore/InkField;"
        }
    .end annotation

    new-instance v1, Lcom/myscript/atk/styluscore/ListInkItem;

    invoke-direct {v1, p0}, Lcom/myscript/atk/styluscore/ListInkItem;-><init>(Ljava/lang/Iterable;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/myscript/atk/styluscore/InkItem;

    invoke-virtual {v1, v3}, Lcom/myscript/atk/styluscore/ListInkItem;->native_add(Lcom/myscript/atk/styluscore/InkItem;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/myscript/atk/styluscore/InkField;

    invoke-static {v1}, Lcom/myscript/atk/styluscore/ListInkItem;->getCPtr(Lcom/myscript/atk/styluscore/ListInkItem;)J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v4, v5, v1, v6}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkField_fromItemList__SWIG_6(JLcom/myscript/atk/styluscore/ListInkItem;[B)J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6}, Lcom/myscript/atk/styluscore/InkField;-><init>(JZ)V

    return-object v3
.end method

.method public static fromItemList(Ljava/util/List;Ljava/lang/String;F)Lcom/myscript/atk/styluscore/InkField;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/InkItem;",
            ">;",
            "Ljava/lang/String;",
            "F)",
            "Lcom/myscript/atk/styluscore/InkField;"
        }
    .end annotation

    new-instance v1, Lcom/myscript/atk/styluscore/ListInkItem;

    invoke-direct {v1, p0}, Lcom/myscript/atk/styluscore/ListInkItem;-><init>(Ljava/lang/Iterable;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/myscript/atk/styluscore/InkItem;

    invoke-virtual {v1, v3}, Lcom/myscript/atk/styluscore/ListInkItem;->native_add(Lcom/myscript/atk/styluscore/InkItem;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/myscript/atk/styluscore/InkField;

    invoke-static {v1}, Lcom/myscript/atk/styluscore/ListInkItem;->getCPtr(Lcom/myscript/atk/styluscore/ListInkItem;)J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v4, v5, v1, v6, p2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkField_fromItemList__SWIG_5(JLcom/myscript/atk/styluscore/ListInkItem;[BF)J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6}, Lcom/myscript/atk/styluscore/InkField;-><init>(JZ)V

    return-object v3
.end method

.method public static fromItemList(Ljava/util/List;Ljava/lang/String;FI)Lcom/myscript/atk/styluscore/InkField;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/InkItem;",
            ">;",
            "Ljava/lang/String;",
            "FI)",
            "Lcom/myscript/atk/styluscore/InkField;"
        }
    .end annotation

    new-instance v2, Lcom/myscript/atk/styluscore/ListInkItem;

    invoke-direct {v2, p0}, Lcom/myscript/atk/styluscore/ListInkItem;-><init>(Ljava/lang/Iterable;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_0

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/InkItem;

    invoke-virtual {v2, v0}, Lcom/myscript/atk/styluscore/ListInkItem;->native_add(Lcom/myscript/atk/styluscore/InkItem;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    new-instance v8, Lcom/myscript/atk/styluscore/InkField;

    invoke-static {v2}, Lcom/myscript/atk/styluscore/ListInkItem;->getCPtr(Lcom/myscript/atk/styluscore/ListInkItem;)J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkField_fromItemList__SWIG_4(JLcom/myscript/atk/styluscore/ListInkItem;[BFI)J

    move-result-wide v0

    const/4 v3, 0x1

    invoke-direct {v8, v0, v1, v3}, Lcom/myscript/atk/styluscore/InkField;-><init>(JZ)V

    return-object v8
.end method

.method public static fromItemList(Ljava/util/List;Ljava/lang/String;FII)Lcom/myscript/atk/styluscore/InkField;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/InkItem;",
            ">;",
            "Ljava/lang/String;",
            "FII)",
            "Lcom/myscript/atk/styluscore/InkField;"
        }
    .end annotation

    new-instance v2, Lcom/myscript/atk/styluscore/ListInkItem;

    invoke-direct {v2, p0}, Lcom/myscript/atk/styluscore/ListInkItem;-><init>(Ljava/lang/Iterable;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v8

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v8, :cond_0

    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/InkItem;

    invoke-virtual {v2, v0}, Lcom/myscript/atk/styluscore/ListInkItem;->native_add(Lcom/myscript/atk/styluscore/InkItem;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    new-instance v9, Lcom/myscript/atk/styluscore/InkField;

    invoke-static {v2}, Lcom/myscript/atk/styluscore/ListInkItem;->getCPtr(Lcom/myscript/atk/styluscore/ListInkItem;)J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkField_fromItemList__SWIG_3(JLcom/myscript/atk/styluscore/ListInkItem;[BFII)J

    move-result-wide v0

    const/4 v3, 0x1

    invoke-direct {v9, v0, v1, v3}, Lcom/myscript/atk/styluscore/InkField;-><init>(JZ)V

    return-object v9
.end method

.method public static fromItemList(Ljava/util/List;Ljava/lang/String;FIIF)Lcom/myscript/atk/styluscore/InkField;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/InkItem;",
            ">;",
            "Ljava/lang/String;",
            "FIIF)",
            "Lcom/myscript/atk/styluscore/InkField;"
        }
    .end annotation

    new-instance v2, Lcom/myscript/atk/styluscore/ListInkItem;

    invoke-direct {v2, p0}, Lcom/myscript/atk/styluscore/ListInkItem;-><init>(Ljava/lang/Iterable;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v9

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v9, :cond_0

    invoke-interface {p0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/InkItem;

    invoke-virtual {v2, v0}, Lcom/myscript/atk/styluscore/ListInkItem;->native_add(Lcom/myscript/atk/styluscore/InkItem;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    new-instance v10, Lcom/myscript/atk/styluscore/InkField;

    invoke-static {v2}, Lcom/myscript/atk/styluscore/ListInkItem;->getCPtr(Lcom/myscript/atk/styluscore/ListInkItem;)J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    invoke-static/range {v0 .. v7}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkField_fromItemList__SWIG_2(JLcom/myscript/atk/styluscore/ListInkItem;[BFIIF)J

    move-result-wide v0

    const/4 v3, 0x1

    invoke-direct {v10, v0, v1, v3}, Lcom/myscript/atk/styluscore/InkField;-><init>(JZ)V

    return-object v10
.end method

.method public static fromItemList(Ljava/util/List;Ljava/lang/String;FIIFF)Lcom/myscript/atk/styluscore/InkField;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/InkItem;",
            ">;",
            "Ljava/lang/String;",
            "FIIFF)",
            "Lcom/myscript/atk/styluscore/InkField;"
        }
    .end annotation

    new-instance v2, Lcom/myscript/atk/styluscore/ListInkItem;

    invoke-direct {v2, p0}, Lcom/myscript/atk/styluscore/ListInkItem;-><init>(Ljava/lang/Iterable;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v10

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v10, :cond_0

    invoke-interface {p0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/InkItem;

    invoke-virtual {v2, v0}, Lcom/myscript/atk/styluscore/ListInkItem;->native_add(Lcom/myscript/atk/styluscore/InkItem;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    new-instance v11, Lcom/myscript/atk/styluscore/InkField;

    invoke-static {v2}, Lcom/myscript/atk/styluscore/ListInkItem;->getCPtr(Lcom/myscript/atk/styluscore/ListInkItem;)J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v0 .. v8}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkField_fromItemList__SWIG_1(JLcom/myscript/atk/styluscore/ListInkItem;[BFIIFF)J

    move-result-wide v0

    const/4 v3, 0x1

    invoke-direct {v11, v0, v1, v3}, Lcom/myscript/atk/styluscore/InkField;-><init>(JZ)V

    return-object v11
.end method

.method public static fromItemList(Ljava/util/List;Ljava/lang/String;FIIFFLjava/util/List;)Lcom/myscript/atk/styluscore/InkField;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/InkItem;",
            ">;",
            "Ljava/lang/String;",
            "FIIFF",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/myscript/atk/styluscore/InkField;"
        }
    .end annotation

    new-instance v4, Lcom/myscript/atk/styluscore/ListInkItem;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/myscript/atk/styluscore/ListInkItem;-><init>(Ljava/lang/Iterable;)V

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v16

    const/4 v14, 0x0

    :goto_0
    move/from16 v0, v16

    if-ge v14, v0, :cond_0

    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/myscript/atk/styluscore/InkItem;

    invoke-virtual {v4, v2}, Lcom/myscript/atk/styluscore/ListInkItem;->native_add(Lcom/myscript/atk/styluscore/InkItem;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_0
    new-instance v13, Lcom/myscript/atk/styluscore/ListInt;

    move-object/from16 v0, p7

    invoke-direct {v13, v0}, Lcom/myscript/atk/styluscore/ListInt;-><init>(Ljava/lang/Iterable;)V

    invoke-interface/range {p7 .. p7}, Ljava/util/List;->size()I

    move-result v15

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v15, :cond_1

    move-object/from16 v0, p7

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v13, v2}, Lcom/myscript/atk/styluscore/ListInt;->native_add(I)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_1
    new-instance v17, Lcom/myscript/atk/styluscore/InkField;

    invoke-static {v4}, Lcom/myscript/atk/styluscore/ListInkItem;->getCPtr(Lcom/myscript/atk/styluscore/ListInkItem;)J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v13}, Lcom/myscript/atk/styluscore/ListInt;->getCPtr(Lcom/myscript/atk/styluscore/ListInt;)J

    move-result-wide v11

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-static/range {v2 .. v13}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkField_fromItemList__SWIG_0(JLcom/myscript/atk/styluscore/ListInkItem;[BFIIFFJLcom/myscript/atk/styluscore/ListInt;)J

    move-result-wide v2

    const/4 v5, 0x1

    move-object/from16 v0, v17

    invoke-direct {v0, v2, v3, v5}, Lcom/myscript/atk/styluscore/InkField;-><init>(JZ)V

    return-object v17
.end method

.method public static fromItemList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/myscript/atk/styluscore/InkField;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/InkItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/myscript/atk/styluscore/InkField;"
        }
    .end annotation

    new-instance v1, Lcom/myscript/atk/styluscore/ListInkItem;

    invoke-direct {v1, p0}, Lcom/myscript/atk/styluscore/ListInkItem;-><init>(Ljava/lang/Iterable;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/myscript/atk/styluscore/InkItem;

    invoke-virtual {v1, v3}, Lcom/myscript/atk/styluscore/ListInkItem;->native_add(Lcom/myscript/atk/styluscore/InkItem;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/myscript/atk/styluscore/InkField;

    invoke-static {v1}, Lcom/myscript/atk/styluscore/ListInkItem;->getCPtr(Lcom/myscript/atk/styluscore/ListInkItem;)J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-static {v4, v5, v1, v6, v7}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkField_fromItemList__SWIG_12(JLcom/myscript/atk/styluscore/ListInkItem;[B[B)J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6}, Lcom/myscript/atk/styluscore/InkField;-><init>(JZ)V

    return-object v3
.end method

.method public static fromItemList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;F)Lcom/myscript/atk/styluscore/InkField;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/InkItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "F)",
            "Lcom/myscript/atk/styluscore/InkField;"
        }
    .end annotation

    new-instance v2, Lcom/myscript/atk/styluscore/ListInkItem;

    invoke-direct {v2, p0}, Lcom/myscript/atk/styluscore/ListInkItem;-><init>(Ljava/lang/Iterable;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_0

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/InkItem;

    invoke-virtual {v2, v0}, Lcom/myscript/atk/styluscore/ListInkItem;->native_add(Lcom/myscript/atk/styluscore/InkItem;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    new-instance v8, Lcom/myscript/atk/styluscore/InkField;

    invoke-static {v2}, Lcom/myscript/atk/styluscore/ListInkItem;->getCPtr(Lcom/myscript/atk/styluscore/ListInkItem;)J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkField_fromItemList__SWIG_11(JLcom/myscript/atk/styluscore/ListInkItem;[B[BF)J

    move-result-wide v0

    const/4 v3, 0x1

    invoke-direct {v8, v0, v1, v3}, Lcom/myscript/atk/styluscore/InkField;-><init>(JZ)V

    return-object v8
.end method

.method public static fromItemList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;FF)Lcom/myscript/atk/styluscore/InkField;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/InkItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "FF)",
            "Lcom/myscript/atk/styluscore/InkField;"
        }
    .end annotation

    new-instance v2, Lcom/myscript/atk/styluscore/ListInkItem;

    invoke-direct {v2, p0}, Lcom/myscript/atk/styluscore/ListInkItem;-><init>(Ljava/lang/Iterable;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v8

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v8, :cond_0

    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/InkItem;

    invoke-virtual {v2, v0}, Lcom/myscript/atk/styluscore/ListInkItem;->native_add(Lcom/myscript/atk/styluscore/InkItem;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    new-instance v9, Lcom/myscript/atk/styluscore/InkField;

    invoke-static {v2}, Lcom/myscript/atk/styluscore/ListInkItem;->getCPtr(Lcom/myscript/atk/styluscore/ListInkItem;)J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkField_fromItemList__SWIG_10(JLcom/myscript/atk/styluscore/ListInkItem;[B[BFF)J

    move-result-wide v0

    const/4 v3, 0x1

    invoke-direct {v9, v0, v1, v3}, Lcom/myscript/atk/styluscore/InkField;-><init>(JZ)V

    return-object v9
.end method

.method public static fromItemList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;FFF)Lcom/myscript/atk/styluscore/InkField;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/InkItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "FFF)",
            "Lcom/myscript/atk/styluscore/InkField;"
        }
    .end annotation

    new-instance v2, Lcom/myscript/atk/styluscore/ListInkItem;

    invoke-direct {v2, p0}, Lcom/myscript/atk/styluscore/ListInkItem;-><init>(Ljava/lang/Iterable;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v9

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v9, :cond_0

    invoke-interface {p0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/InkItem;

    invoke-virtual {v2, v0}, Lcom/myscript/atk/styluscore/ListInkItem;->native_add(Lcom/myscript/atk/styluscore/InkItem;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    new-instance v10, Lcom/myscript/atk/styluscore/InkField;

    invoke-static {v2}, Lcom/myscript/atk/styluscore/ListInkItem;->getCPtr(Lcom/myscript/atk/styluscore/ListInkItem;)J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    invoke-static/range {v0 .. v7}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkField_fromItemList__SWIG_9(JLcom/myscript/atk/styluscore/ListInkItem;[B[BFFF)J

    move-result-wide v0

    const/4 v3, 0x1

    invoke-direct {v10, v0, v1, v3}, Lcom/myscript/atk/styluscore/InkField;-><init>(JZ)V

    return-object v10
.end method

.method public static fromItemList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;FFFLjava/util/List;)Lcom/myscript/atk/styluscore/InkField;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/InkItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "FFF",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/myscript/atk/styluscore/InkField;"
        }
    .end annotation

    new-instance v4, Lcom/myscript/atk/styluscore/ListInkItem;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/myscript/atk/styluscore/ListInkItem;-><init>(Ljava/lang/Iterable;)V

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v15

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v15, :cond_0

    move-object/from16 v0, p0

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/myscript/atk/styluscore/InkItem;

    invoke-virtual {v4, v2}, Lcom/myscript/atk/styluscore/ListInkItem;->native_add(Lcom/myscript/atk/styluscore/InkItem;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_0
    new-instance v12, Lcom/myscript/atk/styluscore/ListInt;

    move-object/from16 v0, p6

    invoke-direct {v12, v0}, Lcom/myscript/atk/styluscore/ListInt;-><init>(Ljava/lang/Iterable;)V

    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v14

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v14, :cond_1

    move-object/from16 v0, p6

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v12, v2}, Lcom/myscript/atk/styluscore/ListInt;->native_add(I)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_1
    new-instance v16, Lcom/myscript/atk/styluscore/InkField;

    invoke-static {v4}, Lcom/myscript/atk/styluscore/ListInkItem;->getCPtr(Lcom/myscript/atk/styluscore/ListInkItem;)J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v12}, Lcom/myscript/atk/styluscore/ListInt;->getCPtr(Lcom/myscript/atk/styluscore/ListInt;)J

    move-result-wide v10

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-static/range {v2 .. v12}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkField_fromItemList__SWIG_8(JLcom/myscript/atk/styluscore/ListInkItem;[B[BFFFJLcom/myscript/atk/styluscore/ListInt;)J

    move-result-wide v2

    const/4 v5, 0x1

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v5}, Lcom/myscript/atk/styluscore/InkField;-><init>(JZ)V

    return-object v16
.end method

.method public static fromLabel(Ljava/lang/String;)Lcom/myscript/atk/styluscore/InkField;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/InkField;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkField_fromLabel__SWIG_2([B)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/InkField;-><init>(JZ)V

    return-object v0
.end method

.method public static fromLabel(Ljava/lang/String;I)Lcom/myscript/atk/styluscore/InkField;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/InkField;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkField_fromLabel__SWIG_1([BI)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/InkField;-><init>(JZ)V

    return-object v0
.end method

.method public static fromLabel(Ljava/lang/String;II)Lcom/myscript/atk/styluscore/InkField;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/InkField;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkField_fromLabel__SWIG_0([BII)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/InkField;-><init>(JZ)V

    return-object v0
.end method

.method public static fromParts(Ljava/util/List;Ljava/util/List;)Lcom/myscript/atk/styluscore/InkField;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/InkField;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/InkItem;",
            ">;)",
            "Lcom/myscript/atk/styluscore/InkField;"
        }
    .end annotation

    new-instance v2, Lcom/myscript/atk/styluscore/ListInkField;

    invoke-direct {v2, p0}, Lcom/myscript/atk/styluscore/ListInkField;-><init>(Ljava/lang/Iterable;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v8

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v8, :cond_0

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/InkField;

    invoke-virtual {v2, v0}, Lcom/myscript/atk/styluscore/ListInkField;->native_add(Lcom/myscript/atk/styluscore/InkField;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    new-instance v5, Lcom/myscript/atk/styluscore/ListInkItem;

    invoke-direct {v5, p1}, Lcom/myscript/atk/styluscore/ListInkItem;-><init>(Ljava/lang/Iterable;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v7, :cond_1

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/InkItem;

    invoke-virtual {v5, v0}, Lcom/myscript/atk/styluscore/ListInkItem;->native_add(Lcom/myscript/atk/styluscore/InkItem;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    new-instance v9, Lcom/myscript/atk/styluscore/InkField;

    invoke-static {v2}, Lcom/myscript/atk/styluscore/ListInkField;->getCPtr(Lcom/myscript/atk/styluscore/ListInkField;)J

    move-result-wide v0

    invoke-static {v5}, Lcom/myscript/atk/styluscore/ListInkItem;->getCPtr(Lcom/myscript/atk/styluscore/ListInkItem;)J

    move-result-wide v3

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkField_fromParts(JLcom/myscript/atk/styluscore/ListInkField;JLcom/myscript/atk/styluscore/ListInkItem;)J

    move-result-wide v0

    const/4 v3, 0x1

    invoke-direct {v9, v0, v1, v3}, Lcom/myscript/atk/styluscore/InkField;-><init>(JZ)V

    return-object v9
.end method

.method public static fromSegment(Lcom/myscript/atk/styluscore/Segment;)Lcom/myscript/atk/styluscore/InkField;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/InkField;

    invoke-static {p0}, Lcom/myscript/atk/styluscore/Segment;->getCPtr(Lcom/myscript/atk/styluscore/Segment;)J

    move-result-wide v2

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkField_fromSegment(JLcom/myscript/atk/styluscore/Segment;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/InkField;-><init>(JZ)V

    return-object v0
.end method

.method public static fromWordSegmentList(Ljava/util/List;)Lcom/myscript/atk/styluscore/InkField;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/Segment;",
            ">;)",
            "Lcom/myscript/atk/styluscore/InkField;"
        }
    .end annotation

    new-instance v1, Lcom/myscript/atk/styluscore/ListSegment;

    invoke-direct {v1, p0}, Lcom/myscript/atk/styluscore/ListSegment;-><init>(Ljava/lang/Iterable;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/myscript/atk/styluscore/Segment;

    invoke-virtual {v1, v3}, Lcom/myscript/atk/styluscore/ListSegment;->native_add(Lcom/myscript/atk/styluscore/Segment;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/myscript/atk/styluscore/InkField;

    invoke-static {v1}, Lcom/myscript/atk/styluscore/ListSegment;->getCPtr(Lcom/myscript/atk/styluscore/ListSegment;)J

    move-result-wide v4

    invoke-static {v4, v5, v1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkField_fromWordSegmentList(JLcom/myscript/atk/styluscore/ListSegment;)J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6}, Lcom/myscript/atk/styluscore/InkField;-><init>(JZ)V

    return-object v3
.end method

.method protected static getCPtr(Lcom/myscript/atk/styluscore/InkField;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkField;->swigCPtr:J

    goto :goto_0
.end method

.method public static grafted(Ljava/util/List;I)Lcom/myscript/atk/styluscore/InkField;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/InkField;",
            ">;I)",
            "Lcom/myscript/atk/styluscore/InkField;"
        }
    .end annotation

    new-instance v0, Lcom/myscript/atk/styluscore/ListInkField;

    invoke-direct {v0, p0}, Lcom/myscript/atk/styluscore/ListInkField;-><init>(Ljava/lang/Iterable;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/myscript/atk/styluscore/InkField;

    invoke-virtual {v0, v3}, Lcom/myscript/atk/styluscore/ListInkField;->native_add(Lcom/myscript/atk/styluscore/InkField;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/myscript/atk/styluscore/InkField;

    invoke-static {v0}, Lcom/myscript/atk/styluscore/ListInkField;->getCPtr(Lcom/myscript/atk/styluscore/ListInkField;)J

    move-result-wide v4

    invoke-static {v4, v5, v0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkField_grafted__SWIG_2(JLcom/myscript/atk/styluscore/ListInkField;I)J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6}, Lcom/myscript/atk/styluscore/InkField;-><init>(JZ)V

    return-object v3
.end method


# virtual methods
.method public cutAround(Lcom/myscript/atk/styluscore/InkRange;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/myscript/atk/styluscore/InkRange;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/InkField;",
            ">;"
        }
    .end annotation

    new-instance v6, Lcom/myscript/atk/styluscore/ListInkField;

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkField;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InkRange;->getCPtr(Lcom/myscript/atk/styluscore/InkRange;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkField_cutAround(JLcom/myscript/atk/styluscore/InkField;JLcom/myscript/atk/styluscore/InkRange;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/myscript/atk/styluscore/ListInkField;-><init>(JZ)V

    return-object v6
.end method

.method public cutAt(Lcom/myscript/atk/styluscore/InkLocation;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/myscript/atk/styluscore/InkLocation;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/InkField;",
            ">;"
        }
    .end annotation

    new-instance v6, Lcom/myscript/atk/styluscore/ListInkField;

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkField;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InkLocation;->getCPtr(Lcom/myscript/atk/styluscore/InkLocation;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkField_cutAt(JLcom/myscript/atk/styluscore/InkField;JLcom/myscript/atk/styluscore/InkLocation;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/myscript/atk/styluscore/ListInkField;-><init>(JZ)V

    return-object v6
.end method

.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkField;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/myscript/atk/styluscore/InkField;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myscript/atk/styluscore/InkField;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkField;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->delete_InkField(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/myscript/atk/styluscore/InkField;->swigCPtr:J
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

.method public direction()I
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkField;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkField_direction(JLcom/myscript/atk/styluscore/InkField;)I

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/InkField;->delete()V

    return-void
.end method

.method public formatted(I)Lcom/myscript/atk/styluscore/InkField;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/InkField;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/InkField;->swigCPtr:J

    invoke-static {v2, v3, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkField_formatted(JLcom/myscript/atk/styluscore/InkField;I)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/InkField;-><init>(JZ)V

    return-object v0
.end method

.method public formattedExplicitSpaces(Ljava/util/List;Ljava/util/List;)Lcom/myscript/atk/styluscore/InkField;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/InkLocation;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/myscript/atk/styluscore/InkField;"
        }
    .end annotation

    new-instance v5, Lcom/myscript/atk/styluscore/ListInkLocation;

    invoke-direct {v5, p1}, Lcom/myscript/atk/styluscore/ListInkLocation;-><init>(Ljava/lang/Iterable;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v11

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v11, :cond_0

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/InkLocation;

    invoke-virtual {v5, v0}, Lcom/myscript/atk/styluscore/ListInkLocation;->native_add(Lcom/myscript/atk/styluscore/InkLocation;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    new-instance v8, Lcom/myscript/atk/styluscore/ListInt;

    invoke-direct {v8, p2}, Lcom/myscript/atk/styluscore/ListInt;-><init>(Ljava/lang/Iterable;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v10

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v10, :cond_1

    invoke-interface {p2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/myscript/atk/styluscore/ListInt;->native_add(I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    new-instance v12, Lcom/myscript/atk/styluscore/InkField;

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkField;->swigCPtr:J

    invoke-static {v5}, Lcom/myscript/atk/styluscore/ListInkLocation;->getCPtr(Lcom/myscript/atk/styluscore/ListInkLocation;)J

    move-result-wide v3

    invoke-static {v8}, Lcom/myscript/atk/styluscore/ListInt;->getCPtr(Lcom/myscript/atk/styluscore/ListInt;)J

    move-result-wide v6

    move-object v2, p0

    invoke-static/range {v0 .. v8}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkField_formattedExplicitSpaces(JLcom/myscript/atk/styluscore/InkField;JLcom/myscript/atk/styluscore/ListInkLocation;JLcom/myscript/atk/styluscore/ListInt;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v12, v0, v1, v2}, Lcom/myscript/atk/styluscore/InkField;-><init>(JZ)V

    return-object v12
.end method

.method public getCircledCharactersRange()Lcom/myscript/atk/styluscore/InkRange;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/InkRange;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/InkField;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkField_getCircledCharactersRange(JLcom/myscript/atk/styluscore/InkField;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/InkRange;-><init>(JZ)V

    return-object v0
.end method

.method public getGuideBoxes()Ljava/util/List;
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

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/InkField;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkField_getGuideBoxes(JLcom/myscript/atk/styluscore/InkField;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/ListInkItem;-><init>(JZ)V

    return-object v0
.end method

.method public grafted(Lcom/myscript/atk/styluscore/InkField;)Lcom/myscript/atk/styluscore/InkField;
    .locals 7

    new-instance v6, Lcom/myscript/atk/styluscore/InkField;

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkField;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InkField;->getCPtr(Lcom/myscript/atk/styluscore/InkField;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkField_grafted__SWIG_1(JLcom/myscript/atk/styluscore/InkField;JLcom/myscript/atk/styluscore/InkField;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/myscript/atk/styluscore/InkField;-><init>(JZ)V

    return-object v6
.end method

.method public grafted(Lcom/myscript/atk/styluscore/InkField;I)Lcom/myscript/atk/styluscore/InkField;
    .locals 8

    new-instance v7, Lcom/myscript/atk/styluscore/InkField;

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkField;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InkField;->getCPtr(Lcom/myscript/atk/styluscore/InkField;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkField_grafted__SWIG_0(JLcom/myscript/atk/styluscore/InkField;JLcom/myscript/atk/styluscore/InkField;I)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v7, v0, v1, v2}, Lcom/myscript/atk/styluscore/InkField;-><init>(JZ)V

    return-object v7
.end method

.method public inkLayout()Lcom/myscript/atk/styluscore/InkLayout;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/InkLayout;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/InkField;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkField_inkLayout(JLcom/myscript/atk/styluscore/InkField;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/InkLayout;-><init>(JZ)V

    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkField;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkField_isEmpty(JLcom/myscript/atk/styluscore/InkField;)Z

    move-result v0

    return v0
.end method

.method public items()Ljava/util/List;
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

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/InkField;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkField_items(JLcom/myscript/atk/styluscore/InkField;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/ListInkItem;-><init>(JZ)V

    return-object v0
.end method

.method public lineBreaksCount()I
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkField;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkField_lineBreaksCount(JLcom/myscript/atk/styluscore/InkField;)I

    move-result v0

    return v0
.end method

.method public lineBreaksNormalized()Lcom/myscript/atk/styluscore/InkField;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/InkField;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/InkField;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkField_lineBreaksNormalized(JLcom/myscript/atk/styluscore/InkField;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/InkField;-><init>(JZ)V

    return-object v0
.end method

.method public lineRangesFromLineBreaks()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/InkRange;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/myscript/atk/styluscore/ListInkRange;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/InkField;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkField_lineRangesFromLineBreaks(JLcom/myscript/atk/styluscore/InkField;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/ListInkRange;-><init>(JZ)V

    return-object v0
.end method

.method public mapped(Lcom/myscript/atk/styluscore/Transform;)Lcom/myscript/atk/styluscore/InkField;
    .locals 7

    new-instance v6, Lcom/myscript/atk/styluscore/InkField;

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkField;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Transform;->getCPtr(Lcom/myscript/atk/styluscore/Transform;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkField_mapped(JLcom/myscript/atk/styluscore/InkField;JLcom/myscript/atk/styluscore/Transform;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/myscript/atk/styluscore/InkField;-><init>(JZ)V

    return-object v6
.end method

.method public normalized()Lcom/myscript/atk/styluscore/InkField;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/InkField;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/InkField;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkField_normalized__SWIG_1(JLcom/myscript/atk/styluscore/InkField;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/InkField;-><init>(JZ)V

    return-object v0
.end method

.method public normalized(Z)Lcom/myscript/atk/styluscore/InkField;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/InkField;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/InkField;->swigCPtr:J

    invoke-static {v2, v3, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkField_normalized__SWIG_0(JLcom/myscript/atk/styluscore/InkField;Z)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/InkField;-><init>(JZ)V

    return-object v0
.end method

.method public pendingStrokes()Ljava/util/List;
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

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/InkField;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkField_pendingStrokes(JLcom/myscript/atk/styluscore/InkField;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/ListInkItem;-><init>(JZ)V

    return-object v0
.end method

.method public remove(Lcom/myscript/atk/styluscore/InkRange;)V
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkField;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InkRange;->getCPtr(Lcom/myscript/atk/styluscore/InkRange;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkField_remove(JLcom/myscript/atk/styluscore/InkField;JLcom/myscript/atk/styluscore/InkRange;)V

    return-void
.end method

.method public segments()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/Segment;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/myscript/atk/styluscore/ListSegment;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/InkField;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkField_segments__SWIG_1(JLcom/myscript/atk/styluscore/InkField;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/ListSegment;-><init>(JZ)V

    return-object v0
.end method

.method public segments(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/Segment;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/myscript/atk/styluscore/ListSegment;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/InkField;->swigCPtr:J

    invoke-static {v2, v3, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkField_segments__SWIG_0(JLcom/myscript/atk/styluscore/InkField;I)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/ListSegment;-><init>(JZ)V

    return-object v0
.end method

.method public selectedLabel()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/InkField;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkField_selectedLabel(JLcom/myscript/atk/styluscore/InkField;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public setInkLayout(Lcom/myscript/atk/styluscore/InkLayout;)V
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkField;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InkLayout;->getCPtr(Lcom/myscript/atk/styluscore/InkLayout;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkField_setInkLayout(JLcom/myscript/atk/styluscore/InkField;JLcom/myscript/atk/styluscore/InkLayout;)V

    return-void
.end method

.method public setPendingStrokes(Ljava/util/List;)V
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
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkField;->swigCPtr:J

    invoke-static {v5}, Lcom/myscript/atk/styluscore/ListInkItem;->getCPtr(Lcom/myscript/atk/styluscore/ListInkItem;)J

    move-result-wide v3

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkField_setPendingStrokes(JLcom/myscript/atk/styluscore/InkField;JLcom/myscript/atk/styluscore/ListInkItem;)V

    return-void
.end method

.method public setTag(Lcom/myscript/atk/styluscore/InkTag;)V
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkField;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InkTag;->getCPtr(Lcom/myscript/atk/styluscore/InkTag;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkField_setTag(JLcom/myscript/atk/styluscore/InkField;JLcom/myscript/atk/styluscore/InkTag;)V

    return-void
.end method

.method public setTopLevelSegment(Lcom/myscript/atk/styluscore/Segment;)V
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkField;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Segment;->getCPtr(Lcom/myscript/atk/styluscore/Segment;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkField_setTopLevelSegment(JLcom/myscript/atk/styluscore/InkField;JLcom/myscript/atk/styluscore/Segment;)V

    return-void
.end method

.method public setTransform(Lcom/myscript/atk/styluscore/Transform;)V
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkField;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Transform;->getCPtr(Lcom/myscript/atk/styluscore/Transform;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkField_setTransform(JLcom/myscript/atk/styluscore/InkField;JLcom/myscript/atk/styluscore/Transform;)V

    return-void
.end method

.method public simplified()Lcom/myscript/atk/styluscore/InkField;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/InkField;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/InkField;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkField_simplified(JLcom/myscript/atk/styluscore/InkField;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/InkField;-><init>(JZ)V

    return-object v0
.end method

.method public split(Lcom/myscript/atk/styluscore/InkRange;Lcom/myscript/atk/styluscore/InkField;Lcom/myscript/atk/styluscore/InkField;)V
    .locals 12

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkField;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InkRange;->getCPtr(Lcom/myscript/atk/styluscore/InkRange;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/myscript/atk/styluscore/InkField;->getCPtr(Lcom/myscript/atk/styluscore/InkField;)J

    move-result-wide v6

    invoke-static {p3}, Lcom/myscript/atk/styluscore/InkField;->getCPtr(Lcom/myscript/atk/styluscore/InkField;)J

    move-result-wide v9

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    move-object v11, p3

    invoke-static/range {v0 .. v11}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkField_split(JLcom/myscript/atk/styluscore/InkField;JLcom/myscript/atk/styluscore/InkRange;JLcom/myscript/atk/styluscore/InkField;JLcom/myscript/atk/styluscore/InkField;)V

    return-void
.end method

.method public tagRange(I)Lcom/myscript/atk/styluscore/InkRange;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/InkRange;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/InkField;->swigCPtr:J

    invoke-static {v2, v3, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkField_tagRange(JLcom/myscript/atk/styluscore/InkField;I)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/InkRange;-><init>(JZ)V

    return-object v0
.end method

.method public taggedWith(Lcom/myscript/atk/styluscore/InkTag;)Lcom/myscript/atk/styluscore/InkField;
    .locals 7

    new-instance v6, Lcom/myscript/atk/styluscore/InkField;

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkField;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InkTag;->getCPtr(Lcom/myscript/atk/styluscore/InkTag;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkField_taggedWith__SWIG_1(JLcom/myscript/atk/styluscore/InkField;JLcom/myscript/atk/styluscore/InkTag;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/myscript/atk/styluscore/InkField;-><init>(JZ)V

    return-object v6
.end method

.method public taggedWith(Lcom/myscript/atk/styluscore/InkTag;Z)Lcom/myscript/atk/styluscore/InkField;
    .locals 8

    new-instance v7, Lcom/myscript/atk/styluscore/InkField;

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkField;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InkTag;->getCPtr(Lcom/myscript/atk/styluscore/InkTag;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkField_taggedWith__SWIG_0(JLcom/myscript/atk/styluscore/InkField;JLcom/myscript/atk/styluscore/InkTag;Z)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v7, v0, v1, v2}, Lcom/myscript/atk/styluscore/InkField;-><init>(JZ)V

    return-object v7
.end method

.method public tags()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/InkTag;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/myscript/atk/styluscore/ListInkTag;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/InkField;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkField_tags(JLcom/myscript/atk/styluscore/InkField;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/ListInkTag;-><init>(JZ)V

    return-object v0
.end method

.method public timeShifted(J)Lcom/myscript/atk/styluscore/InkField;
    .locals 5

    new-instance v0, Lcom/myscript/atk/styluscore/InkField;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/InkField;->swigCPtr:J

    invoke-static {v2, v3, p0, p1, p2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkField_timeShifted(JLcom/myscript/atk/styluscore/InkField;J)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/InkField;-><init>(JZ)V

    return-object v0
.end method

.method public topLevelSegment()Lcom/myscript/atk/styluscore/Segment;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/Segment;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/InkField;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkField_topLevelSegment(JLcom/myscript/atk/styluscore/InkField;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/Segment;-><init>(JZ)V

    return-object v0
.end method

.method public transform()Lcom/myscript/atk/styluscore/Transform;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/Transform;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/InkField;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkField_transform(JLcom/myscript/atk/styluscore/InkField;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/Transform;-><init>(JZ)V

    return-object v0
.end method

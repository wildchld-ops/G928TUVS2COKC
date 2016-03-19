.class public Lcom/myscript/atk/styluscore/InputMethod;
.super Ljava/lang/Object;
.source "InputMethod.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/myscript/atk/styluscore/InputMethod$Error;,
        Lcom/myscript/atk/styluscore/InputMethod$GestureType;,
        Lcom/myscript/atk/styluscore/InputMethod$Gesture;
    }
.end annotation


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_InputMethod__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/InputMethod;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/myscript/atk/styluscore/InputMethod;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/myscript/atk/styluscore/InputMethod;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/myscript/atk/styluscore/InputMethod;)V
    .locals 3

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InputMethod;->getCPtr(Lcom/myscript/atk/styluscore/InputMethod;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_InputMethod__SWIG_2(JLcom/myscript/atk/styluscore/InputMethod;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/InputMethod;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_InputMethod__SWIG_1([B)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/InputMethod;-><init>(JZ)V

    return-void
.end method

.method public static errorCodeToString(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethod_errorCodeToString(I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static gestureName(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethod_gestureName(I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static gestureTypeName(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethod_gestureTypeName(I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method protected static getCPtr(Lcom/myscript/atk/styluscore/InputMethod;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethod;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public addStroke(Lcom/myscript/atk/styluscore/InkItem;)V
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethod;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InkItem;->getCPtr(Lcom/myscript/atk/styluscore/InkItem;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethod_addStroke(JLcom/myscript/atk/styluscore/InputMethod;JLcom/myscript/atk/styluscore/InkItem;)V

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
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethod;->swigCPtr:J

    invoke-static {v5}, Lcom/myscript/atk/styluscore/ListInkItem;->getCPtr(Lcom/myscript/atk/styluscore/ListInkItem;)J

    move-result-wide v3

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethod_addStrokes(JLcom/myscript/atk/styluscore/InputMethod;JLcom/myscript/atk/styluscore/ListInkItem;)V

    return-void
.end method

.method public config()Lcom/myscript/atk/styluscore/InputMethodConfig;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/InputMethodConfig;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/InputMethod;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethod_config(JLcom/myscript/atk/styluscore/InputMethod;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/InputMethodConfig;-><init>(JZ)V

    return-object v0
.end method

.method public contains(Lcom/myscript/atk/styluscore/Point;)Z
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethod;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Point;->getCPtr(Lcom/myscript/atk/styluscore/Point;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethod_contains(JLcom/myscript/atk/styluscore/InputMethod;JLcom/myscript/atk/styluscore/Point;)Z

    move-result v0

    return v0
.end method

.method public defaultAngleGesture(Lcom/myscript/atk/styluscore/InkField;Lcom/myscript/atk/styluscore/InkRange;)Lcom/myscript/atk/styluscore/InkField;
    .locals 10

    new-instance v9, Lcom/myscript/atk/styluscore/InkField;

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethod;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InkField;->getCPtr(Lcom/myscript/atk/styluscore/InkField;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/myscript/atk/styluscore/InkRange;->getCPtr(Lcom/myscript/atk/styluscore/InkRange;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethod_defaultAngleGesture(JLcom/myscript/atk/styluscore/InputMethod;JLcom/myscript/atk/styluscore/InkField;JLcom/myscript/atk/styluscore/InkRange;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v9, v0, v1, v2}, Lcom/myscript/atk/styluscore/InkField;-><init>(JZ)V

    return-object v9
.end method

.method public defaultBackspaceGesture(Lcom/myscript/atk/styluscore/InkField;)Lcom/myscript/atk/styluscore/InkField;
    .locals 7

    new-instance v6, Lcom/myscript/atk/styluscore/InkField;

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethod;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InkField;->getCPtr(Lcom/myscript/atk/styluscore/InkField;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethod_defaultBackspaceGesture(JLcom/myscript/atk/styluscore/InputMethod;JLcom/myscript/atk/styluscore/InkField;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/myscript/atk/styluscore/InkField;-><init>(JZ)V

    return-object v6
.end method

.method public defaultEraseGesture(Lcom/myscript/atk/styluscore/InkField;Lcom/myscript/atk/styluscore/InkRange;)Lcom/myscript/atk/styluscore/InkField;
    .locals 10

    new-instance v9, Lcom/myscript/atk/styluscore/InkField;

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethod;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InkField;->getCPtr(Lcom/myscript/atk/styluscore/InkField;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/myscript/atk/styluscore/InkRange;->getCPtr(Lcom/myscript/atk/styluscore/InkRange;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethod_defaultEraseGesture__SWIG_1(JLcom/myscript/atk/styluscore/InputMethod;JLcom/myscript/atk/styluscore/InkField;JLcom/myscript/atk/styluscore/InkRange;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v9, v0, v1, v2}, Lcom/myscript/atk/styluscore/InkField;-><init>(JZ)V

    return-object v9
.end method

.method public defaultEraseGesture(Lcom/myscript/atk/styluscore/InkField;Lcom/myscript/atk/styluscore/InkRange;Z)Lcom/myscript/atk/styluscore/InkField;
    .locals 11

    new-instance v10, Lcom/myscript/atk/styluscore/InkField;

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethod;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InkField;->getCPtr(Lcom/myscript/atk/styluscore/InkField;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/myscript/atk/styluscore/InkRange;->getCPtr(Lcom/myscript/atk/styluscore/InkRange;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    move v9, p3

    invoke-static/range {v0 .. v9}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethod_defaultEraseGesture__SWIG_0(JLcom/myscript/atk/styluscore/InputMethod;JLcom/myscript/atk/styluscore/InkField;JLcom/myscript/atk/styluscore/InkRange;Z)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v10, v0, v1, v2}, Lcom/myscript/atk/styluscore/InkField;-><init>(JZ)V

    return-object v10
.end method

.method public defaultInsertGesture(Lcom/myscript/atk/styluscore/InkField;Lcom/myscript/atk/styluscore/InkLocation;)Lcom/myscript/atk/styluscore/InkField;
    .locals 10

    new-instance v9, Lcom/myscript/atk/styluscore/InkField;

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethod;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InkField;->getCPtr(Lcom/myscript/atk/styluscore/InkField;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/myscript/atk/styluscore/InkLocation;->getCPtr(Lcom/myscript/atk/styluscore/InkLocation;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethod_defaultInsertGesture__SWIG_1(JLcom/myscript/atk/styluscore/InputMethod;JLcom/myscript/atk/styluscore/InkField;JLcom/myscript/atk/styluscore/InkLocation;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v9, v0, v1, v2}, Lcom/myscript/atk/styluscore/InkField;-><init>(JZ)V

    return-object v9
.end method

.method public defaultInsertGesture(Lcom/myscript/atk/styluscore/InkField;Lcom/myscript/atk/styluscore/InkLocation;Z)Lcom/myscript/atk/styluscore/InkField;
    .locals 11

    new-instance v10, Lcom/myscript/atk/styluscore/InkField;

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethod;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InkField;->getCPtr(Lcom/myscript/atk/styluscore/InkField;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/myscript/atk/styluscore/InkLocation;->getCPtr(Lcom/myscript/atk/styluscore/InkLocation;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    move v9, p3

    invoke-static/range {v0 .. v9}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethod_defaultInsertGesture__SWIG_0(JLcom/myscript/atk/styluscore/InputMethod;JLcom/myscript/atk/styluscore/InkField;JLcom/myscript/atk/styluscore/InkLocation;Z)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v10, v0, v1, v2}, Lcom/myscript/atk/styluscore/InkField;-><init>(JZ)V

    return-object v10
.end method

.method public defaultJoinGesture(Lcom/myscript/atk/styluscore/InkField;Lcom/myscript/atk/styluscore/InkLocation;)Lcom/myscript/atk/styluscore/InkField;
    .locals 10

    new-instance v9, Lcom/myscript/atk/styluscore/InkField;

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethod;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InkField;->getCPtr(Lcom/myscript/atk/styluscore/InkField;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/myscript/atk/styluscore/InkLocation;->getCPtr(Lcom/myscript/atk/styluscore/InkLocation;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethod_defaultJoinGesture__SWIG_1(JLcom/myscript/atk/styluscore/InputMethod;JLcom/myscript/atk/styluscore/InkField;JLcom/myscript/atk/styluscore/InkLocation;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v9, v0, v1, v2}, Lcom/myscript/atk/styluscore/InkField;-><init>(JZ)V

    return-object v9
.end method

.method public defaultJoinGesture(Lcom/myscript/atk/styluscore/InkField;Lcom/myscript/atk/styluscore/InkLocation;F)Lcom/myscript/atk/styluscore/InkField;
    .locals 11

    new-instance v10, Lcom/myscript/atk/styluscore/InkField;

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethod;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InkField;->getCPtr(Lcom/myscript/atk/styluscore/InkField;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/myscript/atk/styluscore/InkLocation;->getCPtr(Lcom/myscript/atk/styluscore/InkLocation;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    move v9, p3

    invoke-static/range {v0 .. v9}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethod_defaultJoinGesture__SWIG_0(JLcom/myscript/atk/styluscore/InputMethod;JLcom/myscript/atk/styluscore/InkField;JLcom/myscript/atk/styluscore/InkLocation;F)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v10, v0, v1, v2}, Lcom/myscript/atk/styluscore/InkField;-><init>(JZ)V

    return-object v10
.end method

.method public defaultJunctionGesture(Lcom/myscript/atk/styluscore/InkField;Lcom/myscript/atk/styluscore/InkRange;)Lcom/myscript/atk/styluscore/InkField;
    .locals 10

    new-instance v9, Lcom/myscript/atk/styluscore/InkField;

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethod;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InkField;->getCPtr(Lcom/myscript/atk/styluscore/InkField;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/myscript/atk/styluscore/InkRange;->getCPtr(Lcom/myscript/atk/styluscore/InkRange;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethod_defaultJunctionGesture(JLcom/myscript/atk/styluscore/InputMethod;JLcom/myscript/atk/styluscore/InkField;JLcom/myscript/atk/styluscore/InkRange;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v9, v0, v1, v2}, Lcom/myscript/atk/styluscore/InkField;-><init>(JZ)V

    return-object v9
.end method

.method public defaultLengthEqualityGesture(Lcom/myscript/atk/styluscore/InkField;Lcom/myscript/atk/styluscore/InkRange;)Lcom/myscript/atk/styluscore/InkField;
    .locals 10

    new-instance v9, Lcom/myscript/atk/styluscore/InkField;

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethod;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InkField;->getCPtr(Lcom/myscript/atk/styluscore/InkField;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/myscript/atk/styluscore/InkRange;->getCPtr(Lcom/myscript/atk/styluscore/InkRange;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethod_defaultLengthEqualityGesture(JLcom/myscript/atk/styluscore/InputMethod;JLcom/myscript/atk/styluscore/InkField;JLcom/myscript/atk/styluscore/InkRange;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v9, v0, v1, v2}, Lcom/myscript/atk/styluscore/InkField;-><init>(JZ)V

    return-object v9
.end method

.method public defaultOverwriteGesture(Lcom/myscript/atk/styluscore/InkField;Lcom/myscript/atk/styluscore/InkRange;)Lcom/myscript/atk/styluscore/InkField;
    .locals 10

    new-instance v9, Lcom/myscript/atk/styluscore/InkField;

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethod;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InkField;->getCPtr(Lcom/myscript/atk/styluscore/InkField;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/myscript/atk/styluscore/InkRange;->getCPtr(Lcom/myscript/atk/styluscore/InkRange;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethod_defaultOverwriteGesture(JLcom/myscript/atk/styluscore/InputMethod;JLcom/myscript/atk/styluscore/InkField;JLcom/myscript/atk/styluscore/InkRange;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v9, v0, v1, v2}, Lcom/myscript/atk/styluscore/InkField;-><init>(JZ)V

    return-object v9
.end method

.method public defaultParallelGesture(Lcom/myscript/atk/styluscore/InkField;Lcom/myscript/atk/styluscore/InkRange;)Lcom/myscript/atk/styluscore/InkField;
    .locals 10

    new-instance v9, Lcom/myscript/atk/styluscore/InkField;

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethod;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InkField;->getCPtr(Lcom/myscript/atk/styluscore/InkField;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/myscript/atk/styluscore/InkRange;->getCPtr(Lcom/myscript/atk/styluscore/InkRange;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethod_defaultParallelGesture(JLcom/myscript/atk/styluscore/InputMethod;JLcom/myscript/atk/styluscore/InkField;JLcom/myscript/atk/styluscore/InkRange;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v9, v0, v1, v2}, Lcom/myscript/atk/styluscore/InkField;-><init>(JZ)V

    return-object v9
.end method

.method public defaultPerpendicularGesture(Lcom/myscript/atk/styluscore/InkField;Lcom/myscript/atk/styluscore/InkRange;)Lcom/myscript/atk/styluscore/InkField;
    .locals 10

    new-instance v9, Lcom/myscript/atk/styluscore/InkField;

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethod;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InkField;->getCPtr(Lcom/myscript/atk/styluscore/InkField;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/myscript/atk/styluscore/InkRange;->getCPtr(Lcom/myscript/atk/styluscore/InkRange;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethod_defaultPerpendicularGesture(JLcom/myscript/atk/styluscore/InputMethod;JLcom/myscript/atk/styluscore/InkField;JLcom/myscript/atk/styluscore/InkRange;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v9, v0, v1, v2}, Lcom/myscript/atk/styluscore/InkField;-><init>(JZ)V

    return-object v9
.end method

.method public defaultReturnGesture(Lcom/myscript/atk/styluscore/InkField;Lcom/myscript/atk/styluscore/InkLocation;)Lcom/myscript/atk/styluscore/InkField;
    .locals 10

    new-instance v9, Lcom/myscript/atk/styluscore/InkField;

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethod;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InkField;->getCPtr(Lcom/myscript/atk/styluscore/InkField;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/myscript/atk/styluscore/InkLocation;->getCPtr(Lcom/myscript/atk/styluscore/InkLocation;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethod_defaultReturnGesture(JLcom/myscript/atk/styluscore/InputMethod;JLcom/myscript/atk/styluscore/InkField;JLcom/myscript/atk/styluscore/InkLocation;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v9, v0, v1, v2}, Lcom/myscript/atk/styluscore/InkField;-><init>(JZ)V

    return-object v9
.end method

.method public defaultSelectionGesture(Lcom/myscript/atk/styluscore/InkField;Lcom/myscript/atk/styluscore/InkRange;)Lcom/myscript/atk/styluscore/InkField;
    .locals 10

    new-instance v9, Lcom/myscript/atk/styluscore/InkField;

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethod;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InkField;->getCPtr(Lcom/myscript/atk/styluscore/InkField;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/myscript/atk/styluscore/InkRange;->getCPtr(Lcom/myscript/atk/styluscore/InkRange;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethod_defaultSelectionGesture(JLcom/myscript/atk/styluscore/InputMethod;JLcom/myscript/atk/styluscore/InkField;JLcom/myscript/atk/styluscore/InkRange;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v9, v0, v1, v2}, Lcom/myscript/atk/styluscore/InkField;-><init>(JZ)V

    return-object v9
.end method

.method public defaultSingleTapGesture(Lcom/myscript/atk/styluscore/InkField;Lcom/myscript/atk/styluscore/InkLocation;)Lcom/myscript/atk/styluscore/InkField;
    .locals 10

    new-instance v9, Lcom/myscript/atk/styluscore/InkField;

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethod;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InkField;->getCPtr(Lcom/myscript/atk/styluscore/InkField;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/myscript/atk/styluscore/InkLocation;->getCPtr(Lcom/myscript/atk/styluscore/InkLocation;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethod_defaultSingleTapGesture(JLcom/myscript/atk/styluscore/InputMethod;JLcom/myscript/atk/styluscore/InkField;JLcom/myscript/atk/styluscore/InkLocation;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v9, v0, v1, v2}, Lcom/myscript/atk/styluscore/InkField;-><init>(JZ)V

    return-object v9
.end method

.method public defaultSpaceGesture(Lcom/myscript/atk/styluscore/InkField;)Lcom/myscript/atk/styluscore/InkField;
    .locals 7

    new-instance v6, Lcom/myscript/atk/styluscore/InkField;

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethod;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InkField;->getCPtr(Lcom/myscript/atk/styluscore/InkField;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethod_defaultSpaceGesture(JLcom/myscript/atk/styluscore/InputMethod;JLcom/myscript/atk/styluscore/InkField;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/myscript/atk/styluscore/InkField;-><init>(JZ)V

    return-object v6
.end method

.method public defaultUnderlineGesture(Lcom/myscript/atk/styluscore/InkField;Lcom/myscript/atk/styluscore/InkRange;)Lcom/myscript/atk/styluscore/InkField;
    .locals 10

    new-instance v9, Lcom/myscript/atk/styluscore/InkField;

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethod;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InkField;->getCPtr(Lcom/myscript/atk/styluscore/InkField;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/myscript/atk/styluscore/InkRange;->getCPtr(Lcom/myscript/atk/styluscore/InkRange;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethod_defaultUnderlineGesture(JLcom/myscript/atk/styluscore/InputMethod;JLcom/myscript/atk/styluscore/InkField;JLcom/myscript/atk/styluscore/InkRange;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v9, v0, v1, v2}, Lcom/myscript/atk/styluscore/InkField;-><init>(JZ)V

    return-object v9
.end method

.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethod;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/myscript/atk/styluscore/InputMethod;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myscript/atk/styluscore/InputMethod;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethod;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->delete_InputMethod(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethod;->swigCPtr:J
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

.method public disableGestures(I)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethod;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethod_disableGestures(JLcom/myscript/atk/styluscore/InputMethod;I)V

    return-void
.end method

.method public enableGestures(I)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethod;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethod_enableGestures(JLcom/myscript/atk/styluscore/InputMethod;I)V

    return-void
.end method

.method public errorCode()I
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethod;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethod_errorCode(JLcom/myscript/atk/styluscore/InputMethod;)I

    move-result v0

    return v0
.end method

.method public errorString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/InputMethod;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethod_errorString(JLcom/myscript/atk/styluscore/InputMethod;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public failed()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethod;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethod_failed(JLcom/myscript/atk/styluscore/InputMethod;)Z

    move-result v0

    return v0
.end method

.method public field()Lcom/myscript/atk/styluscore/InkField;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/InkField;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/InputMethod;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethod_field(JLcom/myscript/atk/styluscore/InputMethod;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/InkField;-><init>(JZ)V

    return-object v0
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/InputMethod;->delete()V

    return-void
.end method

.method public gestureSet()I
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethod;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethod_gestureSet(JLcom/myscript/atk/styluscore/InputMethod;)I

    move-result v0

    return v0
.end method

.method public gestureStrokes()Ljava/util/List;
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

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/InputMethod;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethod_gestureStrokes(JLcom/myscript/atk/styluscore/InputMethod;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/ListInkItem;-><init>(JZ)V

    return-object v0
.end method

.method public gestureType()I
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethod;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethod_gestureType(JLcom/myscript/atk/styluscore/InputMethod;)I

    move-result v0

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/InputMethod;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethod_name(JLcom/myscript/atk/styluscore/InputMethod;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public penAbort()V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethod;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethod_penAbort(JLcom/myscript/atk/styluscore/InputMethod;)V

    return-void
.end method

.method public penDown()V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethod;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethod_penDown(JLcom/myscript/atk/styluscore/InputMethod;)V

    return-void
.end method

.method public penMove(Lcom/myscript/atk/styluscore/Point;)V
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethod;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Point;->getCPtr(Lcom/myscript/atk/styluscore/Point;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethod_penMove(JLcom/myscript/atk/styluscore/InputMethod;JLcom/myscript/atk/styluscore/Point;)V

    return-void
.end method

.method public penUp()V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethod;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethod_penUp(JLcom/myscript/atk/styluscore/InputMethod;)V

    return-void
.end method

.method public penUpWithUserParams(Ljava/lang/Object;Lcom/myscript/atk/styluscore/InkItemUserParamsListener;)V
    .locals 7

    invoke-static {p1}, Lcom/myscript/atk/styluscore/UserParamsGrefHelper;->addUserParams(Ljava/lang/Object;)I

    move-result v3

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethod;->swigCPtr:J

    invoke-static {p2}, Lcom/myscript/atk/styluscore/InkItemUserParamsListener;->getCPtr(Lcom/myscript/atk/styluscore/InkItemUserParamsListener;)J

    move-result-wide v4

    move-object v2, p0

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethod_penUpWithUserParams(JLcom/myscript/atk/styluscore/InputMethod;IJLcom/myscript/atk/styluscore/InkItemUserParamsListener;)V

    return-void
.end method

.method public setConfig(Lcom/myscript/atk/styluscore/InputMethodConfig;)V
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethod;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InputMethodConfig;->getCPtr(Lcom/myscript/atk/styluscore/InputMethodConfig;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethod_setConfig(JLcom/myscript/atk/styluscore/InputMethod;JLcom/myscript/atk/styluscore/InputMethodConfig;)V

    return-void
.end method

.method public setField(Lcom/myscript/atk/styluscore/InkField;)V
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethod;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InkField;->getCPtr(Lcom/myscript/atk/styluscore/InkField;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethod_setField(JLcom/myscript/atk/styluscore/InputMethod;JLcom/myscript/atk/styluscore/InkField;)V

    return-void
.end method

.method public setFlowMarker(I)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethod;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethod_setFlowMarker(JLcom/myscript/atk/styluscore/InputMethod;I)V

    return-void
.end method

.method public setListener(Lcom/myscript/atk/styluscore/InputMethodListener;)V
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethod;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InputMethodListener;->getCPtr(Lcom/myscript/atk/styluscore/InputMethodListener;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethod_setListener(JLcom/myscript/atk/styluscore/InputMethod;JLcom/myscript/atk/styluscore/InputMethodListener;)V

    return-void
.end method

.method public waitIdle()V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethod;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethod_waitIdle(JLcom/myscript/atk/styluscore/InputMethod;)V

    return-void
.end method

.method public waitReco()V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InputMethod;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InputMethod_waitReco(JLcom/myscript/atk/styluscore/InputMethod;)V

    return-void
.end method

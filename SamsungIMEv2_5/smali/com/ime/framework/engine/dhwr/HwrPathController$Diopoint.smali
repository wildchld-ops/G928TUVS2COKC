.class public Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;
.super Ljava/lang/Object;
.source "HwrPathController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/framework/engine/dhwr/HwrPathController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Diopoint"
.end annotation


# static fields
.field public static final LASSOED:I = 0x3e7


# instance fields
.field private mEnable:Z

.field private mGrouped:I

.field private mPath:Landroid/graphics/Path;

.field private mSelected:Z

.field private mUnusedPoint:Z

.field private mX:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private tmpx1:F

.field private tmpy1:F

.field private transMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mX:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mY:Ljava/util/List;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->transMatrix:Landroid/graphics/Matrix;

    iput-boolean v3, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mEnable:Z

    iput-boolean v2, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mSelected:Z

    iput v2, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mGrouped:I

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mPath:Landroid/graphics/Path;

    iput-boolean v3, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mUnusedPoint:Z

    iput v1, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->tmpx1:F

    iput v1, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->tmpy1:F

    iget-object v0, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->transMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    return-void
.end method

.method public constructor <init>(Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;)V
    .locals 12

    const/high16 v11, 0x40000000    # 2.0f

    const/4 v7, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mX:Ljava/util/List;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mY:Ljava/util/List;

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    iput-object v6, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->transMatrix:Landroid/graphics/Matrix;

    iput-boolean v10, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mEnable:Z

    iput-boolean v9, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mSelected:Z

    iput v9, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mGrouped:I

    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v6, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mPath:Landroid/graphics/Path;

    iput-boolean v10, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mUnusedPoint:Z

    iput v7, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->tmpx1:F

    iput v7, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->tmpy1:F

    invoke-virtual {p1}, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->getPoint()[[F

    move-result-object v0

    const/4 v5, 0x0

    move v3, v5

    move v4, v5

    move v2, v5

    const/4 v1, 0x0

    :goto_0
    array-length v6, v0

    if-ge v1, v6, :cond_2

    iget-object v6, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mX:Ljava/util/List;

    aget-object v7, v0, v1

    aget v7, v7, v9

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mY:Ljava/util/List;

    aget-object v7, v0, v1

    aget v7, v7, v10

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v6, v0, v1

    aget v2, v6, v9

    aget-object v6, v0, v1

    aget v4, v6, v10

    if-nez v1, :cond_0

    iget-object v6, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mPath:Landroid/graphics/Path;

    invoke-virtual {v6, v2, v4}, Landroid/graphics/Path;->moveTo(FF)V

    move v3, v2

    move v5, v4

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    if-ne v1, v6, :cond_1

    iget-object v6, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mPath:Landroid/graphics/Path;

    invoke-virtual {v6, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    :cond_1
    iget-object v6, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mPath:Landroid/graphics/Path;

    add-float v7, v2, v3

    div-float/2addr v7, v11

    add-float v8, v4, v5

    div-float/2addr v8, v11

    invoke-virtual {v6, v3, v5, v7, v8}, Landroid/graphics/Path;->quadTo(FFFF)V

    move v3, v2

    move v5, v4

    goto :goto_1

    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;I)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mX:Ljava/util/List;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mY:Ljava/util/List;

    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    iput-object v8, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->transMatrix:Landroid/graphics/Matrix;

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mEnable:Z

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mSelected:Z

    const/4 v8, 0x0

    iput v8, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mGrouped:I

    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    iput-object v8, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mPath:Landroid/graphics/Path;

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mUnusedPoint:Z

    const/4 v8, 0x0

    iput v8, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->tmpx1:F

    const/4 v8, 0x0

    iput v8, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->tmpy1:F

    const/4 v7, 0x0

    move v5, v7

    move v6, v7

    move v4, v7

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v8

    if-gtz v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_5

    if-ge v1, v3, :cond_5

    :try_start_0
    iget-object v8, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mX:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mY:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v1, :cond_2

    iget-object v8, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mPath:Landroid/graphics/Path;

    invoke-virtual {v8, v4, v6}, Landroid/graphics/Path;->moveTo(FF)V

    move v5, v4

    move v7, v6

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    add-int/lit8 v8, v2, -0x1

    if-eq v1, v8, :cond_3

    add-int/lit8 v8, v3, -0x1

    if-ne v1, v8, :cond_4

    :cond_3
    iget-object v8, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mPath:Landroid/graphics/Path;

    invoke-virtual {v8, v5, v7}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_2

    :cond_4
    iget-object v8, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mPath:Landroid/graphics/Path;

    add-float v9, v4, v5

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    add-float v10, v6, v7

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    invoke-virtual {v8, v5, v7, v9, v10}, Landroid/graphics/Path;->quadTo(FFFF)V

    move v5, v4

    move v7, v6

    goto :goto_2

    :cond_5
    iput p3, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mGrouped:I

    goto :goto_0
.end method

.method public constructor <init>([F[F)V
    .locals 10

    const/4 v9, 0x1

    const/4 v7, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mX:Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mY:Ljava/util/List;

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iput-object v5, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->transMatrix:Landroid/graphics/Matrix;

    iput-boolean v9, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mEnable:Z

    iput-boolean v7, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mSelected:Z

    iput v7, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mGrouped:I

    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    iput-object v5, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mPath:Landroid/graphics/Path;

    iput-boolean v9, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mUnusedPoint:Z

    iput v6, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->tmpx1:F

    iput v6, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->tmpy1:F

    const/4 v4, 0x0

    move v2, v4

    move v3, v4

    move v1, v4

    const/4 v0, 0x0

    :goto_0
    array-length v5, p1

    if-ge v0, v5, :cond_3

    array-length v5, p2

    if-ge v0, v5, :cond_3

    iget-object v5, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mX:Ljava/util/List;

    aget v6, p1, v0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mY:Ljava/util/List;

    aget v6, p2, v0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget v1, p1, v0

    aget v3, p2, v0

    if-nez v0, :cond_0

    iget-object v5, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mPath:Landroid/graphics/Path;

    invoke-virtual {v5, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    move v2, v1

    move v4, v3

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    array-length v5, p1

    add-int/lit8 v5, v5, -0x1

    if-eq v0, v5, :cond_1

    array-length v5, p2

    add-int/lit8 v5, v5, -0x1

    if-ne v0, v5, :cond_2

    :cond_1
    iget-object v5, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mPath:Landroid/graphics/Path;

    invoke-virtual {v5, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mPath:Landroid/graphics/Path;

    add-float v6, v1, v2

    div-float/2addr v6, v8

    add-float v7, v3, v4

    div-float/2addr v7, v8

    invoke-virtual {v5, v2, v4, v6, v7}, Landroid/graphics/Path;->quadTo(FFFF)V

    move v2, v1

    move v4, v3

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public add(FFI)Z
    .locals 6

    const/high16 v5, 0x40000000    # 2.0f

    iget-object v0, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mX:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mY:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    packed-switch p3, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    iput p1, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->tmpx1:F

    iput p2, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->tmpy1:F

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->tmpx1:F

    iget v2, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->tmpy1:F

    iget v3, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->tmpx1:F

    add-float/2addr v3, p1

    div-float/2addr v3, v5

    iget v4, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->tmpy1:F

    add-float/2addr v4, p2

    div-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    iput p1, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->tmpx1:F

    iput p2, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->tmpy1:F

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->tmpx1:F

    iget v2, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->tmpy1:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public add(Ljava/util/List;Ljava/util/List;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;)Z"
        }
    .end annotation

    const/high16 v10, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->clear()V

    const/4 v6, 0x0

    move v4, v6

    move v5, v6

    move v3, v6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_3

    if-ge v0, v2, :cond_3

    iget-object v8, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mX:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mY:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v5

    if-nez v0, :cond_0

    iget-object v7, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mPath:Landroid/graphics/Path;

    invoke-virtual {v7, v3, v5}, Landroid/graphics/Path;->moveTo(FF)V

    move v4, v3

    move v6, v5

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v7, v1, -0x1

    if-eq v0, v7, :cond_1

    add-int/lit8 v7, v2, -0x1

    if-ne v0, v7, :cond_2

    :cond_1
    iget-object v7, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mPath:Landroid/graphics/Path;

    invoke-virtual {v7, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    :cond_2
    iget-object v7, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mPath:Landroid/graphics/Path;

    add-float v8, v3, v4

    div-float/2addr v8, v10

    add-float v9, v5, v6

    div-float/2addr v9, v10

    invoke-virtual {v7, v4, v6, v8, v9}, Landroid/graphics/Path;->quadTo(FFFF)V

    move v4, v3

    move v6, v5

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v8

    if-eq v7, v8, :cond_5

    :cond_4
    const/4 v7, 0x0

    :goto_2
    return v7

    :cond_5
    const/4 v7, 0x1

    goto :goto_2
.end method

.method public add([F[F)Z
    .locals 9

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v4, 0x0

    move v2, v4

    move v3, v4

    move v1, v4

    const/4 v0, 0x0

    :goto_0
    array-length v5, p1

    if-ge v0, v5, :cond_3

    array-length v5, p2

    if-ge v0, v5, :cond_3

    iget-object v5, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mX:Ljava/util/List;

    aget v6, p1, v0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mY:Ljava/util/List;

    aget v6, p2, v0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget v1, p1, v0

    aget v3, p2, v0

    if-nez v0, :cond_0

    iget-object v5, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mPath:Landroid/graphics/Path;

    invoke-virtual {v5, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    move v2, v1

    move v4, v3

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    array-length v5, p1

    add-int/lit8 v5, v5, -0x1

    if-eq v0, v5, :cond_1

    array-length v5, p2

    add-int/lit8 v5, v5, -0x1

    if-ne v0, v5, :cond_2

    :cond_1
    iget-object v5, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mPath:Landroid/graphics/Path;

    invoke-virtual {v5, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mPath:Landroid/graphics/Path;

    add-float v6, v1, v2

    div-float/2addr v6, v8

    add-float v7, v3, v4

    div-float/2addr v7, v8

    invoke-virtual {v5, v2, v4, v6, v7}, Landroid/graphics/Path;->quadTo(FFFF)V

    move v2, v1

    move v4, v3

    goto :goto_1

    :cond_3
    const/4 v5, 0x1

    return v5
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mX:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mY:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mEnable:Z

    return v0
.end method

.method public getFirstpoint()Landroid/graphics/Point;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-object v1, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mX:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->intValue()I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mY:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->intValue()I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    return-object v0
.end method

.method public getGrouped()I
    .locals 1

    iget v0, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mGrouped:I

    return v0
.end method

.method public getLastpoint()Landroid/graphics/Point;
    .locals 4

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iget-object v3, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mX:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    iget-object v3, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mY:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    if-ltz v0, :cond_0

    if-ltz v2, :cond_0

    iget-object v3, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mX:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->intValue()I

    move-result v3

    iput v3, v1, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mY:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->intValue()I

    move-result v3

    iput v3, v1, Landroid/graphics/Point;->y:I

    :cond_0
    return-object v1
.end method

.method public getMatrix()Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->transMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mPath:Landroid/graphics/Path;

    return-object v0
.end method

.method public getPoint()[[F
    .locals 7

    iget-object v4, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mX:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mY:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x2

    filled-new-array {v4, v5}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iget-object v4, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mX:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    iget-object v4, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mY:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    if-ge v1, v3, :cond_0

    aget-object v5, v0, v1

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mX:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    aput v4, v5, v6

    aget-object v5, v0, v1

    const/4 v6, 0x1

    iget-object v4, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mY:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    aput v4, v5, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, [[F->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[F

    return-object v4
.end method

.method public getSelected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mSelected:Z

    return v0
.end method

.method public getTransPoint()[[F
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x0

    iget-object v5, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mX:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iget-object v6, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mY:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    filled-new-array {v5, v10}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    const/16 v5, 0x9

    new-array v4, v5, [F

    iget-object v5, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->transMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v4}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v5, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mX:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    iget-object v5, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mY:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    if-ge v1, v3, :cond_0

    aget-object v6, v0, v1

    iget-object v5, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mX:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    aget v7, v4, v9

    mul-float/2addr v5, v7

    aget v7, v4, v10

    add-float/2addr v5, v7

    aput v5, v6, v9

    aget-object v6, v0, v1

    const/4 v7, 0x1

    iget-object v5, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mY:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    const/4 v8, 0x4

    aget v8, v4, v8

    mul-float/2addr v5, v8

    const/4 v8, 0x5

    aget v8, v4, v8

    add-float/2addr v5, v8

    aput v5, v6, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, [[F->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[F

    return-object v5
.end method

.method public getUnusedPoint()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mUnusedPoint:Z

    return v0
.end method

.method public getX()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mX:Ljava/util/List;

    return-object v0
.end method

.method public getY()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mY:Ljava/util/List;

    return-object v0
.end method

.method public setEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mEnable:Z

    return-void
.end method

.method public setGrouped(I)V
    .locals 0

    iput p1, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mGrouped:I

    return-void
.end method

.method public setMatrix(Landroid/graphics/Matrix;)V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->transMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mSelected:Z

    return-void
.end method

.method public setUnusedPoint(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mUnusedPoint:Z

    return-void
.end method

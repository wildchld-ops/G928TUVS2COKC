.class public abstract Lcom/sec/daliviews/views/ContainerViewBase$Policy;
.super Lcom/sec/daliviews/views/NativeViewBase$Policy;
.source "ContainerViewBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/daliviews/views/ContainerViewBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Policy"
.end annotation


# instance fields
.field protected mAllowItemAutoReposition:Z

.field protected mAllowItemAutoResizing:Z

.field protected mAllowItemAutoSwapingPos:Z

.field protected mAllowItemFreePositioning:Z

.field protected mAllowItemFreeRotating:Z

.field protected mAllowPinchZoom:Z

.field protected mAllowResetItemsPosition:Z

.field protected mCloneOnDragStart:Z

.field protected mShowSeatIndicator:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sec/daliviews/views/NativeViewBase$Policy;-><init>()V

    iput-boolean v0, p0, Lcom/sec/daliviews/views/ContainerViewBase$Policy;->mAllowItemFreePositioning:Z

    iput-boolean v0, p0, Lcom/sec/daliviews/views/ContainerViewBase$Policy;->mAllowItemFreeRotating:Z

    iput-boolean v0, p0, Lcom/sec/daliviews/views/ContainerViewBase$Policy;->mAllowItemAutoSwapingPos:Z

    iput-boolean v0, p0, Lcom/sec/daliviews/views/ContainerViewBase$Policy;->mAllowItemAutoResizing:Z

    iput-boolean v0, p0, Lcom/sec/daliviews/views/ContainerViewBase$Policy;->mAllowItemAutoReposition:Z

    iput-boolean v0, p0, Lcom/sec/daliviews/views/ContainerViewBase$Policy;->mAllowResetItemsPosition:Z

    iput-boolean v0, p0, Lcom/sec/daliviews/views/ContainerViewBase$Policy;->mShowSeatIndicator:Z

    iput-boolean v0, p0, Lcom/sec/daliviews/views/ContainerViewBase$Policy;->mAllowPinchZoom:Z

    iput-boolean v0, p0, Lcom/sec/daliviews/views/ContainerViewBase$Policy;->mCloneOnDragStart:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/daliviews/views/NativeViewBase$Policy;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v2, p0, Lcom/sec/daliviews/views/ContainerViewBase$Policy;->mAllowItemFreePositioning:Z

    iput-boolean v2, p0, Lcom/sec/daliviews/views/ContainerViewBase$Policy;->mAllowItemFreeRotating:Z

    iput-boolean v2, p0, Lcom/sec/daliviews/views/ContainerViewBase$Policy;->mAllowItemAutoSwapingPos:Z

    iput-boolean v2, p0, Lcom/sec/daliviews/views/ContainerViewBase$Policy;->mAllowItemAutoResizing:Z

    iput-boolean v2, p0, Lcom/sec/daliviews/views/ContainerViewBase$Policy;->mAllowItemAutoReposition:Z

    iput-boolean v2, p0, Lcom/sec/daliviews/views/ContainerViewBase$Policy;->mAllowResetItemsPosition:Z

    iput-boolean v2, p0, Lcom/sec/daliviews/views/ContainerViewBase$Policy;->mShowSeatIndicator:Z

    iput-boolean v2, p0, Lcom/sec/daliviews/views/ContainerViewBase$Policy;->mAllowPinchZoom:Z

    iput-boolean v2, p0, Lcom/sec/daliviews/views/ContainerViewBase$Policy;->mCloneOnDragStart:Z

    sget-object v1, Lcom/sec/daliviews/R$styleable;->ContainerViewBase_Policy:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/sec/daliviews/R$styleable;->ContainerViewBase_Policy_free_positioning:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/daliviews/views/ContainerViewBase$Policy;->mAllowItemFreePositioning:Z

    sget v1, Lcom/sec/daliviews/R$styleable;->ContainerViewBase_Policy_free_rotating:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/daliviews/views/ContainerViewBase$Policy;->mAllowItemFreeRotating:Z

    sget v1, Lcom/sec/daliviews/R$styleable;->ContainerViewBase_Policy_auto_swapingPos:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/daliviews/views/ContainerViewBase$Policy;->mAllowItemAutoSwapingPos:Z

    sget v1, Lcom/sec/daliviews/R$styleable;->ContainerViewBase_Policy_auto_resizing:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/daliviews/views/ContainerViewBase$Policy;->mAllowItemAutoResizing:Z

    sget v1, Lcom/sec/daliviews/R$styleable;->ContainerViewBase_Policy_auto_reposition:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/daliviews/views/ContainerViewBase$Policy;->mAllowItemAutoReposition:Z

    sget v1, Lcom/sec/daliviews/R$styleable;->ContainerViewBase_Policy_reset_position:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/daliviews/views/ContainerViewBase$Policy;->mAllowResetItemsPosition:Z

    sget v1, Lcom/sec/daliviews/R$styleable;->ContainerViewBase_Policy_seat_indicator:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/daliviews/views/ContainerViewBase$Policy;->mShowSeatIndicator:Z

    sget v1, Lcom/sec/daliviews/R$styleable;->ContainerViewBase_Policy_pinch_zoom:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/daliviews/views/ContainerViewBase$Policy;->mAllowPinchZoom:Z

    sget v1, Lcom/sec/daliviews/R$styleable;->ContainerViewBase_Policy_clone_on_drag_start:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/daliviews/views/ContainerViewBase$Policy;->mCloneOnDragStart:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private native initNative(JLjava/lang/String;ZZZZZZZZZ)V
.end method

.method private initParams(ZZZZZZZZZ)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/daliviews/views/ContainerViewBase$Policy;->mAllowItemFreePositioning:Z

    iput-boolean p2, p0, Lcom/sec/daliviews/views/ContainerViewBase$Policy;->mAllowItemFreeRotating:Z

    iput-boolean p3, p0, Lcom/sec/daliviews/views/ContainerViewBase$Policy;->mAllowItemAutoSwapingPos:Z

    iput-boolean p4, p0, Lcom/sec/daliviews/views/ContainerViewBase$Policy;->mAllowItemAutoResizing:Z

    iput-boolean p5, p0, Lcom/sec/daliviews/views/ContainerViewBase$Policy;->mAllowItemAutoReposition:Z

    iput-boolean p6, p0, Lcom/sec/daliviews/views/ContainerViewBase$Policy;->mAllowResetItemsPosition:Z

    iput-boolean p7, p0, Lcom/sec/daliviews/views/ContainerViewBase$Policy;->mShowSeatIndicator:Z

    iput-boolean p8, p0, Lcom/sec/daliviews/views/ContainerViewBase$Policy;->mAllowPinchZoom:Z

    iput-boolean p9, p0, Lcom/sec/daliviews/views/ContainerViewBase$Policy;->mCloneOnDragStart:Z

    return-void
.end method


# virtual methods
.method protected init(J)V
    .locals 15

    invoke-super/range {p0 .. p2}, Lcom/sec/daliviews/views/NativeViewBase$Policy;->init(J)V

    const-class v0, Lcom/sec/daliviews/views/ContainerViewBase$Policy;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lcom/sec/daliviews/views/ContainerViewBase$Policy;->mAllowItemFreePositioning:Z

    iget-boolean v6, p0, Lcom/sec/daliviews/views/ContainerViewBase$Policy;->mAllowItemFreeRotating:Z

    iget-boolean v7, p0, Lcom/sec/daliviews/views/ContainerViewBase$Policy;->mAllowItemAutoSwapingPos:Z

    iget-boolean v8, p0, Lcom/sec/daliviews/views/ContainerViewBase$Policy;->mAllowItemAutoResizing:Z

    iget-boolean v9, p0, Lcom/sec/daliviews/views/ContainerViewBase$Policy;->mAllowItemAutoReposition:Z

    iget-boolean v10, p0, Lcom/sec/daliviews/views/ContainerViewBase$Policy;->mAllowResetItemsPosition:Z

    iget-boolean v11, p0, Lcom/sec/daliviews/views/ContainerViewBase$Policy;->mShowSeatIndicator:Z

    iget-boolean v12, p0, Lcom/sec/daliviews/views/ContainerViewBase$Policy;->mAllowPinchZoom:Z

    iget-boolean v13, p0, Lcom/sec/daliviews/views/ContainerViewBase$Policy;->mCloneOnDragStart:Z

    move-object v1, p0

    move-wide/from16 v2, p1

    invoke-direct/range {v1 .. v13}, Lcom/sec/daliviews/views/ContainerViewBase$Policy;->initNative(JLjava/lang/String;ZZZZZZZZZ)V

    return-void
.end method

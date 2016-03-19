.class public Lcom/myscript/atk/inw/InkWidget;
.super Landroid/view/View;
.source "InkWidget.java"

# interfaces
.implements Lcom/myscript/atk/inw/InkWidgetApi;


# static fields
.field private static final DBG:Z = false

.field private static final STATE_DRAGGING:I = 0x2

.field private static final STATE_DRAWING:I = 0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "InkWidget"


# instance fields
.field private mActivePointerId:I

.field private mClipBounds:Landroid/graphics/Rect;

.field private mOnDragListener:Lcom/myscript/atk/inw/InkWidgetApi$OnPointerDragListener;

.field private mOnDrawListener:Lcom/myscript/atk/inw/InkWidgetApi$OnStrokeDrawListener;

.field private mPaintDebug:Landroid/graphics/Paint;

.field private mRenderer:Lcom/myscript/atk/inw/renderer/Renderer;

.field private mState:I

.field private mStroker:Lcom/myscript/atk/inw/stroker/Stroker;

.field private mTmpPoint:[F

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTmpRectF:Landroid/graphics/RectF;

.field private mTransform:Landroid/graphics/Matrix;

.field private mTransformInverse:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/myscript/atk/inw/InkWidget;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/myscript/atk/inw/InkWidget;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/myscript/atk/inw/InkWidget;->init()V

    return-void
.end method

.method private ensureRenderer()V
    .locals 2

    iget-object v0, p0, Lcom/myscript/atk/inw/InkWidget;->mRenderer:Lcom/myscript/atk/inw/renderer/Renderer;

    if-nez v0, :cond_0

    sget-object v0, Lcom/myscript/atk/inw/renderer/Renderer$RendererType;->RendererTypePressure:Lcom/myscript/atk/inw/renderer/Renderer$RendererType;

    invoke-static {v0}, Lcom/myscript/atk/inw/factory/RendererFactory;->createRenderer(Lcom/myscript/atk/inw/renderer/Renderer$RendererType;)Lcom/myscript/atk/inw/renderer/Renderer;

    move-result-object v0

    iput-object v0, p0, Lcom/myscript/atk/inw/InkWidget;->mRenderer:Lcom/myscript/atk/inw/renderer/Renderer;

    iget-object v0, p0, Lcom/myscript/atk/inw/InkWidget;->mRenderer:Lcom/myscript/atk/inw/renderer/Renderer;

    invoke-virtual {p0}, Lcom/myscript/atk/inw/InkWidget;->getDefaultInkWidth()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/myscript/atk/inw/renderer/Renderer;->setWidth(F)V

    iget-object v0, p0, Lcom/myscript/atk/inw/InkWidget;->mRenderer:Lcom/myscript/atk/inw/renderer/Renderer;

    const/high16 v1, -0x1000000

    invoke-interface {v0, v1}, Lcom/myscript/atk/inw/renderer/Renderer;->setColor(I)V

    :cond_0
    return-void
.end method

.method private ensureStroker()V
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/inw/InkWidget;->mStroker:Lcom/myscript/atk/inw/stroker/Stroker;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/myscript/atk/inw/InkWidget;->getNewStroker()Lcom/myscript/atk/inw/stroker/Stroker;

    move-result-object v0

    iput-object v0, p0, Lcom/myscript/atk/inw/InkWidget;->mStroker:Lcom/myscript/atk/inw/stroker/Stroker;

    :cond_0
    return-void
.end method

.method private init()V
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/myscript/atk/inw/InkWidget;->mClipBounds:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/myscript/atk/inw/InkWidget;->mTmpPoint:[F

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/myscript/atk/inw/InkWidget;->mTmpRectF:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/myscript/atk/inw/InkWidget;->mTmpRect:Landroid/graphics/Rect;

    return-void
.end method

.method private invalidateDirtyStroker()V
    .locals 3

    iget-object v0, p0, Lcom/myscript/atk/inw/InkWidget;->mTmpRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/myscript/atk/inw/InkWidget;->mRenderer:Lcom/myscript/atk/inw/renderer/Renderer;

    iget-object v2, p0, Lcom/myscript/atk/inw/InkWidget;->mStroker:Lcom/myscript/atk/inw/stroker/Stroker;

    invoke-interface {v1, v2}, Lcom/myscript/atk/inw/renderer/Renderer;->getDirtyRect(Lcom/myscript/atk/inw/stroker/Stroker;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/myscript/atk/inw/InkWidget;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/inw/InkWidget;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {p0, v0}, Lcom/myscript/atk/inw/InkWidget;->invalidateDirty(Landroid/graphics/RectF;)V

    :cond_0
    iget-object v0, p0, Lcom/myscript/atk/inw/InkWidget;->mStroker:Lcom/myscript/atk/inw/stroker/Stroker;

    invoke-interface {v0}, Lcom/myscript/atk/inw/stroker/Stroker;->resetDirtyRect()V

    return-void
.end method

.method private isStylusButtonPressed(Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    and-int/lit8 v1, v0, 0x6

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isStylusMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private processActionCancelEvent(Landroid/view/MotionEvent;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iget v2, p0, Lcom/myscript/atk/inw/InkWidget;->mActivePointerId:I

    if-ne v0, v2, :cond_1

    iget v2, p0, Lcom/myscript/atk/inw/InkWidget;->mState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/myscript/atk/inw/InkWidget;->mOnDragListener:Lcom/myscript/atk/inw/InkWidgetApi$OnPointerDragListener;

    invoke-interface {v2, p0}, Lcom/myscript/atk/inw/InkWidgetApi$OnPointerDragListener;->onPointerDragEnd(Lcom/myscript/atk/inw/InkWidget;)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/myscript/atk/inw/InkWidget;->clear()V

    const/4 v2, -0x1

    iput v2, p0, Lcom/myscript/atk/inw/InkWidget;->mActivePointerId:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/myscript/atk/inw/InkWidget;->mState:I

    :cond_1
    return-void

    :cond_2
    iget v2, p0, Lcom/myscript/atk/inw/InkWidget;->mState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/myscript/atk/inw/InkWidget;->mOnDrawListener:Lcom/myscript/atk/inw/InkWidgetApi$OnStrokeDrawListener;

    invoke-interface {v2, p0}, Lcom/myscript/atk/inw/InkWidgetApi$OnStrokeDrawListener;->onStrokeDrawCancel(Lcom/myscript/atk/inw/InkWidget;)V

    goto :goto_0
.end method

.method private processActionDownEvent(Landroid/view/MotionEvent;)V
    .locals 18

    invoke-direct/range {p0 .. p1}, Lcom/myscript/atk/inw/InkWidget;->isStylusMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/myscript/atk/inw/InkWidget;->transformPoint(FF)[F

    move-result-object v2

    const/4 v3, 0x0

    aget v5, v2, v3

    const/4 v3, 0x1

    aget v6, v2, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/myscript/atk/inw/InkWidget;->mOnDragListener:Lcom/myscript/atk/inw/InkWidgetApi$OnPointerDragListener;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/myscript/atk/inw/InkWidget;->mOnDragListener:Lcom/myscript/atk/inw/InkWidgetApi$OnPointerDragListener;

    move-object/from16 v0, p0

    invoke-interface {v3, v0, v5, v6}, Lcom/myscript/atk/inw/InkWidgetApi$OnPointerDragListener;->shouldBeginDrag(Lcom/myscript/atk/inw/InkWidget;FF)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iput v7, v0, Lcom/myscript/atk/inw/InkWidget;->mActivePointerId:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/myscript/atk/inw/InkWidget;->mState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/myscript/atk/inw/InkWidget;->mOnDragListener:Lcom/myscript/atk/inw/InkWidgetApi$OnPointerDragListener;

    move-object/from16 v0, p0

    invoke-interface {v3, v0}, Lcom/myscript/atk/inw/InkWidgetApi$OnPointerDragListener;->onPointerDragEnd(Lcom/myscript/atk/inw/InkWidget;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/myscript/atk/inw/InkWidget;->mOnDragListener:Lcom/myscript/atk/inw/InkWidgetApi$OnPointerDragListener;

    move-object/from16 v0, p0

    invoke-interface {v3, v0}, Lcom/myscript/atk/inw/InkWidgetApi$OnPointerDragListener;->onPointerDragBegin(Lcom/myscript/atk/inw/InkWidget;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/myscript/atk/inw/InkWidget;->mOnDragListener:Lcom/myscript/atk/inw/InkWidgetApi$OnPointerDragListener;

    move-object/from16 v0, p0

    invoke-interface {v3, v0, v5, v6}, Lcom/myscript/atk/inw/InkWidgetApi$OnPointerDragListener;->onPointerDrag(Lcom/myscript/atk/inw/InkWidget;FF)V

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Lcom/myscript/atk/inw/InkWidget;->mState:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/myscript/atk/inw/InkWidget;->mOnDrawListener:Lcom/myscript/atk/inw/InkWidgetApi$OnStrokeDrawListener;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/myscript/atk/inw/InkWidget;->mOnDrawListener:Lcom/myscript/atk/inw/InkWidgetApi$OnStrokeDrawListener;

    move-object/from16 v4, p0

    invoke-interface/range {v3 .. v10}, Lcom/myscript/atk/inw/InkWidgetApi$OnStrokeDrawListener;->shouldBeginDraw(Lcom/myscript/atk/inw/InkWidget;FFIJZ)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iput v7, v0, Lcom/myscript/atk/inw/InkWidget;->mActivePointerId:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/myscript/atk/inw/InkWidget;->mState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/myscript/atk/inw/InkWidget;->mOnDrawListener:Lcom/myscript/atk/inw/InkWidgetApi$OnStrokeDrawListener;

    move-object/from16 v0, p0

    invoke-interface {v3, v0}, Lcom/myscript/atk/inw/InkWidgetApi$OnStrokeDrawListener;->onStrokeDrawCancel(Lcom/myscript/atk/inw/InkWidget;)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/myscript/atk/inw/InkWidget;->mOnDrawListener:Lcom/myscript/atk/inw/InkWidgetApi$OnStrokeDrawListener;

    move-object/from16 v0, p0

    invoke-interface {v3, v0}, Lcom/myscript/atk/inw/InkWidgetApi$OnStrokeDrawListener;->onStrokeDrawBegin(Lcom/myscript/atk/inw/InkWidget;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/myscript/atk/inw/InkWidget;->mOnDrawListener:Lcom/myscript/atk/inw/InkWidgetApi$OnStrokeDrawListener;

    move-object/from16 v0, p0

    invoke-interface {v3, v0, v5, v6}, Lcom/myscript/atk/inw/InkWidgetApi$OnStrokeDrawListener;->onStrokeDraw(Lcom/myscript/atk/inw/InkWidget;FF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/myscript/atk/inw/InkWidget;->mStroker:Lcom/myscript/atk/inw/stroker/Stroker;

    invoke-interface {v3, v10}, Lcom/myscript/atk/inw/stroker/Stroker;->setStylus(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/myscript/atk/inw/InkWidget;->mStroker:Lcom/myscript/atk/inw/stroker/Stroker;

    invoke-virtual/range {p0 .. p0}, Lcom/myscript/atk/inw/InkWidget;->computeFactor()F

    move-result v4

    invoke-interface {v3, v4}, Lcom/myscript/atk/inw/stroker/Stroker;->setFactor(F)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/myscript/atk/inw/InkWidget;->mStroker:Lcom/myscript/atk/inw/stroker/Stroker;

    move v13, v5

    move v14, v6

    move-wide/from16 v16, v8

    invoke-interface/range {v12 .. v17}, Lcom/myscript/atk/inw/stroker/Stroker;->startAt(FFFJ)V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/myscript/atk/inw/InkWidget;->mState:I

    invoke-direct/range {p0 .. p0}, Lcom/myscript/atk/inw/InkWidget;->invalidateDirtyStroker()V

    goto :goto_0
.end method

.method private processActionMoveEvent(Landroid/view/MotionEvent;)V
    .locals 19

    move-object/from16 v0, p0

    iget v2, v0, Lcom/myscript/atk/inw/InkWidget;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v17

    const/4 v2, -0x1

    move/from16 v0, v17

    if-eq v0, v2, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/myscript/atk/inw/InkWidget;->mState:I

    const/4 v8, 0x2

    if-ne v2, v8, :cond_2

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/myscript/atk/inw/InkWidget;->mOnDragListener:Lcom/myscript/atk/inw/InkWidgetApi$OnPointerDragListener;

    move-object/from16 v0, p0

    invoke-interface {v2, v0, v9, v10}, Lcom/myscript/atk/inw/InkWidgetApi$OnPointerDragListener;->onPointerDrag(Lcom/myscript/atk/inw/InkWidget;FF)V

    :cond_0
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/myscript/atk/inw/InkWidget;->invalidateDirtyStroker()V

    :cond_1
    return-void

    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/myscript/atk/inw/InkWidget;->mState:I

    const/4 v8, 0x1

    if-ne v2, v8, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v18

    const/4 v15, 0x0

    :goto_1
    move/from16 v0, v18

    if-ge v15, v0, :cond_3

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1, v15}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v2

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1, v15}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v8

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v8}, Lcom/myscript/atk/inw/InkWidget;->transformPoint(FF)[F

    move-result-object v16

    const/4 v2, 0x0

    aget v3, v16, v2

    const/4 v2, 0x1

    aget v4, v16, v2

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1, v15}, Landroid/view/MotionEvent;->getHistoricalPressure(II)F

    move-result v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/myscript/atk/inw/InkWidget;->mOnDrawListener:Lcom/myscript/atk/inw/InkWidgetApi$OnStrokeDrawListener;

    move-object/from16 v0, p0

    invoke-interface {v2, v0, v3, v4}, Lcom/myscript/atk/inw/InkWidgetApi$OnStrokeDrawListener;->onStrokeDraw(Lcom/myscript/atk/inw/InkWidget;FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/myscript/atk/inw/InkWidget;->mStroker:Lcom/myscript/atk/inw/stroker/Stroker;

    const/4 v8, 0x1

    invoke-interface/range {v2 .. v8}, Lcom/myscript/atk/inw/stroker/Stroker;->moveTo(FFFJZ)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_3
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v8}, Lcom/myscript/atk/inw/InkWidget;->transformPoint(FF)[F

    move-result-object v16

    const/4 v2, 0x0

    aget v9, v16, v2

    const/4 v2, 0x1

    aget v10, v16, v2

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/myscript/atk/inw/InkWidget;->mOnDrawListener:Lcom/myscript/atk/inw/InkWidgetApi$OnStrokeDrawListener;

    move-object/from16 v0, p0

    invoke-interface {v2, v0, v9, v10}, Lcom/myscript/atk/inw/InkWidgetApi$OnStrokeDrawListener;->onStrokeDraw(Lcom/myscript/atk/inw/InkWidget;FF)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/myscript/atk/inw/InkWidget;->mStroker:Lcom/myscript/atk/inw/stroker/Stroker;

    const/4 v14, 0x1

    invoke-interface/range {v8 .. v14}, Lcom/myscript/atk/inw/stroker/Stroker;->moveTo(FFFJZ)V

    goto/16 :goto_0
.end method

.method private processActionUpEvent()V
    .locals 2

    iget v0, p0, Lcom/myscript/atk/inw/InkWidget;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/myscript/atk/inw/InkWidget;->mOnDragListener:Lcom/myscript/atk/inw/InkWidgetApi$OnPointerDragListener;

    invoke-interface {v0, p0}, Lcom/myscript/atk/inw/InkWidgetApi$OnPointerDragListener;->onPointerDragEnd(Lcom/myscript/atk/inw/InkWidget;)V

    :cond_0
    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/myscript/atk/inw/InkWidget;->mActivePointerId:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/myscript/atk/inw/InkWidget;->mState:I

    return-void

    :cond_1
    iget v0, p0, Lcom/myscript/atk/inw/InkWidget;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/inw/InkWidget;->mStroker:Lcom/myscript/atk/inw/stroker/Stroker;

    invoke-interface {v0}, Lcom/myscript/atk/inw/stroker/Stroker;->end()V

    invoke-direct {p0}, Lcom/myscript/atk/inw/InkWidget;->invalidateDirtyStroker()V

    iget-object v0, p0, Lcom/myscript/atk/inw/InkWidget;->mOnDrawListener:Lcom/myscript/atk/inw/InkWidgetApi$OnStrokeDrawListener;

    invoke-interface {v0, p0}, Lcom/myscript/atk/inw/InkWidgetApi$OnStrokeDrawListener;->onStrokeDrawEnd(Lcom/myscript/atk/inw/InkWidget;)V

    goto :goto_0
.end method

.method private processActionUpEvent(Landroid/view/MotionEvent;)V
    .locals 12

    const/4 v11, 0x0

    const/4 v6, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v9

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    iget v0, p0, Lcom/myscript/atk/inw/InkWidget;->mActivePointerId:I

    if-ne v8, v0, :cond_1

    iget v0, p0, Lcom/myscript/atk/inw/InkWidget;->mState:I

    const/4 v10, 0x2

    if-ne v0, v10, :cond_2

    iget-object v0, p0, Lcom/myscript/atk/inw/InkWidget;->mOnDragListener:Lcom/myscript/atk/inw/InkWidgetApi$OnPointerDragListener;

    invoke-interface {v0, p0}, Lcom/myscript/atk/inw/InkWidgetApi$OnPointerDragListener;->onPointerDragEnd(Lcom/myscript/atk/inw/InkWidget;)V

    :cond_0
    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/myscript/atk/inw/InkWidget;->mActivePointerId:I

    iput v11, p0, Lcom/myscript/atk/inw/InkWidget;->mState:I

    :cond_1
    return-void

    :cond_2
    iget v0, p0, Lcom/myscript/atk/inw/InkWidget;->mState:I

    if-ne v0, v6, :cond_0

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    invoke-direct {p0, v0, v10}, Lcom/myscript/atk/inw/InkWidget;->transformPoint(FF)[F

    move-result-object v7

    aget v1, v7, v11

    aget v2, v7, v6

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iget-object v0, p0, Lcom/myscript/atk/inw/InkWidget;->mOnDrawListener:Lcom/myscript/atk/inw/InkWidgetApi$OnStrokeDrawListener;

    invoke-interface {v0, p0, v1, v2}, Lcom/myscript/atk/inw/InkWidgetApi$OnStrokeDrawListener;->onStrokeDraw(Lcom/myscript/atk/inw/InkWidget;FF)V

    iget-object v0, p0, Lcom/myscript/atk/inw/InkWidget;->mStroker:Lcom/myscript/atk/inw/stroker/Stroker;

    invoke-interface/range {v0 .. v6}, Lcom/myscript/atk/inw/stroker/Stroker;->moveTo(FFFJZ)V

    iget-object v0, p0, Lcom/myscript/atk/inw/InkWidget;->mStroker:Lcom/myscript/atk/inw/stroker/Stroker;

    invoke-interface {v0}, Lcom/myscript/atk/inw/stroker/Stroker;->end()V

    invoke-direct {p0}, Lcom/myscript/atk/inw/InkWidget;->invalidateDirtyStroker()V

    iget-object v0, p0, Lcom/myscript/atk/inw/InkWidget;->mOnDrawListener:Lcom/myscript/atk/inw/InkWidgetApi$OnStrokeDrawListener;

    invoke-interface {v0, p0}, Lcom/myscript/atk/inw/InkWidgetApi$OnStrokeDrawListener;->onStrokeDrawEnd(Lcom/myscript/atk/inw/InkWidget;)V

    goto :goto_0
.end method

.method private transformPoint(FF)[F
    .locals 2

    iget-object v0, p0, Lcom/myscript/atk/inw/InkWidget;->mTmpPoint:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    iget-object v0, p0, Lcom/myscript/atk/inw/InkWidget;->mTmpPoint:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    iget-object v0, p0, Lcom/myscript/atk/inw/InkWidget;->mTransform:Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/inw/InkWidget;->mTransform:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/myscript/atk/inw/InkWidget;->mTmpPoint:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    :cond_0
    iget-object v0, p0, Lcom/myscript/atk/inw/InkWidget;->mTmpPoint:[F

    return-object v0
.end method


# virtual methods
.method public canScrollHorizontally(I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canScrollVertically(I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public cancel()V
    .locals 2

    iget v0, p0, Lcom/myscript/atk/inw/InkWidget;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/inw/InkWidget;->mOnDrawListener:Lcom/myscript/atk/inw/InkWidgetApi$OnStrokeDrawListener;

    invoke-interface {v0, p0}, Lcom/myscript/atk/inw/InkWidgetApi$OnStrokeDrawListener;->onStrokeDrawCancel(Lcom/myscript/atk/inw/InkWidget;)V

    invoke-virtual {p0}, Lcom/myscript/atk/inw/InkWidget;->clear()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/myscript/atk/inw/InkWidget;->mActivePointerId:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/myscript/atk/inw/InkWidget;->mState:I

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 3

    invoke-direct {p0}, Lcom/myscript/atk/inw/InkWidget;->ensureStroker()V

    invoke-direct {p0}, Lcom/myscript/atk/inw/InkWidget;->ensureRenderer()V

    iget-object v0, p0, Lcom/myscript/atk/inw/InkWidget;->mTmpRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/myscript/atk/inw/InkWidget;->mRenderer:Lcom/myscript/atk/inw/renderer/Renderer;

    iget-object v2, p0, Lcom/myscript/atk/inw/InkWidget;->mStroker:Lcom/myscript/atk/inw/stroker/Stroker;

    invoke-interface {v1, v2}, Lcom/myscript/atk/inw/renderer/Renderer;->getBoundingRect(Lcom/myscript/atk/inw/stroker/Stroker;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/myscript/atk/inw/InkWidget;->mStroker:Lcom/myscript/atk/inw/stroker/Stroker;

    invoke-interface {v0}, Lcom/myscript/atk/inw/stroker/Stroker;->clear()V

    iget-object v0, p0, Lcom/myscript/atk/inw/InkWidget;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/inw/InkWidget;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {p0, v0}, Lcom/myscript/atk/inw/InkWidget;->invalidateDirty(Landroid/graphics/RectF;)V

    :cond_0
    return-void
.end method

.method public clearWithoutInvalidate()V
    .locals 3

    invoke-direct {p0}, Lcom/myscript/atk/inw/InkWidget;->ensureStroker()V

    invoke-direct {p0}, Lcom/myscript/atk/inw/InkWidget;->ensureRenderer()V

    iget-object v0, p0, Lcom/myscript/atk/inw/InkWidget;->mTmpRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/myscript/atk/inw/InkWidget;->mRenderer:Lcom/myscript/atk/inw/renderer/Renderer;

    iget-object v2, p0, Lcom/myscript/atk/inw/InkWidget;->mStroker:Lcom/myscript/atk/inw/stroker/Stroker;

    invoke-interface {v1, v2}, Lcom/myscript/atk/inw/renderer/Renderer;->getDirtyRect(Lcom/myscript/atk/inw/stroker/Stroker;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/myscript/atk/inw/InkWidget;->mStroker:Lcom/myscript/atk/inw/stroker/Stroker;

    invoke-interface {v0}, Lcom/myscript/atk/inw/stroker/Stroker;->clear()V

    iget-object v0, p0, Lcom/myscript/atk/inw/InkWidget;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/inw/InkWidget;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {p0, v0}, Lcom/myscript/atk/inw/InkWidget;->invalidateDirty(Landroid/graphics/RectF;)V

    :cond_0
    return-void
.end method

.method protected computeFactor()F
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v1, p0, Lcom/myscript/atk/inw/InkWidget;->mTransform:Landroid/graphics/Matrix;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/myscript/atk/inw/InkWidget;->mTmpPoint:[F

    aput v0, v1, v2

    iget-object v1, p0, Lcom/myscript/atk/inw/InkWidget;->mTmpPoint:[F

    aput v0, v1, v3

    iget-object v0, p0, Lcom/myscript/atk/inw/InkWidget;->mTransform:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/myscript/atk/inw/InkWidget;->mTmpPoint:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v0, p0, Lcom/myscript/atk/inw/InkWidget;->mTmpPoint:[F

    aget v0, v0, v2

    iget-object v1, p0, Lcom/myscript/atk/inw/InkWidget;->mTmpPoint:[F

    aget v1, v1, v3

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    :cond_0
    return v0
.end method

.method protected getDefaultInkWidth()F
    .locals 2

    invoke-virtual {p0}, Lcom/myscript/atk/inw/InkWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v1, v0}, Lcom/myscript/atk/inw/config/Config;->getDimension(FLandroid/util/DisplayMetrics;)F

    move-result v1

    return v1
.end method

.method protected getNewStroker()Lcom/myscript/atk/inw/stroker/Stroker;
    .locals 2

    sget-object v1, Lcom/myscript/atk/inw/stroker/Stroker$StrokerType;->StrokerTypePressure:Lcom/myscript/atk/inw/stroker/Stroker$StrokerType;

    invoke-static {v1}, Lcom/myscript/atk/inw/factory/StrokerFactory;->createStroker(Lcom/myscript/atk/inw/stroker/Stroker$StrokerType;)Lcom/myscript/atk/inw/stroker/Stroker;

    move-result-object v0

    invoke-virtual {p0}, Lcom/myscript/atk/inw/InkWidget;->getDefaultInkWidth()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/myscript/atk/inw/stroker/Stroker;->setWidth(F)V

    invoke-virtual {p0}, Lcom/myscript/atk/inw/InkWidget;->computeFactor()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/myscript/atk/inw/stroker/Stroker;->setFactor(F)V

    return-object v0
.end method

.method public getRenderer()Lcom/myscript/atk/inw/renderer/Renderer;
    .locals 1

    invoke-direct {p0}, Lcom/myscript/atk/inw/InkWidget;->ensureRenderer()V

    iget-object v0, p0, Lcom/myscript/atk/inw/InkWidget;->mRenderer:Lcom/myscript/atk/inw/renderer/Renderer;

    return-object v0
.end method

.method public getStrokeColor()I
    .locals 1

    invoke-direct {p0}, Lcom/myscript/atk/inw/InkWidget;->ensureRenderer()V

    iget-object v0, p0, Lcom/myscript/atk/inw/InkWidget;->mRenderer:Lcom/myscript/atk/inw/renderer/Renderer;

    invoke-interface {v0}, Lcom/myscript/atk/inw/renderer/Renderer;->getColor()I

    move-result v0

    return v0
.end method

.method public getStrokeDashed()Z
    .locals 1

    invoke-direct {p0}, Lcom/myscript/atk/inw/InkWidget;->ensureStroker()V

    iget-object v0, p0, Lcom/myscript/atk/inw/InkWidget;->mRenderer:Lcom/myscript/atk/inw/renderer/Renderer;

    invoke-interface {v0}, Lcom/myscript/atk/inw/renderer/Renderer;->getDashed()Z

    move-result v0

    return v0
.end method

.method public getStrokeEndCap()Landroid/graphics/Bitmap;
    .locals 2

    invoke-direct {p0}, Lcom/myscript/atk/inw/InkWidget;->ensureStroker()V

    iget-object v1, p0, Lcom/myscript/atk/inw/InkWidget;->mStroker:Lcom/myscript/atk/inw/stroker/Stroker;

    instance-of v1, v1, Lcom/myscript/atk/inw/stroker/MarkerStroker;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/inw/InkWidget;->mStroker:Lcom/myscript/atk/inw/stroker/Stroker;

    check-cast v0, Lcom/myscript/atk/inw/stroker/MarkerStroker;

    invoke-virtual {v0}, Lcom/myscript/atk/inw/stroker/MarkerStroker;->getEndCap()Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getStrokeEndMatrix()Landroid/graphics/Matrix;
    .locals 2

    invoke-direct {p0}, Lcom/myscript/atk/inw/InkWidget;->ensureStroker()V

    iget-object v1, p0, Lcom/myscript/atk/inw/InkWidget;->mStroker:Lcom/myscript/atk/inw/stroker/Stroker;

    instance-of v1, v1, Lcom/myscript/atk/inw/stroker/MarkerStroker;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/inw/InkWidget;->mStroker:Lcom/myscript/atk/inw/stroker/Stroker;

    check-cast v0, Lcom/myscript/atk/inw/stroker/MarkerStroker;

    invoke-virtual {v0}, Lcom/myscript/atk/inw/stroker/MarkerStroker;->getEndMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getStrokeFrame()Landroid/graphics/RectF;
    .locals 2

    invoke-direct {p0}, Lcom/myscript/atk/inw/InkWidget;->ensureStroker()V

    invoke-direct {p0}, Lcom/myscript/atk/inw/InkWidget;->ensureRenderer()V

    iget-object v0, p0, Lcom/myscript/atk/inw/InkWidget;->mRenderer:Lcom/myscript/atk/inw/renderer/Renderer;

    iget-object v1, p0, Lcom/myscript/atk/inw/InkWidget;->mStroker:Lcom/myscript/atk/inw/stroker/Stroker;

    invoke-interface {v0, v1}, Lcom/myscript/atk/inw/renderer/Renderer;->getBoundingRect(Lcom/myscript/atk/inw/stroker/Stroker;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getStrokePath()Landroid/graphics/Path;
    .locals 1

    invoke-direct {p0}, Lcom/myscript/atk/inw/InkWidget;->ensureStroker()V

    iget-object v0, p0, Lcom/myscript/atk/inw/InkWidget;->mStroker:Lcom/myscript/atk/inw/stroker/Stroker;

    invoke-interface {v0}, Lcom/myscript/atk/inw/stroker/Stroker;->getPath()Landroid/graphics/Path;

    move-result-object v0

    return-object v0
.end method

.method public getStrokePoints()[Lcom/myscript/atk/inw/InkPoint;
    .locals 1

    invoke-direct {p0}, Lcom/myscript/atk/inw/InkWidget;->ensureStroker()V

    iget-object v0, p0, Lcom/myscript/atk/inw/InkWidget;->mStroker:Lcom/myscript/atk/inw/stroker/Stroker;

    invoke-interface {v0}, Lcom/myscript/atk/inw/stroker/Stroker;->getPoints()[Lcom/myscript/atk/inw/InkPoint;

    move-result-object v0

    return-object v0
.end method

.method public getStrokeStartCap()Landroid/graphics/Bitmap;
    .locals 2

    invoke-direct {p0}, Lcom/myscript/atk/inw/InkWidget;->ensureStroker()V

    iget-object v1, p0, Lcom/myscript/atk/inw/InkWidget;->mStroker:Lcom/myscript/atk/inw/stroker/Stroker;

    instance-of v1, v1, Lcom/myscript/atk/inw/stroker/MarkerStroker;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/inw/InkWidget;->mStroker:Lcom/myscript/atk/inw/stroker/Stroker;

    check-cast v0, Lcom/myscript/atk/inw/stroker/MarkerStroker;

    invoke-virtual {v0}, Lcom/myscript/atk/inw/stroker/MarkerStroker;->getStartCap()Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getStrokeStartMatrix()Landroid/graphics/Matrix;
    .locals 2

    invoke-direct {p0}, Lcom/myscript/atk/inw/InkWidget;->ensureStroker()V

    iget-object v1, p0, Lcom/myscript/atk/inw/InkWidget;->mStroker:Lcom/myscript/atk/inw/stroker/Stroker;

    instance-of v1, v1, Lcom/myscript/atk/inw/stroker/MarkerStroker;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/inw/InkWidget;->mStroker:Lcom/myscript/atk/inw/stroker/Stroker;

    check-cast v0, Lcom/myscript/atk/inw/stroker/MarkerStroker;

    invoke-virtual {v0}, Lcom/myscript/atk/inw/stroker/MarkerStroker;->getStartMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getStrokeWidth()F
    .locals 1

    invoke-direct {p0}, Lcom/myscript/atk/inw/InkWidget;->ensureStroker()V

    iget-object v0, p0, Lcom/myscript/atk/inw/InkWidget;->mStroker:Lcom/myscript/atk/inw/stroker/Stroker;

    invoke-interface {v0}, Lcom/myscript/atk/inw/stroker/Stroker;->getWidth()F

    move-result v0

    return v0
.end method

.method public getStroker()Lcom/myscript/atk/inw/stroker/Stroker;
    .locals 1

    invoke-direct {p0}, Lcom/myscript/atk/inw/InkWidget;->ensureStroker()V

    iget-object v0, p0, Lcom/myscript/atk/inw/InkWidget;->mStroker:Lcom/myscript/atk/inw/stroker/Stroker;

    return-object v0
.end method

.method public getTransform()Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/inw/InkWidget;->mTransform:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public invalidateDirty(Landroid/graphics/RectF;)V
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/inw/InkWidget;->mTransformInverse:Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/inw/InkWidget;->mTransformInverse:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_0
    iget-object v0, p0, Lcom/myscript/atk/inw/InkWidget;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/myscript/atk/inw/InkWidget;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/myscript/atk/inw/InkWidget;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method public isStrokePointSize()Z
    .locals 1

    invoke-direct {p0}, Lcom/myscript/atk/inw/InkWidget;->ensureStroker()V

    iget-object v0, p0, Lcom/myscript/atk/inw/InkWidget;->mStroker:Lcom/myscript/atk/inw/stroker/Stroker;

    invoke-interface {v0}, Lcom/myscript/atk/inw/stroker/Stroker;->isPointSize()Z

    move-result v0

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0}, Lcom/myscript/atk/inw/InkWidget;->ensureStroker()V

    invoke-direct {p0}, Lcom/myscript/atk/inw/InkWidget;->ensureRenderer()V

    iget-object v1, p0, Lcom/myscript/atk/inw/InkWidget;->mStroker:Lcom/myscript/atk/inw/stroker/Stroker;

    instance-of v1, v1, Lcom/myscript/atk/inw/stroker/MarkerStroker;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/myscript/atk/inw/InkWidget;->mRenderer:Lcom/myscript/atk/inw/renderer/Renderer;

    instance-of v1, v1, Lcom/myscript/atk/inw/renderer/MarkerRenderer;

    if-eqz v1, :cond_0

    const/4 v8, 0x1

    :goto_0
    if-eqz v8, :cond_1

    iget-object v9, p0, Lcom/myscript/atk/inw/InkWidget;->mStroker:Lcom/myscript/atk/inw/stroker/Stroker;

    check-cast v9, Lcom/myscript/atk/inw/stroker/MarkerStroker;

    iget-object v0, p0, Lcom/myscript/atk/inw/InkWidget;->mRenderer:Lcom/myscript/atk/inw/renderer/Renderer;

    check-cast v0, Lcom/myscript/atk/inw/renderer/MarkerRenderer;

    invoke-virtual {v9}, Lcom/myscript/atk/inw/stroker/MarkerStroker;->getPath()Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v9}, Lcom/myscript/atk/inw/stroker/MarkerStroker;->isPointSize()Z

    move-result v3

    invoke-virtual {v9}, Lcom/myscript/atk/inw/stroker/MarkerStroker;->getStartCap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v9}, Lcom/myscript/atk/inw/stroker/MarkerStroker;->getEndCap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v9}, Lcom/myscript/atk/inw/stroker/MarkerStroker;->getStartMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v9}, Lcom/myscript/atk/inw/stroker/MarkerStroker;->getEndMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/myscript/atk/inw/renderer/MarkerRenderer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;ZLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)V

    :goto_1
    return-void

    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/myscript/atk/inw/InkWidget;->mRenderer:Lcom/myscript/atk/inw/renderer/Renderer;

    iget-object v2, p0, Lcom/myscript/atk/inw/InkWidget;->mStroker:Lcom/myscript/atk/inw/stroker/Stroker;

    invoke-interface {v2}, Lcom/myscript/atk/inw/stroker/Stroker;->getPath()Landroid/graphics/Path;

    move-result-object v2

    iget-object v3, p0, Lcom/myscript/atk/inw/InkWidget;->mStroker:Lcom/myscript/atk/inw/stroker/Stroker;

    invoke-interface {v3}, Lcom/myscript/atk/inw/stroker/Stroker;->isPointSize()Z

    move-result v3

    invoke-interface {v1, p1, v2, v3}, Lcom/myscript/atk/inw/renderer/Renderer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Z)V

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-direct {p0}, Lcom/myscript/atk/inw/InkWidget;->ensureStroker()V

    invoke-direct {p0}, Lcom/myscript/atk/inw/InkWidget;->ensureRenderer()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    const/4 v1, 0x1

    return v1

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/myscript/atk/inw/InkWidget;->processActionDownEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/myscript/atk/inw/InkWidget;->processActionMoveEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/myscript/atk/inw/InkWidget;->isStylusButtonPressed(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/myscript/atk/inw/InkWidget;->processActionUpEvent()V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/myscript/atk/inw/InkWidget;->processActionCancelEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p1}, Lcom/myscript/atk/inw/InkWidget;->processActionUpEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public setOnPointerDragListener(Lcom/myscript/atk/inw/InkWidgetApi$OnPointerDragListener;)V
    .locals 0

    iput-object p1, p0, Lcom/myscript/atk/inw/InkWidget;->mOnDragListener:Lcom/myscript/atk/inw/InkWidgetApi$OnPointerDragListener;

    return-void
.end method

.method public setOnStrokeDrawListener(Lcom/myscript/atk/inw/InkWidgetApi$OnStrokeDrawListener;)V
    .locals 0

    iput-object p1, p0, Lcom/myscript/atk/inw/InkWidget;->mOnDrawListener:Lcom/myscript/atk/inw/InkWidgetApi$OnStrokeDrawListener;

    return-void
.end method

.method public setRenderer(Lcom/myscript/atk/inw/renderer/Renderer;)V
    .locals 0

    iput-object p1, p0, Lcom/myscript/atk/inw/InkWidget;->mRenderer:Lcom/myscript/atk/inw/renderer/Renderer;

    return-void
.end method

.method public setShader(Landroid/graphics/Shader;)V
    .locals 1

    invoke-direct {p0}, Lcom/myscript/atk/inw/InkWidget;->ensureRenderer()V

    iget-object v0, p0, Lcom/myscript/atk/inw/InkWidget;->mRenderer:Lcom/myscript/atk/inw/renderer/Renderer;

    invoke-interface {v0, p1}, Lcom/myscript/atk/inw/renderer/Renderer;->setShader(Landroid/graphics/Shader;)V

    return-void
.end method

.method public setStrokeCaps(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-direct {p0}, Lcom/myscript/atk/inw/InkWidget;->ensureStroker()V

    iget-object v1, p0, Lcom/myscript/atk/inw/InkWidget;->mStroker:Lcom/myscript/atk/inw/stroker/Stroker;

    instance-of v1, v1, Lcom/myscript/atk/inw/stroker/MarkerStroker;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/inw/InkWidget;->mStroker:Lcom/myscript/atk/inw/stroker/Stroker;

    check-cast v0, Lcom/myscript/atk/inw/stroker/MarkerStroker;

    invoke-virtual {v0, p1, p2}, Lcom/myscript/atk/inw/stroker/MarkerStroker;->setCaps(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1

    invoke-direct {p0}, Lcom/myscript/atk/inw/InkWidget;->ensureRenderer()V

    iget-object v0, p0, Lcom/myscript/atk/inw/InkWidget;->mRenderer:Lcom/myscript/atk/inw/renderer/Renderer;

    invoke-interface {v0, p1}, Lcom/myscript/atk/inw/renderer/Renderer;->setColor(I)V

    return-void
.end method

.method public setStrokeDashed(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/myscript/atk/inw/InkWidget;->ensureStroker()V

    invoke-direct {p0}, Lcom/myscript/atk/inw/InkWidget;->ensureRenderer()V

    iget-object v0, p0, Lcom/myscript/atk/inw/InkWidget;->mRenderer:Lcom/myscript/atk/inw/renderer/Renderer;

    invoke-interface {v0, p1}, Lcom/myscript/atk/inw/renderer/Renderer;->setDashed(Z)V

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1

    invoke-direct {p0}, Lcom/myscript/atk/inw/InkWidget;->ensureStroker()V

    invoke-direct {p0}, Lcom/myscript/atk/inw/InkWidget;->ensureRenderer()V

    iget-object v0, p0, Lcom/myscript/atk/inw/InkWidget;->mStroker:Lcom/myscript/atk/inw/stroker/Stroker;

    invoke-interface {v0, p1}, Lcom/myscript/atk/inw/stroker/Stroker;->setWidth(F)V

    iget-object v0, p0, Lcom/myscript/atk/inw/InkWidget;->mRenderer:Lcom/myscript/atk/inw/renderer/Renderer;

    invoke-interface {v0, p1}, Lcom/myscript/atk/inw/renderer/Renderer;->setWidth(F)V

    return-void
.end method

.method public setStroker(Lcom/myscript/atk/inw/stroker/Stroker;)V
    .locals 0

    iput-object p1, p0, Lcom/myscript/atk/inw/InkWidget;->mStroker:Lcom/myscript/atk/inw/stroker/Stroker;

    return-void
.end method

.method public setTransform(Landroid/graphics/Matrix;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v0, p0, Lcom/myscript/atk/inw/InkWidget;->mTransform:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/myscript/atk/inw/InkWidget;->mTransformInverse:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/myscript/atk/inw/InkWidget;->mTransformInverse:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    :goto_0
    invoke-direct {p0}, Lcom/myscript/atk/inw/InkWidget;->ensureStroker()V

    iget-object v0, p0, Lcom/myscript/atk/inw/InkWidget;->mStroker:Lcom/myscript/atk/inw/stroker/Stroker;

    invoke-virtual {p0}, Lcom/myscript/atk/inw/InkWidget;->computeFactor()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/myscript/atk/inw/stroker/Stroker;->setFactor(F)V

    return-void

    :cond_0
    iput-object v0, p0, Lcom/myscript/atk/inw/InkWidget;->mTransform:Landroid/graphics/Matrix;

    iput-object v0, p0, Lcom/myscript/atk/inw/InkWidget;->mTransformInverse:Landroid/graphics/Matrix;

    goto :goto_0
.end method

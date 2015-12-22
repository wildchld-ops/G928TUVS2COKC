.class public Lcom/sec/daliviews/views/Canvas;
.super Landroid/graphics/Canvas;
.source "Canvas.java"


# static fields
.field static final CONST_DPO_INITIAL_CAPACITY:I = 0x400

.field static final IDENTITY_MATRIX:Landroid/graphics/Matrix;

.field static final LOG_CANVAS_CALLS_DEBUG:Z

.field static final QUICK_REJECTION_DEBUG:Z

.field static final SAVED_CLIP_BOUNDS_DEBUG:Z

.field static final SW_FALLBACK_ENABLED:Z

.field static final currentClipBounds:Landroid/graphics/Rect;

.field static final currentClipBoundsF:Landroid/graphics/RectF;

.field static mNativePathField:Ljava/lang/reflect/Field;

.field static textidx:I


# instance fields
.field final HS_HOME_PATH:Ljava/lang/String;

.field currentMatrix:Landroid/graphics/Matrix;

.field drawBitmapDst:Landroid/graphics/Rect;

.field drawBitmapSrc:Landroid/graphics/Rect;

.field mDisplayList:Lcom/sec/daliviews/graphics/DisplayList;

.field private mHeight:I

.field mTextCache:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mWidth:I

.field private mlinkedDrawableView:Lcom/sec/daliviews/views/DrawableView;

.field r0:Landroid/graphics/Rect;

.field rejectPaint:Landroid/graphics/Paint;

.field rejectbox:Landroid/graphics/RectF;

.field private renderInternally:Z

.field private tmpDrawRectF:Landroid/graphics/RectF;

.field public unsupportedFeatureDetected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lcom/sec/daliviews/views/Canvas;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/sec/daliviews/views/Canvas;->currentClipBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/sec/daliviews/views/Canvas;->currentClipBoundsF:Landroid/graphics/RectF;

    sget-object v0, Lcom/sec/daliviews/views/Canvas;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/daliviews/views/Canvas;->mNativePathField:Ljava/lang/reflect/Field;

    const/4 v0, 0x0

    sput v0, Lcom/sec/daliviews/views/Canvas;->textidx:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/graphics/Canvas;-><init>()V

    iput v1, p0, Lcom/sec/daliviews/views/Canvas;->mWidth:I

    iput v1, p0, Lcom/sec/daliviews/views/Canvas;->mHeight:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/daliviews/views/Canvas;->mlinkedDrawableView:Lcom/sec/daliviews/views/DrawableView;

    iput-boolean v1, p0, Lcom/sec/daliviews/views/Canvas;->unsupportedFeatureDetected:Z

    iput-boolean v1, p0, Lcom/sec/daliviews/views/Canvas;->renderInternally:Z

    const-string v0, "/data/data/com.sec.android.app.launcher"

    iput-object v0, p0, Lcom/sec/daliviews/views/Canvas;->HS_HOME_PATH:Ljava/lang/String;

    new-instance v0, Lcom/sec/daliviews/graphics/DisplayList;

    invoke-direct {v0}, Lcom/sec/daliviews/graphics/DisplayList;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/views/Canvas;->mDisplayList:Lcom/sec/daliviews/graphics/DisplayList;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/views/Canvas;->r0:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/views/Canvas;->rejectbox:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/views/Canvas;->currentMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/views/Canvas;->rejectPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/views/Canvas;->tmpDrawRectF:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/views/Canvas;->drawBitmapSrc:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/views/Canvas;->drawBitmapDst:Landroid/graphics/Rect;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/views/Canvas;->mTextCache:Ljava/util/Hashtable;

    iput-boolean v1, p0, Lcom/sec/daliviews/views/Canvas;->renderInternally:Z

    return-void
.end method

.method public constructor <init>(IILcom/sec/daliviews/views/DrawableView;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/graphics/Canvas;-><init>()V

    iput v3, p0, Lcom/sec/daliviews/views/Canvas;->mWidth:I

    iput v3, p0, Lcom/sec/daliviews/views/Canvas;->mHeight:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/daliviews/views/Canvas;->mlinkedDrawableView:Lcom/sec/daliviews/views/DrawableView;

    iput-boolean v3, p0, Lcom/sec/daliviews/views/Canvas;->unsupportedFeatureDetected:Z

    iput-boolean v3, p0, Lcom/sec/daliviews/views/Canvas;->renderInternally:Z

    const-string v2, "/data/data/com.sec.android.app.launcher"

    iput-object v2, p0, Lcom/sec/daliviews/views/Canvas;->HS_HOME_PATH:Ljava/lang/String;

    new-instance v2, Lcom/sec/daliviews/graphics/DisplayList;

    invoke-direct {v2}, Lcom/sec/daliviews/graphics/DisplayList;-><init>()V

    iput-object v2, p0, Lcom/sec/daliviews/views/Canvas;->mDisplayList:Lcom/sec/daliviews/graphics/DisplayList;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/sec/daliviews/views/Canvas;->r0:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/sec/daliviews/views/Canvas;->rejectbox:Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/sec/daliviews/views/Canvas;->currentMatrix:Landroid/graphics/Matrix;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/sec/daliviews/views/Canvas;->rejectPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/sec/daliviews/views/Canvas;->tmpDrawRectF:Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/sec/daliviews/views/Canvas;->drawBitmapSrc:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/sec/daliviews/views/Canvas;->drawBitmapDst:Landroid/graphics/Rect;

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, p0, Lcom/sec/daliviews/views/Canvas;->mTextCache:Ljava/util/Hashtable;

    iput-boolean v3, p0, Lcom/sec/daliviews/views/Canvas;->renderInternally:Z

    iput p1, p0, Lcom/sec/daliviews/views/Canvas;->mWidth:I

    iput p2, p0, Lcom/sec/daliviews/views/Canvas;->mHeight:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v3, v3, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v2, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-super {p0, v1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    invoke-virtual {p0}, Lcom/sec/daliviews/views/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    iput-object p3, p0, Lcom/sec/daliviews/views/Canvas;->mlinkedDrawableView:Lcom/sec/daliviews/views/DrawableView;

    return-void
.end method

.method private log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v1, v2, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private notifyUnsupportedCanvasFeature()V
    .locals 0

    return-void
.end method


# virtual methods
.method public GetDisplayList()Lcom/sec/daliviews/graphics/DisplayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/Canvas;->mDisplayList:Lcom/sec/daliviews/graphics/DisplayList;

    return-object v0
.end method

.method public clipPath(Landroid/graphics/Path;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/daliviews/views/Canvas;->renderInternally:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/daliviews/views/Canvas;->renderInternally:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clipRect(FFFF)Z
    .locals 2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x461c4000    # 10000.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-static {p1, p3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {p1, p3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    sub-float p3, v0, v1

    const/4 p1, 0x0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    move-result v0

    return v0
.end method

.method public clipRect(FFFFLandroid/graphics/Region$Op;)Z
    .locals 3

    iget-boolean v2, p0, Lcom/sec/daliviews/views/Canvas;->renderInternally:Z

    if-eqz v2, :cond_0

    invoke-super/range {p0 .. p5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    move-result v1

    iget-object v2, p0, Lcom/sec/daliviews/views/Canvas;->mDisplayList:Lcom/sec/daliviews/graphics/DisplayList;

    invoke-virtual {v2}, Lcom/sec/daliviews/graphics/DisplayList;->GetNextOp()Lcom/sec/daliviews/graphics/DisplayList$Op;

    move-result-object v0

    iget-object v2, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    sget-object v2, Lcom/sec/daliviews/graphics/DisplayList$OpType;->kSetClip:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    iput-object v2, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mOpType:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    iget-object v2, p0, Lcom/sec/daliviews/views/Canvas;->mDisplayList:Lcom/sec/daliviews/graphics/DisplayList;

    invoke-virtual {v2, v0}, Lcom/sec/daliviews/graphics/DisplayList;->Push(Lcom/sec/daliviews/graphics/DisplayList$Op;)V

    goto :goto_0
.end method

.method public clipRect(IIII)Z
    .locals 2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x2710

    if-le v0, v1, :cond_0

    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    sub-int p3, v0, v1

    const/4 p1, 0x0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    move-result v0

    return v0
.end method

.method public clipRect(Landroid/graphics/Rect;)Z
    .locals 3

    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/sec/daliviews/views/Canvas;->mWidth:I

    if-le v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    const/4 v0, 0x0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z
    .locals 3

    iget-boolean v2, p0, Lcom/sec/daliviews/views/Canvas;->renderInternally:Z

    if-eqz v2, :cond_0

    invoke-super {p0, p1, p2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    move-result v1

    iget-object v2, p0, Lcom/sec/daliviews/views/Canvas;->mDisplayList:Lcom/sec/daliviews/graphics/DisplayList;

    invoke-virtual {v2}, Lcom/sec/daliviews/graphics/DisplayList;->GetNextOp()Lcom/sec/daliviews/graphics/DisplayList$Op;

    move-result-object v0

    iget-object v2, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v2, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    sget-object v2, Lcom/sec/daliviews/graphics/DisplayList$OpType;->kSetClip:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    iput-object v2, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mOpType:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    iget-object v2, p0, Lcom/sec/daliviews/views/Canvas;->mDisplayList:Lcom/sec/daliviews/graphics/DisplayList;

    invoke-virtual {v2, v0}, Lcom/sec/daliviews/graphics/DisplayList;->Push(Lcom/sec/daliviews/graphics/DisplayList$Op;)V

    goto :goto_0
.end method

.method public clipRect(Landroid/graphics/RectF;)Z
    .locals 3

    iget v0, p1, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/sec/daliviews/views/Canvas;->mWidth:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->right:F

    const/4 v0, 0x0

    iput v0, p1, Landroid/graphics/RectF;->left:F

    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    move-result v0

    return v0
.end method

.method public clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z
    .locals 3

    iget-boolean v2, p0, Lcom/sec/daliviews/views/Canvas;->renderInternally:Z

    if-eqz v2, :cond_0

    invoke-super {p0, p1, p2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    move-result v1

    iget-object v2, p0, Lcom/sec/daliviews/views/Canvas;->mDisplayList:Lcom/sec/daliviews/graphics/DisplayList;

    invoke-virtual {v2}, Lcom/sec/daliviews/graphics/DisplayList;->GetNextOp()Lcom/sec/daliviews/graphics/DisplayList$Op;

    move-result-object v0

    iget-object v2, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v2, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    sget-object v2, Lcom/sec/daliviews/graphics/DisplayList$OpType;->kSetClip:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    iput-object v2, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mOpType:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    iget-object v2, p0, Lcom/sec/daliviews/views/Canvas;->mDisplayList:Lcom/sec/daliviews/graphics/DisplayList;

    invoke-virtual {v2, v0}, Lcom/sec/daliviews/graphics/DisplayList;->Push(Lcom/sec/daliviews/graphics/DisplayList$Op;)V

    goto :goto_0
.end method

.method public clipRegion(Landroid/graphics/Region;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/daliviews/views/Canvas;->renderInternally:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/graphics/Canvas;->clipRegion(Landroid/graphics/Region;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/Canvas;->clipRegion(Landroid/graphics/Region;)Z

    move-result v0

    goto :goto_0
.end method

.method public clipRegion(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/daliviews/views/Canvas;->renderInternally:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/graphics/Canvas;->clipRegion(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/graphics/Canvas;->clipRegion(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    move-result v0

    goto :goto_0
.end method

.method public drawARGB(IIII)V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/daliviews/views/Canvas;->renderInternally:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    :goto_0
    return-void

    :cond_0
    shl-int/lit8 v0, p1, 0x18

    and-int/lit16 v1, p2, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, p3, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, p4, 0xff

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/sec/daliviews/views/Canvas;->drawColor(I)V

    goto :goto_0
.end method

.method public drawArc(FFFFFFZLandroid/graphics/Paint;)V
    .locals 6

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v0, p0

    move v2, p5

    move v3, p6

    move v4, p7

    move-object v5, p8

    invoke-virtual/range {v0 .. v5}, Lcom/sec/daliviews/views/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V
    .locals 2

    iget-boolean v1, p0, Lcom/sec/daliviews/views/Canvas;->renderInternally:Z

    if-eqz v1, :cond_0

    invoke-super/range {p0 .. p5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/daliviews/views/Canvas;->mDisplayList:Lcom/sec/daliviews/graphics/DisplayList;

    invoke-virtual {v1}, Lcom/sec/daliviews/graphics/DisplayList;->GetNextOp()Lcom/sec/daliviews/graphics/DisplayList$Op;

    move-result-object v0

    sget-object v1, Lcom/sec/daliviews/graphics/DisplayList$OpType;->kDrawArc:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    iput-object v1, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mOpType:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    iget-object v1, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v1, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-virtual {p5}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    iput v1, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mColor:I

    iput-object p5, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lcom/sec/daliviews/graphics/DisplayList$Op;->GetMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/daliviews/views/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    iput p2, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mStartAngle:F

    iput p3, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mSweepAngle:F

    iput-boolean p4, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mContainCenter:Z

    iget-object v1, p0, Lcom/sec/daliviews/views/Canvas;->mDisplayList:Lcom/sec/daliviews/graphics/DisplayList;

    invoke-virtual {v1, v0}, Lcom/sec/daliviews/graphics/DisplayList;->Push(Lcom/sec/daliviews/graphics/DisplayList$Op;)V

    goto :goto_0
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    .locals 5

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/sec/daliviews/views/Canvas;->renderInternally:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/daliviews/views/Canvas;->drawBitmapSrc:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/sec/daliviews/views/Canvas;->drawBitmapDst:Landroid/graphics/Rect;

    float-to-int v1, p2

    float-to-int v2, p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/sec/daliviews/views/Canvas;->drawBitmapSrc:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sec/daliviews/views/Canvas;->drawBitmapDst:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0, v1, p4}, Lcom/sec/daliviews/views/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/daliviews/views/Canvas;->renderInternally:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/daliviews/views/Canvas;->notifyUnsupportedCanvasFeature()V

    goto :goto_0
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 5

    iget-boolean v3, p0, Lcom/sec/daliviews/views/Canvas;->renderInternally:Z

    if-eqz v3, :cond_1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/sec/daliviews/views/Canvas;->mDisplayList:Lcom/sec/daliviews/graphics/DisplayList;

    invoke-virtual {v3}, Lcom/sec/daliviews/graphics/DisplayList;->GetNextOp()Lcom/sec/daliviews/graphics/DisplayList$Op;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sec/daliviews/graphics/DisplayList$Op;->mIsNinePatch:Z

    iput-object v1, v2, Lcom/sec/daliviews/graphics/DisplayList$Op;->mData:[B

    :cond_2
    invoke-virtual {v2, p1}, Lcom/sec/daliviews/graphics/DisplayList$Op;->SetBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, p4}, Lcom/sec/daliviews/graphics/DisplayList$Op;->SetPaint(Landroid/graphics/Paint;)V

    iget-object v3, v2, Lcom/sec/daliviews/graphics/DisplayList$Op;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    const v4, 0xffffff

    or-int/2addr v3, v4

    iput v3, v2, Lcom/sec/daliviews/graphics/DisplayList$Op;->mColor:I

    iget-object v3, v2, Lcom/sec/daliviews/graphics/DisplayList$Op;->mRectDst:Landroid/graphics/Rect;

    invoke-virtual {v3, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v2}, Lcom/sec/daliviews/graphics/DisplayList$Op;->GetMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/daliviews/views/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    iget-object v3, p0, Lcom/sec/daliviews/views/Canvas;->r0:Landroid/graphics/Rect;

    invoke-super {p0, v3}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    iget-object v3, v2, Lcom/sec/daliviews/graphics/DisplayList$Op;->mRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/sec/daliviews/views/Canvas;->r0:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v3, v2, Lcom/sec/daliviews/graphics/DisplayList$Op;->mMatrix:Landroid/graphics/Matrix;

    iget-object v4, v2, Lcom/sec/daliviews/graphics/DisplayList$Op;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-nez v0, :cond_3

    sget-object v3, Lcom/sec/daliviews/graphics/DisplayList$OpType;->kDrawUnknownBitmap:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    iput-object v3, v2, Lcom/sec/daliviews/graphics/DisplayList$Op;->mOpType:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    invoke-virtual {v2, p2, p3}, Lcom/sec/daliviews/graphics/DisplayList$Op;->SetBitmapSizing(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :goto_1
    iget-object v3, p0, Lcom/sec/daliviews/views/Canvas;->mDisplayList:Lcom/sec/daliviews/graphics/DisplayList;

    invoke-virtual {v3, v2}, Lcom/sec/daliviews/graphics/DisplayList;->Push(Lcom/sec/daliviews/graphics/DisplayList$Op;)V

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/sec/daliviews/graphics/DisplayList$OpType;->kDrawBitmap:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    iput-object v3, v2, Lcom/sec/daliviews/graphics/DisplayList$Op;->mOpType:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    goto :goto_1
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 5

    iget-boolean v0, p0, Lcom/sec/daliviews/views/Canvas;->renderInternally:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/daliviews/views/Canvas;->drawBitmapDst:Landroid/graphics/Rect;

    iget v1, p3, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, p3, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget v3, p3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget v4, p3, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/sec/daliviews/views/Canvas;->drawBitmapDst:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/sec/daliviews/views/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/daliviews/views/Canvas;->renderInternally:Z

    if-eqz v0, :cond_0

    invoke-super/range {p0 .. p9}, Landroid/graphics/Canvas;->drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/daliviews/views/Canvas;->notifyUnsupportedCanvasFeature()V

    goto :goto_0
.end method

.method public drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/daliviews/views/Canvas;->renderInternally:Z

    if-eqz v0, :cond_0

    invoke-super/range {p0 .. p9}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/daliviews/views/Canvas;->notifyUnsupportedCanvasFeature()V

    goto :goto_0
.end method

.method public drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/daliviews/views/Canvas;->renderInternally:Z

    if-eqz v0, :cond_0

    invoke-super/range {p0 .. p8}, Landroid/graphics/Canvas;->drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/daliviews/views/Canvas;->notifyUnsupportedCanvasFeature()V

    goto :goto_0
.end method

.method public drawCircle(FFFLandroid/graphics/Paint;)V
    .locals 5

    iget-boolean v0, p0, Lcom/sec/daliviews/views/Canvas;->renderInternally:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    sub-float v1, p1, p3

    sub-float v2, p2, p3

    add-float v3, p1, p3

    add-float v4, p2, p3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0, v0, p4}, Lcom/sec/daliviews/views/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public drawColor(I)V
    .locals 3

    iget-boolean v1, p0, Lcom/sec/daliviews/views/Canvas;->renderInternally:Z

    if-eqz v1, :cond_0

    invoke-super {p0, p1}, Landroid/graphics/Canvas;->drawColor(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/daliviews/views/Canvas;->mDisplayList:Lcom/sec/daliviews/graphics/DisplayList;

    invoke-virtual {v1}, Lcom/sec/daliviews/graphics/DisplayList;->GetNextOp()Lcom/sec/daliviews/graphics/DisplayList$Op;

    move-result-object v0

    sget-object v1, Lcom/sec/daliviews/graphics/DisplayList$OpType;->kDrawColor:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    iput-object v1, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mOpType:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    iput p1, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mColor:I

    invoke-virtual {v0}, Lcom/sec/daliviews/graphics/DisplayList$Op;->GetMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/daliviews/views/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lcom/sec/daliviews/views/Canvas;->r0:Landroid/graphics/Rect;

    invoke-super {p0, v1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    iget-object v1, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/sec/daliviews/views/Canvas;->r0:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v1, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mMatrix:Landroid/graphics/Matrix;

    iget-object v2, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v1, p0, Lcom/sec/daliviews/views/Canvas;->mDisplayList:Lcom/sec/daliviews/graphics/DisplayList;

    invoke-virtual {v1, v0}, Lcom/sec/daliviews/graphics/DisplayList;->Push(Lcom/sec/daliviews/graphics/DisplayList$Op;)V

    goto :goto_0
.end method

.method public drawColor(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 3

    iget-boolean v1, p0, Lcom/sec/daliviews/views/Canvas;->renderInternally:Z

    if-eqz v1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/daliviews/views/Canvas;->mDisplayList:Lcom/sec/daliviews/graphics/DisplayList;

    invoke-virtual {v1}, Lcom/sec/daliviews/graphics/DisplayList;->GetNextOp()Lcom/sec/daliviews/graphics/DisplayList$Op;

    move-result-object v0

    sget-object v1, Lcom/sec/daliviews/graphics/DisplayList$OpType;->kDrawColor:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    iput-object v1, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mOpType:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    iput p1, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mColor:I

    invoke-virtual {v0}, Lcom/sec/daliviews/graphics/DisplayList$Op;->GetMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/daliviews/views/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lcom/sec/daliviews/views/Canvas;->r0:Landroid/graphics/Rect;

    invoke-super {p0, v1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    iget-object v1, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/sec/daliviews/views/Canvas;->r0:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v1, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mMatrix:Landroid/graphics/Matrix;

    iget-object v2, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v1, p0, Lcom/sec/daliviews/views/Canvas;->mDisplayList:Lcom/sec/daliviews/graphics/DisplayList;

    invoke-virtual {v1, v0}, Lcom/sec/daliviews/graphics/DisplayList;->Push(Lcom/sec/daliviews/graphics/DisplayList$Op;)V

    goto :goto_0
.end method

.method public drawLine(FFFFLandroid/graphics/Paint;)V
    .locals 3

    iget-boolean v2, p0, Lcom/sec/daliviews/views/Canvas;->renderInternally:Z

    if-eqz v2, :cond_0

    invoke-super/range {p0 .. p5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/daliviews/views/Canvas;->mDisplayList:Lcom/sec/daliviews/graphics/DisplayList;

    invoke-virtual {v2}, Lcom/sec/daliviews/graphics/DisplayList;->GetNextOp()Lcom/sec/daliviews/graphics/DisplayList$Op;

    move-result-object v0

    sget-object v2, Lcom/sec/daliviews/graphics/DisplayList$OpType;->kDrawLine:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    iput-object v2, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mOpType:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v2, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-virtual {p5}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    iput v2, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mColor:I

    iget-object v2, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, p5}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    invoke-virtual {v0}, Lcom/sec/daliviews/graphics/DisplayList$Op;->GetMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/daliviews/views/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    iget-object v2, p0, Lcom/sec/daliviews/views/Canvas;->mDisplayList:Lcom/sec/daliviews/graphics/DisplayList;

    invoke-virtual {v2, v0}, Lcom/sec/daliviews/graphics/DisplayList;->Push(Lcom/sec/daliviews/graphics/DisplayList$Op;)V

    goto :goto_0
.end method

.method public drawLines([FIILandroid/graphics/Paint;)V
    .locals 8

    iget-boolean v4, p0, Lcom/sec/daliviews/views/Canvas;->renderInternally:Z

    if-eqz v4, :cond_1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    :cond_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    array-length v1, p1

    or-int v4, p2, p3

    if-ltz v4, :cond_0

    add-int v4, p2, p3

    if-gt v4, v1, :cond_0

    const/4 v4, 0x4

    if-lt p3, v4, :cond_0

    move v0, p2

    :goto_0
    add-int v4, p2, p3

    if-ge v0, v4, :cond_0

    iget-object v4, p0, Lcom/sec/daliviews/views/Canvas;->mDisplayList:Lcom/sec/daliviews/graphics/DisplayList;

    invoke-virtual {v4}, Lcom/sec/daliviews/graphics/DisplayList;->GetNextOp()Lcom/sec/daliviews/graphics/DisplayList$Op;

    move-result-object v2

    sget-object v4, Lcom/sec/daliviews/graphics/DisplayList$OpType;->kDrawLine:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    iput-object v4, v2, Lcom/sec/daliviews/graphics/DisplayList$Op;->mOpType:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    new-instance v3, Landroid/graphics/RectF;

    aget v4, p1, v0

    add-int/lit8 v5, v0, 0x1

    aget v5, p1, v5

    add-int/lit8 v6, v0, 0x2

    aget v6, p1, v6

    add-int/lit8 v7, v0, 0x3

    aget v7, p1, v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v4, v2, Lcom/sec/daliviews/graphics/DisplayList$Op;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v4, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-virtual {p4}, Landroid/graphics/Paint;->getColor()I

    move-result v4

    iput v4, v2, Lcom/sec/daliviews/graphics/DisplayList$Op;->mColor:I

    iget-object v4, v2, Lcom/sec/daliviews/graphics/DisplayList$Op;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, p4}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    invoke-virtual {v2}, Lcom/sec/daliviews/graphics/DisplayList$Op;->GetMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/daliviews/views/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    iget-object v4, p0, Lcom/sec/daliviews/views/Canvas;->mDisplayList:Lcom/sec/daliviews/graphics/DisplayList;

    invoke-virtual {v4, v2}, Lcom/sec/daliviews/graphics/DisplayList;->Push(Lcom/sec/daliviews/graphics/DisplayList$Op;)V

    add-int/lit8 v0, v0, 0x4

    goto :goto_0
.end method

.method public drawLines([FLandroid/graphics/Paint;)V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/daliviews/views/Canvas;->renderInternally:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/sec/daliviews/views/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public drawOval(FFFFLandroid/graphics/Paint;)V
    .locals 1

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0, v0, p5}, Lcom/sec/daliviews/views/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 2

    iget-boolean v1, p0, Lcom/sec/daliviews/views/Canvas;->renderInternally:Z

    if-eqz v1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/daliviews/views/Canvas;->mDisplayList:Lcom/sec/daliviews/graphics/DisplayList;

    invoke-virtual {v1}, Lcom/sec/daliviews/graphics/DisplayList;->GetNextOp()Lcom/sec/daliviews/graphics/DisplayList$Op;

    move-result-object v0

    sget-object v1, Lcom/sec/daliviews/graphics/DisplayList$OpType;->kDrawOval:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    iput-object v1, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mOpType:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    iget-object v1, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v1, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    iput v1, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mColor:I

    iget-object v1, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    invoke-virtual {v0}, Lcom/sec/daliviews/graphics/DisplayList$Op;->GetMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/daliviews/views/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lcom/sec/daliviews/views/Canvas;->mDisplayList:Lcom/sec/daliviews/graphics/DisplayList;

    invoke-virtual {v1, v0}, Lcom/sec/daliviews/graphics/DisplayList;->Push(Lcom/sec/daliviews/graphics/DisplayList$Op;)V

    goto :goto_0
.end method

.method public drawPaint(Landroid/graphics/Paint;)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/daliviews/views/Canvas;->renderInternally:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/daliviews/views/Canvas;->drawColor(I)V

    goto :goto_0
.end method

.method public drawPatch(Landroid/graphics/Bitmap;[BLandroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/sec/daliviews/views/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/NinePatch;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/sec/daliviews/views/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/NinePatch;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/sec/daliviews/views/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    .locals 6

    iget-boolean v3, p0, Lcom/sec/daliviews/views/Canvas;->renderInternally:Z

    if-eqz v3, :cond_0

    invoke-super {p0, p1, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_0
    return-void

    :cond_0
    sget-object v3, Lcom/sec/daliviews/views/Canvas;->mNativePathField:Ljava/lang/reflect/Field;

    if-nez v3, :cond_1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "mNativePath"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    sput-object v3, Lcom/sec/daliviews/views/Canvas;->mNativePathField:Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :goto_1
    :try_start_1
    iget-object v3, p0, Lcom/sec/daliviews/views/Canvas;->mDisplayList:Lcom/sec/daliviews/graphics/DisplayList;

    invoke-virtual {v3}, Lcom/sec/daliviews/graphics/DisplayList;->GetNextOp()Lcom/sec/daliviews/graphics/DisplayList$Op;

    move-result-object v2

    sget-object v3, Lcom/sec/daliviews/graphics/DisplayList$OpType;->kDrawPath:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    iput-object v3, v2, Lcom/sec/daliviews/graphics/DisplayList$Op;->mOpType:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    sget-object v3, Lcom/sec/daliviews/views/Canvas;->mNativePathField:Ljava/lang/reflect/Field;

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/sec/daliviews/graphics/DisplayList$Op;->mNativeSkiaObject:J

    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    iput v3, v2, Lcom/sec/daliviews/graphics/DisplayList$Op;->mColor:I

    iget-object v3, v2, Lcom/sec/daliviews/graphics/DisplayList$Op;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->reset()V

    iget-object v3, v2, Lcom/sec/daliviews/graphics/DisplayList$Op;->mPaint:Landroid/graphics/Paint;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p0, Lcom/sec/daliviews/views/Canvas;->r0:Landroid/graphics/Rect;

    invoke-super {p0, v3}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    iget-object v3, v2, Lcom/sec/daliviews/graphics/DisplayList$Op;->mRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/sec/daliviews/views/Canvas;->r0:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v2}, Lcom/sec/daliviews/graphics/DisplayList$Op;->GetMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/daliviews/views/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    iget-object v3, p0, Lcom/sec/daliviews/views/Canvas;->mDisplayList:Lcom/sec/daliviews/graphics/DisplayList;

    invoke-virtual {v3, v2}, Lcom/sec/daliviews/graphics/DisplayList;->Push(Lcom/sec/daliviews/graphics/DisplayList$Op;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "NATIVECANVAS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/sec/daliviews/views/Canvas;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public drawPicture(Landroid/graphics/Picture;)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/daliviews/views/Canvas;->renderInternally:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/daliviews/views/Canvas;->notifyUnsupportedCanvasFeature()V

    goto :goto_0
.end method

.method public drawPicture(Landroid/graphics/Picture;Landroid/graphics/Rect;)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/daliviews/views/Canvas;->renderInternally:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;Landroid/graphics/Rect;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/daliviews/views/Canvas;->notifyUnsupportedCanvasFeature()V

    goto :goto_0
.end method

.method public drawPicture(Landroid/graphics/Picture;Landroid/graphics/RectF;)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/daliviews/views/Canvas;->renderInternally:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;Landroid/graphics/RectF;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/daliviews/views/Canvas;->notifyUnsupportedCanvasFeature()V

    goto :goto_0
.end method

.method public drawPoint(FFLandroid/graphics/Paint;)V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v2, p0, Lcom/sec/daliviews/views/Canvas;->renderInternally:Z

    if-eqz v2, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/daliviews/views/Canvas;->mDisplayList:Lcom/sec/daliviews/graphics/DisplayList;

    invoke-virtual {v2}, Lcom/sec/daliviews/graphics/DisplayList;->GetNextOp()Lcom/sec/daliviews/graphics/DisplayList$Op;

    move-result-object v0

    sget-object v2, Lcom/sec/daliviews/graphics/DisplayList$OpType;->kDrawPoint:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    iput-object v2, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mOpType:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p1, p2, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v2, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-virtual {p3}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    iput v2, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mColor:I

    iget-object v2, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    invoke-virtual {v0}, Lcom/sec/daliviews/graphics/DisplayList$Op;->GetMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/daliviews/views/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    iget-object v2, p0, Lcom/sec/daliviews/views/Canvas;->mDisplayList:Lcom/sec/daliviews/graphics/DisplayList;

    invoke-virtual {v2, v0}, Lcom/sec/daliviews/graphics/DisplayList;->Push(Lcom/sec/daliviews/graphics/DisplayList$Op;)V

    goto :goto_0
.end method

.method public drawPoints([FLandroid/graphics/Paint;)V
    .locals 5

    iget-boolean v3, p0, Lcom/sec/daliviews/views/Canvas;->renderInternally:Z

    if-eqz v3, :cond_1

    invoke-super {p0, p1, p2}, Landroid/graphics/Canvas;->drawPoints([FLandroid/graphics/Paint;)V

    :cond_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/daliviews/views/Canvas;->mDisplayList:Lcom/sec/daliviews/graphics/DisplayList;

    invoke-virtual {v3}, Lcom/sec/daliviews/graphics/DisplayList;->GetNextOp()Lcom/sec/daliviews/graphics/DisplayList$Op;

    move-result-object v1

    array-length v3, p1

    div-int/lit8 v2, v3, 0x2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    mul-int/lit8 v3, v0, 0x2

    aget v3, p1, v3

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    aget v4, p1, v4

    invoke-virtual {p0, v3, v4, p2}, Lcom/sec/daliviews/views/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public drawPosText(Ljava/lang/String;[FLandroid/graphics/Paint;)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/daliviews/views/Canvas;->renderInternally:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/graphics/Canvas;->drawPosText(Ljava/lang/String;[FLandroid/graphics/Paint;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/daliviews/views/Canvas;->notifyUnsupportedCanvasFeature()V

    goto :goto_0
.end method

.method public drawPosText([CII[FLandroid/graphics/Paint;)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/daliviews/views/Canvas;->renderInternally:Z

    if-eqz v0, :cond_0

    invoke-super/range {p0 .. p5}, Landroid/graphics/Canvas;->drawPosText([CII[FLandroid/graphics/Paint;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/daliviews/views/Canvas;->notifyUnsupportedCanvasFeature()V

    goto :goto_0
.end method

.method public drawRGB(III)V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/daliviews/views/Canvas;->renderInternally:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/graphics/Canvas;->drawRGB(III)V

    :goto_0
    return-void

    :cond_0
    const/high16 v0, -0x1000000

    shl-int/lit8 v1, p1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, p2, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, p3, 0xff

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/sec/daliviews/views/Canvas;->drawColor(I)V

    goto :goto_0
.end method

.method public drawRect(FFFFLandroid/graphics/Paint;)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/daliviews/views/Canvas;->renderInternally:Z

    if-eqz v0, :cond_0

    invoke-super/range {p0 .. p5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/daliviews/views/Canvas;->tmpDrawRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/sec/daliviews/views/Canvas;->tmpDrawRectF:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, p5}, Lcom/sec/daliviews/views/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 5

    iget-boolean v0, p0, Lcom/sec/daliviews/views/Canvas;->renderInternally:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/daliviews/views/Canvas;->tmpDrawRectF:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/sec/daliviews/views/Canvas;->tmpDrawRectF:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, p2}, Lcom/sec/daliviews/views/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 3

    iget-boolean v1, p0, Lcom/sec/daliviews/views/Canvas;->renderInternally:Z

    if-eqz v1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/daliviews/views/Canvas;->mDisplayList:Lcom/sec/daliviews/graphics/DisplayList;

    invoke-virtual {v1}, Lcom/sec/daliviews/graphics/DisplayList;->GetNextOp()Lcom/sec/daliviews/graphics/DisplayList$Op;

    move-result-object v0

    sget-object v1, Lcom/sec/daliviews/graphics/DisplayList$OpType;->kSetClip:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    iput-object v1, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mOpType:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    invoke-virtual {v0}, Lcom/sec/daliviews/graphics/DisplayList$Op;->GetMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/daliviews/views/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lcom/sec/daliviews/views/Canvas;->r0:Landroid/graphics/Rect;

    invoke-super {p0, v1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    iget-object v1, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/sec/daliviews/views/Canvas;->r0:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v1, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mMatrix:Landroid/graphics/Matrix;

    iget-object v2, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v1, p0, Lcom/sec/daliviews/views/Canvas;->mDisplayList:Lcom/sec/daliviews/graphics/DisplayList;

    invoke-virtual {v1, v0}, Lcom/sec/daliviews/graphics/DisplayList;->Push(Lcom/sec/daliviews/graphics/DisplayList$Op;)V

    iget-object v1, p0, Lcom/sec/daliviews/views/Canvas;->mDisplayList:Lcom/sec/daliviews/graphics/DisplayList;

    invoke-virtual {v1}, Lcom/sec/daliviews/graphics/DisplayList;->GetNextOp()Lcom/sec/daliviews/graphics/DisplayList$Op;

    move-result-object v0

    sget-object v1, Lcom/sec/daliviews/graphics/DisplayList$OpType;->kDrawRect:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    iput-object v1, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mOpType:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    iget-object v1, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v1, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    iput v1, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mColor:I

    iget-object v1, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    invoke-virtual {v0}, Lcom/sec/daliviews/graphics/DisplayList$Op;->GetMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/daliviews/views/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lcom/sec/daliviews/views/Canvas;->mDisplayList:Lcom/sec/daliviews/graphics/DisplayList;

    invoke-virtual {v1, v0}, Lcom/sec/daliviews/graphics/DisplayList;->Push(Lcom/sec/daliviews/graphics/DisplayList$Op;)V

    goto :goto_0
.end method

.method public drawRoundRect(FFFFFFLandroid/graphics/Paint;)V
    .locals 1

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0, v0, p5, p6, p7}, Lcom/sec/daliviews/views/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    .locals 2

    iget-boolean v1, p0, Lcom/sec/daliviews/views/Canvas;->renderInternally:Z

    if-eqz v1, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/daliviews/views/Canvas;->mDisplayList:Lcom/sec/daliviews/graphics/DisplayList;

    invoke-virtual {v1}, Lcom/sec/daliviews/graphics/DisplayList;->GetNextOp()Lcom/sec/daliviews/graphics/DisplayList$Op;

    move-result-object v0

    sget-object v1, Lcom/sec/daliviews/graphics/DisplayList$OpType;->kDrawRoundRect:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    iput-object v1, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mOpType:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    iget-object v1, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v1, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-virtual {p4}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    iput v1, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mColor:I

    iget-object v1, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p4}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    iput p2, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mRx:F

    iput p3, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mRy:F

    invoke-virtual {v0}, Lcom/sec/daliviews/graphics/DisplayList$Op;->GetMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/daliviews/views/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lcom/sec/daliviews/views/Canvas;->mDisplayList:Lcom/sec/daliviews/graphics/DisplayList;

    invoke-virtual {v1, v0}, Lcom/sec/daliviews/graphics/DisplayList;->Push(Lcom/sec/daliviews/graphics/DisplayList$Op;)V

    goto :goto_0
.end method

.method public drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/daliviews/views/Canvas;->renderInternally:Z

    if-eqz v0, :cond_0

    invoke-super/range {p0 .. p6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p4, p5, p6}, Lcom/sec/daliviews/views/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    .locals 4

    iget-boolean v2, p0, Lcom/sec/daliviews/views/Canvas;->renderInternally:Z

    if-eqz v2, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/daliviews/views/Canvas;->mDisplayList:Lcom/sec/daliviews/graphics/DisplayList;

    invoke-virtual {v2}, Lcom/sec/daliviews/graphics/DisplayList;->GetNextOp()Lcom/sec/daliviews/graphics/DisplayList$Op;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/sec/daliviews/graphics/DisplayList$Op;->SetPaint(Landroid/graphics/Paint;)V

    invoke-virtual {v1, p1}, Lcom/sec/daliviews/graphics/DisplayList$Op;->SetText(Ljava/lang/String;)V

    sget-object v2, Lcom/sec/daliviews/graphics/DisplayList$OpType;->kDrawText:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    iput-object v2, v1, Lcom/sec/daliviews/graphics/DisplayList$Op;->mOpType:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    iput p2, v1, Lcom/sec/daliviews/graphics/DisplayList$Op;->mX:F

    iput p3, v1, Lcom/sec/daliviews/graphics/DisplayList$Op;->mY:F

    invoke-virtual {v1}, Lcom/sec/daliviews/graphics/DisplayList$Op;->GetMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/daliviews/views/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    iget-object v2, v1, Lcom/sec/daliviews/graphics/DisplayList$Op;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->toShortString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/daliviews/views/Canvas;->r0:Landroid/graphics/Rect;

    invoke-super {p0, v2}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    iget-object v2, v1, Lcom/sec/daliviews/graphics/DisplayList$Op;->mRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/daliviews/views/Canvas;->r0:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v2, v1, Lcom/sec/daliviews/graphics/DisplayList$Op;->mMatrix:Landroid/graphics/Matrix;

    iget-object v3, v1, Lcom/sec/daliviews/graphics/DisplayList$Op;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v2, p0, Lcom/sec/daliviews/views/Canvas;->mDisplayList:Lcom/sec/daliviews/graphics/DisplayList;

    invoke-virtual {v2, v1}, Lcom/sec/daliviews/graphics/DisplayList;->Push(Lcom/sec/daliviews/graphics/DisplayList$Op;)V

    goto :goto_0
.end method

.method public drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/daliviews/views/Canvas;->renderInternally:Z

    if-eqz v0, :cond_0

    invoke-super/range {p0 .. p6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/daliviews/views/Canvas;->notifyUnsupportedCanvasFeature()V

    goto :goto_0
.end method

.method public drawText([CIIFFLandroid/graphics/Paint;)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/daliviews/views/Canvas;->renderInternally:Z

    if-eqz v0, :cond_0

    invoke-super/range {p0 .. p6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p4, p5, p6}, Lcom/sec/daliviews/views/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/daliviews/views/Canvas;->renderInternally:Z

    if-eqz v0, :cond_0

    invoke-super/range {p0 .. p5}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/daliviews/views/Canvas;->notifyUnsupportedCanvasFeature()V

    goto :goto_0
.end method

.method public drawTextOnPath([CIILandroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/daliviews/views/Canvas;->renderInternally:Z

    if-eqz v0, :cond_0

    invoke-super/range {p0 .. p7}, Landroid/graphics/Canvas;->drawTextOnPath([CIILandroid/graphics/Path;FFLandroid/graphics/Paint;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/daliviews/views/Canvas;->notifyUnsupportedCanvasFeature()V

    goto :goto_0
.end method

.method public drawTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)V
    .locals 1

    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p6, p7, p9}, Lcom/sec/daliviews/views/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V
    .locals 3

    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    add-int v2, p2, p3

    invoke-virtual {v1, p2, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p6, p7, p9}, Lcom/sec/daliviews/views/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawVertices(Landroid/graphics/Canvas$VertexMode;I[FI[FI[II[SIILandroid/graphics/Paint;)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/daliviews/views/Canvas;->renderInternally:Z

    if-eqz v0, :cond_0

    invoke-super/range {p0 .. p12}, Landroid/graphics/Canvas;->drawVertices(Landroid/graphics/Canvas$VertexMode;I[FI[FI[II[SIILandroid/graphics/Paint;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/daliviews/views/Canvas;->notifyUnsupportedCanvasFeature()V

    goto :goto_0
.end method

.method public getClipBounds(Landroid/graphics/Rect;)Z
    .locals 2

    iget-boolean v1, p0, Lcom/sec/daliviews/views/Canvas;->renderInternally:Z

    if-eqz v1, :cond_0

    invoke-super {p0, p1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0
.end method

.method public getDensity()I
    .locals 1

    invoke-super {p0}, Landroid/graphics/Canvas;->getDensity()I

    move-result v0

    return v0
.end method

.method public getDrawFilter()Landroid/graphics/DrawFilter;
    .locals 1

    iget-boolean v0, p0, Lcom/sec/daliviews/views/Canvas;->renderInternally:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/graphics/Canvas;->getDrawFilter()Landroid/graphics/DrawFilter;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/graphics/Canvas;->getDrawFilter()Landroid/graphics/DrawFilter;

    move-result-object v0

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/sec/daliviews/views/Canvas;->mHeight:I

    return v0
.end method

.method public getMaximumBitmapHeight()I
    .locals 1

    invoke-super {p0}, Landroid/graphics/Canvas;->getMaximumBitmapHeight()I

    move-result v0

    return v0
.end method

.method public getMaximumBitmapWidth()I
    .locals 1

    invoke-super {p0}, Landroid/graphics/Canvas;->getMaximumBitmapWidth()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/sec/daliviews/views/Canvas;->mWidth:I

    return v0
.end method

.method public isHardwareAccelerated()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/daliviews/views/Canvas;->renderInternally:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isOpaque()Z
    .locals 1

    invoke-super {p0}, Landroid/graphics/Canvas;->isOpaque()Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 2

    const-string v0, "Canvas"

    const-string v1, "onPause new DisplayList"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/daliviews/views/Canvas;->mDisplayList:Lcom/sec/daliviews/graphics/DisplayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/views/Canvas;->mDisplayList:Lcom/sec/daliviews/graphics/DisplayList;

    invoke-virtual {v0}, Lcom/sec/daliviews/graphics/DisplayList;->onPause()V

    :cond_0
    return-void
.end method

.method public onRendererPaused()V
    .locals 2

    const-string v0, "Canvas"

    const-string v1, "onRendererPaused"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResume()V
    .locals 2

    const-string v0, "Canvas"

    const-string v1, "onResume create display list"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/daliviews/views/Canvas;->mDisplayList:Lcom/sec/daliviews/graphics/DisplayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/views/Canvas;->mDisplayList:Lcom/sec/daliviews/graphics/DisplayList;

    invoke-virtual {v0}, Lcom/sec/daliviews/graphics/DisplayList;->onResume()V

    :cond_0
    return-void
.end method

.method public pauseRender()V
    .locals 0

    return-void
.end method

.method print_matrix(Landroid/graphics/Matrix;Ljava/lang/String;)V
    .locals 5

    const/16 v4, 0x9

    new-array v1, v4, [F

    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    aget v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v0, 0x2

    aget v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_0
    return-void
.end method

.method public quickReject(FFFFLandroid/graphics/Canvas$EdgeType;)Z
    .locals 3

    iget-boolean v1, p0, Lcom/sec/daliviews/views/Canvas;->renderInternally:Z

    if-eqz v1, :cond_0

    invoke-super/range {p0 .. p5}, Landroid/graphics/Canvas;->quickReject(FFFFLandroid/graphics/Canvas$EdgeType;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/daliviews/views/Canvas;->rejectbox:Landroid/graphics/RectF;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lcom/sec/daliviews/views/Canvas;->currentMatrix:Landroid/graphics/Matrix;

    invoke-super {p0, v1}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lcom/sec/daliviews/views/Canvas;->currentMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/sec/daliviews/views/Canvas;->rejectbox:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-super/range {p0 .. p5}, Landroid/graphics/Canvas;->quickReject(FFFFLandroid/graphics/Canvas$EdgeType;)Z

    move-result v0

    goto :goto_0
.end method

.method public quickReject(Landroid/graphics/Path;Landroid/graphics/Canvas$EdgeType;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/daliviews/views/Canvas;->renderInternally:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/graphics/Canvas;->quickReject(Landroid/graphics/Path;Landroid/graphics/Canvas$EdgeType;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/graphics/Canvas;->quickReject(Landroid/graphics/Path;Landroid/graphics/Canvas$EdgeType;)Z

    move-result v0

    goto :goto_0
.end method

.method public quickReject(Landroid/graphics/RectF;Landroid/graphics/Canvas$EdgeType;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/daliviews/views/Canvas;->renderInternally:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/graphics/Canvas;->quickReject(Landroid/graphics/RectF;Landroid/graphics/Canvas$EdgeType;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/graphics/Canvas;->quickReject(Landroid/graphics/RectF;Landroid/graphics/Canvas$EdgeType;)Z

    move-result v0

    goto :goto_0
.end method

.method public restore()V
    .locals 3

    iget-boolean v2, p0, Lcom/sec/daliviews/views/Canvas;->renderInternally:Z

    if-eqz v2, :cond_0

    invoke-super {p0}, Landroid/graphics/Canvas;->restore()V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/daliviews/views/Canvas;->r0:Landroid/graphics/Rect;

    invoke-super {p0, v2}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v1

    iget-object v2, p0, Lcom/sec/daliviews/views/Canvas;->mDisplayList:Lcom/sec/daliviews/graphics/DisplayList;

    invoke-virtual {v2}, Lcom/sec/daliviews/graphics/DisplayList;->GetNextOp()Lcom/sec/daliviews/graphics/DisplayList$Op;

    move-result-object v0

    sget-object v2, Lcom/sec/daliviews/graphics/DisplayList$OpType;->kRestore:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    iput-object v2, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mOpType:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    iget-object v2, p0, Lcom/sec/daliviews/views/Canvas;->mDisplayList:Lcom/sec/daliviews/graphics/DisplayList;

    invoke-virtual {v2, v0}, Lcom/sec/daliviews/graphics/DisplayList;->Push(Lcom/sec/daliviews/graphics/DisplayList$Op;)V

    invoke-super {p0}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method public restoreToCount(I)V
    .locals 3

    iget-boolean v2, p0, Lcom/sec/daliviews/views/Canvas;->renderInternally:Z

    if-eqz v2, :cond_0

    invoke-super {p0, p1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/daliviews/views/Canvas;->r0:Landroid/graphics/Rect;

    invoke-super {p0, v2}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v1

    iget-object v2, p0, Lcom/sec/daliviews/views/Canvas;->mDisplayList:Lcom/sec/daliviews/graphics/DisplayList;

    invoke-virtual {v2}, Lcom/sec/daliviews/graphics/DisplayList;->GetNextOp()Lcom/sec/daliviews/graphics/DisplayList$Op;

    move-result-object v0

    sget-object v2, Lcom/sec/daliviews/graphics/DisplayList$OpType;->kRestore:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    iput-object v2, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mOpType:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    iput p1, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mSaveId:I

    iget-object v2, p0, Lcom/sec/daliviews/views/Canvas;->mDisplayList:Lcom/sec/daliviews/graphics/DisplayList;

    invoke-virtual {v2, v0}, Lcom/sec/daliviews/graphics/DisplayList;->Push(Lcom/sec/daliviews/graphics/DisplayList$Op;)V

    invoke-super {p0, p1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0
.end method

.method public resumeRender()V
    .locals 0

    return-void
.end method

.method public save()I
    .locals 5

    iget-boolean v3, p0, Lcom/sec/daliviews/views/Canvas;->renderInternally:Z

    if-eqz v3, :cond_0

    invoke-super {p0}, Landroid/graphics/Canvas;->save()I

    move-result v2

    :goto_0
    return v2

    :cond_0
    iget-object v3, p0, Lcom/sec/daliviews/views/Canvas;->r0:Landroid/graphics/Rect;

    invoke-super {p0, v3}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v1

    invoke-super {p0}, Landroid/graphics/Canvas;->save()I

    move-result v2

    iget-object v3, p0, Lcom/sec/daliviews/views/Canvas;->mDisplayList:Lcom/sec/daliviews/graphics/DisplayList;

    invoke-virtual {v3}, Lcom/sec/daliviews/graphics/DisplayList;->GetNextOp()Lcom/sec/daliviews/graphics/DisplayList$Op;

    move-result-object v0

    sget-object v3, Lcom/sec/daliviews/graphics/DisplayList$OpType;->kSave:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    iput-object v3, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mOpType:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    iget-object v3, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/sec/daliviews/views/Canvas;->r0:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iput v2, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mSaveId:I

    iget-object v3, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mMatrix:Landroid/graphics/Matrix;

    invoke-super {p0, v3}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    iget-object v3, p0, Lcom/sec/daliviews/views/Canvas;->mDisplayList:Lcom/sec/daliviews/graphics/DisplayList;

    invoke-virtual {v3, v0}, Lcom/sec/daliviews/graphics/DisplayList;->Push(Lcom/sec/daliviews/graphics/DisplayList$Op;)V

    goto :goto_0
.end method

.method public save(I)I
    .locals 1

    invoke-super {p0, p1}, Landroid/graphics/Canvas;->save(I)I

    move-result v0

    return v0
.end method

.method public saveLayer(FFFFLandroid/graphics/Paint;I)I
    .locals 1

    invoke-super/range {p0 .. p6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v0

    return v0
.end method

.method public saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    move-result v0

    return v0
.end method

.method public saveLayerAlpha(FFFFII)I
    .locals 1

    invoke-super/range {p0 .. p6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    move-result v0

    return v0
.end method

.method public saveLayerAlpha(Landroid/graphics/RectF;II)I
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    move-result v0

    return v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/sec/daliviews/views/Canvas;->renderInternally:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setDensity(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/graphics/Canvas;->setDensity(I)V

    return-void
.end method

.method public setDrawFilter(Landroid/graphics/DrawFilter;)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/daliviews/views/Canvas;->renderInternally:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    goto :goto_0
.end method

.method public setScreenDensity(I)V
    .locals 0

    return-void
.end method

.method public setSize(II)V
    .locals 2

    const/4 v1, 0x0

    iput p1, p0, Lcom/sec/daliviews/views/Canvas;->mWidth:I

    iput p2, p0, Lcom/sec/daliviews/views/Canvas;->mHeight:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v1, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-super {p0, v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    return-void
.end method

.method public setViewport(II)V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/sec/daliviews/views/Canvas;->mDisplayList:Lcom/sec/daliviews/graphics/DisplayList;

    invoke-virtual {v1}, Lcom/sec/daliviews/graphics/DisplayList;->GetNextOp()Lcom/sec/daliviews/graphics/DisplayList$Op;

    move-result-object v0

    sget-object v1, Lcom/sec/daliviews/graphics/DisplayList$OpType;->kSetViewport:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    iput-object v1, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mOpType:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    iget-object v1, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v2, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Lcom/sec/daliviews/views/Canvas;->mDisplayList:Lcom/sec/daliviews/graphics/DisplayList;

    invoke-virtual {v1, v0}, Lcom/sec/daliviews/graphics/DisplayList;->Push(Lcom/sec/daliviews/graphics/DisplayList$Op;)V

    return-void
.end method

.method public translate(FF)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

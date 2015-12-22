.class public Lcom/sec/daliviews/graphics/DisplayList$Op;
.super Lcom/sec/daliviews/utils/IPoolable;
.source "DisplayList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/daliviews/graphics/DisplayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Op"
.end annotation


# instance fields
.field public mBitmap:Landroid/graphics/Bitmap;

.field public mBitmapAdded:Z

.field public mColor:I

.field public mContainCenter:Z

.field public mData:[B

.field final mIdentityMatrix:Landroid/graphics/Matrix;

.field public mIsMutable:Z

.field public mIsNinePatch:Z

.field public mMatrix:Landroid/graphics/Matrix;

.field public mNativeBitmap:J

.field public mNativeBitmapHandle:J

.field public mNativeSkiaObject:J

.field public mNativeTextureAtlas:I

.field public mOpType:Lcom/sec/daliviews/graphics/DisplayList$OpType;

.field public mPaint:Landroid/graphics/Paint;

.field public mRect:Landroid/graphics/RectF;

.field public mRectDst:Landroid/graphics/Rect;

.field public mRectSrc:Landroid/graphics/Rect;

.field public mRx:F

.field public mRy:F

.field public mSaveCount:I

.field public mSaveId:I

.field public mStartAngle:F

.field public mSweepAngle:F

.field public mText:Ljava/lang/String;

.field public mViewport:Landroid/graphics/Rect;

.field public mX:F

.field public mY:F

.field final synthetic this$0:Lcom/sec/daliviews/graphics/DisplayList;


# direct methods
.method public constructor <init>(Lcom/sec/daliviews/graphics/DisplayList;)V
    .locals 7

    const/4 v6, -0x1

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/sec/daliviews/graphics/DisplayList$Op;->this$0:Lcom/sec/daliviews/graphics/DisplayList;

    invoke-direct {p0}, Lcom/sec/daliviews/utils/IPoolable;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mMatrix:Landroid/graphics/Matrix;

    iput-object v3, p0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mBitmap:Landroid/graphics/Bitmap;

    iput-wide v4, p0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mNativeBitmap:J

    iput-wide v4, p0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mNativeBitmapHandle:J

    iput v1, p0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mNativeTextureAtlas:I

    iput-wide v4, p0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mNativeSkiaObject:J

    iput v2, p0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mX:F

    iput v2, p0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mY:F

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mRect:Landroid/graphics/RectF;

    iput v6, p0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mSaveId:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mPaint:Landroid/graphics/Paint;

    iput v6, p0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mColor:I

    iput-object v3, p0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mText:Ljava/lang/String;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mViewport:Landroid/graphics/Rect;

    sget-object v0, Lcom/sec/daliviews/graphics/DisplayList$OpType;->kNone:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    iput-object v0, p0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mOpType:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mRectDst:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mRectSrc:Landroid/graphics/Rect;

    iput v2, p0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mStartAngle:F

    const/high16 v0, 0x43b40000    # 360.0f

    iput v0, p0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mSweepAngle:F

    iput-boolean v1, p0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mContainCenter:Z

    iput-boolean v1, p0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mIsNinePatch:Z

    iput-object v3, p0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mData:[B

    iput v1, p0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mSaveCount:I

    iput-boolean v1, p0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mIsMutable:Z

    iput-boolean v1, p0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mBitmapAdded:Z

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mIdentityMatrix:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public DrawColor(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 0

    return-void
.end method

.method public GetMatrix()Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public SetBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public SetBitmapSizing(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mRectSrc:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mRectDst:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mRectSrc:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mRectDst:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1
.end method

.method public SetClipRect(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public SetClipRect(Landroid/graphics/RectF;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method

.method public SetColor(I)V
    .locals 0

    iput p1, p0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mColor:I

    return-void
.end method

.method public SetMatrix(Landroid/graphics/Matrix;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public SetPaint(Landroid/graphics/Paint;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    iget-object v0, p0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method public SetText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mText:Ljava/lang/String;

    return-void
.end method

.method public SetViewport(II)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public drawColor(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 0

    return-void
.end method

.method public drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 0

    return-void
.end method

.method public drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    .locals 0

    return-void
.end method

.method public onAlloc()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/daliviews/graphics/DisplayList$Op;->onReset()V

    return-void
.end method

.method public onDealloc()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/daliviews/graphics/DisplayList$Op;->onReset()V

    return-void
.end method

.method public onReset()V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mIdentityMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iput-object v4, p0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mRectSrc:Landroid/graphics/Rect;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mRectDst:Landroid/graphics/Rect;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    iput-wide v6, p0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mNativeBitmapHandle:J

    iput-wide v6, p0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mNativeBitmap:J

    iput-wide v6, p0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mNativeSkiaObject:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mColor:I

    iput-object v4, p0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mText:Ljava/lang/String;

    iput-object v4, p0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mData:[B

    iput-boolean v2, p0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mIsNinePatch:Z

    return-void
.end method

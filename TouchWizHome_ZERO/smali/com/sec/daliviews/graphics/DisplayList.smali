.class public Lcom/sec/daliviews/graphics/DisplayList;
.super Ljava/lang/Object;
.source "DisplayList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/daliviews/graphics/DisplayList$UnknownBitmapCache;,
        Lcom/sec/daliviews/graphics/DisplayList$Op;,
        Lcom/sec/daliviews/graphics/DisplayList$OpType;
    }
.end annotation


# static fields
.field private static final sAtlasLocker:Ljava/lang/Object;


# instance fields
.field mBitmapText:Lcom/sec/daliviews/views/BitmapText;

.field private mClipHeight:I

.field private mClipWidth:I

.field mCustomDataCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mIsRecording:Z

.field private mNativeOpStructSize:I

.field mNativePaintField:Ljava/lang/reflect/Field;

.field private mNativePtr:J

.field mOps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/daliviews/graphics/DisplayList$Op;",
            ">;"
        }
    .end annotation
.end field

.field final mPool:Lcom/sec/daliviews/utils/SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/daliviews/utils/SynchronizedPool",
            "<",
            "Lcom/sec/daliviews/graphics/DisplayList$Op;",
            ">;"
        }
    .end annotation
.end field

.field mUnknownBitmapCache:Lcom/sec/daliviews/graphics/DisplayList$UnknownBitmapCache;

.field sSkBitmapField:Ljava/lang/reflect/Field;

.field sTiledTextureAtlas:Lcom/sec/daliviews/experimental/AndroidTextureAtlas;

.field unknownBitmapHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/daliviews/graphics/DisplayList;->sAtlasLocker:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lcom/sec/daliviews/graphics/DisplayList;->mClipWidth:I

    iput v3, p0, Lcom/sec/daliviews/graphics/DisplayList;->mClipHeight:I

    new-instance v0, Lcom/sec/daliviews/utils/SynchronizedPool;

    const-class v1, Lcom/sec/daliviews/graphics/DisplayList$Op;

    const/16 v2, 0x400

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/daliviews/utils/SynchronizedPool;-><init>(Ljava/lang/Object;Ljava/lang/Class;I)V

    iput-object v0, p0, Lcom/sec/daliviews/graphics/DisplayList;->mPool:Lcom/sec/daliviews/utils/SynchronizedPool;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/graphics/DisplayList;->mOps:Ljava/util/ArrayList;

    iput-boolean v3, p0, Lcom/sec/daliviews/graphics/DisplayList;->mIsRecording:Z

    iput-object v4, p0, Lcom/sec/daliviews/graphics/DisplayList;->sSkBitmapField:Ljava/lang/reflect/Field;

    new-instance v0, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;

    invoke-direct {v0, v4}, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/daliviews/graphics/DisplayList;->sTiledTextureAtlas:Lcom/sec/daliviews/experimental/AndroidTextureAtlas;

    new-instance v0, Lcom/sec/daliviews/views/BitmapText;

    invoke-direct {v0}, Lcom/sec/daliviews/views/BitmapText;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/graphics/DisplayList;->mBitmapText:Lcom/sec/daliviews/views/BitmapText;

    iput-wide v6, p0, Lcom/sec/daliviews/graphics/DisplayList;->mNativePtr:J

    iput v3, p0, Lcom/sec/daliviews/graphics/DisplayList;->mNativeOpStructSize:I

    new-instance v0, Lcom/sec/daliviews/graphics/DisplayList$UnknownBitmapCache;

    invoke-direct {v0, p0}, Lcom/sec/daliviews/graphics/DisplayList$UnknownBitmapCache;-><init>(Lcom/sec/daliviews/graphics/DisplayList;)V

    iput-object v0, p0, Lcom/sec/daliviews/graphics/DisplayList;->mUnknownBitmapCache:Lcom/sec/daliviews/graphics/DisplayList$UnknownBitmapCache;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/graphics/DisplayList;->unknownBitmapHashMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/graphics/DisplayList;->mCustomDataCache:Ljava/util/ArrayList;

    iput-object v4, p0, Lcom/sec/daliviews/graphics/DisplayList;->mNativePaintField:Ljava/lang/reflect/Field;

    invoke-static {}, Lcom/sec/daliviews/graphics/DisplayList;->nCreate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/daliviews/graphics/DisplayList;->mNativePtr:J

    iget-wide v0, p0, Lcom/sec/daliviews/graphics/DisplayList;->mNativePtr:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sec/daliviews/graphics/DisplayList;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/sec/daliviews/graphics/DisplayList;->nGetNativeOpStructSize(J)I

    move-result v0

    iput v0, p0, Lcom/sec/daliviews/graphics/DisplayList;->mNativeOpStructSize:I

    iget-wide v0, p0, Lcom/sec/daliviews/graphics/DisplayList;->mNativePtr:J

    iget-object v2, p0, Lcom/sec/daliviews/graphics/DisplayList;->sTiledTextureAtlas:Lcom/sec/daliviews/experimental/AndroidTextureAtlas;

    invoke-virtual {v2}, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->getNativePtr()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/sec/daliviews/graphics/DisplayList;->nSetNativeTextureAtlas(JJ)V

    :cond_0
    return-void
.end method

.method private flushBatch(Ljava/util/ArrayList;)V
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/daliviews/graphics/DisplayList$Op;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/daliviews/graphics/DisplayList;->mNativePaintField:Ljava/lang/reflect/Field;

    if-nez v2, :cond_0

    :try_start_0
    new-instance v26, Landroid/graphics/Paint;

    invoke-direct/range {v26 .. v26}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v2, "mNativePaint"

    invoke-virtual {v8, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/daliviews/graphics/DisplayList;->mNativePaintField:Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/daliviews/graphics/DisplayList;->mNativeOpStructSize:I

    mul-int v22, v2, v3

    invoke-static/range {v22 .. v22}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v12

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v14

    const/16 v2, 0x80

    new-array v0, v2, [F

    move-object/from16 v24, v0

    const/16 v2, 0x80

    new-array v0, v2, [I

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/daliviews/graphics/DisplayList;->mCustomDataCache:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v9, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/sec/daliviews/graphics/DisplayList$Op;

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Paint$Style;->ordinal()I

    move-result v17

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v16

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->getValues([F)V

    const/16 v15, 0x8

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    aput v2, v24, v15

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    aput v2, v24, v15

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    aput v2, v24, v15

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    aput v2, v24, v15

    add-int/lit8 v15, v15, 0x1

    aput v16, v24, v15

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v19

    iget v2, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mStartAngle:F

    aput v2, v24, v15

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v19

    iget v2, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mSweepAngle:F

    aput v2, v24, v15

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v19

    iget v2, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mRx:F

    aput v2, v24, v15

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v19

    iget v2, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mRy:F

    aput v2, v24, v15

    const/4 v2, 0x0

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v12, v0, v2, v15}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    invoke-virtual {v12}, Ljava/nio/FloatBuffer;->position()I

    move-result v2

    invoke-virtual {v14, v2}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v15, -0x1

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v19

    iget v2, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mColor:I

    aput v2, v25, v15

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mViewport:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    aput v2, v25, v15

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mViewport:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    aput v2, v25, v15

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mViewport:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    aput v2, v25, v15

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mViewport:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    aput v2, v25, v15

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mOpType:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    invoke-virtual {v2}, Lcom/sec/daliviews/graphics/DisplayList$OpType;->getValue()I

    move-result v2

    aput v2, v25, v15

    add-int/lit8 v15, v15, 0x1

    aput v17, v25, v15

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mRectSrc:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    aput v2, v25, v15

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mRectSrc:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    aput v2, v25, v15

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mRectSrc:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    aput v2, v25, v15

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mRectSrc:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    aput v2, v25, v15

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mRectDst:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    aput v2, v25, v15

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mRectDst:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    aput v2, v25, v15

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mRectDst:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    aput v2, v25, v15

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mRectDst:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    aput v2, v25, v15

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v19

    iget v2, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mSaveId:I

    aput v2, v25, v15

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v19

    iget-boolean v2, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mIsMutable:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_2
    aput v2, v25, v15

    aget v3, v25, v15

    move-object/from16 v0, v19

    iget-boolean v2, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mBitmapAdded:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    :goto_3
    or-int/2addr v2, v3

    aput v2, v25, v15

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mData:[B

    if-eqz v2, :cond_4

    add-int/lit8 v15, v15, 0x1

    aput v9, v25, v15

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mData:[B

    array-length v2, v2

    aput v2, v25, v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/daliviews/graphics/DisplayList;->mCustomDataCache:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mData:[B

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mData:[B

    array-length v2, v2

    add-int/2addr v9, v2

    :goto_4
    move-object/from16 v0, v19

    iget-wide v2, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mNativeBitmap:J

    long-to-int v2, v2

    and-int/lit8 v18, v2, -0x1

    move-object/from16 v0, v19

    iget-wide v2, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mNativeBitmap:J

    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    long-to-int v2, v2

    and-int/lit8 v23, v2, -0x1

    add-int/lit8 v15, v15, 0x1

    aput v18, v25, v15

    add-int/lit8 v15, v15, 0x1

    aput v23, v25, v15

    move-object/from16 v0, v19

    iget-wide v2, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mNativeBitmapHandle:J

    long-to-int v2, v2

    and-int/lit8 v18, v2, -0x1

    move-object/from16 v0, v19

    iget-wide v2, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mNativeBitmapHandle:J

    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    long-to-int v2, v2

    and-int/lit8 v23, v2, -0x1

    add-int/lit8 v15, v15, 0x1

    aput v18, v25, v15

    add-int/lit8 v15, v15, 0x1

    aput v23, v25, v15

    move-object/from16 v0, v19

    iget-wide v2, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mNativeSkiaObject:J

    long-to-int v2, v2

    and-int/lit8 v18, v2, -0x1

    move-object/from16 v0, v19

    iget-wide v2, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mNativeSkiaObject:J

    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    long-to-int v2, v2

    and-int/lit8 v23, v2, -0x1

    add-int/lit8 v15, v15, 0x1

    aput v18, v25, v15

    add-int/lit8 v15, v15, 0x1

    aput v23, v25, v15

    const-wide/16 v20, 0x0

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mPaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_1

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/daliviews/graphics/DisplayList;->mNativePaintField:Ljava/lang/reflect/Field;

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v20

    :cond_1
    :goto_5
    move-wide/from16 v0, v20

    long-to-int v2, v0

    and-int/lit8 v18, v2, -0x1

    const/16 v2, 0x20

    ushr-long v2, v20, v2

    long-to-int v2, v2

    and-int/lit8 v23, v2, -0x1

    add-int/lit8 v15, v15, 0x1

    aput v18, v25, v15

    add-int/lit8 v15, v15, 0x1

    aput v23, v25, v15

    add-int/lit8 v15, v15, 0x1

    const/4 v2, 0x0

    aput v2, v25, v15

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v19

    iget-boolean v2, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mContainCenter:Z

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    :goto_6
    aput v2, v25, v15

    const/4 v2, 0x0

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v14, v0, v2, v15}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    invoke-virtual {v14}, Ljava/nio/IntBuffer;->position()I

    move-result v2

    invoke-virtual {v12, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_1

    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_4
    add-int/lit8 v15, v15, 0x1

    const/4 v2, 0x0

    aput v2, v25, v15

    add-int/lit8 v15, v15, 0x1

    const/4 v2, 0x0

    aput v2, v25, v15

    goto/16 :goto_4

    :cond_5
    const/4 v2, 0x0

    goto :goto_6

    :cond_6
    invoke-virtual {v12}, Ljava/nio/FloatBuffer;->position()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v11

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/daliviews/graphics/DisplayList;->mCustomDataCache:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    invoke-virtual {v6, v10}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_7

    :cond_7
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/sec/daliviews/graphics/DisplayList;->mNativePtr:J

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    invoke-static/range {v2 .. v7}, Lcom/sec/daliviews/graphics/DisplayList;->nPostNativeDisplayList(JLjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;I)V

    return-void

    :catch_0
    move-exception v2

    goto/16 :goto_5

    :catch_1
    move-exception v2

    goto/16 :goto_0
.end method

.method private static native nCreate()J
.end method

.method private static native nGetNativeOpStructSize(J)I
.end method

.method private static native nPostNativeDisplayList(JLjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;I)V
.end method

.method private static native nSetNativeTextureAtlas(JJ)V
.end method


# virtual methods
.method public GetNativePtr()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/daliviews/graphics/DisplayList;->mNativePtr:J

    return-wide v0
.end method

.method public GetNextOp()Lcom/sec/daliviews/graphics/DisplayList$Op;
    .locals 1

    iget-boolean v0, p0, Lcom/sec/daliviews/graphics/DisplayList;->mIsRecording:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/graphics/DisplayList;->mPool:Lcom/sec/daliviews/utils/SynchronizedPool;

    invoke-virtual {v0}, Lcom/sec/daliviews/utils/SynchronizedPool;->Alloc()Lcom/sec/daliviews/utils/IPoolable;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/graphics/DisplayList$Op;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public GetSize()I
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/graphics/DisplayList;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public Prepare(II)V
    .locals 32

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/daliviews/graphics/DisplayList;->mClipWidth:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/daliviews/graphics/DisplayList;->mClipHeight:I

    const/4 v11, 0x0

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/daliviews/graphics/DisplayList;->mBitmapText:Lcom/sec/daliviews/views/BitmapText;

    iget-object v4, v4, Lcom/sec/daliviews/views/BitmapText;->mTextCache:Lcom/sec/daliviews/views/BitmapText$TextCache;

    invoke-virtual {v4}, Lcom/sec/daliviews/views/BitmapText$TextCache;->swapBuffers()V

    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    new-instance v30, Landroid/graphics/Paint;

    invoke-direct/range {v30 .. v30}, Landroid/graphics/Paint;-><init>()V

    const/16 v4, 0x9

    new-array v0, v4, [F

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/daliviews/graphics/DisplayList;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :cond_0
    :goto_0
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/sec/daliviews/graphics/DisplayList$Op;

    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mOpType:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    sget-object v5, Lcom/sec/daliviews/graphics/DisplayList$OpType;->kSetClip:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    if-ne v4, v5, :cond_1

    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, v28

    iget-object v5, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/daliviews/graphics/DisplayList;->mClipWidth:I

    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, v28

    iget-object v5, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/daliviews/graphics/DisplayList;->mClipHeight:I

    :cond_1
    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mOpType:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    sget-object v5, Lcom/sec/daliviews/graphics/DisplayList$OpType;->kDrawText:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    if-ne v4, v5, :cond_3

    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-lt v4, v5, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/daliviews/graphics/DisplayList;->mBitmapText:Lcom/sec/daliviews/views/BitmapText;

    move-object/from16 v0, v28

    iget-object v5, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mText:Ljava/lang/String;

    move-object/from16 v0, v28

    iget-object v6, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5, v6}, Lcom/sec/daliviews/views/BitmapText;->getBitmapNativeHandle(Ljava/lang/String;Landroid/graphics/Paint;)J

    move-result-wide v18

    const-wide/16 v4, 0x0

    cmp-long v4, v18, v4

    if-nez v4, :cond_2

    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mRectDst:Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/daliviews/graphics/DisplayList;->mBitmapText:Lcom/sec/daliviews/views/BitmapText;

    move-object/from16 v0, v28

    iget-object v5, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mText:Ljava/lang/String;

    move-object/from16 v0, v28

    iget-object v6, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v28

    iget-object v7, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mRect:Landroid/graphics/RectF;

    move-object/from16 v0, v28

    iget v8, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mX:F

    move-object/from16 v0, v28

    iget v9, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mY:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/daliviews/graphics/DisplayList;->mClipWidth:I

    invoke-virtual/range {v4 .. v10}, Lcom/sec/daliviews/views/BitmapText;->createBitmapFromText(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/RectF;FFI)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/daliviews/graphics/DisplayList;->sTiledTextureAtlas:Lcom/sec/daliviews/experimental/AndroidTextureAtlas;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/daliviews/graphics/DisplayList;->mBitmapText:Lcom/sec/daliviews/views/BitmapText;

    invoke-virtual {v5}, Lcom/sec/daliviews/views/BitmapText;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/daliviews/graphics/DisplayList;->mBitmapText:Lcom/sec/daliviews/views/BitmapText;

    invoke-virtual {v8}, Lcom/sec/daliviews/views/BitmapText;->getWidth()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/daliviews/graphics/DisplayList;->mBitmapText:Lcom/sec/daliviews/views/BitmapText;

    invoke-virtual {v9}, Lcom/sec/daliviews/views/BitmapText;->getHeight()I

    move-result v9

    const/4 v10, 0x1

    invoke-virtual/range {v4 .. v10}, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->addSubBitmapNativePtr(Landroid/graphics/Bitmap;IIIIZ)J

    move-result-wide v18

    const/4 v11, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, v28

    iput-boolean v4, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mBitmapAdded:Z

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/daliviews/graphics/DisplayList;->mBitmapText:Lcom/sec/daliviews/views/BitmapText;

    iget-object v4, v4, Lcom/sec/daliviews/views/BitmapText;->mTextCache:Lcom/sec/daliviews/views/BitmapText$TextCache;

    move-object/from16 v0, v28

    iget-object v5, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mText:Ljava/lang/String;

    move-object/from16 v0, v28

    iget-object v6, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mPaint:Landroid/graphics/Paint;

    move-wide/from16 v0, v18

    invoke-virtual {v4, v5, v6, v0, v1}, Lcom/sec/daliviews/views/BitmapText$TextCache;->putBitmapNativeHandle(Ljava/lang/String;Landroid/graphics/Paint;J)V

    move-wide/from16 v0, v18

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sec/daliviews/graphics/DisplayList$Op;->mNativeBitmapHandle:J

    :cond_3
    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mOpType:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    sget-object v5, Lcom/sec/daliviews/graphics/DisplayList$OpType;->kDrawUnknownBitmap:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    if-ne v4, v5, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/daliviews/graphics/DisplayList;->unknownBitmapHashMap:Ljava/util/HashMap;

    move-object/from16 v0, v28

    iget-object v5, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/graphics/Bitmap;

    if-nez v15, :cond_8

    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mRectDst:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v28

    iget-object v5, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mRectDst:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int v31, v4, v5

    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mRectDst:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v28

    iget-object v5, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mRectDst:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    neg-int v0, v4

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/daliviews/graphics/DisplayList;->mUnknownBitmapCache:Lcom/sec/daliviews/graphics/DisplayList$UnknownBitmapCache;

    const/4 v5, 0x0

    move/from16 v0, v31

    move/from16 v1, v24

    invoke-virtual {v4, v0, v1, v5}, Lcom/sec/daliviews/graphics/DisplayList$UnknownBitmapCache;->getResizedCanvas(IIZ)Landroid/graphics/Canvas;

    move-result-object v14

    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    move-object/from16 v0, v28

    iget-object v6, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mRectDst:Landroid/graphics/Rect;

    const/4 v7, 0x0

    invoke-virtual {v14, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/daliviews/graphics/DisplayList;->unknownBitmapHashMap:Ljava/util/HashMap;

    move-object/from16 v0, v28

    iget-object v5, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/daliviews/graphics/DisplayList;->mUnknownBitmapCache:Lcom/sec/daliviews/graphics/DisplayList$UnknownBitmapCache;

    iget-object v6, v6, Lcom/sec/daliviews/graphics/DisplayList$UnknownBitmapCache;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/daliviews/graphics/DisplayList;->mUnknownBitmapCache:Lcom/sec/daliviews/graphics/DisplayList$UnknownBitmapCache;

    iget-object v4, v4, Lcom/sec/daliviews/graphics/DisplayList$UnknownBitmapCache;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, v28

    iput-object v4, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mBitmap:Landroid/graphics/Bitmap;

    :goto_1
    const/4 v4, -0x1

    move-object/from16 v0, v28

    iput v4, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mColor:I

    sget-object v4, Lcom/sec/daliviews/graphics/DisplayList$OpType;->kDrawBitmap:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    move-object/from16 v0, v28

    iput-object v4, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mOpType:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    :cond_4
    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_7

    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v26

    if-eqz v26, :cond_9

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v27, v0

    :goto_2
    const/16 v16, 0x0

    if-eqz v27, :cond_5

    invoke-static/range {v27 .. v27}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/daliviews/graphics/DisplayList;->sTiledTextureAtlas:Lcom/sec/daliviews/experimental/AndroidTextureAtlas;

    move-object/from16 v0, v28

    iget-object v5, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, v28

    iget-boolean v6, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mIsMutable:Z

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v4, v5, v6, v0, v1}, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->getAddBitmapNativeHandle(Landroid/graphics/Bitmap;ZLjava/nio/ByteBuffer;I)[J

    move-result-object v20

    check-cast v20, [J

    const/4 v4, 0x0

    aget-wide v18, v20, v4

    const/4 v4, 0x1

    aget-wide v22, v20, v4

    move-wide/from16 v0, v18

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sec/daliviews/graphics/DisplayList$Op;->mNativeBitmapHandle:J

    const-string v4, "JATLAS jv "

    const-string v5, "Bitmap: 0x%x will update..."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, v28

    iget-wide v8, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mNativeBitmapHandle:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0xc

    and-long v4, v4, v22

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    const-wide/16 v4, 0x1

    cmp-long v4, v22, v4

    if-nez v4, :cond_6

    const/4 v11, 0x1

    :cond_6
    move-object/from16 v0, v28

    iput-boolean v11, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mBitmapAdded:Z

    :cond_7
    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, v28

    iput-object v15, v0, Lcom/sec/daliviews/graphics/DisplayList$Op;->mBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_1

    :cond_9
    const/16 v27, 0x0

    goto :goto_2

    :cond_a
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/sec/daliviews/graphics/DisplayList;->flushBatch(Ljava/util/ArrayList;)V

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    :cond_b
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/daliviews/graphics/DisplayList;->mBitmapText:Lcom/sec/daliviews/views/BitmapText;

    iget-object v4, v4, Lcom/sec/daliviews/views/BitmapText;->mTextCache:Lcom/sec/daliviews/views/BitmapText$TextCache;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/sec/daliviews/views/BitmapText$TextCache;->getRedundantBitmapHandles(Ljava/util/ArrayList;)V

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_3
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/daliviews/graphics/DisplayList;->sTiledTextureAtlas:Lcom/sec/daliviews/experimental/AndroidTextureAtlas;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->releaseNativeBitmapHandle(J)V

    goto :goto_3

    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/daliviews/graphics/DisplayList;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/daliviews/graphics/DisplayList;->mPool:Lcom/sec/daliviews/utils/SynchronizedPool;

    invoke-virtual {v4}, Lcom/sec/daliviews/utils/SynchronizedPool;->Rollback()V

    return-void
.end method

.method public Push(Lcom/sec/daliviews/graphics/DisplayList$Op;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/graphics/DisplayList;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public Start()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/daliviews/graphics/DisplayList;->mIsRecording:Z

    iget-object v0, p0, Lcom/sec/daliviews/graphics/DisplayList;->mPool:Lcom/sec/daliviews/utils/SynchronizedPool;

    invoke-virtual {v0}, Lcom/sec/daliviews/utils/SynchronizedPool;->Mark()V

    return-void
.end method

.method public Stop()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/daliviews/graphics/DisplayList;->mIsRecording:Z

    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/graphics/DisplayList;->unknownBitmapHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/sec/daliviews/graphics/DisplayList;->sTiledTextureAtlas:Lcom/sec/daliviews/experimental/AndroidTextureAtlas;

    invoke-virtual {v0}, Lcom/sec/daliviews/experimental/AndroidTextureAtlas;->clearAtlas()V

    new-instance v0, Lcom/sec/daliviews/views/BitmapText;

    invoke-direct {v0}, Lcom/sec/daliviews/views/BitmapText;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/graphics/DisplayList;->mBitmapText:Lcom/sec/daliviews/views/BitmapText;

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public pauseRender()V
    .locals 0

    return-void
.end method

.method public resumeRender()V
    .locals 0

    return-void
.end method

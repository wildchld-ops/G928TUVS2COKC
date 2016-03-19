.class public Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;
.super Ljava/lang/Object;
.source "CalligraphyEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/dmc/calligraphyengine/CalligraphyEngine$DrawStyle;,
        Lcom/sec/dmc/calligraphyengine/CalligraphyEngine$SigStyle;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$sec$dmc$calligraphyengine$CalligraphyEngine$SigStyle:[I = null

.field private static final TOUCH_TOLERANCE:I = 0x6

.field static mInstance:Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;

.field private static offset:I


# instance fields
.field private Countlen:I

.field private VELOCITY_FILTER_WEIGHT:F

.field private bButtonDown:Z

.field private bConstWidth:Z

.field private bDirectional:Z

.field private bDrawToCanvas:Z

.field private bFirst:I

.field private bHasMoved:Z

.field private bInitWidthVarRatio:Z

.field private bIsDown:Z

.field bNewParentView:Z

.field private bSpeedAndPressure:Z

.field private bSqureBrush:Z

.field circlePath:Landroid/graphics/Path;

.field private circleTriangles:[F

.field private contourResultCalligraphy:[F

.field private currentEndPoint:Landroid/graphics/Point;

.field private currentEndPointPressure:F

.field private currentPressure:F

.field private currentWidth:F

.field private d_speedMax_speedMin:F

.field private drawStyle:Lcom/sec/dmc/calligraphyengine/CalligraphyEngine$DrawStyle;

.field private endWidth:F

.field private fmBezierPressure:F

.field private fmXBezier:I

.field private fmYBezier:I

.field private fullPath:Landroid/graphics/Path;

.field private g_dpi:F

.field private g_step:F

.field private handler:Landroid/os/Handler;

.field private isEndBrush:Z

.field private isFading:Z

.field private isFinger:Z

.field private isRealStartBrush:Z

.field private isStartBrush:Z

.field private ismove:Z

.field private lastDrawPoint:Landroid/graphics/Point;

.field private lastDrawPointPressure:F

.field private lastPressure:F

.field private lastVelocity:F

.field private lastWidth:F

.field private linePath:Landroid/graphics/Path;

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mBackgroundBitmap:Landroid/graphics/Bitmap;

.field private mBakBitmap:Landroid/graphics/Bitmap;

.field private mBakCanvas:Landroid/graphics/Canvas;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapPaint:Landroid/graphics/Paint;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mDefaultColor:I

.field private mFadingColorValue:F

.field private mFadingPaint:Landroid/graphics/Paint;

.field private mGlHeight:I

.field private mHeight:I

.field private mLinePaint:Landroid/graphics/Paint;

.field private mPaint:Landroid/graphics/Paint;

.field private mParentView:Landroid/view/View;

.field private mPointData:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPointDataPressure:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mPressure:F

.field private mPrvPointX:F

.field private mPrvPointY:F

.field private mRenderDataCalligraphy:[F

.field private mRenderDataCalligraphyLength:I

.field private mSpeedMax:F

.field private mSpeedMin:F

.field private mWidth:I

.field private m_bNeedClearCommand:Z

.field private m_fadingDelayTime:F

.field private m_fadingInitAlpha:F

.field private m_fadingTotalTime:F

.field private m_lastEventTime:J

.field private m_lastX:I

.field private m_lastY:I

.field private m_viewPosition:[I

.field private midControlPoint:Landroid/graphics/Point;

.field private midControlPointPressure:F

.field private myendwidth:F

.field private nBottom:I

.field private nLeft:I

.field private nPointNumberCalligraphy:I

.field private nRight:I

.field private nTop:I

.field private nWidth:I

.field private originalRect:Landroid/graphics/Rect;

.field private pathCount:I

.field private pathRect:Landroid/graphics/Rect;

.field private prevWidthNum:I

.field private prevWidths:[F

.field raindropPath:Landroid/graphics/Path;

.field private raindropTriangles:[F

.field roughRainDropPath:Landroid/graphics/Path;

.field private roughRainDropTriangles:[F

.field semiCirclePath:Landroid/graphics/Path;

.field private semiCircleTriangles:[F

.field private startFadingTime:J

.field private startWidth:F

.field private startX:F

.field private startY:F

.field tmpMatrix:Landroid/graphics/Matrix;

.field tmpPath:Landroid/graphics/Path;


# direct methods
.method static synthetic $SWITCH_TABLE$com$sec$dmc$calligraphyengine$CalligraphyEngine$SigStyle()[I
    .locals 3

    sget-object v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->$SWITCH_TABLE$com$sec$dmc$calligraphyengine$CalligraphyEngine$SigStyle:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine$SigStyle;->values()[Lcom/sec/dmc/calligraphyengine/CalligraphyEngine$SigStyle;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine$SigStyle;->Calligraphy1:Lcom/sec/dmc/calligraphyengine/CalligraphyEngine$SigStyle;

    invoke-virtual {v1}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine$SigStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine$SigStyle;->Calligraphy2:Lcom/sec/dmc/calligraphyengine/CalligraphyEngine$SigStyle;

    invoke-virtual {v1}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine$SigStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine$SigStyle;->Calligraphy3:Lcom/sec/dmc/calligraphyengine/CalligraphyEngine$SigStyle;

    invoke-virtual {v1}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine$SigStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->$SWITCH_TABLE$com$sec$dmc$calligraphyengine$CalligraphyEngine$SigStyle:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;

    invoke-direct {v0}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;-><init>()V

    sput-object v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mInstance:Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;

    const/16 v0, 0x32

    sput v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->offset:I

    return-void
.end method

.method private constructor <init>()V
    .locals 32

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v26, Landroid/graphics/Paint;

    invoke-direct/range {v26 .. v26}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPaint:Landroid/graphics/Paint;

    new-instance v26, Landroid/graphics/Paint;

    invoke-direct/range {v26 .. v26}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mLinePaint:Landroid/graphics/Paint;

    new-instance v26, Landroid/graphics/Paint;

    invoke-direct/range {v26 .. v26}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mFadingPaint:Landroid/graphics/Paint;

    const/16 v26, 0xa

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nWidth:I

    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mBitmap:Landroid/graphics/Bitmap;

    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mCanvas:Landroid/graphics/Canvas;

    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mBakCanvas:Landroid/graphics/Canvas;

    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mBakBitmap:Landroid/graphics/Bitmap;

    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bButtonDown:Z

    new-instance v26, Ljava/util/Vector;

    invoke-direct/range {v26 .. v26}, Ljava/util/Vector;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPointData:Ljava/util/Vector;

    new-instance v26, Ljava/util/Vector;

    invoke-direct/range {v26 .. v26}, Ljava/util/Vector;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPointDataPressure:Ljava/util/Vector;

    new-instance v26, Landroid/graphics/Rect;

    invoke-direct/range {v26 .. v26}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->pathRect:Landroid/graphics/Rect;

    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->isFinger:Z

    new-instance v26, Landroid/graphics/Point;

    invoke-direct/range {v26 .. v26}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPoint:Landroid/graphics/Point;

    new-instance v26, Landroid/graphics/Point;

    invoke-direct/range {v26 .. v26}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    new-instance v26, Landroid/graphics/Point;

    invoke-direct/range {v26 .. v26}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastVelocity:F

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastWidth:F

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastPressure:F

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentWidth:F

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentPressure:F

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bInitWidthVarRatio:Z

    const v26, 0x3e4ccccd    # 0.2f

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->VELOCITY_FILTER_WEIGHT:F

    const/high16 v26, 0x40800000    # 4.0f

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mSpeedMax:F

    const/high16 v26, 0x3f800000    # 1.0f

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mSpeedMin:F

    const/high16 v26, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mSpeedMax:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mSpeedMin:F

    move/from16 v28, v0

    sub-float v27, v27, v28

    div-float v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->d_speedMax_speedMin:F

    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bFirst:I

    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mParentView:Landroid/view/View;

    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bNewParentView:Z

    new-instance v26, Landroid/os/Handler;

    invoke-direct/range {v26 .. v26}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->handler:Landroid/os/Handler;

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->ismove:Z

    new-instance v26, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct/range {v26 .. v26}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mBitmapPaint:Landroid/graphics/Paint;

    const v26, -0xbbbbbc

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mDefaultColor:I

    const/high16 v26, 0x3f800000    # 1.0f

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mFadingColorValue:F

    const-wide/16 v26, 0x0

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->startFadingTime:J

    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->prevWidths:[F

    const/16 v26, 0xf

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->prevWidthNum:I

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->isFading:Z

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->pathCount:I

    new-instance v26, Landroid/graphics/Path;

    invoke-direct/range {v26 .. v26}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->fullPath:Landroid/graphics/Path;

    new-instance v26, Landroid/graphics/Path;

    invoke-direct/range {v26 .. v26}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->linePath:Landroid/graphics/Path;

    const/16 v26, 0xc8

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->Countlen:I

    const/high16 v26, 0x3f800000    # 1.0f

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->g_step:F

    const/high16 v26, 0x3f800000    # 1.0f

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->g_dpi:F

    const-wide/16 v26, 0x0

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->m_lastEventTime:J

    const/16 v26, 0xa

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mWidth:I

    const/16 v26, 0xa

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mHeight:I

    new-instance v26, Landroid/graphics/Path;

    invoke-direct/range {v26 .. v26}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->raindropPath:Landroid/graphics/Path;

    new-instance v26, Landroid/graphics/Path;

    invoke-direct/range {v26 .. v26}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->roughRainDropPath:Landroid/graphics/Path;

    new-instance v26, Landroid/graphics/Path;

    invoke-direct/range {v26 .. v26}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->circlePath:Landroid/graphics/Path;

    new-instance v26, Landroid/graphics/Path;

    invoke-direct/range {v26 .. v26}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->semiCirclePath:Landroid/graphics/Path;

    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->raindropTriangles:[F

    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->roughRainDropTriangles:[F

    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->circleTriangles:[F

    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->semiCircleTriangles:[F

    new-instance v26, Landroid/graphics/Path;

    invoke-direct/range {v26 .. v26}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->tmpPath:Landroid/graphics/Path;

    new-instance v26, Landroid/graphics/Matrix;

    invoke-direct/range {v26 .. v26}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->tmpMatrix:Landroid/graphics/Matrix;

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->m_bNeedClearCommand:Z

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bIsDown:Z

    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->contourResultCalligraphy:[F

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nPointNumberCalligraphy:I

    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mRenderDataCalligraphy:[F

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mRenderDataCalligraphyLength:I

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bHasMoved:Z

    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bDrawToCanvas:Z

    sget-object v26, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine$DrawStyle;->Raindrop:Lcom/sec/dmc/calligraphyengine/CalligraphyEngine$DrawStyle;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->drawStyle:Lcom/sec/dmc/calligraphyengine/CalligraphyEngine$DrawStyle;

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bSpeedAndPressure:Z

    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bDirectional:Z

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bConstWidth:Z

    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bSqureBrush:Z

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->isStartBrush:Z

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->isRealStartBrush:Z

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->isEndBrush:Z

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->m_viewPosition:[I

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mGlHeight:I

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->m_lastX:I

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->m_lastY:I

    const v26, 0x3f4ccccd    # 0.8f

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->m_fadingInitAlpha:F

    const/high16 v26, 0x44160000    # 600.0f

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->m_fadingTotalTime:F

    const/high16 v26, 0x42a00000    # 80.0f

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->m_fadingDelayTime:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->m_viewPosition:[I

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    aput v28, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->m_viewPosition:[I

    move-object/from16 v26, v0

    const/16 v27, 0x1

    const/16 v28, 0x0

    aput v28, v26, v27

    const/16 v26, 0xc

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v23, v0

    fill-array-data v23, :array_0

    const/16 v26, 0x14

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v22, v0

    fill-array-data v22, :array_1

    const v15, 0x461c4000    # 10000.0f

    const v11, -0x39e3c000    # -10000.0f

    const v16, 0x461c4000    # 10000.0f

    const v12, -0x39e3c000    # -10000.0f

    const/4 v7, 0x0

    :goto_0
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    if-lt v7, v0, :cond_0

    add-float v26, v15, v11

    const/high16 v27, 0x40000000    # 2.0f

    div-float v13, v26, v27

    add-float v26, v16, v12

    const/high16 v27, 0x40000000    # 2.0f

    div-float v14, v26, v27

    const/high16 v26, 0x3f800000    # 1.0f

    sub-float v27, v11, v15

    sub-float v28, v12, v16

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->max(FF)F

    move-result v27

    div-float v24, v26, v27

    const/4 v7, 0x0

    :goto_1
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    if-lt v7, v0, :cond_5

    const/4 v7, 0x0

    :goto_2
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    if-lt v7, v0, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->prevWidthNum:I

    move/from16 v26, v0

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->prevWidths:[F

    const/4 v7, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->prevWidthNum:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-lt v7, v0, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->clear()V

    const v26, -0xffff01

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->setDefaultColor(I)V

    new-instance v26, Landroid/graphics/Paint;

    invoke-direct/range {v26 .. v26}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mBitmapPaint:Landroid/graphics/Paint;

    const/16 v26, 0x0

    aget v26, v22, v26

    const/16 v27, 0x2

    aget v27, v22, v27

    add-float v26, v26, v27

    const/high16 v27, 0x3f000000    # 0.5f

    mul-float v5, v26, v27

    const/16 v26, 0x1

    aget v26, v22, v26

    const/16 v27, 0x3

    aget v27, v22, v27

    add-float v26, v26, v27

    const/high16 v27, 0x3f000000    # 0.5f

    mul-float v6, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->raindropPath:Landroid/graphics/Path;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v8, 0x2

    :goto_4
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x2

    move/from16 v0, v26

    if-lt v8, v0, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->raindropPath:Landroid/graphics/Path;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget v27, v22, v27

    const/16 v28, 0x1

    aget v28, v22, v28

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2, v5, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    const/16 v26, 0x0

    aget v26, v23, v26

    const/16 v27, 0x2

    aget v27, v23, v27

    add-float v26, v26, v27

    const/high16 v27, 0x3f000000    # 0.5f

    mul-float v5, v26, v27

    const/16 v26, 0x1

    aget v26, v23, v26

    const/16 v27, 0x3

    aget v27, v23, v27

    add-float v26, v26, v27

    const/high16 v27, 0x3f000000    # 0.5f

    mul-float v6, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->roughRainDropPath:Landroid/graphics/Path;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v8, 0x2

    :goto_5
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x2

    move/from16 v0, v26

    if-lt v8, v0, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->roughRainDropPath:Landroid/graphics/Path;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget v27, v23, v27

    const/16 v28, 0x1

    aget v28, v23, v28

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2, v5, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    const/16 v20, 0x9

    const/16 v26, 0x12

    move/from16 v0, v26

    new-array v4, v0, [F

    const/4 v7, 0x0

    :goto_6
    array-length v0, v4

    move/from16 v26, v0

    move/from16 v0, v26

    if-lt v7, v0, :cond_a

    array-length v0, v4

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x2

    const/16 v27, 0x0

    aget v27, v4, v27

    aput v27, v4, v26

    array-length v0, v4

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x1

    const/16 v27, 0x1

    aget v27, v4, v27

    aput v27, v4, v26

    const/16 v26, 0x0

    aget v26, v4, v26

    const/16 v27, 0x2

    aget v27, v4, v27

    add-float v26, v26, v27

    const/high16 v27, 0x3f000000    # 0.5f

    mul-float v5, v26, v27

    const/16 v26, 0x1

    aget v26, v4, v26

    const/16 v27, 0x3

    aget v27, v4, v27

    add-float v26, v26, v27

    const/high16 v27, 0x3f000000    # 0.5f

    mul-float v6, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->circlePath:Landroid/graphics/Path;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v8, 0x2

    :goto_7
    array-length v0, v4

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x2

    move/from16 v0, v26

    if-lt v8, v0, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->circlePath:Landroid/graphics/Path;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget v27, v4, v27

    const/16 v28, 0x1

    aget v28, v4, v28

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2, v5, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    const/16 v20, 0x5

    const-wide v26, 0x400921fb54442d18L    # Math.PI

    const/16 v28, 0x8

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v28, v0

    div-double v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    const/high16 v27, 0x3f000000    # 0.5f

    mul-float v21, v26, v27

    const/16 v26, 0xa

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v25, v0

    const/4 v7, 0x0

    :goto_8
    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    if-lt v7, v0, :cond_c

    const/16 v26, 0x0

    aget v26, v4, v26

    const/16 v27, 0x2

    aget v27, v4, v27

    add-float v26, v26, v27

    const/high16 v27, 0x3f000000    # 0.5f

    mul-float v5, v26, v27

    const/16 v26, 0x1

    aget v26, v4, v26

    const/16 v27, 0x3

    aget v27, v4, v27

    add-float v26, v26, v27

    const/high16 v27, 0x3f000000    # 0.5f

    mul-float v6, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->semiCirclePath:Landroid/graphics/Path;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v8, 0x2

    :goto_9
    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x2

    move/from16 v0, v26

    if-lt v8, v0, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->circlePath:Landroid/graphics/Path;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget v27, v4, v27

    const/16 v28, 0x1

    aget v28, v4, v28

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2, v5, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->semiCirclePath:Landroid/graphics/Path;

    move-object/from16 v26, v0

    move/from16 v0, v21

    neg-float v0, v0

    move/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->semiCirclePath:Landroid/graphics/Path;

    move-object/from16 v26, v0

    move/from16 v0, v21

    neg-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->semiCirclePath:Landroid/graphics/Path;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v21

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->semiCirclePath:Landroid/graphics/Path;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v21

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x4

    mul-int/lit8 v26, v26, 0x3

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->raindropTriangles:[F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->raindropTriangles:[F

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->PenTipShapeToTriangles([F[F)V

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x4

    mul-int/lit8 v26, v26, 0x3

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->roughRainDropTriangles:[F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->roughRainDropTriangles:[F

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->PenTipShapeToTriangles([F[F)V

    array-length v0, v4

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x4

    mul-int/lit8 v26, v26, 0x3

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->circleTriangles:[F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->circleTriangles:[F

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v4}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->PenTipShapeToTriangles([F[F)V

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x4

    mul-int/lit8 v26, v26, 0x3

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->semiCircleTriangles:[F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->semiCircleTriangles:[F

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->PenTipShapeToTriangles([F[F)V

    return-void

    :cond_0
    aget v26, v22, v7

    cmpg-float v26, v26, v15

    if-gez v26, :cond_1

    aget v15, v22, v7

    :cond_1
    add-int/lit8 v26, v7, 0x1

    aget v26, v22, v26

    cmpg-float v26, v26, v16

    if-gez v26, :cond_2

    add-int/lit8 v26, v7, 0x1

    aget v16, v22, v26

    :cond_2
    aget v26, v22, v7

    cmpl-float v26, v26, v11

    if-lez v26, :cond_3

    aget v11, v22, v7

    :cond_3
    add-int/lit8 v26, v7, 0x1

    aget v26, v22, v26

    cmpl-float v26, v26, v12

    if-lez v26, :cond_4

    add-int/lit8 v26, v7, 0x1

    aget v12, v22, v26

    :cond_4
    add-int/lit8 v7, v7, 0x2

    goto/16 :goto_0

    :cond_5
    aget v26, v22, v7

    sub-float v26, v26, v13

    aput v26, v22, v7

    aget v26, v22, v7

    mul-float v26, v26, v24

    aput v26, v22, v7

    add-int/lit8 v26, v7, 0x1

    aget v27, v22, v26

    sub-float v27, v27, v14

    aput v27, v22, v26

    add-int/lit8 v26, v7, 0x1

    aget v27, v22, v26

    mul-float v27, v27, v24

    aput v27, v22, v26

    add-int/lit8 v7, v7, 0x2

    goto/16 :goto_1

    :cond_6
    aget v26, v23, v7

    sub-float v26, v26, v13

    aput v26, v23, v7

    aget v26, v23, v7

    mul-float v26, v26, v24

    aput v26, v23, v7

    add-int/lit8 v26, v7, 0x1

    aget v27, v23, v26

    sub-float v27, v27, v14

    aput v27, v23, v26

    add-int/lit8 v26, v7, 0x1

    aget v27, v23, v26

    mul-float v27, v27, v24

    aput v27, v23, v26

    add-int/lit8 v7, v7, 0x2

    goto/16 :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->prevWidths:[F

    move-object/from16 v26, v0

    const/high16 v27, -0x40800000    # -1.0f

    aput v27, v26, v7

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    :cond_8
    add-int/lit8 v17, v8, 0x2

    aget v9, v22, v8

    add-int/lit8 v26, v8, 0x1

    aget v10, v22, v26

    aget v18, v22, v17

    add-int/lit8 v26, v17, 0x1

    aget v19, v22, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->raindropPath:Landroid/graphics/Path;

    move-object/from16 v26, v0

    add-float v27, v9, v18

    const/high16 v28, 0x3f000000    # 0.5f

    mul-float v27, v27, v28

    add-float v28, v10, v19

    const/high16 v29, 0x3f000000    # 0.5f

    mul-float v28, v28, v29

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v9, v10, v1, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    add-int/lit8 v8, v8, 0x2

    goto/16 :goto_4

    :cond_9
    add-int/lit8 v17, v8, 0x2

    aget v9, v23, v8

    add-int/lit8 v26, v8, 0x1

    aget v10, v23, v26

    aget v18, v23, v17

    add-int/lit8 v26, v17, 0x1

    aget v19, v23, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->roughRainDropPath:Landroid/graphics/Path;

    move-object/from16 v26, v0

    add-float v27, v9, v18

    const/high16 v28, 0x3f000000    # 0.5f

    mul-float v27, v27, v28

    add-float v28, v10, v19

    const/high16 v29, 0x3f000000    # 0.5f

    mul-float v28, v28, v29

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v9, v10, v1, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    add-int/lit8 v8, v8, 0x2

    goto/16 :goto_5

    :cond_a
    const-wide v26, 0x401921fb54442d18L    # 6.283185307179586

    shr-int/lit8 v28, v7, 0x1

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    const/16 v28, 0x8

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v28, v0

    div-double v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    const-wide/high16 v28, 0x3fe0000000000000L    # 0.5

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    aput v26, v4, v7

    add-int/lit8 v26, v7, 0x1

    const-wide v28, 0x401921fb54442d18L    # 6.283185307179586

    shr-int/lit8 v27, v7, 0x1

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v30, v0

    mul-double v28, v28, v30

    const/16 v27, 0x8

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v30, v0

    div-double v28, v28, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    move-wide/from16 v0, v28

    neg-double v0, v0

    move-wide/from16 v28, v0

    const-wide/high16 v30, 0x3fe0000000000000L    # 0.5

    mul-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v27, v0

    aput v27, v4, v26

    add-int/lit8 v7, v7, 0x2

    goto/16 :goto_6

    :cond_b
    add-int/lit8 v17, v8, 0x2

    aget v9, v4, v8

    add-int/lit8 v26, v8, 0x1

    aget v10, v4, v26

    aget v18, v4, v17

    add-int/lit8 v26, v17, 0x1

    aget v19, v4, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->circlePath:Landroid/graphics/Path;

    move-object/from16 v26, v0

    add-float v27, v9, v18

    const/high16 v28, 0x3f000000    # 0.5f

    mul-float v27, v27, v28

    add-float v28, v10, v19

    const/high16 v29, 0x3f000000    # 0.5f

    mul-float v28, v28, v29

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v9, v10, v1, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    add-int/lit8 v8, v8, 0x2

    goto/16 :goto_7

    :cond_c
    const-wide v26, 0x400921fb54442d18L    # Math.PI

    shr-int/lit8 v28, v7, 0x1

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    const/16 v28, 0x4

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v28, v0

    div-double v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    const-wide/high16 v28, 0x3fe0000000000000L    # 0.5

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    aput v26, v25, v7

    add-int/lit8 v26, v7, 0x1

    const-wide v28, 0x400921fb54442d18L    # Math.PI

    shr-int/lit8 v27, v7, 0x1

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v30, v0

    mul-double v28, v28, v30

    const/16 v27, 0x4

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v30, v0

    div-double v28, v28, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    move-wide/from16 v0, v28

    neg-double v0, v0

    move-wide/from16 v28, v0

    const-wide/high16 v30, 0x3fe0000000000000L    # 0.5

    mul-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v27, v0

    aput v27, v25, v26

    add-int/lit8 v7, v7, 0x2

    goto/16 :goto_8

    :cond_d
    add-int/lit8 v17, v8, 0x2

    aget v9, v4, v8

    add-int/lit8 v26, v8, 0x1

    aget v10, v4, v26

    aget v18, v4, v17

    add-int/lit8 v26, v17, 0x1

    aget v19, v4, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->semiCirclePath:Landroid/graphics/Path;

    move-object/from16 v26, v0

    add-float v27, v9, v18

    const/high16 v28, 0x3f000000    # 0.5f

    mul-float v27, v27, v28

    add-float v28, v10, v19

    const/high16 v29, 0x3f000000    # 0.5f

    mul-float v28, v28, v29

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v9, v10, v1, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    add-int/lit8 v8, v8, 0x2

    goto/16 :goto_9

    :array_0
    .array-data 4
        0x42b20000    # 89.0f
        0x42b20000    # 89.0f
        0x42cc0000    # 102.0f
        0x43220000    # 162.0f
        0x433b0000    # 187.0f
        0x434c0000    # 204.0f
        0x43660000    # 230.0f
        0x432a0000    # 170.0f
        0x434f0000    # 207.0f
        0x42f00000    # 120.0f
        0x42b20000    # 89.0f
        0x42b20000    # 89.0f
    .end array-data

    :array_1
    .array-data 4
        0x42b20000    # 89.0f
        0x42b20000    # 89.0f
        0x42c20000    # 97.0f
        0x431c0000    # 156.0f
        0x430d0000    # 141.0f
        0x43440000    # 196.0f
        0x43340000    # 180.0f
        0x434e0000    # 206.0f
        0x43570000    # 215.0f
        0x43430000    # 195.0f
        0x43660000    # 230.0f
        0x43230000    # 163.0f
        0x43580000    # 216.0f
        0x42fe0000    # 127.0f
        0x43350000    # 181.0f
        0x42e00000    # 112.0f
        0x43020000    # 130.0f
        0x42d20000    # 105.0f
        0x42b20000    # 89.0f
        0x42b20000    # 89.0f
    .end array-data
.end method

.method private AddTrianglesToContourResult([FFFFF)V
    .locals 7

    iget-object v4, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->raindropTriangles:[F

    array-length v4, v4

    new-array v3, v4, [F

    const/4 v0, 0x0

    :goto_1
    array-length v4, v3

    if-lt v0, v4, :cond_1

    const/4 v0, 0x0

    :goto_2
    array-length v4, v3

    if-lt v0, v4, :cond_2

    array-length v1, v3

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_3
    if-lt v0, v1, :cond_3

    iget-object v4, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v4, 0x0

    iput v4, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nPointNumberCalligraphy:I

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->raindropTriangles:[F

    aget v4, v4, v0

    mul-float/2addr v4, p2

    add-float/2addr v4, p4

    aput v4, v3, v0

    add-int/lit8 v4, v0, 0x1

    iget-object v5, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->raindropTriangles:[F

    add-int/lit8 v6, v0, 0x1

    aget v5, v5, v6

    mul-float/2addr v5, p3

    add-float/2addr v5, p5

    aput v5, v3, v4

    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_2
    iget v4, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nPointNumberCalligraphy:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nPointNumberCalligraphy:I

    aget v5, v3, v0

    aput v5, p1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    add-int v4, v2, v0

    :try_start_0
    aget v4, p1, v4

    iget v5, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mGlHeight:I

    int-to-float v5, v5

    add-int v6, v2, v0

    add-int/lit8 v6, v6, 0x1

    aget v6, p1, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->addRenderDataCalligraphy(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x2

    goto :goto_3

    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4
.end method

.method static synthetic access$1(Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->ismove:Z

    return v0
.end method

.method static synthetic access$2(Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;)F
    .locals 1

    iget v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mFadingColorValue:F

    return v0
.end method

.method static synthetic access$3(Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;F)V
    .locals 0

    iput p1, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mFadingColorValue:F

    return-void
.end method

.method static synthetic access$4(Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->ismove:Z

    return-void
.end method

.method static synthetic access$5(Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;)F
    .locals 1

    iget v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->m_fadingInitAlpha:F

    return v0
.end method

.method static synthetic access$6(Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->startFadingTime:J

    return-wide v0
.end method

.method static synthetic access$7(Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;)F
    .locals 1

    iget v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->m_fadingTotalTime:F

    return v0
.end method

.method static synthetic access$8(Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->drawFadingStrokes(F)V

    return-void
.end method

.method static synthetic access$9(Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private distanceTo(Landroid/graphics/Point;)F
    .locals 4

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    mul-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v3

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private drawFadingStrokes(F)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mBakBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mBakCanvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mFadingPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mBakBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mFadingPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mBakBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mBakCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private draw_Directional(Landroid/graphics/Paint;ZZ)V
    .locals 40

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v11, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v11, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v11, v2

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v23, v2, v11

    const/4 v15, 0x0

    :goto_0
    int-to-float v2, v15

    cmpg-float v2, v2, v11

    if-ltz v2, :cond_0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void

    :cond_0
    int-to-float v2, v15

    mul-float v25, v2, v23

    mul-float v28, v25, v25

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v29, v2, v25

    mul-float v31, v29, v29

    mul-float v30, v29, v25

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    mul-float v19, v31, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v2, v2, v30

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float v19, v19, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    mul-float v2, v2, v28

    add-float v19, v19, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    mul-float v20, v31, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v2, v2, v30

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float v20, v20, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    mul-float v2, v2, v28

    add-float v20, v20, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPointPressure:F

    mul-float v18, v31, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v2, v2, v30

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPointPressure:F

    mul-float/2addr v2, v3

    add-float v18, v18, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPointPressure:F

    mul-float v2, v2, v28

    add-float v18, v18, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPrvPointX:F

    sub-float v2, v2, v19

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3727c5ac    # 1.0E-5f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPrvPointY:F

    sub-float v2, v2, v20

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3727c5ac    # 1.0E-5f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    if-nez p3, :cond_1

    :goto_1
    add-int/lit8 v15, v15, 0x6

    goto/16 :goto_0

    :cond_1
    if-nez p2, :cond_11

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nWidth:I

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v12, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nWidth:I

    int-to-float v2, v2

    const v3, 0x3dcccccd    # 0.1f

    mul-float v13, v2, v3

    const v26, 0x3fa0d97c

    new-instance v2, Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPrvPointX:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPrvPointY:F

    invoke-direct {v2, v3, v5}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v3, Landroid/graphics/PointF;

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v3, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->getAngleByTwoPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v21

    const/4 v2, 0x0

    cmpl-float v2, v21, v2

    if-ltz v2, :cond_c

    move/from16 v0, v21

    float-to-double v2, v0

    const-wide v34, 0x401921fb54442d18L    # 6.283185307179586

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v36, v0

    sub-double v34, v34, v36

    cmpg-double v2, v2, v34

    if-gtz v2, :cond_c

    const v2, 0x40490fdb    # (float)Math.PI

    sub-float v2, v2, v26

    sub-float v2, v2, v21

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v27

    :goto_2
    const v2, 0x40490fdb    # (float)Math.PI

    sub-float v2, v2, v27

    const v3, 0x40490fdb    # (float)Math.PI

    div-float/2addr v2, v3

    sub-float v3, v12, v13

    mul-float/2addr v2, v3

    add-float v32, v2, v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->prevWidths:[F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->prevWidthNum:I

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    move/from16 v0, v32

    float-to-double v2, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->prevWidths:[F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->prevWidthNum:I

    move/from16 v34, v0

    add-int/lit8 v34, v34, -0x1

    aget v5, v5, v34

    float-to-double v0, v5

    move-wide/from16 v34, v0

    const-wide/high16 v36, 0x3ff8000000000000L    # 1.5

    mul-double v34, v34, v36

    cmpl-double v2, v2, v34

    if-lez v2, :cond_2

    const/16 v16, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->prevWidthNum:I

    move/from16 v0, v16

    if-lt v0, v2, :cond_d

    :cond_2
    const/16 v24, 0x0

    const/16 v33, 0x0

    const/16 v16, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->prevWidthNum:I

    move/from16 v0, v16

    if-lt v0, v2, :cond_e

    add-float v24, v24, v32

    const/16 v16, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->prevWidthNum:I

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v16

    if-lt v0, v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->prevWidths:[F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->prevWidthNum:I

    add-int/lit8 v3, v3, -0x1

    aput v32, v2, v3

    add-int/lit8 v2, v33, 0x1

    int-to-float v2, v2

    div-float v32, v24, v2

    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->drawStyle:Lcom/sec/dmc/calligraphyengine/CalligraphyEngine$DrawStyle;

    sget-object v3, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine$DrawStyle;->Circle:Lcom/sec/dmc/calligraphyengine/CalligraphyEngine$DrawStyle;

    if-ne v2, v3, :cond_15

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bSqureBrush:Z

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->isRealStartBrush:Z

    if-eqz v2, :cond_3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    double-to-float v2, v2

    add-float v2, v2, v32

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->startWidth:F

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->isRealStartBrush:Z

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->isStartBrush:Z

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->startX:F

    sub-float v2, v19, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->g_step:F

    const/high16 v5, 0x40c00000    # 6.0f

    mul-float/2addr v3, v5

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->startY:F

    sub-float v2, v20, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->g_step:F

    const/high16 v5, 0x40c00000    # 6.0f

    mul-float/2addr v3, v5

    cmpl-float v2, v2, v3

    if-lez v2, :cond_6

    :cond_4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->isStartBrush:Z

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->startX:F

    sub-float v9, v19, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->startY:F

    sub-float v10, v20, v2

    mul-float v2, v9, v9

    mul-float v3, v10, v10

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    move/from16 v17, v0

    const/4 v2, 0x0

    cmpl-float v2, v17, v2

    if-nez v2, :cond_5

    const v17, 0x38d1b717    # 1.0E-4f

    :cond_5
    div-float v9, v9, v17

    div-float v10, v10, v17

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->startWidth:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->startX:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->startY:F

    float-to-double v2, v9

    float-to-double v0, v10

    move-wide/from16 v34, v0

    move-wide/from16 v0, v34

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    double-to-float v8, v2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bDrawToCanvas:Z

    if-nez v2, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->contourResultCalligraphy:[F

    move-object/from16 v2, p0

    move v5, v4

    invoke-direct/range {v2 .. v7}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->AddTrianglesToContourResult([FFFFF)V

    :cond_6
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->isEndBrush:Z

    if-eqz v2, :cond_9

    add-int/lit8 v2, v15, 0x6

    float-to-int v3, v11

    if-lt v2, v3, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->startX:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3c23d70a    # 0.01f

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->startY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3c23d70a    # 0.01f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_9

    :cond_7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->isEndBrush:Z

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPrvPointX:F

    sub-float v9, v19, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPrvPointY:F

    sub-float v10, v20, v2

    mul-float v2, v9, v9

    mul-float v3, v10, v10

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    move/from16 v17, v0

    const v2, 0x38d1b717    # 1.0E-4f

    cmpg-float v2, v17, v2

    if-gtz v2, :cond_8

    const v17, 0x38d1b717    # 1.0E-4f

    :cond_8
    div-float v9, v9, v17

    div-float v10, v10, v17

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    double-to-float v2, v2

    add-float v4, v32, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v7, v2

    float-to-double v2, v9

    float-to-double v0, v10

    move-wide/from16 v34, v0

    move-wide/from16 v0, v34

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    double-to-float v8, v2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bDrawToCanvas:Z

    if-nez v2, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->contourResultCalligraphy:[F

    move-object/from16 v2, p0

    move v5, v4

    invoke-direct/range {v2 .. v7}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->AddTrianglesToContourResult([FFFFF)V

    :cond_9
    :goto_8
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPrvPointX:F

    sub-float v9, v19, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPrvPointY:F

    sub-float v10, v20, v2

    mul-float v2, v9, v9

    mul-float v3, v10, v10

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    move/from16 v17, v0

    const v2, 0x38d1b717    # 1.0E-4f

    cmpg-float v2, v17, v2

    if-gtz v2, :cond_a

    const v17, 0x38d1b717    # 1.0E-4f

    :cond_a
    div-float v9, v9, v17

    div-float v10, v10, v17

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    double-to-float v2, v2

    add-float v4, v32, v2

    const/4 v14, 0x0

    :goto_9
    cmpg-float v2, v14, v17

    if-ltz v2, :cond_14

    :cond_b
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPrvPointX:F

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPrvPointY:F

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->myendwidth:F

    goto/16 :goto_1

    :cond_c
    const v2, 0x4116cbe4

    sub-float v2, v2, v21

    sub-float v27, v2, v26

    goto/16 :goto_2

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->prevWidths:[F

    const/high16 v3, -0x40800000    # -1.0f

    aput v3, v2, v16

    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_3

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->prevWidths:[F

    aget v2, v2, v16

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->prevWidths:[F

    aget v2, v2, v16

    add-float v24, v24, v2

    add-int/lit8 v33, v33, 0x1

    :cond_f
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_4

    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->prevWidths:[F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->prevWidths:[F

    add-int/lit8 v5, v16, 0x1

    aget v3, v3, v5

    aput v3, v2, v16

    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_5

    :cond_11
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nWidth:I

    int-to-float v0, v2

    move/from16 v32, v0

    goto/16 :goto_6

    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->tmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->tmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->tmpMatrix:Landroid/graphics/Matrix;

    const-wide v34, 0x4066800000000000L    # 180.0

    float-to-double v0, v8

    move-wide/from16 v36, v0

    const-wide v38, 0x400921fb54442d18L    # Math.PI

    div-double v36, v36, v38

    const-wide v38, 0x4066800000000000L    # 180.0

    mul-double v36, v36, v38

    sub-double v34, v34, v36

    move-wide/from16 v0, v34

    double-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->tmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->semiCirclePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->tmpMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->tmpPath:Landroid/graphics/Path;

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->fullPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->tmpPath:Landroid/graphics/Path;

    invoke-virtual {v2, v3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->pathCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->pathCount:I

    goto/16 :goto_7

    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->tmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->tmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->tmpMatrix:Landroid/graphics/Matrix;

    const-wide v34, 0x4076800000000000L    # 360.0

    float-to-double v0, v8

    move-wide/from16 v36, v0

    const-wide v38, 0x400921fb54442d18L    # Math.PI

    div-double v36, v36, v38

    const-wide v38, 0x4066800000000000L    # 180.0

    mul-double v36, v36, v38

    sub-double v34, v34, v36

    move-wide/from16 v0, v34

    double-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->tmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->semiCirclePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->tmpMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->tmpPath:Landroid/graphics/Path;

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->fullPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->tmpPath:Landroid/graphics/Path;

    invoke-virtual {v2, v3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->pathCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->pathCount:I

    goto/16 :goto_8

    :cond_14
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPrvPointX:F

    mul-float v3, v9, v14

    add-float v6, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPrvPointY:F

    mul-float v3, v10, v14

    add-float v7, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->tmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->tmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->tmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->circlePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->tmpMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->tmpPath:Landroid/graphics/Path;

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->fullPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->tmpPath:Landroid/graphics/Path;

    invoke-virtual {v2, v3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->pathCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->pathCount:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->g_step:F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v34

    move-wide/from16 v0, v34

    double-to-float v3, v0

    add-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    add-float/2addr v14, v2

    goto/16 :goto_9

    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->drawStyle:Lcom/sec/dmc/calligraphyengine/CalligraphyEngine$DrawStyle;

    sget-object v3, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine$DrawStyle;->Raindrop:Lcom/sec/dmc/calligraphyengine/CalligraphyEngine$DrawStyle;

    if-ne v2, v3, :cond_b

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPrvPointX:F

    sub-float v9, v19, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPrvPointY:F

    sub-float v10, v20, v2

    mul-float v2, v9, v9

    mul-float v3, v10, v10

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    move/from16 v17, v0

    const v2, 0x38d1b717    # 1.0E-4f

    cmpg-float v2, v17, v2

    if-gtz v2, :cond_16

    const v17, 0x38d1b717    # 1.0E-4f

    :cond_16
    div-float v9, v9, v17

    div-float v10, v10, v17

    const/high16 v2, 0x41200000    # 10.0f

    cmpl-float v2, v32, v2

    if-lez v2, :cond_18

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    double-to-float v2, v2

    add-float v4, v32, v2

    const/4 v14, 0x0

    :goto_a
    cmpg-float v2, v14, v17

    if-gez v2, :cond_b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPrvPointX:F

    mul-float v3, v9, v14

    add-float v6, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPrvPointY:F

    mul-float v3, v10, v14

    add-float v7, v2, v3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bDrawToCanvas:Z

    if-nez v2, :cond_17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->contourResultCalligraphy:[F

    move-object/from16 v2, p0

    move v5, v4

    invoke-direct/range {v2 .. v7}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->AddTrianglesToContourResult([FFFFF)V

    :goto_b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->g_step:F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v34

    move-wide/from16 v0, v34

    double-to-float v3, v0

    add-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    add-float/2addr v14, v2

    goto :goto_a

    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->tmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->tmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->tmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->raindropPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->tmpMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->tmpPath:Landroid/graphics/Path;

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->fullPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->tmpPath:Landroid/graphics/Path;

    invoke-virtual {v2, v3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->pathCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->pathCount:I

    goto :goto_b

    :cond_18
    const/high16 v2, 0x41000000    # 8.0f

    cmpl-float v2, v32, v2

    if-lez v2, :cond_1a

    move/from16 v4, v32

    const/4 v14, 0x0

    :goto_c
    cmpg-float v2, v14, v17

    if-gez v2, :cond_b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPrvPointX:F

    mul-float v3, v9, v14

    add-float v6, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPrvPointY:F

    mul-float v3, v10, v14

    add-float v7, v2, v3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bDrawToCanvas:Z

    if-nez v2, :cond_19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->contourResultCalligraphy:[F

    move-object/from16 v2, p0

    move v5, v4

    invoke-direct/range {v2 .. v7}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->AddTrianglesToContourResult([FFFFF)V

    :goto_d
    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v14, v2

    goto :goto_c

    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->tmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->tmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->tmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->roughRainDropPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->tmpMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->tmpPath:Landroid/graphics/Path;

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->fullPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->tmpPath:Landroid/graphics/Path;

    invoke-virtual {v2, v3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->pathCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->pathCount:I

    goto :goto_d

    :cond_1a
    move/from16 v4, v32

    const/4 v14, 0x0

    :goto_e
    cmpg-float v2, v14, v17

    if-gez v2, :cond_b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPrvPointX:F

    mul-float v3, v9, v14

    add-float v6, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPrvPointY:F

    mul-float v3, v10, v14

    add-float v7, v2, v3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bDrawToCanvas:Z

    if-nez v2, :cond_1b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->contourResultCalligraphy:[F

    move-object/from16 v2, p0

    move v5, v4

    invoke-direct/range {v2 .. v7}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->AddTrianglesToContourResult([FFFFF)V

    :goto_f
    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v14, v2

    goto :goto_e

    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->tmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->tmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->tmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->roughRainDropPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->tmpMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->tmpPath:Landroid/graphics/Path;

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->fullPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->tmpPath:Landroid/graphics/Path;

    invoke-virtual {v2, v3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->pathCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->pathCount:I

    goto :goto_f
.end method

.method private draw_SpeedAndPressure(Landroid/graphics/Paint;FFFFZ)V
    .locals 30

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v18

    sub-float v27, p3, p2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v11, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v11, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v11, v2

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v19, v2, v11

    const/4 v13, 0x0

    :goto_0
    int-to-float v2, v13

    cmpg-float v2, v2, v11

    if-ltz v2, :cond_0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void

    :cond_0
    int-to-float v2, v13

    mul-float v21, v2, v19

    mul-float v22, v21, v21

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v23, v2, v21

    mul-float v25, v23, v23

    mul-float v24, v23, v21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    mul-float v16, v25, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v2, v2, v24

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float v16, v16, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    mul-float v2, v2, v22

    add-float v16, v16, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    mul-float v17, v25, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v2, v2, v24

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float v17, v17, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    mul-float v2, v2, v22

    add-float v17, v17, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPointPressure:F

    mul-float v15, v25, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v2, v2, v24

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPointPressure:F

    mul-float/2addr v2, v3

    add-float/2addr v15, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPointPressure:F

    mul-float v2, v2, v22

    add-float/2addr v15, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPrvPointX:F

    sub-float v2, v2, v16

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3727c5ac    # 1.0E-5f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPrvPointY:F

    sub-float v2, v2, v17

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3727c5ac    # 1.0E-5f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    if-nez p6, :cond_1

    :goto_1
    add-int/lit8 v13, v13, 0x6

    goto/16 :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->isFinger:Z

    if-eqz v2, :cond_3

    mul-float v2, v21, v27

    add-float v26, p2, v2

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->drawStyle:Lcom/sec/dmc/calligraphyengine/CalligraphyEngine$DrawStyle;

    sget-object v3, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine$DrawStyle;->Circle:Lcom/sec/dmc/calligraphyengine/CalligraphyEngine$DrawStyle;

    if-ne v2, v3, :cond_8

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_2
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPrvPointX:F

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPrvPointY:F

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->myendwidth:F

    goto :goto_1

    :cond_3
    mul-float v2, v21, v27

    add-float v20, p2, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nWidth:I

    const/16 v3, 0x14

    if-le v2, v3, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v15

    const/high16 v3, 0x40000000    # 2.0f

    add-float v26, v2, v3

    :goto_3
    add-float v2, v26, v20

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v26, v2, v3

    const/high16 v8, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nWidth:I

    int-to-float v2, v2

    const v3, 0x3d4ccccd    # 0.05f

    mul-float/2addr v2, v3

    cmpg-float v2, v2, v8

    if-gez v2, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nWidth:I

    int-to-float v2, v2

    const v3, 0x3d4ccccd    # 0.05f

    mul-float v8, v2, v3

    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->myendwidth:F

    add-float/2addr v2, v8

    cmpg-float v2, v2, v26

    if-gez v2, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->myendwidth:F

    add-float v26, v2, v8

    :cond_5
    :goto_4
    mul-float v2, v21, v27

    add-float v2, v2, p2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v3, v3, v26

    add-float v26, v2, v3

    goto :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v15

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nWidth:I

    int-to-float v3, v3

    const v5, 0x3dcccccd    # 0.1f

    mul-float/2addr v3, v5

    add-float v26, v2, v3

    goto :goto_3

    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->myendwidth:F

    sub-float/2addr v2, v8

    cmpl-float v2, v2, v26

    if-lez v2, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->myendwidth:F

    sub-float v26, v2, v8

    goto :goto_4

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->drawStyle:Lcom/sec/dmc/calligraphyengine/CalligraphyEngine$DrawStyle;

    sget-object v3, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine$DrawStyle;->Raindrop:Lcom/sec/dmc/calligraphyengine/CalligraphyEngine$DrawStyle;

    if-ne v2, v3, :cond_2

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPrvPointX:F

    sub-float v9, v16, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPrvPointY:F

    sub-float v10, v17, v2

    mul-float v2, v9, v9

    mul-float v3, v10, v10

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v14, v2

    const v2, 0x38d1b717    # 1.0E-4f

    cmpg-float v2, v14, v2

    if-gtz v2, :cond_9

    const v14, 0x38d1b717    # 1.0E-4f

    :cond_9
    div-float/2addr v9, v14

    div-float/2addr v10, v14

    const/high16 v2, 0x41200000    # 10.0f

    cmpl-float v2, v26, v2

    if-lez v2, :cond_b

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    double-to-float v2, v2

    add-float v4, v26, v2

    const/4 v12, 0x0

    :goto_5
    cmpg-float v2, v12, v14

    if-gez v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPrvPointX:F

    mul-float v3, v9, v12

    add-float v6, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPrvPointY:F

    mul-float v3, v10, v12

    add-float v7, v2, v3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bDrawToCanvas:Z

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->contourResultCalligraphy:[F

    move-object/from16 v2, p0

    move v5, v4

    invoke-direct/range {v2 .. v7}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->AddTrianglesToContourResult([FFFFF)V

    :goto_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->g_step:F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-float v3, v0

    add-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    add-float/2addr v12, v2

    goto :goto_5

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->tmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->tmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->tmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->raindropPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->tmpMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->tmpPath:Landroid/graphics/Path;

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->fullPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->tmpPath:Landroid/graphics/Path;

    invoke-virtual {v2, v3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->pathCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->pathCount:I

    goto :goto_6

    :cond_b
    const/high16 v2, 0x40c00000    # 6.0f

    cmpl-float v2, v26, v2

    if-lez v2, :cond_d

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    double-to-float v2, v2

    add-float v4, v26, v2

    const/4 v12, 0x0

    :goto_7
    cmpg-float v2, v12, v14

    if-gez v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPrvPointX:F

    mul-float v3, v9, v12

    add-float v6, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPrvPointY:F

    mul-float v3, v10, v12

    add-float v7, v2, v3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bDrawToCanvas:Z

    if-nez v2, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->contourResultCalligraphy:[F

    move-object/from16 v2, p0

    move v5, v4

    invoke-direct/range {v2 .. v7}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->AddTrianglesToContourResult([FFFFF)V

    :goto_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->g_step:F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-float v3, v0

    add-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    add-float/2addr v12, v2

    goto :goto_7

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->tmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->tmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->tmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->roughRainDropPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->tmpMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->tmpPath:Landroid/graphics/Path;

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->fullPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->tmpPath:Landroid/graphics/Path;

    invoke-virtual {v2, v3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->pathCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->pathCount:I

    goto :goto_8

    :cond_d
    const/high16 v2, 0x40800000    # 4.0f

    cmpl-float v2, v26, v2

    if-lez v2, :cond_f

    move/from16 v4, v26

    const/4 v12, 0x0

    :goto_9
    cmpg-float v2, v12, v14

    if-gez v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPrvPointX:F

    mul-float v3, v9, v12

    add-float v6, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPrvPointY:F

    mul-float v3, v10, v12

    add-float v7, v2, v3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bDrawToCanvas:Z

    if-nez v2, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->contourResultCalligraphy:[F

    move-object/from16 v2, p0

    move v5, v4

    invoke-direct/range {v2 .. v7}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->AddTrianglesToContourResult([FFFFF)V

    :goto_a
    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v12, v2

    goto :goto_9

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->tmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->tmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->tmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->roughRainDropPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->tmpMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->tmpPath:Landroid/graphics/Path;

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->fullPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->tmpPath:Landroid/graphics/Path;

    invoke-virtual {v2, v3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->pathCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->pathCount:I

    goto :goto_a

    :cond_f
    move/from16 v4, v26

    const/4 v12, 0x0

    :goto_b
    cmpg-float v2, v12, v14

    if-gez v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPrvPointX:F

    mul-float v3, v9, v12

    add-float v6, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPrvPointY:F

    mul-float v3, v10, v12

    add-float v7, v2, v3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bDrawToCanvas:Z

    if-nez v2, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->contourResultCalligraphy:[F

    move-object/from16 v2, p0

    move v5, v4

    invoke-direct/range {v2 .. v7}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->AddTrianglesToContourResult([FFFFF)V

    :goto_c
    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v12, v2

    goto :goto_b

    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->tmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->tmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->tmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->roughRainDropPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->tmpMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->tmpPath:Landroid/graphics/Path;

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->fullPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->tmpPath:Landroid/graphics/Path;

    invoke-virtual {v2, v3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->pathCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->pathCount:I

    goto :goto_c
.end method

.method public static getInstance()Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;
    .locals 1

    sget-object v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mInstance:Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;

    return-object v0
.end method

.method private initCanvas()V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bNewParentView:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mWidth:I

    iget v1, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mBitmap:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mCanvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mCanvas:Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    :cond_1
    iput-boolean v3, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bNewParentView:Z

    :cond_2
    return-void
.end method

.method private modifyOrginalPntWithBezier(IIIII)V
    .locals 14

    mul-int/lit8 v10, p1, 0x2

    iget-object v11, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPointData:Ljava/util/Vector;

    add-int/lit8 v12, v10, -0x4

    invoke-virtual {v11, v12}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v11, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPointData:Ljava/util/Vector;

    add-int/lit8 v12, v10, -0x3

    invoke-virtual {v11, v12}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v11, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPointData:Ljava/util/Vector;

    add-int/lit8 v12, v10, -0x2

    invoke-virtual {v11, v12}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v11, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPointData:Ljava/util/Vector;

    add-int/lit8 v12, v10, -0x1

    invoke-virtual {v11, v12}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int v8, p4, p2

    add-int v9, p5, p3

    shl-int/lit8 v11, v4, 0x1

    shl-int/lit8 v12, v6, 0x2

    add-int/2addr v11, v12

    add-int/2addr v11, v8

    shr-int/lit8 v2, v11, 0x3

    shl-int/lit8 v11, v5, 0x1

    shl-int/lit8 v12, v7, 0x2

    add-int/2addr v11, v12

    add-int/2addr v11, v9

    shr-int/lit8 v3, v11, 0x3

    shr-int/lit8 v0, v8, 0x1

    shr-int/lit8 v1, v9, 0x1

    iget-object v11, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPointData:Ljava/util/Vector;

    add-int/lit8 v12, v10, -0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v11, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPointData:Ljava/util/Vector;

    add-int/lit8 v12, v10, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v11, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPointData:Ljava/util/Vector;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v11, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPointData:Ljava/util/Vector;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private modifyOrginalPntWithBezierPressure(IFF)V
    .locals 10

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f000000    # 0.5f

    move v6, p1

    iget-object v7, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPointDataPressure:Ljava/util/Vector;

    add-int/lit8 v8, v6, -0x2

    invoke-virtual {v7, v8}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v7, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPointDataPressure:Ljava/util/Vector;

    add-int/lit8 v8, v6, -0x1

    invoke-virtual {v7, v8}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float v7, p3, p2

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float v4, v7, v8

    sub-float v7, v9, v5

    mul-float/2addr v7, v2

    sub-float v8, v9, v5

    mul-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v8, v3

    mul-float/2addr v8, v5

    sub-float/2addr v9, v5

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    mul-float v8, v4, v5

    mul-float/2addr v8, v5

    add-float v1, v7, v8

    move v0, v4

    iget-object v7, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPointDataPressure:Ljava/util/Vector;

    add-int/lit8 v8, v6, -0x1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPointDataPressure:Ljava/util/Vector;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private strokeWidth(F)F
    .locals 7

    iget v5, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nWidth:I

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float v0, v5, v6

    iget v5, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nWidth:I

    int-to-float v5, v5

    const v6, 0x3dcccccd    # 0.1f

    mul-float v1, v5, v6

    sub-float v5, v1, v0

    iget v6, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->d_speedMax_speedMin:F

    mul-float v2, v5, v6

    iget v5, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mSpeedMin:F

    mul-float/2addr v5, v2

    sub-float v3, v0, v5

    mul-float v5, v2, p1

    add-float v4, v5, v3

    return v4
.end method

.method private velocityFrom(Landroid/graphics/Point;J)F
    .locals 6

    const/4 v0, 0x0

    move-wide v2, p2

    long-to-float v1, v2

    const v4, 0x38d1b717    # 1.0E-4f

    cmpg-float v1, v1, v4

    if-gez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1

    const-wide/16 v2, 0x1

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->distanceTo(Landroid/graphics/Point;)F

    move-result v1

    const/high16 v4, 0x43c80000    # 400.0f

    mul-float/2addr v1, v4

    long-to-float v4, v2

    iget v5, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->g_dpi:F

    mul-float/2addr v4, v5

    div-float v0, v1, v4

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public PenTipShapeToTriangles([F[F)V
    .locals 6

    const/4 v5, 0x0

    aget v0, p2, v5

    const/4 v5, 0x1

    aget v1, p2, v5

    const/4 v3, 0x0

    const/4 v2, 0x2

    :goto_0
    array-length v5, p2

    add-int/lit8 v5, v5, -0x2

    if-lt v2, v5, :cond_0

    return-void

    :cond_0
    add-int/lit8 v4, v3, 0x1

    aput v0, p1, v3

    add-int/lit8 v3, v4, 0x1

    aput v1, p1, v4

    add-int/lit8 v4, v3, 0x1

    aget v5, p2, v2

    aput v5, p1, v3

    add-int/lit8 v3, v4, 0x1

    add-int/lit8 v5, v2, 0x1

    aget v5, p2, v5

    aput v5, p1, v4

    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v5, v2, 0x2

    aget v5, p2, v5

    aput v5, p1, v3

    add-int/lit8 v3, v4, 0x1

    add-int/lit8 v5, v2, 0x3

    aget v5, p2, v5

    aput v5, p1, v4

    add-int/lit8 v2, v2, 0x2

    goto :goto_0
.end method

.method public SetFadingParam(FFF)V
    .locals 0

    iput p1, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->m_fadingDelayTime:F

    iput p2, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->m_fadingInitAlpha:F

    iput p3, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->m_fadingTotalTime:F

    return-void
.end method

.method public addRenderDataCalligraphy(FF)V
    .locals 3

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mRenderDataCalligraphy:[F

    iget v1, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mRenderDataCalligraphyLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mRenderDataCalligraphyLength:I

    aput p1, v0, v1

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mRenderDataCalligraphy:[F

    iget v1, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mRenderDataCalligraphyLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mRenderDataCalligraphyLength:I

    aput p2, v0, v1

    return-void
.end method

.method public clear()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->clearScene()V

    return-void
.end method

.method public clearScene()V
    .locals 5

    const v4, 0xffff

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput-boolean v3, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->m_bNeedClearCommand:Z

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->fullPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->linePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    iput v2, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nPointNumberCalligraphy:I

    invoke-virtual {p0}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->resetRenderDataCalligraphy()V

    iput v2, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->pathCount:I

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mBakBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mBakBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    :cond_2
    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mLinePaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    :cond_3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v4, v2, v4, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPointData:Ljava/util/Vector;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPointData:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    :cond_4
    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPointDataPressure:Ljava/util/Vector;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPointDataPressure:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    :cond_5
    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_6
    return-void
.end method

.method public dealTouchDownEvent(II)V
    .locals 7

    const v6, 0xffff

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    iput-boolean v4, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bButtonDown:Z

    iget-object v1, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPointData:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    iget-object v1, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPointDataPressure:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    iget-object v1, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->m_viewPosition:[I

    aget v1, v1, v5

    sub-int/2addr p1, v1

    iget-object v1, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->m_viewPosition:[I

    aget v1, v1, v4

    sub-int/2addr p2, v1

    iput p1, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->m_lastX:I

    iput p2, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->m_lastY:I

    iget-object v1, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPointData:Ljava/util/Vector;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPointData:Ljava/util/Vector;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPointDataPressure:Ljava/util/Vector;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iput v3, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPressure:F

    int-to-float v1, p1

    iput v1, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPrvPointX:F

    int-to-float v1, p2

    iput v1, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPrvPointY:F

    iput p1, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->fmXBezier:I

    iput p2, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->fmYBezier:I

    iput v3, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->fmBezierPressure:F

    iget-object v1, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPoint:Landroid/graphics/Point;

    iput p1, v1, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPoint:Landroid/graphics/Point;

    iput p2, v1, Landroid/graphics/Point;->y:I

    iput v3, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPointPressure:F

    iput v3, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastPressure:F

    iput v3, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentPressure:F

    iput v3, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastVelocity:F

    iget v1, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastWidth:F

    iput v4, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bFirst:I

    iput-boolean v4, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->ismove:Z

    iput-boolean v5, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bHasMoved:Z

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->prevWidthNum:I

    if-lt v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bSpeedAndPressure:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bDirectional:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mLinePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40600000    # 3.5f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :goto_1
    iput-boolean v4, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->isStartBrush:Z

    iput-boolean v4, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->isRealStartBrush:Z

    int-to-float v1, p1

    iput v1, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->startX:F

    int-to-float v1, p2

    iput v1, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->startY:F

    iget-object v1, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    iput v6, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    iput v5, v1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    iput v6, v1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    iput v5, v1, Landroid/graphics/Rect;->bottom:I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->prevWidths:[F

    const/high16 v2, -0x40800000    # -1.0f

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mLinePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40f00000    # 7.5f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_1
.end method

.method public dealTouchMoveEvent(IIFJ)V
    .locals 24

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bButtonDown:Z

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->ismove:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v3, :cond_0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPointData:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    shr-int/lit8 v20, v3, 0x1

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bFirst:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nWidth:I

    int-to-float v3, v3

    mul-float v3, v3, p3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nWidth:I

    int-to-float v4, v4

    const v5, 0x3dcccccd    # 0.1f

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->myendwidth:F

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bFirst:I

    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->fmXBezier:I

    sub-int v3, p1, v3

    int-to-float v0, v3

    move/from16 v16, v0

    const/4 v3, 0x0

    cmpl-float v3, v16, v3

    if-lez v3, :cond_6

    :goto_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->fmYBezier:I

    sub-int v3, p2, v3

    int-to-float v0, v3

    move/from16 v17, v0

    const/4 v3, 0x0

    cmpl-float v3, v17, v3

    if-lez v3, :cond_7

    :goto_2
    const/4 v3, 0x0

    cmpl-float v3, v16, v3

    if-nez v3, :cond_3

    const/4 v3, 0x0

    cmpl-float v3, v17, v3

    if-eqz v3, :cond_0

    :cond_3
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bHasMoved:Z

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->fmXBezier:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->fmYBezier:I

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bSpeedAndPressure:Z

    if-eqz v3, :cond_22

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPointData:Ljava/util/Vector;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPointData:Ljava/util/Vector;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->fmXBezier:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->fmYBezier:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPointDataPressure:Ljava/util/Vector;

    invoke-static/range {p3 .. p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->fmBezierPressure:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPointData:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    shr-int/lit8 v19, v3, 0x1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPressure:F

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v10, 0x0

    const v3, 0xffff

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nLeft:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nRight:I

    const v3, 0xffff

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nTop:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nBottom:I

    move/from16 v18, v20

    :goto_3
    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_8

    :cond_4
    move/from16 v0, v20

    move/from16 v1, v19

    if-ge v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->pathCount:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->Countlen:I

    if-le v3, v4, :cond_5a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->fullPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->linePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->pathRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sget v5, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->offset:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sget v6, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->offset:I

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sget v7, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->offset:I

    add-int/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sget v8, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->offset:I

    add-int/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->pathRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->invalidate(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->fullPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->rewind()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->linePath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->rewind()V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->pathCount:I

    :cond_5
    :goto_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->fmBezierPressure:F

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPressure:F

    goto/16 :goto_0

    :cond_6
    move/from16 v0, v16

    neg-float v0, v0

    move/from16 v16, v0

    goto/16 :goto_1

    :cond_7
    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v17, v0

    goto/16 :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPointData:Ljava/util/Vector;

    mul-int/lit8 v4, v18, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPointData:Ljava/util/Vector;

    mul-int/lit8 v4, v18, 0x2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPointDataPressure:Ljava/util/Vector;

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v10

    sub-int v3, v11, v14

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v0, v3

    move/from16 v16, v0

    sub-int v3, v12, v15

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v0, v3

    move/from16 v17, v0

    const/high16 v3, 0x40c00000    # 6.0f

    cmpl-float v3, v16, v3

    if-gez v3, :cond_9

    const/high16 v3, 0x40c00000    # 6.0f

    cmpl-float v3, v17, v3

    if-ltz v3, :cond_10

    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    add-int v4, v11, v14

    shr-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    add-int v4, v12, v15

    shr-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroid/graphics/Point;->y:I

    add-float v3, v10, v13

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPointPressure:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    iput v14, v3, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    iput v15, v3, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPointPressure:F

    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->velocityFrom(Landroid/graphics/Point;J)F

    move-result v22

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->VELOCITY_FILTER_WEIGHT:F

    mul-float v3, v3, v22

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->VELOCITY_FILTER_WEIGHT:F

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastVelocity:F

    mul-float/2addr v4, v5

    add-float v22, v3, v4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mSpeedMax:F

    cmpl-float v3, v22, v3

    if-lez v3, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mSpeedMax:F

    move/from16 v22, v0

    :cond_a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mSpeedMin:F

    cmpg-float v3, v22, v3

    if-gez v3, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mSpeedMin:F

    move/from16 v22, v0

    :cond_b
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->strokeWidth(F)F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentWidth:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPointPressure:F

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentPressure:F

    const v21, 0x3dcccccd    # 0.1f

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->isFinger:Z

    if-eqz v3, :cond_c

    const v21, 0x3e19999a    # 0.15f

    :cond_c
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentWidth:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastWidth:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastWidth:F

    mul-float v4, v4, v21

    cmpl-float v3, v3, v4

    if-lez v3, :cond_d

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentWidth:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastWidth:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_11

    const/high16 v3, 0x3f800000    # 1.0f

    add-float v3, v3, v21

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastWidth:F

    mul-float/2addr v3, v4

    :goto_6
    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentWidth:F

    :cond_d
    move v14, v11

    move v15, v12

    move v13, v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nLeft:I

    if-ge v3, v4, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    :goto_7
    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nLeft:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nLeft:I

    if-ge v3, v4, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    :goto_8
    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nLeft:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nLeft:I

    if-ge v3, v4, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    :goto_9
    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nLeft:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nRight:I

    if-le v3, v4, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    :goto_a
    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nRight:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nRight:I

    if-le v3, v4, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    :goto_b
    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nRight:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nRight:I

    if-le v3, v4, :cond_17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    :goto_c
    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nRight:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nTop:I

    if-ge v3, v4, :cond_18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    :goto_d
    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nTop:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nTop:I

    if-ge v3, v4, :cond_19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    :goto_e
    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nTop:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nTop:I

    if-ge v3, v4, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    :goto_f
    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nTop:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nBottom:I

    if-le v3, v4, :cond_1b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    :goto_10
    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nBottom:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nBottom:I

    if-le v3, v4, :cond_1c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    :goto_11
    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nBottom:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nBottom:I

    if-le v3, v4, :cond_1d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    :goto_12
    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nBottom:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nLeft:I

    if-ge v3, v5, :cond_1e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    :goto_13
    iput v3, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nRight:I

    if-le v3, v5, :cond_1f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    :goto_14
    iput v3, v4, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nTop:I

    if-ge v3, v5, :cond_20

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    :goto_15
    iput v3, v4, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nBottom:I

    if-le v3, v5, :cond_21

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    :goto_16
    iput v3, v4, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bInitWidthVarRatio:Z

    if-nez v3, :cond_e

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentWidth:F

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastWidth:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentPressure:F

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastPressure:F

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bInitWidthVarRatio:Z

    :cond_e
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentWidth:F

    const/high16 v4, 0x3f000000    # 0.5f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_f

    const/high16 v3, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentWidth:F

    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastWidth:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentWidth:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastPressure:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentPressure:F

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->draw_SpeedAndPressure(Landroid/graphics/Paint;FFFFZ)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPoint:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iput v4, v3, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPoint:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iput v4, v3, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPointPressure:F

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPointPressure:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentWidth:F

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastWidth:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentPressure:F

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastPressure:F

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastVelocity:F

    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_3

    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iput v11, v3, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iput v12, v3, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iput v10, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPointPressure:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    add-int v4, v11, v14

    shr-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    add-int v4, v12, v15

    shr-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroid/graphics/Point;->y:I

    add-float v3, v10, v13

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPointPressure:F

    goto/16 :goto_5

    :cond_11
    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v3, v3, v21

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastWidth:F

    mul-float/2addr v3, v4

    goto/16 :goto_6

    :cond_12
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nLeft:I

    goto/16 :goto_7

    :cond_13
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nLeft:I

    goto/16 :goto_8

    :cond_14
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nLeft:I

    goto/16 :goto_9

    :cond_15
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nRight:I

    goto/16 :goto_a

    :cond_16
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nRight:I

    goto/16 :goto_b

    :cond_17
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nRight:I

    goto/16 :goto_c

    :cond_18
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nTop:I

    goto/16 :goto_d

    :cond_19
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nTop:I

    goto/16 :goto_e

    :cond_1a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nTop:I

    goto/16 :goto_f

    :cond_1b
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nBottom:I

    goto/16 :goto_10

    :cond_1c
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nBottom:I

    goto/16 :goto_11

    :cond_1d
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nBottom:I

    goto/16 :goto_12

    :cond_1e
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nLeft:I

    goto/16 :goto_13

    :cond_1f
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nRight:I

    goto/16 :goto_14

    :cond_20
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nTop:I

    goto/16 :goto_15

    :cond_21
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nBottom:I

    goto/16 :goto_16

    :cond_22
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bDirectional:Z

    if-eqz v3, :cond_3e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPointData:Ljava/util/Vector;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPointData:Ljava/util/Vector;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->fmXBezier:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->fmYBezier:I

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bSpeedAndPressure:Z

    if-eqz v3, :cond_23

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPointDataPressure:Ljava/util/Vector;

    invoke-static/range {p3 .. p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->fmBezierPressure:F

    :cond_23
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPointData:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    shr-int/lit8 v19, v3, 0x1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPressure:F

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v10, 0x0

    const v3, 0xffff

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nLeft:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nRight:I

    const v3, 0xffff

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nTop:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nBottom:I

    move/from16 v18, v20

    :goto_17
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPointData:Ljava/util/Vector;

    mul-int/lit8 v4, v18, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPointData:Ljava/util/Vector;

    mul-int/lit8 v4, v18, 0x2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bSpeedAndPressure:Z

    if-eqz v3, :cond_2b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPointDataPressure:Ljava/util/Vector;

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v10

    :goto_18
    sub-int v3, v11, v14

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v0, v3

    move/from16 v16, v0

    sub-int v3, v12, v15

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v0, v3

    move/from16 v17, v0

    const/high16 v3, 0x40c00000    # 6.0f

    cmpl-float v3, v16, v3

    if-gez v3, :cond_24

    const/high16 v3, 0x40c00000    # 6.0f

    cmpl-float v3, v17, v3

    if-ltz v3, :cond_2c

    :cond_24
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    add-int v4, v11, v14

    shr-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    add-int v4, v12, v15

    shr-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroid/graphics/Point;->y:I

    add-float v3, v10, v13

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPointPressure:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    iput v14, v3, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    iput v15, v3, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPointPressure:F

    :goto_19
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bSpeedAndPressure:Z

    if-eqz v3, :cond_28

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->velocityFrom(Landroid/graphics/Point;J)F

    move-result v22

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->VELOCITY_FILTER_WEIGHT:F

    mul-float v3, v3, v22

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->VELOCITY_FILTER_WEIGHT:F

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastVelocity:F

    mul-float/2addr v4, v5

    add-float v22, v3, v4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mSpeedMax:F

    cmpl-float v3, v22, v3

    if-lez v3, :cond_25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mSpeedMax:F

    move/from16 v22, v0

    :cond_25
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mSpeedMin:F

    cmpg-float v3, v22, v3

    if-gez v3, :cond_26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mSpeedMin:F

    move/from16 v22, v0

    :cond_26
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->strokeWidth(F)F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentWidth:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPointPressure:F

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentPressure:F

    const v21, 0x3e4ccccd    # 0.2f

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->isFinger:Z

    if-eqz v3, :cond_27

    const v21, 0x3e99999a    # 0.3f

    :cond_27
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentWidth:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastWidth:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastWidth:F

    mul-float v4, v4, v21

    cmpl-float v3, v3, v4

    if-lez v3, :cond_28

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentWidth:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastWidth:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2d

    const/high16 v3, 0x3f800000    # 1.0f

    add-float v3, v3, v21

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastWidth:F

    mul-float/2addr v3, v4

    :goto_1a
    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentWidth:F

    :cond_28
    move v14, v11

    move v15, v12

    move v13, v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nLeft:I

    if-ge v3, v4, :cond_2e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    :goto_1b
    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nLeft:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nLeft:I

    if-ge v3, v4, :cond_2f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    :goto_1c
    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nLeft:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nLeft:I

    if-ge v3, v4, :cond_30

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    :goto_1d
    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nLeft:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nRight:I

    if-le v3, v4, :cond_31

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    :goto_1e
    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nRight:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nRight:I

    if-le v3, v4, :cond_32

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    :goto_1f
    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nRight:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nRight:I

    if-le v3, v4, :cond_33

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    :goto_20
    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nRight:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nTop:I

    if-ge v3, v4, :cond_34

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    :goto_21
    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nTop:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nTop:I

    if-ge v3, v4, :cond_35

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    :goto_22
    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nTop:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nTop:I

    if-ge v3, v4, :cond_36

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    :goto_23
    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nTop:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nBottom:I

    if-le v3, v4, :cond_37

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    :goto_24
    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nBottom:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nBottom:I

    if-le v3, v4, :cond_38

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    :goto_25
    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nBottom:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nBottom:I

    if-le v3, v4, :cond_39

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    :goto_26
    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nBottom:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nLeft:I

    if-ge v3, v5, :cond_3a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    :goto_27
    iput v3, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nRight:I

    if-le v3, v5, :cond_3b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    :goto_28
    iput v3, v4, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nTop:I

    if-ge v3, v5, :cond_3c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    :goto_29
    iput v3, v4, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nBottom:I

    if-le v3, v5, :cond_3d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    :goto_2a
    iput v3, v4, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bInitWidthVarRatio:Z

    if-nez v3, :cond_29

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentWidth:F

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastWidth:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentPressure:F

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastPressure:F

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bInitWidthVarRatio:Z

    :cond_29
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentWidth:F

    const/high16 v4, 0x3f000000    # 0.5f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2a

    const/high16 v3, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentWidth:F

    :cond_2a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bConstWidth:Z

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->draw_Directional(Landroid/graphics/Paint;ZZ)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPoint:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iput v4, v3, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPoint:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iput v4, v3, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPointPressure:F

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPointPressure:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentWidth:F

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastWidth:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentPressure:F

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastPressure:F

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastVelocity:F

    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_17

    :cond_2b
    const/high16 v10, 0x3f800000    # 1.0f

    goto/16 :goto_18

    :cond_2c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iput v11, v3, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iput v12, v3, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iput v10, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPointPressure:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    add-int v4, v11, v14

    shr-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    add-int v4, v12, v15

    shr-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroid/graphics/Point;->y:I

    add-float v3, v10, v13

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPointPressure:F

    goto/16 :goto_19

    :cond_2d
    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v3, v3, v21

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastWidth:F

    mul-float/2addr v3, v4

    goto/16 :goto_1a

    :cond_2e
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nLeft:I

    goto/16 :goto_1b

    :cond_2f
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nLeft:I

    goto/16 :goto_1c

    :cond_30
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nLeft:I

    goto/16 :goto_1d

    :cond_31
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nRight:I

    goto/16 :goto_1e

    :cond_32
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nRight:I

    goto/16 :goto_1f

    :cond_33
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nRight:I

    goto/16 :goto_20

    :cond_34
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nTop:I

    goto/16 :goto_21

    :cond_35
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nTop:I

    goto/16 :goto_22

    :cond_36
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nTop:I

    goto/16 :goto_23

    :cond_37
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nBottom:I

    goto/16 :goto_24

    :cond_38
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nBottom:I

    goto/16 :goto_25

    :cond_39
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nBottom:I

    goto/16 :goto_26

    :cond_3a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nLeft:I

    goto/16 :goto_27

    :cond_3b
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nRight:I

    goto/16 :goto_28

    :cond_3c
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nTop:I

    goto/16 :goto_29

    :cond_3d
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nBottom:I

    goto/16 :goto_2a

    :cond_3e
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bConstWidth:Z

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPointData:Ljava/util/Vector;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPointData:Ljava/util/Vector;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->fmXBezier:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->fmYBezier:I

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bSpeedAndPressure:Z

    if-eqz v3, :cond_3f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPointDataPressure:Ljava/util/Vector;

    invoke-static/range {p3 .. p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->fmBezierPressure:F

    :cond_3f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPointData:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    shr-int/lit8 v19, v3, 0x1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPressure:F

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v10, 0x0

    const v3, 0xffff

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nLeft:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nRight:I

    const v3, 0xffff

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nTop:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nBottom:I

    move/from16 v18, v20

    :goto_2b
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPointData:Ljava/util/Vector;

    mul-int/lit8 v4, v18, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPointData:Ljava/util/Vector;

    mul-int/lit8 v4, v18, 0x2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bSpeedAndPressure:Z

    if-eqz v3, :cond_47

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPointDataPressure:Ljava/util/Vector;

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v10

    :goto_2c
    sub-int v3, v11, v14

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v0, v3

    move/from16 v16, v0

    sub-int v3, v12, v15

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v0, v3

    move/from16 v17, v0

    const/high16 v3, 0x40c00000    # 6.0f

    cmpl-float v3, v16, v3

    if-gez v3, :cond_40

    const/high16 v3, 0x40c00000    # 6.0f

    cmpl-float v3, v17, v3

    if-ltz v3, :cond_48

    :cond_40
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    add-int v4, v11, v14

    shr-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    add-int v4, v12, v15

    shr-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroid/graphics/Point;->y:I

    add-float v3, v10, v13

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPointPressure:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    iput v14, v3, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    iput v15, v3, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPointPressure:F

    :goto_2d
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bSpeedAndPressure:Z

    if-eqz v3, :cond_44

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->velocityFrom(Landroid/graphics/Point;J)F

    move-result v22

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->VELOCITY_FILTER_WEIGHT:F

    mul-float v3, v3, v22

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->VELOCITY_FILTER_WEIGHT:F

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastVelocity:F

    mul-float/2addr v4, v5

    add-float v22, v3, v4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mSpeedMax:F

    cmpl-float v3, v22, v3

    if-lez v3, :cond_41

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mSpeedMax:F

    move/from16 v22, v0

    :cond_41
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mSpeedMin:F

    cmpg-float v3, v22, v3

    if-gez v3, :cond_42

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mSpeedMin:F

    move/from16 v22, v0

    :cond_42
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->strokeWidth(F)F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentWidth:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPointPressure:F

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentPressure:F

    const v21, 0x3e4ccccd    # 0.2f

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->isFinger:Z

    if-eqz v3, :cond_43

    const v21, 0x3e99999a    # 0.3f

    :cond_43
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentWidth:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastWidth:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastWidth:F

    mul-float v4, v4, v21

    cmpl-float v3, v3, v4

    if-lez v3, :cond_44

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentWidth:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastWidth:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_49

    const/high16 v3, 0x3f800000    # 1.0f

    add-float v3, v3, v21

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastWidth:F

    mul-float/2addr v3, v4

    :goto_2e
    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentWidth:F

    :cond_44
    move v14, v11

    move v15, v12

    move v13, v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nLeft:I

    if-ge v3, v4, :cond_4a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    :goto_2f
    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nLeft:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nLeft:I

    if-ge v3, v4, :cond_4b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    :goto_30
    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nLeft:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nLeft:I

    if-ge v3, v4, :cond_4c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    :goto_31
    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nLeft:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nRight:I

    if-le v3, v4, :cond_4d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    :goto_32
    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nRight:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nRight:I

    if-le v3, v4, :cond_4e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    :goto_33
    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nRight:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nRight:I

    if-le v3, v4, :cond_4f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    :goto_34
    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nRight:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nTop:I

    if-ge v3, v4, :cond_50

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    :goto_35
    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nTop:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nTop:I

    if-ge v3, v4, :cond_51

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    :goto_36
    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nTop:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nTop:I

    if-ge v3, v4, :cond_52

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    :goto_37
    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nTop:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nBottom:I

    if-le v3, v4, :cond_53

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    :goto_38
    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nBottom:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nBottom:I

    if-le v3, v4, :cond_54

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    :goto_39
    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nBottom:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nBottom:I

    if-le v3, v4, :cond_55

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    :goto_3a
    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nBottom:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nLeft:I

    if-ge v3, v5, :cond_56

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    :goto_3b
    iput v3, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nRight:I

    if-le v3, v5, :cond_57

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    :goto_3c
    iput v3, v4, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nTop:I

    if-ge v3, v5, :cond_58

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    :goto_3d
    iput v3, v4, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nBottom:I

    if-le v3, v5, :cond_59

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    :goto_3e
    iput v3, v4, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bInitWidthVarRatio:Z

    if-nez v3, :cond_45

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentWidth:F

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastWidth:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentPressure:F

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastPressure:F

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bInitWidthVarRatio:Z

    :cond_45
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentWidth:F

    const/high16 v4, 0x3f000000    # 0.5f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_46

    const/high16 v3, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentWidth:F

    :cond_46
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bConstWidth:Z

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->draw_Directional(Landroid/graphics/Paint;ZZ)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPoint:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iput v4, v3, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPoint:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iput v4, v3, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPointPressure:F

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPointPressure:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentWidth:F

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastWidth:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentPressure:F

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastPressure:F

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastVelocity:F

    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_2b

    :cond_47
    const/high16 v10, 0x3f800000    # 1.0f

    goto/16 :goto_2c

    :cond_48
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iput v11, v3, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iput v12, v3, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iput v10, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPointPressure:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    add-int v4, v11, v14

    shr-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    add-int v4, v12, v15

    shr-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroid/graphics/Point;->y:I

    add-float v3, v10, v13

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPointPressure:F

    goto/16 :goto_2d

    :cond_49
    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v3, v3, v21

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastWidth:F

    mul-float/2addr v3, v4

    goto/16 :goto_2e

    :cond_4a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nLeft:I

    goto/16 :goto_2f

    :cond_4b
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nLeft:I

    goto/16 :goto_30

    :cond_4c
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nLeft:I

    goto/16 :goto_31

    :cond_4d
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nRight:I

    goto/16 :goto_32

    :cond_4e
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nRight:I

    goto/16 :goto_33

    :cond_4f
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nRight:I

    goto/16 :goto_34

    :cond_50
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nTop:I

    goto/16 :goto_35

    :cond_51
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nTop:I

    goto/16 :goto_36

    :cond_52
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nTop:I

    goto/16 :goto_37

    :cond_53
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nBottom:I

    goto/16 :goto_38

    :cond_54
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nBottom:I

    goto/16 :goto_39

    :cond_55
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nBottom:I

    goto/16 :goto_3a

    :cond_56
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nLeft:I

    goto/16 :goto_3b

    :cond_57
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nRight:I

    goto/16 :goto_3c

    :cond_58
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nTop:I

    goto/16 :goto_3d

    :cond_59
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nBottom:I

    goto/16 :goto_3e

    :cond_5a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->pathRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sget v5, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->offset:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sget v6, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->offset:I

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sget v7, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->offset:I

    add-int/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sget v8, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->offset:I

    add-int/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->pathRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->invalidate(Landroid/graphics/Rect;)V

    goto/16 :goto_4
.end method

.method public dealTouchUpEvent(IIFJ)V
    .locals 26

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bButtonDown:Z

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->isEndBrush:Z

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->Countlen:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->pathCount:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPointData:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    shr-int/lit8 v21, v4, 0x1

    const/16 v20, 0x0

    const v4, 0xffff

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nLeft:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nRight:I

    const v4, 0xffff

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nTop:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nBottom:I

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPointData:Ljava/util/Vector;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPointData:Ljava/util/Vector;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->fmXBezier:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->fmYBezier:I

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bSpeedAndPressure:Z

    if-eqz v4, :cond_22

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bSpeedAndPressure:Z

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPointDataPressure:Ljava/util/Vector;

    invoke-static/range {p3 .. p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->fmBezierPressure:F

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPointData:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    shr-int/lit8 v20, v4, 0x1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->fmXBezier:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->fmYBezier:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPressure:F

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v11, 0x0

    const v4, 0xffff

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nLeft:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nRight:I

    const v4, 0xffff

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nTop:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nBottom:I

    move/from16 v19, v21

    :goto_1
    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_7

    :cond_3
    move/from16 v0, v21

    move/from16 v1, v20

    if-ge v0, v1, :cond_4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->pathCount:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->Countlen:I

    if-le v4, v5, :cond_5a

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bDrawToCanvas:Z

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->fullPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->linePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->pathRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sget v6, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->offset:I

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sget v7, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->offset:I

    sub-int/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    sget v8, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->offset:I

    add-int/2addr v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sget v9, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->offset:I

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->pathRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->invalidate(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->fullPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->rewind()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->linePath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->rewind()V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->pathCount:I

    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->fmBezierPressure:F

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPressure:F

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bFirst:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bButtonDown:Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->ismove:Z

    const v4, 0x3f4ccccd    # 0.8f

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mFadingColorValue:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->startFadingTime:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mBakBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mBakBitmap:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Bitmap;->eraseColor(I)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mBakCanvas:Landroid/graphics/Canvas;

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mBakCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_6
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->isFading:Z

    if-eqz v4, :cond_0

    new-instance v22, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine$1;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine$1;-><init>(Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->handler:Landroid/os/Handler;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->handler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->m_fadingDelayTime:F

    float-to-long v6, v5

    move-object/from16 v0, v22

    invoke-virtual {v4, v0, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPointData:Ljava/util/Vector;

    mul-int/lit8 v5, v19, 0x2

    invoke-virtual {v4, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPointData:Ljava/util/Vector;

    mul-int/lit8 v5, v19, 0x2

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bSpeedAndPressure:Z

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPointDataPressure:Ljava/util/Vector;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v11

    :goto_3
    sub-int v4, v12, v15

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v0, v4

    move/from16 v17, v0

    sub-int v4, v13, v16

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v0, v4

    move/from16 v18, v0

    const/high16 v4, 0x40c00000    # 6.0f

    cmpl-float v4, v17, v4

    if-gez v4, :cond_8

    const/high16 v4, 0x40c00000    # 6.0f

    cmpl-float v4, v18, v4

    if-ltz v4, :cond_f

    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iput v12, v4, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iput v13, v4, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPointPressure:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    iput v15, v4, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    move/from16 v0, v16

    iput v0, v4, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPointPressure:F

    :goto_4
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bSpeedAndPressure:Z

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    invoke-direct {v0, v4, v1, v2}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->velocityFrom(Landroid/graphics/Point;J)F

    move-result v24

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->VELOCITY_FILTER_WEIGHT:F

    mul-float v4, v4, v24

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->VELOCITY_FILTER_WEIGHT:F

    sub-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastVelocity:F

    mul-float/2addr v5, v6

    add-float v24, v4, v5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mSpeedMax:F

    cmpl-float v4, v24, v4

    if-lez v4, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mSpeedMax:F

    move/from16 v24, v0

    :cond_9
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mSpeedMin:F

    cmpg-float v4, v24, v4

    if-gez v4, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mSpeedMin:F

    move/from16 v24, v0

    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->strokeWidth(F)F

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentWidth:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPointPressure:F

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentPressure:F

    const v23, 0x3e4ccccd    # 0.2f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentWidth:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastWidth:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastWidth:F

    mul-float v5, v5, v23

    cmpl-float v4, v4, v5

    if-lez v4, :cond_b

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentWidth:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastWidth:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_10

    const/high16 v4, 0x3f800000    # 1.0f

    add-float v4, v4, v23

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastWidth:F

    mul-float/2addr v4, v5

    :goto_5
    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentWidth:F

    :cond_b
    move v15, v12

    move/from16 v16, v13

    move v14, v11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nLeft:I

    if-ge v4, v5, :cond_11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    :goto_6
    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nLeft:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nLeft:I

    if-ge v4, v5, :cond_12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    :goto_7
    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nLeft:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nLeft:I

    if-ge v4, v5, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    :goto_8
    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nLeft:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nRight:I

    if-le v4, v5, :cond_14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    :goto_9
    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nRight:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nRight:I

    if-le v4, v5, :cond_15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    :goto_a
    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nRight:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nRight:I

    if-le v4, v5, :cond_16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    :goto_b
    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nRight:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nTop:I

    if-ge v4, v5, :cond_17

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    :goto_c
    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nTop:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nTop:I

    if-ge v4, v5, :cond_18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    :goto_d
    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nTop:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nTop:I

    if-ge v4, v5, :cond_19

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    :goto_e
    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nTop:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nBottom:I

    if-le v4, v5, :cond_1a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    :goto_f
    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nBottom:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nBottom:I

    if-le v4, v5, :cond_1b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    :goto_10
    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nBottom:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nBottom:I

    if-le v4, v5, :cond_1c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    :goto_11
    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nBottom:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nLeft:I

    if-ge v4, v6, :cond_1d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    :goto_12
    iput v4, v5, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nRight:I

    if-le v4, v6, :cond_1e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    :goto_13
    iput v4, v5, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nTop:I

    if-ge v4, v6, :cond_1f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    :goto_14
    iput v4, v5, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nBottom:I

    if-le v4, v6, :cond_20

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    :goto_15
    iput v4, v5, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bInitWidthVarRatio:Z

    if-nez v4, :cond_c

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentWidth:F

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastWidth:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentPressure:F

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastPressure:F

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bInitWidthVarRatio:Z

    :cond_c
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentWidth:F

    const/high16 v5, 0x3f000000    # 0.5f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_d

    const/high16 v4, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentWidth:F

    :cond_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastWidth:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentWidth:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastPressure:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentPressure:F

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bHasMoved:Z

    if-eqz v4, :cond_21

    const/4 v10, 0x0

    :goto_16
    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->draw_SpeedAndPressure(Landroid/graphics/Paint;FFFFZ)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPoint:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iput v5, v4, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPoint:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    iput v5, v4, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPointPressure:F

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPointPressure:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentWidth:F

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastWidth:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentPressure:F

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastPressure:F

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastVelocity:F

    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_1

    :cond_e
    const/high16 v11, 0x3f800000    # 1.0f

    goto/16 :goto_3

    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iput v12, v4, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iput v13, v4, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPointPressure:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    add-int v5, v12, v15

    shr-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    add-int v5, v13, v16

    shr-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroid/graphics/Point;->y:I

    add-float v4, v11, v14

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPointPressure:F

    goto/16 :goto_4

    :cond_10
    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v4, v4, v23

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastWidth:F

    mul-float/2addr v4, v5

    goto/16 :goto_5

    :cond_11
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nLeft:I

    goto/16 :goto_6

    :cond_12
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nLeft:I

    goto/16 :goto_7

    :cond_13
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nLeft:I

    goto/16 :goto_8

    :cond_14
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nRight:I

    goto/16 :goto_9

    :cond_15
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nRight:I

    goto/16 :goto_a

    :cond_16
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nRight:I

    goto/16 :goto_b

    :cond_17
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nTop:I

    goto/16 :goto_c

    :cond_18
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nTop:I

    goto/16 :goto_d

    :cond_19
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nTop:I

    goto/16 :goto_e

    :cond_1a
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nBottom:I

    goto/16 :goto_f

    :cond_1b
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nBottom:I

    goto/16 :goto_10

    :cond_1c
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nBottom:I

    goto/16 :goto_11

    :cond_1d
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nLeft:I

    goto/16 :goto_12

    :cond_1e
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nRight:I

    goto/16 :goto_13

    :cond_1f
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nTop:I

    goto/16 :goto_14

    :cond_20
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nBottom:I

    goto/16 :goto_15

    :cond_21
    const/4 v10, 0x1

    goto/16 :goto_16

    :cond_22
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bDirectional:Z

    if-eqz v4, :cond_3e

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bSpeedAndPressure:Z

    if-eqz v4, :cond_23

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPointDataPressure:Ljava/util/Vector;

    invoke-static/range {p3 .. p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->fmBezierPressure:F

    :cond_23
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPointData:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    shr-int/lit8 v20, v4, 0x1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->fmXBezier:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->fmYBezier:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPressure:F

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v11, 0x0

    const v4, 0xffff

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nLeft:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nRight:I

    const v4, 0xffff

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nTop:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nBottom:I

    move/from16 v19, v21

    :goto_17
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPointData:Ljava/util/Vector;

    mul-int/lit8 v5, v19, 0x2

    invoke-virtual {v4, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPointData:Ljava/util/Vector;

    mul-int/lit8 v5, v19, 0x2

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bSpeedAndPressure:Z

    if-eqz v4, :cond_2a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPointDataPressure:Ljava/util/Vector;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v11

    :goto_18
    sub-int v4, v12, v15

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v0, v4

    move/from16 v17, v0

    sub-int v4, v13, v16

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v0, v4

    move/from16 v18, v0

    const/high16 v4, 0x40c00000    # 6.0f

    cmpl-float v4, v17, v4

    if-gez v4, :cond_24

    const/high16 v4, 0x40c00000    # 6.0f

    cmpl-float v4, v18, v4

    if-ltz v4, :cond_2b

    :cond_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iput v12, v4, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iput v13, v4, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPointPressure:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    iput v15, v4, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    move/from16 v0, v16

    iput v0, v4, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPointPressure:F

    :goto_19
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bSpeedAndPressure:Z

    if-eqz v4, :cond_27

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    invoke-direct {v0, v4, v1, v2}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->velocityFrom(Landroid/graphics/Point;J)F

    move-result v24

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->VELOCITY_FILTER_WEIGHT:F

    mul-float v4, v4, v24

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->VELOCITY_FILTER_WEIGHT:F

    sub-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastVelocity:F

    mul-float/2addr v5, v6

    add-float v24, v4, v5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mSpeedMax:F

    cmpl-float v4, v24, v4

    if-lez v4, :cond_25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mSpeedMax:F

    move/from16 v24, v0

    :cond_25
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mSpeedMin:F

    cmpg-float v4, v24, v4

    if-gez v4, :cond_26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mSpeedMin:F

    move/from16 v24, v0

    :cond_26
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->strokeWidth(F)F

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentWidth:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPointPressure:F

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentPressure:F

    const v23, 0x3e4ccccd    # 0.2f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentWidth:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastWidth:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastWidth:F

    mul-float v5, v5, v23

    cmpl-float v4, v4, v5

    if-lez v4, :cond_27

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentWidth:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastWidth:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2c

    const/high16 v4, 0x3f800000    # 1.0f

    add-float v4, v4, v23

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastWidth:F

    mul-float/2addr v4, v5

    :goto_1a
    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentWidth:F

    :cond_27
    move v15, v12

    move/from16 v16, v13

    move v14, v11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nLeft:I

    if-ge v4, v5, :cond_2d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    :goto_1b
    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nLeft:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nLeft:I

    if-ge v4, v5, :cond_2e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    :goto_1c
    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nLeft:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nLeft:I

    if-ge v4, v5, :cond_2f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    :goto_1d
    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nLeft:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nRight:I

    if-le v4, v5, :cond_30

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    :goto_1e
    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nRight:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nRight:I

    if-le v4, v5, :cond_31

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    :goto_1f
    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nRight:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nRight:I

    if-le v4, v5, :cond_32

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    :goto_20
    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nRight:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nTop:I

    if-ge v4, v5, :cond_33

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    :goto_21
    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nTop:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nTop:I

    if-ge v4, v5, :cond_34

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    :goto_22
    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nTop:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nTop:I

    if-ge v4, v5, :cond_35

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    :goto_23
    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nTop:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nBottom:I

    if-le v4, v5, :cond_36

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    :goto_24
    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nBottom:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nBottom:I

    if-le v4, v5, :cond_37

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    :goto_25
    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nBottom:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nBottom:I

    if-le v4, v5, :cond_38

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    :goto_26
    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nBottom:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nLeft:I

    if-ge v4, v6, :cond_39

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    :goto_27
    iput v4, v5, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nRight:I

    if-le v4, v6, :cond_3a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    :goto_28
    iput v4, v5, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nTop:I

    if-ge v4, v6, :cond_3b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    :goto_29
    iput v4, v5, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nBottom:I

    if-le v4, v6, :cond_3c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    :goto_2a
    iput v4, v5, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bInitWidthVarRatio:Z

    if-nez v4, :cond_28

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentWidth:F

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastWidth:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentPressure:F

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastPressure:F

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bInitWidthVarRatio:Z

    :cond_28
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentWidth:F

    const/high16 v5, 0x3f000000    # 0.5f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_29

    const/high16 v4, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentWidth:F

    :cond_29
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bConstWidth:Z

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bHasMoved:Z

    if-eqz v4, :cond_3d

    const/4 v4, 0x0

    :goto_2b
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v4}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->draw_Directional(Landroid/graphics/Paint;ZZ)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPoint:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iput v5, v4, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPoint:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    iput v5, v4, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPointPressure:F

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPointPressure:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentWidth:F

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastWidth:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentPressure:F

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastPressure:F

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastVelocity:F

    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_17

    :cond_2a
    const/high16 v11, 0x3f800000    # 1.0f

    goto/16 :goto_18

    :cond_2b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iput v12, v4, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iput v13, v4, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPointPressure:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    add-int v5, v12, v15

    shr-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    add-int v5, v13, v16

    shr-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroid/graphics/Point;->y:I

    add-float v4, v11, v14

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPointPressure:F

    goto/16 :goto_19

    :cond_2c
    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v4, v4, v23

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastWidth:F

    mul-float/2addr v4, v5

    goto/16 :goto_1a

    :cond_2d
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nLeft:I

    goto/16 :goto_1b

    :cond_2e
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nLeft:I

    goto/16 :goto_1c

    :cond_2f
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nLeft:I

    goto/16 :goto_1d

    :cond_30
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nRight:I

    goto/16 :goto_1e

    :cond_31
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nRight:I

    goto/16 :goto_1f

    :cond_32
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nRight:I

    goto/16 :goto_20

    :cond_33
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nTop:I

    goto/16 :goto_21

    :cond_34
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nTop:I

    goto/16 :goto_22

    :cond_35
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nTop:I

    goto/16 :goto_23

    :cond_36
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nBottom:I

    goto/16 :goto_24

    :cond_37
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nBottom:I

    goto/16 :goto_25

    :cond_38
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nBottom:I

    goto/16 :goto_26

    :cond_39
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nLeft:I

    goto/16 :goto_27

    :cond_3a
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nRight:I

    goto/16 :goto_28

    :cond_3b
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nTop:I

    goto/16 :goto_29

    :cond_3c
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nBottom:I

    goto/16 :goto_2a

    :cond_3d
    const/4 v4, 0x1

    goto/16 :goto_2b

    :cond_3e
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bConstWidth:Z

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bSpeedAndPressure:Z

    if-eqz v4, :cond_3f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPointDataPressure:Ljava/util/Vector;

    invoke-static/range {p3 .. p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->fmBezierPressure:F

    :cond_3f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPointData:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    shr-int/lit8 v20, v4, 0x1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->fmXBezier:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->fmYBezier:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPressure:F

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v11, 0x0

    const v4, 0xffff

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nLeft:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nRight:I

    const v4, 0xffff

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nTop:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nBottom:I

    move/from16 v19, v21

    :goto_2c
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPointData:Ljava/util/Vector;

    mul-int/lit8 v5, v19, 0x2

    invoke-virtual {v4, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPointData:Ljava/util/Vector;

    mul-int/lit8 v5, v19, 0x2

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bSpeedAndPressure:Z

    if-eqz v4, :cond_46

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPointDataPressure:Ljava/util/Vector;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v11

    :goto_2d
    sub-int v4, v12, v15

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v0, v4

    move/from16 v17, v0

    sub-int v4, v13, v16

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v0, v4

    move/from16 v18, v0

    const/high16 v4, 0x40c00000    # 6.0f

    cmpl-float v4, v17, v4

    if-gez v4, :cond_40

    const/high16 v4, 0x40c00000    # 6.0f

    cmpl-float v4, v18, v4

    if-ltz v4, :cond_47

    :cond_40
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iput v12, v4, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iput v13, v4, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPointPressure:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    iput v15, v4, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    move/from16 v0, v16

    iput v0, v4, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPointPressure:F

    :goto_2e
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bSpeedAndPressure:Z

    if-eqz v4, :cond_43

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    invoke-direct {v0, v4, v1, v2}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->velocityFrom(Landroid/graphics/Point;J)F

    move-result v24

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->VELOCITY_FILTER_WEIGHT:F

    mul-float v4, v4, v24

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->VELOCITY_FILTER_WEIGHT:F

    sub-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastVelocity:F

    mul-float/2addr v5, v6

    add-float v24, v4, v5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mSpeedMax:F

    cmpl-float v4, v24, v4

    if-lez v4, :cond_41

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mSpeedMax:F

    move/from16 v24, v0

    :cond_41
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mSpeedMin:F

    cmpg-float v4, v24, v4

    if-gez v4, :cond_42

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mSpeedMin:F

    move/from16 v24, v0

    :cond_42
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->strokeWidth(F)F

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentWidth:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPointPressure:F

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentPressure:F

    const v23, 0x3e4ccccd    # 0.2f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentWidth:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastWidth:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastWidth:F

    mul-float v5, v5, v23

    cmpl-float v4, v4, v5

    if-lez v4, :cond_43

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentWidth:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastWidth:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_48

    const/high16 v4, 0x3f800000    # 1.0f

    add-float v4, v4, v23

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastWidth:F

    mul-float/2addr v4, v5

    :goto_2f
    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentWidth:F

    :cond_43
    move v15, v12

    move/from16 v16, v13

    move v14, v11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nLeft:I

    if-ge v4, v5, :cond_49

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    :goto_30
    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nLeft:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nLeft:I

    if-ge v4, v5, :cond_4a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    :goto_31
    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nLeft:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nLeft:I

    if-ge v4, v5, :cond_4b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    :goto_32
    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nLeft:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nRight:I

    if-le v4, v5, :cond_4c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    :goto_33
    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nRight:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nRight:I

    if-le v4, v5, :cond_4d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    :goto_34
    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nRight:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nRight:I

    if-le v4, v5, :cond_4e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    :goto_35
    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nRight:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nTop:I

    if-ge v4, v5, :cond_4f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    :goto_36
    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nTop:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nTop:I

    if-ge v4, v5, :cond_50

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    :goto_37
    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nTop:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nTop:I

    if-ge v4, v5, :cond_51

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    :goto_38
    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nTop:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nBottom:I

    if-le v4, v5, :cond_52

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    :goto_39
    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nBottom:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nBottom:I

    if-le v4, v5, :cond_53

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    :goto_3a
    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nBottom:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nBottom:I

    if-le v4, v5, :cond_54

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    :goto_3b
    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nBottom:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nLeft:I

    if-ge v4, v6, :cond_55

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    :goto_3c
    iput v4, v5, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nRight:I

    if-le v4, v6, :cond_56

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    :goto_3d
    iput v4, v5, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nTop:I

    if-ge v4, v6, :cond_57

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    :goto_3e
    iput v4, v5, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nBottom:I

    if-le v4, v6, :cond_58

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    :goto_3f
    iput v4, v5, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bInitWidthVarRatio:Z

    if-nez v4, :cond_44

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentWidth:F

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastWidth:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentPressure:F

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastPressure:F

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bInitWidthVarRatio:Z

    :cond_44
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentWidth:F

    const/high16 v5, 0x3f000000    # 0.5f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_45

    const/high16 v4, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentWidth:F

    :cond_45
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bConstWidth:Z

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bHasMoved:Z

    if-eqz v4, :cond_59

    const/4 v4, 0x0

    :goto_40
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v4}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->draw_Directional(Landroid/graphics/Paint;ZZ)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPoint:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iput v5, v4, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPoint:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    iput v5, v4, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPointPressure:F

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastDrawPointPressure:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentWidth:F

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastWidth:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentPressure:F

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastPressure:F

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastVelocity:F

    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_2c

    :cond_46
    const/high16 v11, 0x3f800000    # 1.0f

    goto/16 :goto_2d

    :cond_47
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iput v12, v4, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPoint:Landroid/graphics/Point;

    iput v13, v4, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->currentEndPointPressure:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    add-int v5, v12, v15

    shr-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPoint:Landroid/graphics/Point;

    add-int v5, v13, v16

    shr-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroid/graphics/Point;->y:I

    add-float v4, v11, v14

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->midControlPointPressure:F

    goto/16 :goto_2e

    :cond_48
    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v4, v4, v23

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lastWidth:F

    mul-float/2addr v4, v5

    goto/16 :goto_2f

    :cond_49
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nLeft:I

    goto/16 :goto_30

    :cond_4a
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nLeft:I

    goto/16 :goto_31

    :cond_4b
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nLeft:I

    goto/16 :goto_32

    :cond_4c
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nRight:I

    goto/16 :goto_33

    :cond_4d
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nRight:I

    goto/16 :goto_34

    :cond_4e
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nRight:I

    goto/16 :goto_35

    :cond_4f
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nTop:I

    goto/16 :goto_36

    :cond_50
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nTop:I

    goto/16 :goto_37

    :cond_51
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nTop:I

    goto/16 :goto_38

    :cond_52
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nBottom:I

    goto/16 :goto_39

    :cond_53
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nBottom:I

    goto/16 :goto_3a

    :cond_54
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nBottom:I

    goto/16 :goto_3b

    :cond_55
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nLeft:I

    goto/16 :goto_3c

    :cond_56
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nRight:I

    goto/16 :goto_3d

    :cond_57
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nTop:I

    goto/16 :goto_3e

    :cond_58
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nBottom:I

    goto/16 :goto_3f

    :cond_59
    const/4 v4, 0x1

    goto/16 :goto_40

    :cond_5a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->pathRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sget v6, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->offset:I

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sget v7, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->offset:I

    sub-int/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    sget v8, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->offset:I

    add-int/2addr v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sget v9, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->offset:I

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->pathRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->invalidate(Landroid/graphics/Rect;)V

    goto/16 :goto_2
.end method

.method public drawSignature(Landroid/graphics/Canvas;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->fullPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method getAngleByTwoPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 7

    const v6, 0x40490fdb    # (float)Math.PI

    const/4 v1, 0x0

    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget v3, p2, Landroid/graphics/PointF;->x:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    iget v2, p1, Landroid/graphics/PointF;->y:F

    iget v3, p2, Landroid/graphics/PointF;->y:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p2, Landroid/graphics/PointF;->x:F

    iget v3, p1, Landroid/graphics/PointF;->x:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v1, p2, Landroid/graphics/PointF;->y:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    const v0, 0x3fc90fdb

    goto :goto_0

    :cond_2
    const v0, 0x4096cbe4

    goto :goto_0

    :cond_3
    iget v2, p2, Landroid/graphics/PointF;->y:F

    iget v3, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    iget v4, p2, Landroid/graphics/PointF;->x:F

    iget v5, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    double-to-float v0, v2

    cmpl-float v2, v0, v1

    if-lez v2, :cond_4

    iget v1, p2, Landroid/graphics/PointF;->y:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    add-float/2addr v0, v6

    goto :goto_0

    :cond_4
    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    iget v1, p2, Landroid/graphics/PointF;->y:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5

    add-float/2addr v0, v6

    goto :goto_0

    :cond_5
    const v1, 0x40c90fdb

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method public getLock()Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method public getRenderDataCalligraphy()[F
    .locals 1

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mRenderDataCalligraphy:[F

    return-object v0
.end method

.method public getRenderDataCalligraphyLength()I
    .locals 1

    iget v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mRenderDataCalligraphyLength:I

    return v0
.end method

.method public invalidate()V
    .locals 1

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mParentView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public needClearCommond()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->m_bNeedClearCommand:Z

    return v0
.end method

.method public onCreateView(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mParentView:Landroid/view/View;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bNewParentView:Z

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mCanvas:Landroid/graphics/Canvas;

    :cond_0
    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mBakCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mBakCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mBakCanvas:Landroid/graphics/Canvas;

    :cond_1
    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mBitmap:Landroid/graphics/Bitmap;

    :cond_2
    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mBakBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mBakBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mBakBitmap:Landroid/graphics/Bitmap;

    :cond_3
    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->handler:Landroid/os/Handler;

    if-nez v0, :cond_4

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->handler:Landroid/os/Handler;

    :cond_4
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mCanvas:Landroid/graphics/Canvas;

    :cond_0
    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mBakCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mBakCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mBakCanvas:Landroid/graphics/Canvas;

    :cond_1
    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mBitmap:Landroid/graphics/Bitmap;

    :cond_2
    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mBakBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mBakBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mBakBitmap:Landroid/graphics/Bitmap;

    :cond_3
    iput-object v1, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->handler:Landroid/os/Handler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bNewParentView:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return v2

    :pswitch_0
    iput-boolean v2, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bIsDown:Z

    iput-boolean v1, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->m_bNeedClearCommand:Z

    invoke-virtual {p0, p1}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->touch_down(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_1
    iget-boolean v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bIsDown:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->m_bNeedClearCommand:Z

    invoke-virtual {p0, p1}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->touch_move(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_2
    iput-boolean v1, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->m_bNeedClearCommand:Z

    invoke-virtual {p0, p1}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->touch_up(Landroid/view/MotionEvent;)V

    iput-boolean v1, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bIsDown:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public resetRenderDataCalligraphy()V
    .locals 2

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mRenderDataCalligraphyLength:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setBackgroundBmp(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setBrushStyle(Lcom/sec/dmc/calligraphyengine/CalligraphyEngine$DrawStyle;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->drawStyle:Lcom/sec/dmc/calligraphyengine/CalligraphyEngine$DrawStyle;

    return-void
.end method

.method public setConstWidth(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bConstWidth:Z

    return-void
.end method

.method public setDPI(F)V
    .locals 3

    const/high16 v2, 0x43200000    # 160.0f

    move v0, p1

    const/high16 v1, 0x43f00000    # 480.0f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    const/high16 v0, 0x43f00000    # 480.0f

    :cond_0
    cmpg-float v1, v0, v2

    if-gez v1, :cond_1

    const/high16 v0, 0x43200000    # 160.0f

    :cond_1
    sub-float v1, v0, v2

    const v2, 0x3b4ccccd    # 0.003125f

    mul-float v0, v1, v2

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3fa66666    # 1.3f

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    iput v1, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->g_step:F

    iput p1, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->g_dpi:F

    return-void
.end method

.method public setDefaultColor(I)V
    .locals 2

    iput p1, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mDefaultColor:I

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mDefaultColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mLinePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mDefaultColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setDirectional(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bDirectional:Z

    return-void
.end method

.method public setFading(Z)V
    .locals 3

    const/4 v1, 0x0

    iput-boolean p1, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->isFading:Z

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mBakBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mWidth:I

    iget v1, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mBakBitmap:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mBakCanvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mBakBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mBakCanvas:Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mBakCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mBakBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mBakBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mBakCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mBakCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mBakCanvas:Landroid/graphics/Canvas;

    :cond_3
    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mBakBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mBakBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mBakBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public setGLHeight(I)V
    .locals 0

    iput p1, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mGlHeight:I

    return-void
.end method

.method public setInputMode(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->isFinger:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSigStyle(Lcom/sec/dmc/calligraphyengine/CalligraphyEngine$SigStyle;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->$SWITCH_TABLE$com$sec$dmc$calligraphyengine$CalligraphyEngine$SigStyle()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine$SigStyle;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->getInstance()Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->setSpeedAndPressure(Z)V

    invoke-static {}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->getInstance()Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->setDirectional(Z)V

    invoke-static {}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->getInstance()Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->setConstWidth(Z)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->getInstance()Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->setSpeedAndPressure(Z)V

    invoke-static {}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->getInstance()Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->setDirectional(Z)V

    invoke-static {}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->getInstance()Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->setConstWidth(Z)V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->getInstance()Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->setSpeedAndPressure(Z)V

    invoke-static {}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->getInstance()Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->setDirectional(Z)V

    invoke-static {}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->getInstance()Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->setConstWidth(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setSpeedAndPressure(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->bSpeedAndPressure:Z

    return-void
.end method

.method public setStrokeWidth(I)V
    .locals 2

    const/4 v0, 0x4

    if-gt p1, v0, :cond_0

    const/4 p1, 0x4

    :cond_0
    iput p1, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nWidth:I

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mLinePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->nWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public setViewPosition([I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->m_viewPosition:[I

    aget v1, p1, v2

    aput v1, v0, v2

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->m_viewPosition:[I

    aget v1, p1, v3

    aput v1, v0, v3

    return-void
.end method

.method public setWidthAndHeight(II)V
    .locals 0

    iput p1, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mWidth:I

    iput p2, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mHeight:I

    invoke-direct {p0}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->initCanvas()V

    return-void
.end method

.method public touch_down(Landroid/view/MotionEvent;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->m_lastEventTime:J

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->setInputMode(I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->dealTouchDownEvent(II)V

    return-void
.end method

.method public touch_move(Landroid/view/MotionEvent;)V
    .locals 12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    const/4 v4, 0x5

    if-le v0, v4, :cond_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    if-lt v6, v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v1, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v2, v0

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->m_viewPosition:[I

    const/4 v4, 0x0

    aget v0, v0, v4

    sub-int/2addr v1, v0

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->m_viewPosition:[I

    const/4 v4, 0x1

    aget v0, v0, v4

    sub-int/2addr v2, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    iget-wide v4, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->m_lastEventTime:J

    sub-long v4, v8, v4

    const-wide/16 v10, 0xf

    cmp-long v0, v4, v10

    if-gez v0, :cond_1

    iget v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->m_lastX:I

    sub-int v0, v1, v0

    iget v4, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->m_lastX:I

    sub-int v4, v1, v4

    mul-int/2addr v0, v4

    iget v4, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->m_lastY:I

    sub-int v4, v2, v4

    iget v5, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->m_lastY:I

    sub-int v5, v2, v5

    mul-int/2addr v4, v5

    add-int/2addr v0, v4

    int-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    iget v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->g_dpi:F

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v0, v7

    float-to-double v10, v0

    cmpl-double v0, v4, v10

    if-lez v0, :cond_2

    :cond_1
    iget-wide v4, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->m_lastEventTime:J

    sub-long v4, v8, v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->dealTouchMoveEvent(IIFJ)V

    iput-wide v8, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->m_lastEventTime:J

    iput v1, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->m_lastX:I

    iput v2, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->m_lastY:I

    :cond_2
    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    const v4, 0xffff

    iput v4, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    iput v4, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    const v4, 0xffff

    iput v4, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    return-void

    :cond_3
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v0

    float-to-int v1, v0

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v0

    float-to-int v2, v0

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->m_viewPosition:[I

    const/4 v4, 0x0

    aget v0, v0, v4

    sub-int/2addr v1, v0

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->m_viewPosition:[I

    const/4 v4, 0x1

    aget v0, v0, v4

    sub-int/2addr v2, v0

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getHistoricalPressure(I)F

    move-result v3

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v8

    iget-wide v4, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->m_lastEventTime:J

    sub-long v4, v8, v4

    const-wide/16 v10, 0xf

    cmp-long v0, v4, v10

    if-gez v0, :cond_4

    iget v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->m_lastX:I

    sub-int v0, v1, v0

    iget v4, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->m_lastX:I

    sub-int v4, v1, v4

    mul-int/2addr v0, v4

    iget v4, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->m_lastY:I

    sub-int v4, v2, v4

    iget v5, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->m_lastY:I

    sub-int v5, v2, v5

    mul-int/2addr v4, v5

    add-int/2addr v0, v4

    int-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    iget v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->g_dpi:F

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v0, v7

    float-to-double v10, v0

    cmpl-double v0, v4, v10

    if-lez v0, :cond_5

    :cond_4
    iget-wide v4, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->m_lastEventTime:J

    sub-long v4, v8, v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->dealTouchMoveEvent(IIFJ)V

    iput-wide v8, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->m_lastEventTime:J

    iput v1, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->m_lastX:I

    iput v2, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->m_lastY:I

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0
.end method

.method public touch_up(Landroid/view/MotionEvent;)V
    .locals 12

    const/4 v6, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    if-lt v6, v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v1, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v2, v0

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->m_viewPosition:[I

    const/4 v4, 0x0

    aget v0, v0, v4

    sub-int/2addr v1, v0

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->m_viewPosition:[I

    const/4 v4, 0x1

    aget v0, v0, v4

    sub-int/2addr v2, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    iget-wide v4, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->m_lastEventTime:J

    sub-long v4, v8, v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->dealTouchUpEvent(IIFJ)V

    iput-wide v8, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->m_lastEventTime:J

    iput v1, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->m_lastX:I

    iput v2, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->m_lastY:I

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    const v4, 0xffff

    iput v4, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    iput v4, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    const v4, 0xffff

    iput v4, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->originalRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    return-void

    :cond_0
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v0

    float-to-int v1, v0

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v0

    float-to-int v2, v0

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->m_viewPosition:[I

    const/4 v4, 0x0

    aget v0, v0, v4

    sub-int/2addr v1, v0

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->m_viewPosition:[I

    const/4 v4, 0x1

    aget v0, v0, v4

    sub-int/2addr v2, v0

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getHistoricalPressure(I)F

    move-result v3

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v8

    iget-wide v4, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->m_lastEventTime:J

    sub-long v4, v8, v4

    const-wide/16 v10, 0xf

    cmp-long v0, v4, v10

    if-gez v0, :cond_1

    iget v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->m_lastX:I

    sub-int v0, v1, v0

    iget v4, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->m_lastX:I

    sub-int v4, v1, v4

    mul-int/2addr v0, v4

    iget v4, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->m_lastY:I

    sub-int v4, v2, v4

    iget v5, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->m_lastY:I

    sub-int v5, v2, v5

    mul-int/2addr v4, v5

    add-int/2addr v0, v4

    int-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    iget v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->g_dpi:F

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v0, v7

    float-to-double v10, v0

    cmpl-double v0, v4, v10

    if-lez v0, :cond_2

    :cond_1
    iget-wide v4, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->m_lastEventTime:J

    sub-long v4, v8, v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->dealTouchMoveEvent(IIFJ)V

    iput-wide v8, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->m_lastEventTime:J

    iput v1, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->m_lastX:I

    iput v2, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->m_lastY:I

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0
.end method

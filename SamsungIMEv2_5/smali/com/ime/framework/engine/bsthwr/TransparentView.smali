.class public Lcom/ime/framework/engine/bsthwr/TransparentView;
.super Landroid/view/View;
.source "TransparentView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ime/framework/engine/bsthwr/TransparentView$PathWithAlpha_t;
    }
.end annotation


# static fields
.field protected static final AlphaDecValue:I = 0x1e

.field protected static final DEBUG:Z = false

.field private static final IS_STARTING_HANDWRITING_TIMEOUT:I = 0x0

.field protected static final MaxStrokeNum:I = 0x10

.field protected static final TAG:Ljava/lang/String; = "TransparentView"

.field protected static final TOUCH_PARAM:I = 0x14

.field protected static final TOUCH_TOLERANCE:I = 0x6

.field protected static final mMinFadeValue:I = 0x12


# instance fields
.field protected MAX_MOVE_COUNT:I

.field protected MaxPath_count:I

.field private bButtonDown:Z

.field protected bMoreFading:Z

.field private handler:Landroid/os/Handler;

.field protected isStartWriting:Z

.field protected ismove:Z

.field private mBeautifyPaint:Landroid/graphics/Paint;

.field private mBeautifyPathList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ime/framework/engine/bsthwr/TransparentView$PathWithAlpha_t;",
            ">;"
        }
    .end annotation
.end field

.field private mInputManager:Lcom/ime/framework/common/InputManager;

.field protected mLinecolor:I

.field protected mLinewidth:I

.field protected mPaint:Landroid/graphics/Paint;

.field protected mPathList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ime/framework/engine/bsthwr/TransparentView$PathWithAlpha_t;",
            ">;"
        }
    .end annotation
.end field

.field protected mPointData:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mSpeed:I

.field protected mStrokeNum:I

.field protected orgDx:I

.field protected orgDy:I

.field protected orgX:I

.field protected orgY:I

.field protected stroke_count:I

.field protected x:I

.field protected y:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->MAX_MOVE_COUNT:I

    iput v2, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->MaxPath_count:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mPathList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mPointData:Ljava/util/Vector;

    iput-boolean v1, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->bButtonDown:Z

    iput-boolean v1, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->isStartWriting:Z

    iput v1, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->stroke_count:I

    iput v1, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mStrokeNum:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mLinewidth:I

    const/high16 v0, -0x10000

    iput v0, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mLinecolor:I

    iput-boolean v2, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->ismove:Z

    iput-boolean v1, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->bMoreFading:Z

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mBeautifyPaint:Landroid/graphics/Paint;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mBeautifyPathList:Ljava/util/ArrayList;

    const/16 v0, 0x2bc

    iput v0, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mSpeed:I

    new-instance v0, Lcom/ime/framework/engine/bsthwr/TransparentView$1;

    invoke-direct {v0, p0}, Lcom/ime/framework/engine/bsthwr/TransparentView$1;-><init>(Lcom/ime/framework/engine/bsthwr/TransparentView;)V

    iput-object v0, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->handler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-direct {p0}, Lcom/ime/framework/engine/bsthwr/TransparentView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->MAX_MOVE_COUNT:I

    iput v2, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->MaxPath_count:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mPathList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mPointData:Ljava/util/Vector;

    iput-boolean v1, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->bButtonDown:Z

    iput-boolean v1, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->isStartWriting:Z

    iput v1, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->stroke_count:I

    iput v1, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mStrokeNum:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mLinewidth:I

    const/high16 v0, -0x10000

    iput v0, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mLinecolor:I

    iput-boolean v2, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->ismove:Z

    iput-boolean v1, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->bMoreFading:Z

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mBeautifyPaint:Landroid/graphics/Paint;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mBeautifyPathList:Ljava/util/ArrayList;

    const/16 v0, 0x2bc

    iput v0, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mSpeed:I

    new-instance v0, Lcom/ime/framework/engine/bsthwr/TransparentView$1;

    invoke-direct {v0, p0}, Lcom/ime/framework/engine/bsthwr/TransparentView$1;-><init>(Lcom/ime/framework/engine/bsthwr/TransparentView;)V

    iput-object v0, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->handler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-direct {p0}, Lcom/ime/framework/engine/bsthwr/TransparentView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/ime/framework/engine/bsthwr/TransparentView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mBeautifyPathList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ime/framework/engine/bsthwr/TransparentView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private fadingAllStrokes(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ime/framework/engine/bsthwr/TransparentView$PathWithAlpha_t;",
            ">;)V"
        }
    .end annotation

    const/16 v3, 0x12

    const-string v1, "TransparentView"

    const-string v2, "----fadingAllStrokes-"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ime/framework/engine/bsthwr/TransparentView$PathWithAlpha_t;

    iget v2, v1, Lcom/ime/framework/engine/bsthwr/TransparentView$PathWithAlpha_t;->Alpha:I

    add-int/lit8 v2, v2, -0x1e

    iput v2, v1, Lcom/ime/framework/engine/bsthwr/TransparentView$PathWithAlpha_t;->Alpha:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ime/framework/engine/bsthwr/TransparentView$PathWithAlpha_t;

    iget v1, v1, Lcom/ime/framework/engine/bsthwr/TransparentView$PathWithAlpha_t;->Alpha:I

    if-ge v1, v3, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ime/framework/engine/bsthwr/TransparentView$PathWithAlpha_t;

    iput v3, v1, Lcom/ime/framework/engine/bsthwr/TransparentView$PathWithAlpha_t;->Alpha:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/ime/framework/engine/bsthwr/TransparentView$2;

    invoke-direct {v2, p0, p1}, Lcom/ime/framework/engine/bsthwr/TransparentView$2;-><init>(Lcom/ime/framework/engine/bsthwr/TransparentView;Ljava/util/ArrayList;)V

    const-wide/16 v4, 0x78

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private init()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mBeautifyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mBeautifyPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mBeautifyPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mBeautifyPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void
.end method


# virtual methods
.method protected addPointer(II)V
    .locals 3

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mPointData:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/16 v1, 0xfa0

    if-le v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mPointData:Ljava/util/Vector;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mPointData:Ljava/util/Vector;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v0, "TransparentView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----mPointData = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mPointData:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "TransparentView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-----mPointData.size() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mPointData:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected clear()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "TransparentView"

    const-string v1, "-------clear-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->stroke_count:I

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mPathList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mPointData:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    iput-boolean v2, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->isStartWriting:Z

    iput v2, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mStrokeNum:I

    iput-boolean v2, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->bMoreFading:Z

    invoke-static {}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->getInstance()Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->clear()V

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mBeautifyPathList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    const v6, 0xffffff

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/TransparentView;->isUseOriginalPaint()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mPathList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v3, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mPathList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ime/framework/engine/bsthwr/TransparentView$PathWithAlpha_t;

    iget v2, v2, Lcom/ime/framework/engine/bsthwr/TransparentView$PathWithAlpha_t;->Alpha:I

    shl-int/lit8 v2, v2, 0x18

    iget v4, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mLinecolor:I

    and-int/2addr v4, v6

    or-int/2addr v2, v4

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mPathList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ime/framework/engine/bsthwr/TransparentView$PathWithAlpha_t;

    iget-object v1, v2, Lcom/ime/framework/engine/bsthwr/TransparentView$PathWithAlpha_t;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/TransparentView;->isUseHWStroksBeautifyCb()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v5, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mBeautifyPathList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v3, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mBeautifyPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mBeautifyPathList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ime/framework/engine/bsthwr/TransparentView$PathWithAlpha_t;

    iget v2, v2, Lcom/ime/framework/engine/bsthwr/TransparentView$PathWithAlpha_t;->Alpha:I

    shl-int/lit8 v2, v2, 0x18

    iget v4, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mLinecolor:I

    and-int/2addr v4, v6

    or-int/2addr v2, v4

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mBeautifyPathList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ime/framework/engine/bsthwr/TransparentView$PathWithAlpha_t;

    iget-object v2, v2, Lcom/ime/framework/engine/bsthwr/TransparentView$PathWithAlpha_t;->path:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mBeautifyPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->getInstance()Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->drawSignature(Landroid/graphics/Canvas;)V

    :cond_2
    return-void
.end method

.method protected drawPath(Z)V
    .locals 8

    const/4 v4, 0x6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    iget v1, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->x:I

    iget v2, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->orgX:I

    if-le v1, v2, :cond_0

    iget v1, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->x:I

    iget v2, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->orgX:I

    sub-int/2addr v1, v2

    :goto_0
    iput v1, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->orgDx:I

    iget v1, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->y:I

    iget v2, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->orgY:I

    if-le v1, v2, :cond_1

    iget v1, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->y:I

    iget v2, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->orgY:I

    sub-int/2addr v1, v2

    :goto_1
    iput v1, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->orgDy:I

    iget v1, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->stroke_count:I

    iget v2, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->orgDx:I

    iget v3, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->orgDy:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->stroke_count:I

    iget-object v1, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mPathList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    :goto_2
    return-void

    :cond_0
    iget v1, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->orgX:I

    iget v2, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->x:I

    sub-int/2addr v1, v2

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->orgY:I

    iget v2, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->y:I

    sub-int/2addr v1, v2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mPathList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ime/framework/engine/bsthwr/TransparentView$PathWithAlpha_t;

    iget-object v0, v1, Lcom/ime/framework/engine/bsthwr/TransparentView$PathWithAlpha_t;->path:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/TransparentView;->isUseOriginalPaint()Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->orgDx:I

    if-ge v1, v4, :cond_3

    iget v1, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->orgDy:I

    if-lt v1, v4, :cond_5

    :cond_3
    iget v1, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->orgX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->orgY:I

    int-to-float v2, v2

    iget v3, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->x:I

    iget v4, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->orgX:I

    add-int/2addr v3, v4

    int-to-double v4, v3

    div-double/2addr v4, v6

    double-to-int v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->y:I

    iget v5, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->orgY:I

    add-int/2addr v4, v5

    int-to-double v4, v4

    div-double/2addr v4, v6

    double-to-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    :goto_3
    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/TransparentView;->invalidate()V

    :cond_4
    iget v1, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->x:I

    iput v1, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->orgX:I

    iget v1, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->y:I

    iput v1, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->orgY:I

    goto :goto_2

    :cond_5
    iget v1, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->x:I

    int-to-float v1, v1

    iget v2, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_3
.end method

.method protected getHWManager()Lcom/ime/framework/engine/bsthwr/HWManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getHWManager()Lcom/ime/framework/engine/bsthwr/HWManager;

    move-result-object v0

    return-object v0
.end method

.method protected getLastStrokePointer()[I
    .locals 9

    iget-object v7, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mPointData:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-nez v7, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    iget-object v7, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mPointData:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v5

    const/4 v1, 0x0

    const/4 v4, 0x0

    add-int/lit8 v2, v5, -0x1

    :goto_0
    if-lez v2, :cond_4

    iget-object v7, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mPointData:Ljava/util/Vector;

    invoke-virtual {v7, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mPointData:Ljava/util/Vector;

    add-int/lit8 v8, v2, -0x1

    invoke-virtual {v7, v8}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const v8, 0xffff

    if-ne v7, v8, :cond_2

    if-nez v1, :cond_3

    move v1, v2

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v4, v2, 0x1

    :cond_4
    sub-int v7, v1, v4

    add-int/lit8 v6, v7, 0x1

    new-array v0, v6, [I

    move v3, v4

    :goto_1
    if-gt v3, v1, :cond_0

    sub-int v8, v3, v4

    iget-object v7, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mPointData:Ljava/util/Vector;

    invoke-virtual {v7, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v0, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method protected getPointer()[I
    .locals 3

    iget-object v2, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mPointData:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v0, v2, [I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mPointData:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mPointData:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getStrokeNum()I
    .locals 1

    iget v0, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mStrokeNum:I

    return v0
.end method

.method protected isToleranceMove()Z
    .locals 3

    const/4 v2, 0x6

    iget v0, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->x:I

    iget v1, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->orgX:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->x:I

    iget v1, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->orgX:I

    sub-int/2addr v0, v1

    :goto_0
    iput v0, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->orgDx:I

    iget v0, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->y:I

    iget v1, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->orgY:I

    if-le v0, v1, :cond_2

    iget v0, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->y:I

    iget v1, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->orgY:I

    sub-int/2addr v0, v1

    :goto_1
    iput v0, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->orgDy:I

    iget v0, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->orgDx:I

    if-ge v0, v2, :cond_0

    iget v0, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->orgDy:I

    if-lt v0, v2, :cond_3

    :cond_0
    const/4 v0, 0x1

    :goto_2
    return v0

    :cond_1
    iget v0, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->orgX:I

    iget v1, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->x:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->orgY:I

    iget v1, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->y:I

    sub-int/2addr v0, v1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method protected isUseHWStroksBeautifyCb()Z
    .locals 2

    invoke-static {}, Lcom/ime/framework/engine/bsthwr/HWManager;->getHandwritingStyle()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isUseOriginalPaint()Z
    .locals 1

    invoke-static {}, Lcom/ime/framework/engine/bsthwr/HWManager;->getHandwritingStyle()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->y:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/TransparentView;->isUseOriginalPaint()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->getInstance()Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    return v4

    :pswitch_0
    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/TransparentView;->getHWManager()Lcom/ime/framework/engine/bsthwr/HWManager;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/ime/framework/engine/bsthwr/HWManager;->removeMessageEx(I)V

    iput-boolean v4, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->ismove:Z

    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/TransparentView;->touch_down()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/TransparentView;->touch_move()V

    goto :goto_0

    :pswitch_2
    iput-boolean v1, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->ismove:Z

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/TransparentView;->touch_up()V

    goto :goto_0

    :pswitch_3
    iput-boolean v1, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->ismove:Z

    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/TransparentView;->clear()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected removeEndPointer()V
    .locals 4

    const v3, 0xffff

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mPointData:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mPointData:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mPointData:Ljava/util/Vector;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mPointData:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->removeElementAt(I)V

    iget-object v1, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mPointData:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->removeElementAt(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected setLineColor(I)V
    .locals 0

    iput p1, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mLinecolor:I

    return-void
.end method

.method protected setLineWidth(I)V
    .locals 1

    if-lez p1, :cond_0

    const/16 v0, 0x32

    if-gt p1, v0, :cond_0

    iput p1, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mLinewidth:I

    :cond_0
    return-void
.end method

.method protected setSpeed(I)V
    .locals 2

    const/16 v1, 0x32

    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/TransparentView;->getHWManager()Lcom/ime/framework/engine/bsthwr/HWManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ime/framework/engine/bsthwr/HWManager;->isStorkeMode()Z

    move-result v0

    if-nez v0, :cond_1

    if-le p1, v1, :cond_0

    const/16 v0, 0x1388

    if-gt p1, v0, :cond_0

    iput p1, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mSpeed:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput v1, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mSpeed:I

    goto :goto_0
.end method

.method protected touch_down()V
    .locals 7

    const/4 v4, 0x1

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->dismissPopupKeyboard()V

    :cond_0
    iput-boolean v4, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->bButtonDown:Z

    iput-boolean v4, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->isStartWriting:Z

    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/TransparentView;->removeEndPointer()V

    iget v3, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->x:I

    if-ltz v3, :cond_1

    iget v3, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->y:I

    if-ltz v3, :cond_1

    iget v3, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->x:I

    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/TransparentView;->getWidth()I

    move-result v4

    if-gt v3, v4, :cond_1

    iget v3, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->y:I

    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/TransparentView;->getHeight()I

    move-result v4

    if-gt v3, v4, :cond_1

    const-string v3, "TransparentView"

    const-string v4, "--touch_down---addPointer---"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->x:I

    iget v4, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->y:I

    invoke-virtual {p0, v3, v4}, Lcom/ime/framework/engine/bsthwr/TransparentView;->addPointer(II)V

    :cond_1
    iget v3, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->x:I

    iput v3, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->orgX:I

    iget v3, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->y:I

    iput v3, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->orgY:I

    iget-object v3, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mPathList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-string v3, "TransparentView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "----size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "TransparentView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "---MaxPath_count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->MaxPath_count:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->MaxPath_count:I

    if-ge v2, v3, :cond_2

    const-string v3, "TransparentView"

    const-string v4, "---size < MaxPath_count"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    iget v3, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->x:I

    int-to-float v3, v3

    iget v4, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->y:I

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    new-instance v0, Lcom/ime/framework/engine/bsthwr/TransparentView$PathWithAlpha_t;

    invoke-direct {v0}, Lcom/ime/framework/engine/bsthwr/TransparentView$PathWithAlpha_t;-><init>()V

    iput-object v1, v0, Lcom/ime/framework/engine/bsthwr/TransparentView$PathWithAlpha_t;->path:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mPathList:Ljava/util/ArrayList;

    invoke-virtual {v3, v6, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_2
    iget-object v3, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mPathList:Ljava/util/ArrayList;

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ime/framework/engine/bsthwr/TransparentView$PathWithAlpha_t;

    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/TransparentView;->getHWManager()Lcom/ime/framework/engine/bsthwr/HWManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ime/framework/engine/bsthwr/HWManager;->isOverlapMode()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/ime/framework/engine/bsthwr/TransparentView$PathWithAlpha_t;->reset()V

    :cond_3
    iget-object v3, v0, Lcom/ime/framework/engine/bsthwr/TransparentView$PathWithAlpha_t;->path:Landroid/graphics/Path;

    iget v4, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->x:I

    int-to-float v4, v4

    iget v5, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->y:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v3, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mPathList:Ljava/util/ArrayList;

    invoke-virtual {v3, v6, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method protected touch_move()V
    .locals 2

    iget-boolean v0, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->bButtonDown:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->x:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->y:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->x:I

    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/TransparentView;->getWidth()I

    move-result v1

    if-gt v0, v1, :cond_1

    iget v0, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->y:I

    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/TransparentView;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_1

    const-string v0, "TransparentView"

    const-string v1, "--touch_move---addPointer---"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->x:I

    iget v1, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->y:I

    invoke-virtual {p0, v0, v1}, Lcom/ime/framework/engine/bsthwr/TransparentView;->addPointer(II)V

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ime/framework/engine/bsthwr/TransparentView;->drawPath(Z)V

    iget v0, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->x:I

    iput v0, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->orgX:I

    iget v0, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->y:I

    iput v0, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->orgY:I

    goto :goto_0
.end method

.method protected touch_up()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mPathList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mPathList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ime/framework/engine/bsthwr/TransparentView$PathWithAlpha_t;

    iget-object v1, v2, Lcom/ime/framework/engine/bsthwr/TransparentView$PathWithAlpha_t;->path:Landroid/graphics/Path;

    iget v2, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->x:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    iget v3, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->y:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget v2, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->x:I

    if-ltz v2, :cond_2

    iget v2, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->y:I

    if-ltz v2, :cond_2

    iget v2, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->x:I

    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/TransparentView;->getWidth()I

    move-result v3

    if-gt v2, v3, :cond_2

    iget v2, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->y:I

    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/TransparentView;->getHeight()I

    move-result v3

    if-gt v2, v3, :cond_2

    const-string v2, "TransparentView"

    const-string v3, "--touch_up---addPointer---"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->x:I

    iget v3, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->y:I

    invoke-virtual {p0, v2, v3}, Lcom/ime/framework/engine/bsthwr/TransparentView;->addPointer(II)V

    :cond_2
    const v2, 0xffff

    invoke-virtual {p0, v2, v4}, Lcom/ime/framework/engine/bsthwr/TransparentView;->addPointer(II)V

    iget v2, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mStrokeNum:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mStrokeNum:I

    iput-boolean v4, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->bButtonDown:Z

    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/TransparentView;->isUseHWStroksBeautifyCb()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mPathList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mBeautifyPathList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->MaxPath_count:I

    if-ge v2, v3, :cond_4

    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/TransparentView;->getLastStrokePointer()[I

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/bsthw/calibeauty/BstHwCb;->createHTHPathFromPointArray([I)Landroid/graphics/Path;

    move-result-object v1

    new-instance v0, Lcom/ime/framework/engine/bsthwr/TransparentView$PathWithAlpha_t;

    invoke-direct {v0}, Lcom/ime/framework/engine/bsthwr/TransparentView$PathWithAlpha_t;-><init>()V

    iput-object v1, v0, Lcom/ime/framework/engine/bsthwr/TransparentView$PathWithAlpha_t;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mBeautifyPathList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/TransparentView;->getHWManager()Lcom/ime/framework/engine/bsthwr/HWManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ime/framework/engine/bsthwr/HWManager;->isOverlapMode()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mBeautifyPathList:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/ime/framework/engine/bsthwr/TransparentView;->fadingAllStrokes(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/TransparentView;->getHWManager()Lcom/ime/framework/engine/bsthwr/HWManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ime/framework/engine/bsthwr/HWManager;->isOverlapMode()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mBeautifyPathList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mBeautifyPathList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ime/framework/engine/bsthwr/TransparentView$PathWithAlpha_t;

    invoke-virtual {v0}, Lcom/ime/framework/engine/bsthwr/TransparentView$PathWithAlpha_t;->reset()V

    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/TransparentView;->getLastStrokePointer()[I

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/bsthw/calibeauty/BstHwCb;->createHTHPathFromPointArray([I)Landroid/graphics/Path;

    move-result-object v2

    iput-object v2, v0, Lcom/ime/framework/engine/bsthwr/TransparentView$PathWithAlpha_t;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mBeautifyPathList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mBeautifyPathList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ime/framework/engine/bsthwr/TransparentView$PathWithAlpha_t;

    iget-object v1, v2, Lcom/ime/framework/engine/bsthwr/TransparentView$PathWithAlpha_t;->path:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/TransparentView;->getLastStrokePointer()[I

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/bsthw/calibeauty/BstHwCb;->createHTHPathFromPointArray([I)Landroid/graphics/Path;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/TransparentView;->getLastStrokePointer()[I

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/bsthw/calibeauty/BstHwCb;->createHTHPathFromPointArray([I)Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/TransparentView;->isUseOriginalPaint()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/TransparentView;->getHWManager()Lcom/ime/framework/engine/bsthwr/HWManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ime/framework/engine/bsthwr/HWManager;->isOverlapMode()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mPathList:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/ime/framework/engine/bsthwr/TransparentView;->fadingAllStrokes(Ljava/util/ArrayList;)V

    goto/16 :goto_0
.end method

.method protected updateSetting()V
    .locals 11

    const/4 v10, 0x1

    invoke-static {}, Lcom/ime/framework/engine/bsthwr/HWManager;->getHandwritingPenColor()I

    move-result v3

    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/TransparentView;->getHWManager()Lcom/ime/framework/engine/bsthwr/HWManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ime/framework/engine/bsthwr/HWManager;->isOverlapMode()Z

    move-result v2

    invoke-static {}, Lcom/ime/framework/engine/bsthwr/HWManager;->getHandwritingRecogDelay()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/ime/framework/engine/bsthwr/TransparentView;->setSpeed(I)V

    invoke-static {}, Lcom/ime/framework/engine/bsthwr/HWManager;->getHandwritingPenThickness()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/TransparentView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {v10, v5, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v4, v5

    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/TransparentView;->isUseOriginalPaint()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0, v4}, Lcom/ime/framework/engine/bsthwr/TransparentView;->setLineWidth(I)V

    invoke-virtual {p0, v3}, Lcom/ime/framework/engine/bsthwr/TransparentView;->setLineColor(I)V

    iget-object v5, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mPaint:Landroid/graphics/Paint;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mPaint:Landroid/graphics/Paint;

    int-to-float v6, v4

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v5, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/TransparentView;->isUseHWStroksBeautifyCb()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->mBeautifyPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/TransparentView;->getHWManager()Lcom/ime/framework/engine/bsthwr/HWManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ime/framework/engine/bsthwr/HWManager;->setBeautifyLineStyle()I

    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/TransparentView;->getHWManager()Lcom/ime/framework/engine/bsthwr/HWManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ime/framework/engine/bsthwr/HWManager;->getDims()I

    move-result v1

    int-to-float v5, v4

    int-to-float v6, v1

    const v7, 0x40228f5c    # 2.54f

    div-float/2addr v6, v7

    div-float/2addr v5, v6

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v5, v6

    float-to-double v6, v5

    const-wide v8, 0x3feb333333333333L    # 0.85

    mul-double/2addr v6, v8

    double-to-int v0, v6

    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/TransparentView;->getHWManager()Lcom/ime/framework/engine/bsthwr/HWManager;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x4

    invoke-static {v5, v0}, Lcom/sec/android/bsthw/calibeauty/BstHwCb;->cbSetStyleParam(II)I

    :cond_1
    :goto_0
    const-string v5, "TransparentView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "---isOverlap = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_3

    const/16 v5, 0x10

    iput v5, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->MaxPath_count:I

    const-string v5, "TransparentView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "----MaxPath_count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->MaxPath_count:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_2
    invoke-static {}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->getInstance()Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->setFading(Z)V

    invoke-static {}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->getInstance()Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;

    move-result-object v5

    mul-int/lit8 v6, v4, 0x7

    div-int/lit8 v6, v6, 0x5

    invoke-virtual {v5, v6}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->setStrokeWidth(I)V

    invoke-static {}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->getInstance()Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->setDefaultColor(I)V

    goto :goto_0

    :cond_3
    iput v10, p0, Lcom/ime/framework/engine/bsthwr/TransparentView;->MaxPath_count:I

    goto :goto_1
.end method

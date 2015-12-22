.class public Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;
.super Landroid/view/View;
.source "DropMorphingEffect.java"


# instance fields
.field private final RETURN_ANIMATION_DURATION:I

.field private final RETURN_FRAME_SPEED:I

.field private final TAG:Ljava/lang/String;

.field private final VERSION:Ljava/lang/String;

.field private centerX:I

.field private centerY:I

.field private currentFrame:I

.field private currentRotation:F

.field private dropMorphPath:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;

.field private invalidateRect:Landroid/graphics/Rect;

.field private isInitialized:Z

.field private paint:Landroid/graphics/Paint;

.field private radius:F

.field private returnAnimator:Landroid/animation/ValueAnimator;

.field private thresholdDistance:F

.field private totalFrame:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-string v0, "VisualEffectDropMorphingEffect"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;->TAG:Ljava/lang/String;

    const-string v0, "1.1.0"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;->VERSION:Ljava/lang/String;

    const/16 v0, 0x7d0

    iput v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;->RETURN_ANIMATION_DURATION:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;->RETURN_FRAME_SPEED:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;->currentRotation:F

    iput v1, p0, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;->currentFrame:I

    iput-boolean v1, p0, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;->isInitialized:Z

    const-string v0, "VisualEffectDropMorphingEffect"

    const-string v1, "DropMorphingEffect Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "VisualEffectDropMorphingEffect"

    const-string v1, "Version = 1.1.0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;->currentFrame:I

    return v0
.end method

.method static synthetic access$002(Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;->currentFrame:I

    return p1
.end method

.method static synthetic access$020(Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;I)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;->currentFrame:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;->currentFrame:I

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;->cancelAnimatior()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;->invalidateRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method private cancelAnimatior()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;->returnAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;->returnAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private getDegree(FF)D
    .locals 8

    const-wide/16 v0, 0x0

    iget v6, p0, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;->centerX:I

    int-to-float v6, v6

    sub-float v6, p1, v6

    float-to-double v2, v6

    iget v6, p0, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;->centerY:I

    int-to-float v6, v6

    sub-float v6, p2, v6

    float-to-double v4, v6

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private getDiatance(FF)D
    .locals 10

    iget v6, p0, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;->centerX:I

    int-to-float v6, v6

    sub-float v6, p1, v6

    float-to-double v2, v6

    iget v6, p0, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;->centerY:I

    int-to-float v6, v6

    sub-float v6, p2, v6

    float-to-double v4, v6

    mul-double v6, v2, v2

    mul-double v8, v4, v4

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private returnAnimation()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;->isInitialized:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "VisualEffectDropMorphingEffect"

    const-string v1, "returnAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;->returnAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private setAnimator()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;->returnAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;->returnAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;->returnAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect$1;-><init>(Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public handleTouchEvent(Landroid/view/MotionEvent;)V
    .locals 5

    iget-boolean v2, p0, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;->isInitialized:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;->getDiatance(FF)D

    move-result-wide v2

    double-to-float v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;->invalidateRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_0

    :pswitch_0
    const-string v2, "VisualEffectDropMorphingEffect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleTuchEvent - ACTION_DOWN : getX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "getY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;->cancelAnimatior()V

    :pswitch_1
    iget v2, p0, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;->radius:F

    cmpg-float v2, v0, v2

    if-lez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;->getDegree(FF)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, p0, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;->currentRotation:F

    iget v2, p0, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;->radius:F

    sub-float v2, v0, v2

    iget v3, p0, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;->thresholdDistance:F

    iget v4, p0, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;->radius:F

    sub-float/2addr v3, v4

    div-float v1, v2, v3

    iget v2, p0, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;->totalFrame:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;->currentFrame:I

    iget v2, p0, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;->currentFrame:I

    iget v3, p0, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;->totalFrame:I

    if-lt v2, v3, :cond_3

    iget v2, p0, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;->totalFrame:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;->currentFrame:I

    goto :goto_1

    :cond_3
    iget v2, p0, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;->currentFrame:I

    if-gez v2, :cond_2

    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;->currentFrame:I

    goto :goto_1

    :pswitch_2
    const-string v2, "VisualEffectDropMorphingEffect"

    const-string v3, "handleTuchEvent - ACTION_UP"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;->thresholdDistance:F

    cmpg-float v2, v0, v2

    if-gez v2, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;->returnAnimation()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public init(FIIIF)V
    .locals 8

    const/4 v5, 0x1

    const/high16 v7, 0x43870000    # 270.0f

    const-string v2, "VisualEffectDropMorphingEffect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DropMorphingEffect Constructor : diameter = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", color = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "VisualEffectDropMorphingEffect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DropMorphingEffect Constructor : centerX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", centerY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "VisualEffectDropMorphingEffect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DropMorphingEffect Constructor : thresholdDistance = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;->isInitialized:Z

    iput p2, p0, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;->centerX:I

    iput p3, p0, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;->centerY:I

    iput p5, p0, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;->thresholdDistance:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, p1, v2

    iput v2, p0, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;->radius:F

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;->paint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v2, p0, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, p4}, Landroid/graphics/Paint;->setColor(I)V

    iget v2, p0, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;->radius:F

    div-float v3, p1, v7

    const/high16 v4, 0x43190000    # 153.0f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v0, v2

    new-instance v2, Landroid/graphics/Rect;

    sub-int v3, p2, v0

    sub-int v4, p3, v0

    add-int v5, p2, v0

    add-int v6, p3, v0

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;->invalidateRect:Landroid/graphics/Rect;

    div-float v1, p1, v7

    new-instance v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;

    invoke-direct {v2, v1}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;-><init>(F)V

    iput-object v2, p0, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;->dropMorphPath:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;->dropMorphPath:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;

    invoke-virtual {v2}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->getPathTotal()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;->totalFrame:I

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;->setAnimator()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;->dropMorphPath:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;

    iget v2, p0, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;->currentFrame:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->getPath(I)Landroid/graphics/Path;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;->centerX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;->centerY:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget v1, p0, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;->currentRotation:F

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v1, p0, Lcom/samsung/android/visualeffect/dropmorphing/DropMorphingEffect;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

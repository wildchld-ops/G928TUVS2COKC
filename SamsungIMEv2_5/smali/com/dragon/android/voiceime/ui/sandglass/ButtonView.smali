.class public Lcom/dragon/android/voiceime/ui/sandglass/ButtonView;
.super Landroid/widget/RelativeLayout;
.source "ButtonView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dragon/android/voiceime/ui/sandglass/ButtonView$AnimUpdater;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "ButtonView"


# instance fields
.field private final FADE_DURATION:I

.field private mAnimUpdater:Lcom/dragon/android/voiceime/ui/sandglass/ButtonView$AnimUpdater;

.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mClockHeight:I

.field private mClockWidth:I

.field private mHourGlassIcon:Lcom/dragon/android/voiceime/ui/sandglass/HourGlassView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x258

    iput v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/ButtonView;->FADE_DURATION:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/ButtonView;->mClockWidth:I

    const/16 v0, 0x6e

    iput v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/ButtonView;->mClockHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x258

    iput v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/ButtonView;->FADE_DURATION:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/ButtonView;->mClockWidth:I

    const/16 v0, 0x6e

    iput v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/ButtonView;->mClockHeight:I

    invoke-direct {p0}, Lcom/dragon/android/voiceime/ui/sandglass/ButtonView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/dragon/android/voiceime/ui/sandglass/ButtonView;)Lcom/dragon/android/voiceime/ui/sandglass/HourGlassView;
    .locals 1

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/ButtonView;->mHourGlassIcon:Lcom/dragon/android/voiceime/ui/sandglass/HourGlassView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dragon/android/voiceime/ui/sandglass/ButtonView;)V
    .locals 0

    invoke-direct {p0}, Lcom/dragon/android/voiceime/ui/sandglass/ButtonView;->playClock()V

    return-void
.end method

.method private addButton()Landroid/view/View;
    .locals 3

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/dragon/android/voiceime/ui/sandglass/ButtonView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p0}, Lcom/dragon/android/voiceime/ui/sandglass/ButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202b3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Lcom/dragon/android/voiceime/ui/sandglass/ButtonView;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private addHourGlassIcon()Lcom/dragon/android/voiceime/ui/sandglass/HourGlassView;
    .locals 4

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/dragon/android/voiceime/ui/sandglass/ButtonView;->mClockWidth:I

    iget v3, p0, Lcom/dragon/android/voiceime/ui/sandglass/ButtonView;->mClockHeight:I

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v1, Lcom/dragon/android/voiceime/ui/sandglass/HourGlassView;

    invoke-virtual {p0}, Lcom/dragon/android/voiceime/ui/sandglass/ButtonView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/dragon/android/voiceime/ui/sandglass/HourGlassView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/dragon/android/voiceime/ui/sandglass/HourGlassView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/dragon/android/voiceime/ui/sandglass/HourGlassView;->setVisibility(I)V

    invoke-virtual {p0, v1}, Lcom/dragon/android/voiceime/ui/sandglass/ButtonView;->addView(Landroid/view/View;)V

    return-object v1
.end method

.method private changeIcon()V
    .locals 4

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/ButtonView;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/ButtonView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/ButtonView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/ButtonView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/ButtonView;->mAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/ButtonView;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/ButtonView;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/dragon/android/voiceime/ui/sandglass/ButtonView;->mAnimUpdater:Lcom/dragon/android/voiceime/ui/sandglass/ButtonView$AnimUpdater;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/ButtonView;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/dragon/android/voiceime/ui/sandglass/ButtonView;->mAnimUpdater:Lcom/dragon/android/voiceime/ui/sandglass/ButtonView$AnimUpdater;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/ButtonView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/dragon/android/voiceime/ui/sandglass/LinearEase;

    invoke-direct {v1}, Lcom/dragon/android/voiceime/ui/sandglass/LinearEase;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/ButtonView;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/ButtonView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private computeClockMeasures()V
    .locals 3

    invoke-virtual {p0}, Lcom/dragon/android/voiceime/ui/sandglass/ButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0907d5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/ButtonView;->mClockWidth:I

    invoke-virtual {p0}, Lcom/dragon/android/voiceime/ui/sandglass/ButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0907d6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/ButtonView;->mClockHeight:I

    const-string v0, "ButtonView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mClockWidth == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/dragon/android/voiceime/ui/sandglass/ButtonView;->mClockWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ButtonView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mClockHeight == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/dragon/android/voiceime/ui/sandglass/ButtonView;->mClockHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private init()V
    .locals 1

    invoke-direct {p0}, Lcom/dragon/android/voiceime/ui/sandglass/ButtonView;->computeClockMeasures()V

    new-instance v0, Lcom/dragon/android/voiceime/ui/sandglass/ButtonView$AnimUpdater;

    invoke-direct {v0, p0}, Lcom/dragon/android/voiceime/ui/sandglass/ButtonView$AnimUpdater;-><init>(Lcom/dragon/android/voiceime/ui/sandglass/ButtonView;)V

    iput-object v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/ButtonView;->mAnimUpdater:Lcom/dragon/android/voiceime/ui/sandglass/ButtonView$AnimUpdater;

    invoke-direct {p0}, Lcom/dragon/android/voiceime/ui/sandglass/ButtonView;->addButton()Landroid/view/View;

    invoke-direct {p0}, Lcom/dragon/android/voiceime/ui/sandglass/ButtonView;->addHourGlassIcon()Lcom/dragon/android/voiceime/ui/sandglass/HourGlassView;

    move-result-object v0

    iput-object v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/ButtonView;->mHourGlassIcon:Lcom/dragon/android/voiceime/ui/sandglass/HourGlassView;

    return-void
.end method

.method private playClock()V
    .locals 2

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/ButtonView;->mHourGlassIcon:Lcom/dragon/android/voiceime/ui/sandglass/HourGlassView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dragon/android/voiceime/ui/sandglass/HourGlassView;->play(I)V

    return-void
.end method


# virtual methods
.method public play()V
    .locals 0

    invoke-direct {p0}, Lcom/dragon/android/voiceime/ui/sandglass/ButtonView;->changeIcon()V

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/ButtonView;->mHourGlassIcon:Lcom/dragon/android/voiceime/ui/sandglass/HourGlassView;

    invoke-virtual {v0}, Lcom/dragon/android/voiceime/ui/sandglass/HourGlassView;->stop()V

    return-void
.end method

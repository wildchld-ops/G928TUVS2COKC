.class public Lcom/android/keyguard/AppearAnimationUtils;
.super Ljava/lang/Object;
.source "AppearAnimationUtils.java"

# interfaces
.implements Lcom/android/keyguard/AppearAnimationCreator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/keyguard/AppearAnimationCreator",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT_APPEAR_DURATION:J = 0xdcL


# instance fields
.field protected mAppearing:Z

.field protected final mDelayScale:F

.field private final mDuration:J

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private final mProperties:Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;

.field protected mScaleTranslationWithRow:Z

.field private final mStartTranslation:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/high16 v4, 0x3f800000    # 1.0f

    const-wide/16 v2, 0xdc

    const v0, 0x10c000e

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/AppearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;

    invoke-direct {v0, p0}, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;-><init>(Lcom/android/keyguard/AppearAnimationUtils;)V

    iput-object v0, p0, Lcom/android/keyguard/AppearAnimationUtils;->mProperties:Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;

    iput-object p6, p0, Lcom/android/keyguard/AppearAnimationUtils;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$dimen;->appear_y_translation_start:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p4

    iput v0, p0, Lcom/android/keyguard/AppearAnimationUtils;->mStartTranslation:F

    iput p5, p0, Lcom/android/keyguard/AppearAnimationUtils;->mDelayScale:F

    iput-wide p2, p0, Lcom/android/keyguard/AppearAnimationUtils;->mDuration:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/AppearAnimationUtils;->mScaleTranslationWithRow:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/AppearAnimationUtils;->mAppearing:Z

    return-void
.end method

.method private getDelays([Ljava/lang/Object;)Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;"
        }
    .end annotation

    const/4 v6, -0x1

    const/4 v7, 0x0

    const-wide/16 v2, -0x1

    iget-object v5, p0, Lcom/android/keyguard/AppearAnimationUtils;->mProperties:Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;

    iput v6, v5, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;->maxDelayColIndex:I

    iget-object v5, p0, Lcom/android/keyguard/AppearAnimationUtils;->mProperties:Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;

    iput v6, v5, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;->maxDelayRowIndex:I

    iget-object v5, p0, Lcom/android/keyguard/AppearAnimationUtils;->mProperties:Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;

    array-length v6, p1

    new-array v6, v6, [[J

    iput-object v6, v5, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    const/4 v4, 0x0

    :goto_0
    array-length v5, p1

    if-ge v4, v5, :cond_1

    iget-object v5, p0, Lcom/android/keyguard/AppearAnimationUtils;->mProperties:Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;

    iget-object v5, v5, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    const/4 v6, 0x1

    new-array v6, v6, [J

    aput-object v6, v5, v4

    invoke-virtual {p0, v4, v7}, Lcom/android/keyguard/AppearAnimationUtils;->calculateDelay(II)J

    move-result-wide v0

    iget-object v5, p0, Lcom/android/keyguard/AppearAnimationUtils;->mProperties:Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;

    iget-object v5, v5, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    aget-object v5, v5, v4

    aput-wide v0, v5, v7

    aget-object v5, p1, v4

    if-eqz v5, :cond_0

    cmp-long v5, v0, v2

    if-lez v5, :cond_0

    move-wide v2, v0

    iget-object v5, p0, Lcom/android/keyguard/AppearAnimationUtils;->mProperties:Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;

    iput v7, v5, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;->maxDelayColIndex:I

    iget-object v5, p0, Lcom/android/keyguard/AppearAnimationUtils;->mProperties:Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;

    iput v4, v5, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;->maxDelayRowIndex:I

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/keyguard/AppearAnimationUtils;->mProperties:Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;

    return-object v5
.end method

.method private getDelays([[Ljava/lang/Object;)Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([[TT;)",
            "Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;"
        }
    .end annotation

    const/4 v8, -0x1

    const-wide/16 v4, -0x1

    iget-object v7, p0, Lcom/android/keyguard/AppearAnimationUtils;->mProperties:Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;

    iput v8, v7, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;->maxDelayColIndex:I

    iget-object v7, p0, Lcom/android/keyguard/AppearAnimationUtils;->mProperties:Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;

    iput v8, v7, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;->maxDelayRowIndex:I

    iget-object v7, p0, Lcom/android/keyguard/AppearAnimationUtils;->mProperties:Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;

    array-length v8, p1

    new-array v8, v8, [[J

    iput-object v8, v7, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    const/4 v6, 0x0

    :goto_0
    array-length v7, p1

    if-ge v6, v7, :cond_2

    aget-object v1, p1, v6

    iget-object v7, p0, Lcom/android/keyguard/AppearAnimationUtils;->mProperties:Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;

    iget-object v7, v7, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    array-length v8, v1

    new-array v8, v8, [J

    aput-object v8, v7, v6

    const/4 v0, 0x0

    :goto_1
    array-length v7, v1

    if-ge v0, v7, :cond_1

    invoke-virtual {p0, v6, v0}, Lcom/android/keyguard/AppearAnimationUtils;->calculateDelay(II)J

    move-result-wide v2

    iget-object v7, p0, Lcom/android/keyguard/AppearAnimationUtils;->mProperties:Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;

    iget-object v7, v7, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    aget-object v7, v7, v6

    aput-wide v2, v7, v0

    aget-object v7, p1, v6

    aget-object v7, v7, v0

    if-eqz v7, :cond_0

    cmp-long v7, v2, v4

    if-lez v7, :cond_0

    move-wide v4, v2

    iget-object v7, p0, Lcom/android/keyguard/AppearAnimationUtils;->mProperties:Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;

    iput v0, v7, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;->maxDelayColIndex:I

    iget-object v7, p0, Lcom/android/keyguard/AppearAnimationUtils;->mProperties:Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;

    iput v6, v7, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;->maxDelayRowIndex:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/android/keyguard/AppearAnimationUtils;->mProperties:Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;

    return-object v7
.end method

.method private startAnimations(Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;[Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/keyguard/AppearAnimationCreator;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;",
            "[TT;",
            "Ljava/lang/Runnable;",
            "Lcom/android/keyguard/AppearAnimationCreator",
            "<TT;>;)V"
        }
    .end annotation

    iget v0, p1, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;->maxDelayRowIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;->maxDelayColIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void

    :cond_2
    const/4 v11, 0x0

    :goto_0
    iget-object v0, p1, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    array-length v0, v0

    if-ge v11, v0, :cond_1

    iget-object v0, p1, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    aget-object v10, v0, v11

    const/4 v0, 0x0

    aget-wide v2, v10, v0

    const/4 v9, 0x0

    iget v0, p1, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;->maxDelayRowIndex:I

    if-ne v0, v11, :cond_3

    iget v0, p1, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;->maxDelayColIndex:I

    if-nez v0, :cond_3

    move-object v9, p3

    :cond_3
    aget-object v1, p2, v11

    iget-wide v4, p0, Lcom/android/keyguard/AppearAnimationUtils;->mDuration:J

    iget v6, p0, Lcom/android/keyguard/AppearAnimationUtils;->mStartTranslation:F

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/android/keyguard/AppearAnimationUtils;->mInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v0, p4

    invoke-interface/range {v0 .. v9}, Lcom/android/keyguard/AppearAnimationCreator;->createAnimation(Ljava/lang/Object;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_0
.end method

.method private startAnimations(Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;[[Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/keyguard/AppearAnimationCreator;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;",
            "[[TT;",
            "Ljava/lang/Runnable;",
            "Lcom/android/keyguard/AppearAnimationCreator",
            "<TT;>;)V"
        }
    .end annotation

    iget v0, p1, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;->maxDelayRowIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;->maxDelayColIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-interface/range {p3 .. p3}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void

    :cond_2
    const/4 v12, 0x0

    :goto_0
    iget-object v0, p1, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    array-length v0, v0

    if-ge v12, v0, :cond_1

    iget-object v0, p1, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    aget-object v11, v0, v12

    iget-boolean v0, p0, Lcom/android/keyguard/AppearAnimationUtils;->mScaleTranslationWithRow:Z

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    array-length v0, v0

    sub-int/2addr v0, v12

    int-to-double v0, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget-object v4, p1, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    array-length v4, v4

    int-to-double v4, v4

    div-double/2addr v0, v4

    iget v4, p0, Lcom/android/keyguard/AppearAnimationUtils;->mStartTranslation:F

    float-to-double v4, v4

    mul-double/2addr v0, v4

    double-to-float v13, v0

    :goto_1
    const/4 v10, 0x0

    :goto_2
    array-length v0, v11

    if-ge v10, v0, :cond_6

    aget-wide v2, v11, v10

    const/4 v9, 0x0

    iget v0, p1, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;->maxDelayRowIndex:I

    if-ne v0, v12, :cond_3

    iget v0, p1, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;->maxDelayColIndex:I

    if-ne v0, v10, :cond_3

    move-object/from16 v9, p3

    :cond_3
    aget-object v0, p2, v12

    aget-object v1, v0, v10

    iget-wide v4, p0, Lcom/android/keyguard/AppearAnimationUtils;->mDuration:J

    iget-boolean v0, p0, Lcom/android/keyguard/AppearAnimationUtils;->mAppearing:Z

    if-eqz v0, :cond_5

    move v6, v13

    :goto_3
    iget-boolean v7, p0, Lcom/android/keyguard/AppearAnimationUtils;->mAppearing:Z

    iget-object v8, p0, Lcom/android/keyguard/AppearAnimationUtils;->mInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v0, p4

    invoke-interface/range {v0 .. v9}, Lcom/android/keyguard/AppearAnimationCreator;->createAnimation(Ljava/lang/Object;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_4
    iget v13, p0, Lcom/android/keyguard/AppearAnimationUtils;->mStartTranslation:F

    goto :goto_1

    :cond_5
    neg-float v6, v13

    goto :goto_3

    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected calculateDelay(II)J
    .locals 8

    const-wide v6, 0x3fd999999999999aL    # 0.4

    mul-int/lit8 v0, p1, 0x28

    int-to-double v0, v0

    int-to-double v2, p2

    int-to-double v4, p1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v4, v6

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget v2, p0, Lcom/android/keyguard/AppearAnimationUtils;->mDelayScale:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method public createAnimation(Landroid/view/View;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 4

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    if-eqz p7, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    if-eqz p7, :cond_3

    move v0, p6

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p7, :cond_4

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p7, :cond_5

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p8}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p1}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    :cond_0
    if-eqz p9, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p9}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    move v2, v1

    goto :goto_2

    :cond_5
    move v1, p6

    goto :goto_3
.end method

.method public bridge synthetic createAnimation(Ljava/lang/Object;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 10

    move-object v1, p1

    check-cast v1, Landroid/view/View;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/android/keyguard/AppearAnimationUtils;->createAnimation(Landroid/view/View;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    return-void
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/AppearAnimationUtils;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public getStartTranslation()F
    .locals 1

    iget v0, p0, Lcom/android/keyguard/AppearAnimationUtils;->mStartTranslation:F

    return v0
.end method

.method public startAnimation([Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p0}, Lcom/android/keyguard/AppearAnimationUtils;->startAnimation([Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/keyguard/AppearAnimationCreator;)V

    return-void
.end method

.method public startAnimation([Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/keyguard/AppearAnimationCreator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/lang/Runnable;",
            "Lcom/android/keyguard/AppearAnimationCreator",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/keyguard/AppearAnimationUtils;->getDelays([Ljava/lang/Object;)Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/keyguard/AppearAnimationUtils;->startAnimations(Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;[Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/keyguard/AppearAnimationCreator;)V

    return-void
.end method

.method public startAnimation([[Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p0}, Lcom/android/keyguard/AppearAnimationUtils;->startAnimation([[Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/keyguard/AppearAnimationCreator;)V

    return-void
.end method

.method public startAnimation([[Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/keyguard/AppearAnimationCreator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([[TT;",
            "Ljava/lang/Runnable;",
            "Lcom/android/keyguard/AppearAnimationCreator",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/keyguard/AppearAnimationUtils;->getDelays([[Ljava/lang/Object;)Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/keyguard/AppearAnimationUtils;->startAnimations(Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;[[Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/keyguard/AppearAnimationCreator;)V

    return-void
.end method

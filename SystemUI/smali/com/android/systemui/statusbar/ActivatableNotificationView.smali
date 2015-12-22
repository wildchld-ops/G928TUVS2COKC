.class public abstract Lcom/android/systemui/statusbar/ActivatableNotificationView;
.super Lcom/android/systemui/statusbar/ExpandableOutlineView;
.source "ActivatableNotificationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;
    }
.end annotation


# static fields
.field private static final ACTIVATE_ANIMATION_LENGTH:I = 0xdc

.field private static final ACTIVATE_INVERSE_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final ACTIVATE_INVERSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final ALPHA_ANIMATION_END:F = 0.0f

.field private static final BACKGROUND_ANIMATION_LENGTH_MS:I = 0xdc

.field private static final DARK_ANIMATION_LENGTH:I = 0xaa

.field private static final DARK_EXIT_SCALE_START:F = 0.93f

.field private static final DOUBLETAP_TIMEOUT_MS:J = 0xbb8L

.field private static final HORIZONTAL_ANIMATION_END:F = 0.2f

.field private static final HORIZONTAL_ANIMATION_START:F = 1.0f

.field private static final HORIZONTAL_COLLAPSED_REST_PARTIAL:F = 0.05f

.field private static final VERTICAL_ANIMATION_START:F = 1.0f


# instance fields
.field private mActivated:Z

.field private mAnimationTranslationY:F

.field private mAppearAnimationFilter:Landroid/graphics/PorterDuffColorFilter;

.field private mAppearAnimationFraction:F

.field private mAppearAnimationRect:Landroid/graphics/RectF;

.field private mAppearAnimationTranslation:F

.field private mAppearAnimator:Landroid/animation/ValueAnimator;

.field private mAppearPaint:Landroid/graphics/Paint;

.field private mBackgroundAnimator:Landroid/animation/ObjectAnimator;

.field private mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

.field private mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

.field private mBgTint:I

.field private mCurrentAlphaInterpolator:Landroid/view/animation/Interpolator;

.field private mCurrentAppearInterpolator:Landroid/view/animation/Interpolator;

.field private mDark:Z

.field private mDimmed:Z

.field private mDownX:F

.field private mDownY:F

.field private mDrawingAppearAnimation:Z

.field private final mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mIsBelowSpeedBump:Z

.field private final mLegacyColor:I

.field private final mLinearInterpolator:Landroid/view/animation/Interpolator;

.field private final mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private final mLowPriorityColor:I

.field private final mLowPriorityRippleColor:I

.field private final mNormalColor:I

.field private final mNormalRippleColor:I

.field private mOnActivatedListener:Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;

.field private final mRoundedRectCornerRadius:I

.field private mShowingLegacyBackground:Z

.field private final mSlowOutFastInInterpolator:Landroid/view/animation/Interpolator;

.field private final mSlowOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field private final mTapTimeoutRunnable:Ljava/lang/Runnable;

.field private final mTintedRippleColor:I

.field private final mTouchSlop:F


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f19999a    # 0.6f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->ACTIVATE_INVERSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->ACTIVATE_INVERSE_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const v5, 0x3f4ccccd    # 0.8f

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/ExpandableOutlineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBgTint:I

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearPaint:Landroid/graphics/Paint;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationFraction:F

    new-instance v0, Lcom/android/systemui/statusbar/ActivatableNotificationView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView$1;-><init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mTouchSlop:F

    const v0, 0x10c000d

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f19999a    # 0.6f

    invoke-direct {v0, v5, v4, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mSlowOutFastInInterpolator:Landroid/view/animation/Interpolator;

    const v0, 0x10c000e

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v5, v4, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mSlowOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mLinearInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setClipChildren(Z)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setClipToPadding(Z)V

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0398

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mRoundedRectCornerRadius:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mLegacyColor:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a006c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mNormalColor:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a006e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mLowPriorityColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0072

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mTintedRippleColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0071

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mLowPriorityRippleColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mNormalRippleColor:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/ActivatableNotificationView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/ActivatableNotificationView;)Lcom/android/systemui/statusbar/NotificationBackgroundView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/ActivatableNotificationView;)Lcom/android/systemui/statusbar/NotificationBackgroundView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/ActivatableNotificationView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/ActivatableNotificationView;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationFraction:F

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateAppearAnimationAlpha()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateAppearRect()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/ActivatableNotificationView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->enableAppearDrawing(Z)V

    return-void
.end method

.method private cancelFadeAnimations()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    return-void
.end method

.method private drawAppearRect(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationTranslation:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mRoundedRectCornerRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mRoundedRectCornerRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private enableAppearDrawing(Z)V
    .locals 6

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDrawingAppearAnimation:Z

    if-eq p1, v2, :cond_0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getWidth()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getActualHeight()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getActualHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->draw(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/BitmapShader;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v3, v0, v4, v5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :goto_1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDrawingAppearAnimation:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->invalidate()V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_1
.end method

.method private fadeDimmedBackground()V
    .locals 7

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v5, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    :goto_0
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-eqz v5, :cond_1

    move v2, v3

    :goto_1
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-eqz v5, :cond_2

    move v1, v4

    :goto_2
    const/16 v0, 0xdc

    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v4

    long-to-int v0, v4

    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->cancel()V

    if-gtz v0, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackground()V

    :goto_3
    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setAlpha(F)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v5, v5, [F

    aput v2, v5, v6

    const/4 v6, 0x1

    aput v1, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    iget-object v4, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    new-instance v4, Lcom/android/systemui/statusbar/ActivatableNotificationView$4;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView$4;-><init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_3
.end method

.method private fadeInFromDark(J)V
    .locals 5

    const/high16 v4, 0x40000000    # 2.0f

    const v3, 0x3f6e147b    # 0.93f

    const/high16 v2, 0x3f800000    # 1.0f

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getActualHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0xaa

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/ActivatableNotificationView$3;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView$3;-><init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    goto :goto_0
.end method

.method private getBackgroundColor()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBgTint:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBgTint:I

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mShowingLegacyBackground:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mLegacyColor:I

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mIsBelowSpeedBump:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mLowPriorityColor:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mNormalColor:I

    goto :goto_0
.end method

.method private getRippleColor()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBgTint:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mTintedRippleColor:I

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mShowingLegacyBackground:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mTintedRippleColor:I

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mIsBelowSpeedBump:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mLowPriorityRippleColor:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mNormalRippleColor:I

    goto :goto_0
.end method

.method private handleTouchEventDimmed(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    move v1, v2

    :goto_1
    return v1

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDownY:F

    iget v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDownY:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getActualHeight()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->isWithinTouchSlop(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->makeInactive(ZZ)V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->isWithinTouchSlop(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mActivated:Z

    if-nez v3, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->makeActive()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mTapTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0xbb8

    invoke-virtual {p0, v1, v4, v5}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->makeInactive(ZZ)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->makeInactive(ZZ)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->makeInactive(ZZ)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private isWithinTouchSlop(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDownX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mTouchSlop:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDownY:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mTouchSlop:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeActive()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->startActivateAnimation(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mActivated:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mOnActivatedListener:Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mOnActivatedListener:Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;->onActivated(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    :cond_0
    return-void
.end method

.method private startActivateAnimation(Z)V
    .locals 12

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->isAttachedToWindow()Z

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v8, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->isAttachedToWindow()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->isAttachedToWindow()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    iget v9, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDownX:F

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDownX:F

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    float-to-double v2, v8

    iget-object v8, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->getActualHeight()I

    move-result v8

    int-to-float v8, v8

    iget v9, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDownY:F

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDownY:F

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    float-to-double v6, v8

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    double-to-float v5, v8

    if-eqz p1, :cond_2

    iget-object v8, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    iget v9, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDownX:F

    float-to-int v9, v9

    iget v10, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDownY:F

    float-to-int v10, v10

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v5, v11}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v1

    :goto_1
    iget-object v8, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    if-nez p1, :cond_3

    iget-object v4, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    :goto_2
    invoke-virtual {v1, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v8, 0xdc

    invoke-virtual {v1, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    if-eqz p1, :cond_4

    iget-object v8, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setAlpha(F)V

    new-instance v8, Lcom/android/systemui/statusbar/ActivatableNotificationView$2;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView$2;-><init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    invoke-virtual {v1, v8}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    :goto_3
    iget-object v8, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    if-eqz p1, :cond_5

    const/4 v8, 0x0

    :goto_4
    invoke-virtual {v9, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    const-wide/16 v10, 0xdc

    invoke-virtual {v8, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_0

    :cond_2
    iget-object v8, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    iget v9, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDownX:F

    float-to-int v9, v9

    iget v10, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDownY:F

    float-to-int v10, v10

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11, v5}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v1

    goto :goto_1

    :cond_3
    sget-object v4, Lcom/android/systemui/statusbar/ActivatableNotificationView;->ACTIVATE_INVERSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    sget-object v0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->ACTIVATE_INVERSE_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    goto :goto_2

    :cond_4
    iget-object v8, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    const v9, 0x3ecccccd    # 0.4f

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setAlpha(F)V

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    goto :goto_3

    :cond_5
    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_4
.end method

.method private startAppearAnimation(ZFJJLjava/lang/Runnable;)V
    .locals 5

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getActualHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    iput v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAnimationTranslationY:F

    iget v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationFraction:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    if-eqz p1, :cond_3

    iput v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationFraction:F

    iget v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAnimationTranslationY:F

    iput v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationTranslation:F

    :cond_1
    :goto_0
    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mSlowOutFastInInterpolator:Landroid/view/animation/Interpolator;

    iput-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mCurrentAppearInterpolator:Landroid/view/animation/Interpolator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    iput-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mCurrentAlphaInterpolator:Landroid/view/animation/Interpolator;

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationFraction:F

    aput v3, v1, v2

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mLinearInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    long-to-float v2, p5

    iget v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationFraction:F

    sub-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/systemui/statusbar/ActivatableNotificationView$5;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView$5;-><init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v2, 0x0

    cmp-long v1, p3, v2

    if-lez v1, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateAppearAnimationAlpha()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateAppearRect()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, p3, p4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/systemui/statusbar/ActivatableNotificationView$6;

    invoke-direct {v2, p0, p7}, Lcom/android/systemui/statusbar/ActivatableNotificationView$6;-><init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_3
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationFraction:F

    iput v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationTranslation:F

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    iput-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mCurrentAppearInterpolator:Landroid/view/animation/Interpolator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mSlowOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    iput-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mCurrentAlphaInterpolator:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateAppearAnimationAlpha()V
    .locals 7

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getBackgroundColor()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationFraction:F

    div-float/2addr v1, v4

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mCurrentAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    const/high16 v3, 0x437f0000    # 255.0f

    sub-float/2addr v4, v1

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v3, v2}, Landroid/graphics/PorterDuffColorFilter;->setColor(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_0
    return-void
.end method

.method private updateAppearRect()V
    .locals 15

    const v14, 0x3dcccccd    # 0.1f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    iget v10, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationFraction:F

    sub-float v3, v13, v10

    iget-object v10, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mCurrentAppearInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v10, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v8

    iget v10, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAnimationTranslationY:F

    mul-float v7, v8, v10

    iput v7, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationTranslation:F

    sub-float v10, v3, v12

    const v11, 0x3f4ccccd    # 0.8f

    div-float v9, v10, v11

    invoke-static {v12, v9}, Ljava/lang/Math;->max(FF)F

    move-result v10

    invoke-static {v13, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    iget-object v10, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mCurrentAppearInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v10, v9}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v9

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getWidth()I

    move-result v10

    int-to-float v10, v10

    const v11, 0x3ef33333    # 0.475f

    mul-float/2addr v10, v11

    mul-float v4, v10, v9

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getWidth()I

    move-result v10

    int-to-float v10, v10

    sub-float v5, v10, v4

    sub-float v10, v3, v12

    div-float v2, v10, v13

    invoke-static {v12, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-object v10, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mCurrentAppearInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v10, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getActualHeight()I

    move-result v0

    iget v10, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAnimationTranslationY:F

    cmpl-float v10, v10, v12

    if-lez v10, :cond_0

    int-to-float v10, v0

    iget v11, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAnimationTranslationY:F

    mul-float/2addr v11, v2

    mul-float/2addr v11, v14

    sub-float/2addr v10, v11

    sub-float v1, v10, v7

    mul-float v6, v1, v2

    :goto_0
    iget-object v10, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationRect:Landroid/graphics/RectF;

    invoke-virtual {v10, v4, v6, v5, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget v10, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationTranslation:F

    add-float/2addr v10, v6

    iget v11, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationTranslation:F

    add-float/2addr v11, v1

    invoke-virtual {p0, v4, v10, v5, v11}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setOutlineRect(FFFF)V

    return-void

    :cond_0
    int-to-float v10, v0

    iget v11, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAnimationTranslationY:F

    add-float/2addr v10, v11

    mul-float/2addr v10, v2

    mul-float/2addr v10, v14

    sub-float v6, v10, v7

    int-to-float v10, v0

    sub-float v11, v13, v2

    mul-float/2addr v10, v11

    mul-float v11, v6, v2

    add-float v1, v10, v11

    goto :goto_0
.end method

.method private updateBackground()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->cancelFadeAnimations()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDark:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->cancelFadeAnimations()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private updateBackgroundTint()V
    .locals 3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getBackgroundColor()I

    move-result v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getRippleColor()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mNormalColor:I

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setTint(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setTint(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setRippleColor(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setRippleColor(I)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDrawingAppearAnimation:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->dispatchDraw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->drawAppearRect(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->drawableHotspotChanged(FF)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->drawableHotspotChanged(FF)V

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->drawableStateChanged()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setState([I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setState([I)V

    goto :goto_0
.end method

.method public makeInactive(ZZ)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mActivated:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->startActivateAnimation(Z)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mActivated:Z

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mOnActivatedListener:Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mOnActivatedListener:Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;

    invoke-interface {v0, p0, p2}, Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;->onActivationReset(Lcom/android/systemui/statusbar/ActivatableNotificationView;Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->onFinishInflate()V

    const v0, 0x7f0e03d9

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationBackgroundView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    const v0, 0x7f0e03da

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationBackgroundView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    const v1, 0x7f020374

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setCustomBackground(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    const v1, 0x7f020375

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setCustomBackground(I)V

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->MORE_OPAQUE_NOTIFICATION:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    const v1, 0x3f59999a    # 0.85f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setCustomAlpha(F)V

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackground()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackgroundTint()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setPivotX(F)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->handleTouchEventDimmed(Landroid/view/MotionEvent;)Z

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public performAddAnimation(JJ)V
    .locals 9

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->enableAppearDrawing(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDrawingAppearAnimation:Z

    if-eqz v0, :cond_0

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v8, 0x0

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->startAppearAnimation(ZFJJLjava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public performRemoveAnimation(JFLjava/lang/Runnable;)V
    .locals 9

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->enableAppearDrawing(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDrawingAppearAnimation:Z

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v1, p0

    move v3, p3

    move-wide v6, p1

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->startAppearAnimation(ZFJJLjava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p4, :cond_0

    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setTintColor(I)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setShowingLegacyBackground(Z)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setBelowSpeedBump(Z)V

    return-void
.end method

.method public resetBackground()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    const v1, 0x7f020374

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setCustomBackground(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    const v1, 0x7f020375

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setCustomBackground(I)V

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->MORE_OPAQUE_NOTIFICATION:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    const v1, 0x3f59999a    # 0.85f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setCustomAlpha(F)V

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackground()V

    return-void
.end method

.method public setActualHeight(IZ)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->setActualHeight(IZ)V

    div-int/lit8 v0, p1, 0x2

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setPivotY(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setActualHeight(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setActualHeight(I)V

    return-void
.end method

.method public setBackgroundDragDown(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setCustomBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setCustomBackground(Landroid/graphics/drawable/Drawable;)V

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->MORE_OPAQUE_NOTIFICATION:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    const v1, 0x3f59999a    # 0.85f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setCustomAlpha(F)V

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackground()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackgroundTint()V

    return-void
.end method

.method public setBelowSpeedBump(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->setBelowSpeedBump(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mIsBelowSpeedBump:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mIsBelowSpeedBump:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackgroundTint()V

    :cond_0
    return-void
.end method

.method public setClipTopAmount(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->setClipTopAmount(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setClipTopAmount(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setClipTopAmount(I)V

    return-void
.end method

.method public setDark(ZZJ)V
    .locals 3

    const/4 v2, 0x4

    const/4 v1, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->setDark(ZZJ)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDark:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDark:Z

    if-nez p1, :cond_3

    if-eqz p2, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mActivated:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    :goto_1
    invoke-direct {p0, p3, p4}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->fadeInFromDark(J)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackground()V

    goto :goto_0
.end method

.method public setDimmed(ZZ)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->fadeDimmedBackground()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackground()V

    goto :goto_0
.end method

.method public setOnActivatedListener(Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mOnActivatedListener:Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;

    return-void
.end method

.method public setShowingLegacyBackground(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->resetBackground()V

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mShowingLegacyBackground:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackgroundTint()V

    return-void
.end method

.method public setTintColor(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBgTint:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackgroundTint()V

    return-void
.end method

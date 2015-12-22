.class public Lcom/android/keyguard/PasswordTextView;
.super Landroid/widget/TextView;
.source "PasswordTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/PasswordTextView$CharState;
    }
.end annotation


# static fields
.field private static final APPEAR_DURATION:J = 0xa0L

.field private static final DEFAULT_MAX_LENGTH_ENTRY:I = 0x10

.field private static final DISAPPEAR_DURATION:J = 0xa0L

.field private static final DOT_APPEAR_DURATION_OVERSHOOT:J = 0x140L

.field private static final DOT_APPEAR_TEXT_DISAPPEAR_OVERLAP_DURATION:J = 0x82L

.field private static final DOT_OVERSHOOT_FACTOR:F = 1.5f

.field private static final HINT_TEXT_SCALE:D = 0.78

.field private static final OVERSHOOT_TIME_POSITION:F = 0.5f

.field private static final RESET_DELAY_PER_ELEMENT:J = 0x28L

.field private static final RESET_MAX_DELAY:J = 0xc8L

.field private static final TEXT_REST_DURATION_AFTER_APPEAR:J = 0x64L

.field private static final TEXT_VISIBILITY_DURATION:J = 0x514L


# instance fields
.field private mAppearInterpolator:Landroid/view/animation/Interpolator;

.field private mCharPadding:I

.field private mCharPool:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/android/keyguard/PasswordTextView$CharState;",
            ">;"
        }
    .end annotation
.end field

.field private mDisappearInterpolator:Landroid/view/animation/Interpolator;

.field private mDotSize:I

.field private final mDrawPaint:Landroid/graphics/Paint;

.field private mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field protected mHandler:Landroid/os/Handler;

.field private mHintRunnable:Ljava/lang/Runnable;

.field private mMaxLength:I

.field private mPM:Landroid/os/PowerManager;

.field private mResDrawableId:I

.field private mShowPassword:Z

.field private mText:Ljava/lang/String;

.field private mTextChars:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/keyguard/PasswordTextView$CharState;",
            ">;"
        }
    .end annotation
.end field

.field private final mTextHeightRaw:I

.field private mUseBlackTextOnWhiteWallpaper:Z

.field private mWhiteWallpaperObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/PasswordTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/PasswordTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/keyguard/PasswordTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    const-string v2, ""

    iput-object v2, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/PasswordTextView;->mCharPool:Ljava/util/Stack;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/PasswordTextView;->mDrawPaint:Landroid/graphics/Paint;

    iput v4, p0, Lcom/android/keyguard/PasswordTextView;->mResDrawableId:I

    iput-boolean v4, p0, Lcom/android/keyguard/PasswordTextView;->mUseBlackTextOnWhiteWallpaper:Z

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/keyguard/PasswordTextView;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/keyguard/PasswordTextView$1;

    iget-object v5, p0, Lcom/android/keyguard/PasswordTextView;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v5}, Lcom/android/keyguard/PasswordTextView$1;-><init>(Lcom/android/keyguard/PasswordTextView;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/keyguard/PasswordTextView;->mWhiteWallpaperObserver:Landroid/database/ContentObserver;

    new-instance v2, Lcom/android/keyguard/PasswordTextView$2;

    invoke-direct {v2, p0}, Lcom/android/keyguard/PasswordTextView$2;-><init>(Lcom/android/keyguard/PasswordTextView;)V

    iput-object v2, p0, Lcom/android/keyguard/PasswordTextView;->mHintRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Lcom/android/keyguard/PasswordTextView;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0, v3}, Lcom/android/keyguard/PasswordTextView;->setFocusable(Z)V

    sget-object v2, Lcom/android/keyguard/R$styleable;->PasswordTextView:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    :try_start_0
    sget v2, Lcom/android/keyguard/R$styleable;->PasswordTextView_scaledTextSize:I

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/PasswordTextView;->mTextHeightRaw:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v2, p0, Lcom/android/keyguard/PasswordTextView;->mDrawPaint:Landroid/graphics/Paint;

    const/16 v5, 0x81

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setFlags(I)V

    iget-object v2, p0, Lcom/android/keyguard/PasswordTextView;->mDrawPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "white_lockscreen_wallpaper"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/keyguard/PasswordTextView;->mUseBlackTextOnWhiteWallpaper:Z

    iget-boolean v2, p0, Lcom/android/keyguard/PasswordTextView;->mUseBlackTextOnWhiteWallpaper:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/keyguard/PasswordTextView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardProperties;->isDownloadableThemeApplied(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/keyguard/PasswordTextView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$color;->white_bg_solution_pin_text_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/android/keyguard/R$string;->theme_pin_entry_font:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/PasswordTextView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/android/keyguard/R$dimen;->password_dot_size:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/PasswordTextView;->mDotSize:I

    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/android/keyguard/R$dimen;->password_char_padding:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/PasswordTextView;->mCharPadding:I

    iget-object v2, p0, Lcom/android/keyguard/PasswordTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "show_password"

    const/4 v6, -0x2

    invoke-static {v2, v5, v3, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v3, :cond_4

    :goto_2
    iput-boolean v3, p0, Lcom/android/keyguard/PasswordTextView;->mShowPassword:Z

    iget-object v2, p0, Lcom/android/keyguard/PasswordTextView;->mContext:Landroid/content/Context;

    const v3, 0x10c000e

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/PasswordTextView;->mAppearInterpolator:Landroid/view/animation/Interpolator;

    iget-object v2, p0, Lcom/android/keyguard/PasswordTextView;->mContext:Landroid/content/Context;

    const v3, 0x10c000f

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/PasswordTextView;->mDisappearInterpolator:Landroid/view/animation/Interpolator;

    iget-object v2, p0, Lcom/android/keyguard/PasswordTextView;->mContext:Landroid/content/Context;

    const v3, 0x10c000d

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/PasswordTextView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    iget-object v2, p0, Lcom/android/keyguard/PasswordTextView;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/keyguard/PasswordTextView;->mPM:Landroid/os/PowerManager;

    const/16 v2, 0x10

    iput v2, p0, Lcom/android/keyguard/PasswordTextView;->mMaxLength:I

    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextView;->isHintTextOnThis()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$color;->keyguard_message_area_hint_text_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/keyguard/PasswordTextView;->setHintTextColor(I)V

    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextView;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$dimen;->kg_status_hint_font_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {p0, v4, v2}, Lcom/android/keyguard/PasswordTextView;->setTextSize(IF)V

    :goto_3
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/keyguard/PasswordTextView;->setMaxLines(I)V

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v2}, Lcom/android/keyguard/PasswordTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextView;->getShadowRadius()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextView;->getShadowDx()F

    move-result v3

    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextView;->getShadowDy()F

    move-result v4

    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$color;->keyguard_avatar_frame_shadow_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/keyguard/PasswordTextView;->setShadowLayer(FFFI)V

    :cond_1
    return-void

    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v2

    :cond_2
    move v2, v4

    goto/16 :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$color;->theme_pin_text_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_1

    :cond_4
    move v3, v4

    goto/16 :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$dimen;->kg_pin_lock_text_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {p0, v4, v2}, Lcom/android/keyguard/PasswordTextView;->setTextSize(IF)V

    goto :goto_3
.end method

.method static synthetic access$000(Lcom/android/keyguard/PasswordTextView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/PasswordTextView;->mUseBlackTextOnWhiteWallpaper:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/keyguard/PasswordTextView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/PasswordTextView;->mUseBlackTextOnWhiteWallpaper:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/keyguard/PasswordTextView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/keyguard/PasswordTextView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/PasswordTextView;->mShowPassword:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/keyguard/PasswordTextView;)Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mDisappearInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/keyguard/PasswordTextView;)Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mAppearInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/keyguard/PasswordTextView;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/PasswordTextView;->mDotSize:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/keyguard/PasswordTextView;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/PasswordTextView;->mCharPadding:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/PasswordTextView;)Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mDrawPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/PasswordTextView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/PasswordTextView;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/PasswordTextView;->mResDrawableId:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/PasswordTextView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/keyguard/PasswordTextView;)Ljava/util/Stack;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mCharPool:Ljava/util/Stack;

    return-object v0
.end method

.method private getCharBounds()Landroid/graphics/Rect;
    .locals 6

    iget v2, p0, Lcom/android/keyguard/PasswordTextView;->mTextHeightRaw:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float v1, v2, v3

    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextView;->isHintTextOnThis()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/PasswordTextView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$dimen;->kg_pin_lock_dot_text_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    :goto_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/android/keyguard/PasswordTextView;->mDrawPaint:Landroid/graphics/Paint;

    const-string v3, "0"

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_0
.end method

.method private getDrawingWidth()F
    .locals 9

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextView;->getCharBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget v7, v0, Landroid/graphics/Rect;->left:I

    sub-int v1, v6, v7

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    iget-object v6, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/PasswordTextView$CharState;

    if-eqz v3, :cond_0

    int-to-float v6, v5

    iget v7, p0, Lcom/android/keyguard/PasswordTextView;->mCharPadding:I

    int-to-float v7, v7

    iget v8, v2, Lcom/android/keyguard/PasswordTextView$CharState;->currentWidthFactor:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v5, v6

    :cond_0
    int-to-float v6, v5

    int-to-float v7, v1

    iget v8, v2, Lcom/android/keyguard/PasswordTextView$CharState;->currentWidthFactor:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    int-to-float v6, v5

    return v6
.end method

.method private isHintTextOnThis()Z
    .locals 1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestPhoneUX()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private obtainCharState(C)Lcom/android/keyguard/PasswordTextView$CharState;
    .locals 2

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView;->mCharPool:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/android/keyguard/PasswordTextView$CharState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/PasswordTextView$CharState;-><init>(Lcom/android/keyguard/PasswordTextView;Lcom/android/keyguard/PasswordTextView$1;)V

    :goto_0
    iput-char p1, v0, Lcom/android/keyguard/PasswordTextView$CharState;->whichChar:C

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView;->mCharPool:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/PasswordTextView$CharState;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView$CharState;->reset()V

    goto :goto_0
.end method

.method private shouldSpeakPasswordsForAccessibility()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/keyguard/PasswordTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "speak_password"

    const/4 v4, -0x3

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private showAndHideHint(J)V
    .locals 3

    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextView;->isHintTextOnThis()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView;->mHintRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView;->mHintRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView;->mHintRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView;->mHintRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private userActivity()V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->userActivity(JZ)V

    return-void
.end method


# virtual methods
.method public append(C)V
    .locals 8

    const/4 v7, 0x1

    iget-object v5, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v3, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    iget v5, p0, Lcom/android/keyguard/PasswordTextView;->mMaxLength:I

    if-lt v4, v5, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_2

    invoke-direct {p0, p1}, Lcom/android/keyguard/PasswordTextView;->obtainCharState(C)Lcom/android/keyguard/PasswordTextView$CharState;

    move-result-object v0

    iget-object v5, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView$CharState;->startAppearAnimation()V

    if-le v1, v7, :cond_1

    iget-object v5, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    add-int/lit8 v6, v1, -0x2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/PasswordTextView$CharState;

    iget-boolean v5, v2, Lcom/android/keyguard/PasswordTextView$CharState;->isDotSwapPending:Z

    if-eqz v5, :cond_1

    invoke-virtual {v2}, Lcom/android/keyguard/PasswordTextView$CharState;->swapToDotWhenAppearFinished()V

    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextView;->userActivity()V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {p0, v3, v5, v6, v7}, Lcom/android/keyguard/PasswordTextView;->sendAccessibilityEventTypeViewTextChanged(Ljava/lang/String;III)V

    const-wide/16 v6, 0x0

    invoke-direct {p0, v6, v7}, Lcom/android/keyguard/PasswordTextView;->showAndHideHint(J)V

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/PasswordTextView$CharState;

    iput-char p1, v0, Lcom/android/keyguard/PasswordTextView$CharState;->whichChar:C

    goto :goto_1
.end method

.method public deleteLastChar()V
    .locals 8

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    iget-object v3, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    if-lez v1, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/PasswordTextView$CharState;

    invoke-virtual {v0, v6, v7, v6, v7}, Lcom/android/keyguard/PasswordTextView$CharState;->startRemoveAnimation(JJ)V

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextView;->userActivity()V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/keyguard/PasswordTextView;->sendAccessibilityEventTypeViewTextChanged(Ljava/lang/String;III)V

    invoke-direct {p0, v6, v7}, Lcom/android/keyguard/PasswordTextView;->showAndHideHint(J)V

    return-void
.end method

.method public bridge synthetic getText()Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextView;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "white_lockscreen_wallpaper"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/PasswordTextView;->mWhiteWallpaperObserver:Landroid/database/ContentObserver;

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mWhiteWallpaperObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView;->mWhiteWallpaperObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextView;->getDrawingWidth()F

    move-result v10

    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const/high16 v11, 0x40000000    # 2.0f

    div-float v11, v10, v11

    sub-float v2, v1, v11

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextView;->getCharBounds()Landroid/graphics/Rect;

    move-result-object v6

    iget v1, v6, Landroid/graphics/Rect;->bottom:I

    iget v11, v6, Landroid/graphics/Rect;->top:I

    sub-int v3, v1, v11

    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v4, v1

    iget v1, v6, Landroid/graphics/Rect;->right:I

    iget v11, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v11

    int-to-float v5, v1

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v9, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/PasswordTextView$CharState;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/keyguard/PasswordTextView$CharState;->draw(Landroid/graphics/Canvas;FIFF)F

    move-result v7

    add-float/2addr v2, v7

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPassword(Z)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPassword(Z)V

    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextView;->shouldSpeakPasswordsForAccessibility()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEditable(Z)V

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setInputType(I)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public reset(Z)V
    .locals 24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, ""

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v19, v12, -0x1

    div-int/lit8 v13, v19, 0x2

    const-wide/16 v8, 0x28

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v12, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/keyguard/PasswordTextView$CharState;

    if-eqz p1, :cond_1

    if-gt v11, v13, :cond_0

    mul-int/lit8 v7, v11, 0x2

    :goto_1
    int-to-long v0, v7

    move-wide/from16 v20, v0

    mul-long v16, v20, v8

    const-wide/16 v20, 0xc8

    move-wide/from16 v0, v16

    move-wide/from16 v2, v20

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v16

    add-int/lit8 v19, v12, -0x1

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    mul-long v14, v8, v20

    const-wide/16 v20, 0xc8

    move-wide/from16 v0, v20

    invoke-static {v14, v15, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v20

    const-wide/16 v22, 0xa0

    add-long v14, v20, v22

    move-wide/from16 v0, v16

    invoke-virtual {v6, v0, v1, v14, v15}, Lcom/android/keyguard/PasswordTextView$CharState;->startRemoveAnimation(JJ)V

    # invokes: Lcom/android/keyguard/PasswordTextView$CharState;->removeDotSwapCallbacks()V
    invoke-static {v6}, Lcom/android/keyguard/PasswordTextView$CharState;->access$600(Lcom/android/keyguard/PasswordTextView$CharState;)V

    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    sub-int v10, v11, v13

    add-int/lit8 v19, v12, -0x1

    add-int/lit8 v20, v10, -0x1

    mul-int/lit8 v20, v20, 0x2

    sub-int v7, v19, v20

    goto :goto_1

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PasswordTextView;->mCharPool:Ljava/util/Stack;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    if-nez p1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    :cond_3
    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/keyguard/PasswordTextView;->sendAccessibilityEventTypeViewTextChanged(Ljava/lang/String;III)V

    const-wide/16 v20, 0x168

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/PasswordTextView;->showAndHideHint(J)V

    return-void
.end method

.method sendAccessibilityEventTypeViewTextChanged(Ljava/lang/String;III)V
    .locals 2

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextView;->isFocused()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextView;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextView;->shouldSpeakPasswordsForAccessibility()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x0

    :cond_1
    const/16 v1, 0x10

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityEvent;->setRemovedCount(I)V

    invoke-virtual {v0, p4}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setBeforeText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPassword(Z)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PasswordTextView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_2
    return-void
.end method

.method public setDrawableId(I)V
    .locals 0

    iput p1, p0, Lcom/android/keyguard/PasswordTextView;->mResDrawableId:I

    return-void
.end method

.method public setMaxLength(I)V
    .locals 0

    iput p1, p0, Lcom/android/keyguard/PasswordTextView;->mMaxLength:I

    return-void
.end method

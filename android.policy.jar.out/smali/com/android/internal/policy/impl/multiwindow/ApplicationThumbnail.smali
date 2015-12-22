.class public Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;
.super Ljava/lang/Object;
.source "ApplicationThumbnail.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mIsUseDefaultTheme:Z

.field protected mMinimizeBg:Landroid/graphics/drawable/Drawable;

.field protected mMinimizeBgFocus:Landroid/graphics/drawable/Drawable;

.field protected mMinimizeIcon:Landroid/graphics/drawable/Drawable;

.field private mMinimizedAppLable:Ljava/lang/CharSequence;

.field private mThemeBackground:Landroid/graphics/Bitmap;

.field private mThemeMgr:Lcom/samsung/android/theme/SThemeManager;

.field private mThemeType:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/app/Activity;)V
    .locals 7

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mMinimizedAppLable:Ljava/lang/CharSequence;

    iput-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mMinimizeIcon:Landroid/graphics/drawable/Drawable;

    iput-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mMinimizeBg:Landroid/graphics/drawable/Drawable;

    iput-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mMinimizeBgFocus:Landroid/graphics/drawable/Drawable;

    iput-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mThemeBackground:Landroid/graphics/Bitmap;

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mIsUseDefaultTheme:Z

    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getFullResIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getScaledMinimizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mMinimizeIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mMinimizedAppLable:Ljava/lang/CharSequence;

    const v5, 0x10805bb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mMinimizeBg:Landroid/graphics/drawable/Drawable;

    const v5, 0x10805bd

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mMinimizeBgFocus:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->intializeTheme()V

    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method protected constructor <init>(Landroid/app/Activity;Landroid/content/ComponentName;)V
    .locals 7

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mMinimizedAppLable:Ljava/lang/CharSequence;

    iput-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mMinimizeIcon:Landroid/graphics/drawable/Drawable;

    iput-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mMinimizeBg:Landroid/graphics/drawable/Drawable;

    iput-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mMinimizeBgFocus:Landroid/graphics/drawable/Drawable;

    iput-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mThemeBackground:Landroid/graphics/Bitmap;

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mIsUseDefaultTheme:Z

    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    if-eqz p2, :cond_1

    :goto_0
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v3, p2, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getFullResIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getScaledMinimizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mMinimizeIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mMinimizedAppLable:Ljava/lang/CharSequence;

    const v5, 0x10805bb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mMinimizeBg:Landroid/graphics/drawable/Drawable;

    const v5, 0x10805bd

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mMinimizeBgFocus:Landroid/graphics/drawable/Drawable;

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method private clipImagePath(Landroid/graphics/Bitmap;Landroid/graphics/Path;)Landroid/graphics/Bitmap;
    .locals 15

    if-nez p1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v8, v11}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v4, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v7, v0, v11, v12, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    sget-object v11, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, p2

    invoke-virtual {v7, v0, v11}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    const/4 v11, 0x0

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v11, v12}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setDither(Z)V

    const/16 v11, 0x32

    const/16 v12, 0xff

    const/16 v13, 0xff

    const/16 v14, 0xff

    invoke-static {v11, v12, v13, v14}, Landroid/graphics/Color;->argb(IIII)I

    move-result v11

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v11, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v11, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    sget-object v11, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const/high16 v11, 0x40a00000    # 5.0f

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v11, Landroid/graphics/PorterDuffXfermode;

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v11, v12}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    move-object/from16 v0, p2

    invoke-virtual {v7, v0, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    sget-object v11, Landroid/graphics/Region$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, p2

    invoke-virtual {v7, v0, v11}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    move-object/from16 v0, p2

    invoke-virtual {v7, v0, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v12

    float-to-int v12, v12

    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v9, Landroid/graphics/Rect;

    iget v11, v8, Landroid/graphics/RectF;->left:F

    float-to-int v11, v11

    iget v12, v8, Landroid/graphics/RectF;->top:F

    float-to-int v12, v12

    iget v13, v8, Landroid/graphics/RectF;->right:F

    float-to-int v13, v13

    iget v14, v8, Landroid/graphics/RectF;->bottom:F

    float-to-int v14, v14

    invoke-direct {v9, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v1, Landroid/graphics/Rect;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v13

    float-to-int v13, v13

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v14

    float-to-int v14, v14

    invoke-direct {v1, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v11, 0x0

    invoke-virtual {v3, v6, v9, v1, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public static create(Landroid/app/Activity;)Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;
    .locals 1

    new-instance v0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public static create(Landroid/app/Activity;Landroid/content/ComponentName;)Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;
    .locals 1

    new-instance v0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;-><init>(Landroid/app/Activity;Landroid/content/ComponentName;)V

    return-object v0
.end method

.method private getBitmapClippedCircle(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x105023e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    int-to-float v4, v3

    div-float/2addr v4, v6

    int-to-float v5, v0

    div-float/2addr v5, v6

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v4, v5, v2, v6}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->clipImagePath(Landroid/graphics/Bitmap;Landroid/graphics/Path;)Landroid/graphics/Bitmap;

    move-result-object v4

    return-object v4
.end method

.method private getCircleBitmapDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getMinimizedBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method private getCircleDrawable()Landroid/graphics/drawable/Drawable;
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getMinimizedBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getMinimizedBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    new-array v4, v5, [I

    const v5, 0x10100a7

    aput v5, v4, v6

    invoke-virtual {v0, v4, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v4, v6, [I

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method private getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10d0000

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getFullResIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;
    .locals 8

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v0, 0x0

    :try_start_0
    iget-object v6, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    :goto_0
    if-eqz v5, :cond_1

    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v5, v2}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v4}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    const v7, 0x1050240

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    if-lt v6, v7, :cond_0

    :goto_1
    return-object v3

    :catch_0
    move-exception v1

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    move-object v3, v0

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_1
.end method

.method private getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 6

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v3

    :try_start_0
    invoke-virtual {p1, p2, v3}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    :goto_1
    return-object v1

    :catch_0
    move-exception v2

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1
.end method

.method private getScaledMinimizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 8

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x105023f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v5

    if-ne v5, v3, :cond_0

    instance-of v5, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v5, :cond_1

    :cond_0
    instance-of v5, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_2

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v5, 0x1

    invoke-static {v0, v3, v3, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p1, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    :cond_1
    :goto_0
    return-object p1

    :cond_2
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    invoke-virtual {p1, v7, v7, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private intializeTheme()V
    .locals 4

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_COMMON_CONFIG_CHANGEABLE_UI"

    const-string v3, "none"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/feature/FloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mThemeType:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mThemeType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mThemeType:Ljava/lang/String;

    const-string v2, "theme"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/samsung/android/theme/SThemeManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/theme/SThemeManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mThemeMgr:Lcom/samsung/android/theme/SThemeManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "current_sec_theme_package"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mIsUseDefaultTheme:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mIsUseDefaultTheme:Z

    goto :goto_0
.end method


# virtual methods
.method public final getBitmapIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getCircleBitmapDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getCircleDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final getLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mMinimizedAppLable:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected getMinimizedBitmap(Z)Landroid/graphics/Bitmap;
    .locals 10

    const/4 v9, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mMinimizeIcon:Landroid/graphics/drawable/Drawable;

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getBitmapClippedCircle(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mMinimizeBgFocus:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {v0, v9, v9, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v8

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v8

    invoke-virtual {v2, v1, v5, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    return-object v3

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mMinimizeBg:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public isUsedTheme()Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mThemeType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mThemeType:Ljava/lang/String;

    const-string v1, "theme"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mIsUseDefaultTheme:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadIconForResolveTheme()Landroid/graphics/drawable/Drawable;
    .locals 23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    const/4 v3, 0x0

    const/16 v17, 0x0

    if-eqz v15, :cond_0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v17

    :cond_0
    :goto_0
    if-eqz v3, :cond_6

    move-object v7, v3

    :goto_1
    const/16 v16, 0x0

    if-eqz v15, :cond_1

    :try_start_1
    iget-object v0, v7, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v16

    :cond_1
    :goto_2
    const/4 v8, 0x0

    if-eqz v3, :cond_2

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mThemeMgr:Lcom/samsung/android/theme/SThemeManager;

    move-object/from16 v19, v0

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/theme/SThemeManager;->getPackageIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v8

    :cond_2
    :goto_3
    if-nez v8, :cond_5

    if-eqz v15, :cond_5

    iget v0, v3, Landroid/content/pm/ActivityInfo;->icon:I

    move/from16 v19, v0

    if-eqz v19, :cond_7

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    :goto_4
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/content/pm/PackageManager;->getCSCPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    if-nez v11, :cond_3

    if-eqz v16, :cond_3

    invoke-virtual {v3}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v12

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v12}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    :cond_3
    if-eqz v11, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mThemeBackground:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    if-nez v19, :cond_4

    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mThemeMgr:Lcom/samsung/android/theme/SThemeManager;

    move-object/from16 v19, v0

    const-string v20, "theme_app_3rd_party_icon"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/theme/SThemeManager;->getItemDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_4

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mThemeBackground:Landroid/graphics/Bitmap;
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_4
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mThemeBackground:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mThemeBackground:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mThemeBackground:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setDither(Z)V

    sget-object v19, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v10, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    check-cast v11, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v13

    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mThemeBackground:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v6, v0, v1, v2, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v6}, Landroid/graphics/Canvas;->save()I

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    int-to-float v0, v10

    move/from16 v20, v0

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v19, 0x3f400000    # 0.75f

    const/high16 v20, 0x3f400000    # 0.75f

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v13, v0, v10, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v19

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    neg-int v0, v10

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x40000000    # 2.0f

    div-float v21, v21, v22

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v6, v0, v1, v2, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v6}, Landroid/graphics/Canvas;->restore()V

    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v8, v0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :cond_5
    return-object v8

    :cond_6
    move-object/from16 v7, v17

    goto/16 :goto_1

    :catch_0
    move-exception v9

    const/16 v16, 0x0

    goto/16 :goto_2

    :catch_1
    move-exception v9

    const-string v19, "ApplicationThumbnail"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "loadAppIconBitmap( "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " ) failed! "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_7
    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    goto/16 :goto_4

    :catch_2
    move-exception v9

    const-string v19, ""

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "3rd_party_icon_menu  failed! "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :catch_3
    move-exception v19

    goto/16 :goto_0
.end method

.method public final setCustomMinimizeIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    if-nez p1, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getFullResIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getScaledMinimizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mMinimizeIcon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getScaledMinimizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mMinimizeIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

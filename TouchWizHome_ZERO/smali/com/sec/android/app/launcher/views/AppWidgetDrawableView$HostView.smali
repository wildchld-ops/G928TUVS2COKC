.class public Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;
.super Landroid/appwidget/AppWidgetHostView;
.source "AppWidgetDrawableView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HostView"
.end annotation


# instance fields
.field bmp:Landroid/graphics/Bitmap;

.field cacheCanvas:Landroid/graphics/Canvas;

.field private final mContext:Landroid/content/Context;

.field private mDaliView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

.field mForceToResize:Z

.field private mHandler:Landroid/os/Handler;

.field private mHasBooleanFlag:Ljava/lang/reflect/Method;

.field private mHasBooleanFlagArgs:[Ljava/lang/Object;

.field private mIgnoreDraw:Z

.field private mInitRender:Z

.field mScaleToResize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->mDaliView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->mInitRender:Z

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->mIgnoreDraw:Z

    iput-object v3, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->mHandler:Landroid/os/Handler;

    iput-object v3, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->mHasBooleanFlag:Ljava/lang/reflect/Method;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->mHasBooleanFlagArgs:[Ljava/lang/Object;

    iput-object v3, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->bmp:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->cacheCanvas:Landroid/graphics/Canvas;

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->mForceToResize:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->mScaleToResize:F

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;)Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->mDaliView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->findNextNavigableElement(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method private dispatchBitmapDraw()V
    .locals 5

    const/4 v4, 0x0

    const-string v1, "AppWidgetDrawableView"

    const-string v2, "dispatchBitmapDraw"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->mDaliView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->bmp:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->bmp:Landroid/graphics/Bitmap;

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->cacheCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->cacheCanvas:Landroid/graphics/Canvas;

    invoke-super {p0, v1}, Landroid/appwidget/AppWidgetHostView;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->mDaliView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->bmp:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v4, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->mDaliView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->unlockCanvas(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private dispatchDraw()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->mDaliView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v1, "AppWidgetDrawableView"

    const-string v2, "dispatchDraw"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->setClipChildren(Z)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->mDaliView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/appwidget/AppWidgetHostView;->invalidate()V

    goto :goto_0

    :cond_1
    invoke-super {p0, v0}, Landroid/appwidget/AppWidgetHostView;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->mDaliView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->unlockCanvas(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private drawAccessibilityFocusIfNeededOnDaliCanvas(Landroid/graphics/Canvas;)V
    .locals 9

    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->getViewRootImplForThisView()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "drawAccessibilityFocusedDrawableIfNeeded"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/graphics/Canvas;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    const/4 v4, 0x1

    :try_start_1
    new-array v0, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v0, v4

    invoke-virtual {v2, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v1

    :try_start_3
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method private findNextNavigableElement(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 7

    const/4 v6, 0x4

    const/4 v3, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    iget v1, v2, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mGesture:I

    invoke-virtual {v0}, Landroid/widget/ImageView;->getImageAlpha()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    if-ne v1, v3, :cond_1

    const-string v2, "AppWidgetDrawableView"

    const-string v3, "Gesture Left"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAccessibility()Lcom/sec/android/app/launcher/activities/Accessibility;

    move-result-object v2

    invoke-virtual {v2, v4, v4, v5, v4}, Lcom/sec/android/app/launcher/activities/Accessibility;->navigate(ZZZZ)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    const-string v2, "AppWidgetDrawableView"

    const-string v3, "GESTURE_SWIPE_UP_AND_DOWN"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAccessibility()Lcom/sec/android/app/launcher/activities/Accessibility;

    move-result-object v2

    invoke-virtual {v2, v4, v5, v4, v4}, Lcom/sec/android/app/launcher/activities/Accessibility;->navigate(ZZZZ)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->mDaliView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

    if-eqz v2, :cond_0

    if-ne v1, v6, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->mDaliView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->hideFocusHighlight()V

    goto :goto_0

    :pswitch_1
    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    const-string v2, "AppWidgetDrawableView"

    const-string v3, "GESTURE_SWIPE_DOWN_AND_UP"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAccessibility()Lcom/sec/android/app/launcher/activities/Accessibility;

    move-result-object v2

    invoke-virtual {v2, v5, v4, v4, v4}, Lcom/sec/android/app/launcher/activities/Accessibility;->navigate(ZZZZ)V

    goto :goto_0

    :cond_3
    if-ne v1, v6, :cond_4

    const-string v2, "AppWidgetDrawableView"

    const-string v3, "Gesture Right"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAccessibility()Lcom/sec/android/app/launcher/activities/Accessibility;

    move-result-object v2

    invoke-virtual {v2, v4, v4, v4, v5}, Lcom/sec/android/app/launcher/activities/Accessibility;->navigate(ZZZZ)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->mDaliView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

    if-eqz v2, :cond_0

    if-ne v1, v3, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->mDaliView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->hideFocusHighlight()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private getClipToPadding(Landroid/view/ViewGroup;)Z
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->mHasBooleanFlag:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->mHasBooleanFlag:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->mHasBooleanFlagArgs:[Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "NATIVECANVAS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EXCEPTION DAMMIT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getViewRootImplForThisView()Ljava/lang/Object;
    .locals 6

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getViewRootImpl"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    const/4 v3, 0x0

    :try_start_1
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method private makeNavigationGuard(Ljava/lang/String;I)Landroid/widget/ImageView;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    :cond_0
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageAlpha(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->mContext:Landroid/content/Context;

    const v2, 0x7f020070

    invoke-static {v1, v2}, Lcom/sec/daliviews/utils/BitmapUtils;->decode(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    new-instance v1, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView$2;-><init>(Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-object v0
.end method


# virtual methods
.method public attach(Landroid/view/ViewGroup;)V
    .locals 13

    const/4 v12, 0x2

    const/4 v9, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x3

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v3, Landroid/widget/GridLayout;

    iget-object v8, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v8}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v10}, Landroid/widget/GridLayout;->setRowCount(I)V

    invoke-virtual {v3, v10}, Landroid/widget/GridLayout;->setColumnCount(I)V

    sget-object v8, Landroid/widget/GridLayout;->CENTER:Landroid/widget/GridLayout$Alignment;

    invoke-static {v11, v8}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v4

    sget-object v8, Landroid/widget/GridLayout;->CENTER:Landroid/widget/GridLayout$Alignment;

    invoke-static {v9, v8}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v5

    sget-object v8, Landroid/widget/GridLayout;->CENTER:Landroid/widget/GridLayout$Alignment;

    invoke-static {v12, v8}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v6

    sget-object v8, Landroid/widget/GridLayout;->CENTER:Landroid/widget/GridLayout$Alignment;

    invoke-static {v9, v8}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Up "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v11}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->makeNavigationGuard(Ljava/lang/String;I)Landroid/widget/ImageView;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Down "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v10}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->makeNavigationGuard(Ljava/lang/String;I)Landroid/widget/ImageView;

    move-result-object v2

    new-instance v8, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v8, v4, v0}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Spec;)V

    invoke-virtual {v3, v7, v8}, Landroid/widget/GridLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v8, v5, v0}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Spec;)V

    invoke-virtual {v3, p0, v8}, Landroid/widget/GridLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v8, v6, v0}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Spec;)V

    invoke-virtual {v3, v2, v8}, Landroid/widget/GridLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v12}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->setImportantForAccessibility(I)V

    const/4 v8, 0x4

    invoke-virtual {v3, v8}, Landroid/widget/GridLayout;->setImportantForAccessibility(I)V

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public detach()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected declared-synchronized dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->mDaliView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->mDaliView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

    iget-boolean v0, v0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->unsupportedCanvasFeatures:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->dispatchBitmapDraw()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->dispatchDraw()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->mForceToResize:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    mul-float/2addr v0, v2

    iget v1, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->mScaleToResize:F

    div-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->mScaleToResize:F

    div-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    :cond_0
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public forceToResizeViewByScale(ZF)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->mForceToResize:Z

    iput p2, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->mScaleToResize:F

    return-void
.end method

.method public getForceScaleToResize()F
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->mScaleToResize:F

    return v0
.end method

.method public isForceToResize()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->mForceToResize:Z

    return v0
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    const/4 v0, 0x0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "pen_hovering"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    :cond_0
    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return v3

    :cond_2
    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    new-instance v0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView$1;-><init>(Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {p0, v0, v2, v3}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-super/range {p0 .. p5}, Landroid/appwidget/AppWidgetHostView;->onLayout(ZIIII)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->mDaliView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->mDaliView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

    const/4 v1, 0x1

    # setter for: Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mHostViewSizeChanged:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->access$302(Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;Z)Z

    :cond_0
    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->mDaliView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->mDaliView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public setIgnoreDraw(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->mIgnoreDraw:Z

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->mIgnoreDraw:Z

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->mIgnoreDraw:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->dispatchDraw()V

    goto :goto_0
.end method

.method public setInitRender(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->mInitRender:Z

    return-void
.end method

.method public declared-synchronized setWidgetView(Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->mDaliView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->mDaliView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->mDaliView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

    # getter for: Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->access$000(Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->mHandler:Landroid/os/Handler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method traverseChildren(Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method declared-synchronized updateParentMargins()V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->mDaliView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->mDaliView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->isValidPeer()Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "AppWidgetDrawableView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateParentMargins() Warning AppWidget does not have peer. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->mDaliView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->getTag()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->mDaliView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->getScreenBoundingRect()Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/GridLayout;

    invoke-virtual {v0}, Landroid/widget/GridLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, v2, Landroid/graphics/Rect;->left:I

    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    if-ne v5, v1, :cond_2

    iget v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    if-eq v5, v3, :cond_0

    :cond_2
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v1, v3, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v4}, Landroid/widget/GridLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

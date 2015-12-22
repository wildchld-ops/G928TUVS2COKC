.class Lcom/android/server/display/MagnifierSurfaceControl$Border;
.super Ljava/lang/Object;
.source "MagnifierSurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/MagnifierSurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Border"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Magnifier.Border"


# instance fields
.field private final DEBUG:Z

.field private fingerMagnifierState:I

.field private mBorderFxSession:Landroid/view/SurfaceSession;

.field final mBorderLock:Ljava/lang/Object;

.field private mBorderSurface:Landroid/view/Surface;

.field private mBorderSurfaceControl:Landroid/view/SurfaceControl;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawableClose:Landroid/graphics/drawable/Drawable;

.field private mDrawableCloseMarginRight:I

.field private mDrawableCloseMarginTop:I

.field private mDrawableCloseSize:I

.field private mDrawableHandlerSize:I

.field private mPadding:Landroid/graphics/Rect;

.field private mShowing:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;III)V
    .locals 9

    const/4 v3, 0x1

    const/4 v8, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->DEBUG:Z

    iput-boolean v8, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mShowing:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mPadding:Landroid/graphics/Rect;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderLock:Ljava/lang/Object;

    iput v8, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->fingerMagnifierState:I

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurface:Landroid/view/Surface;

    new-instance v0, Landroid/view/SurfaceSession;

    invoke-direct {v0}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderFxSession:Landroid/view/SurfaceSession;

    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050268

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableCloseMarginTop:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050266

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableCloseMarginRight:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050267

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableCloseSize:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050269

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableHandlerSize:I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "finger_magnifier"

    invoke-static {v0, v1, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->fingerMagnifierState:I

    if-lt p3, v3, :cond_0

    if-ge p4, v3, :cond_2

    :cond_0
    :try_start_0
    const-string v0, "Magnifier.Border"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/secutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-ge p3, v3, :cond_1

    const/4 p3, 0x1

    :cond_1
    if-ge p4, v3, :cond_2

    const/4 p4, 0x1

    :cond_2
    new-instance v0, Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderFxSession:Landroid/view/SurfaceSession;

    const-string v2, "OverlayMagnifierBorder"

    iget v3, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableHandlerSize:I

    div-int/lit8 v3, v3, 0x2

    add-int v4, p4, v3

    const/4 v5, -0x2

    const v6, -0x7ffffffc

    move v3, p3

    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p2}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurfaceControl:Landroid/view/SurfaceControl;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurface:Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurfaceControl:Landroid/view/SurfaceControl;

    const v1, 0x800001

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayer(I)V
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080563

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v8, v8, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10800c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableClose:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableClose:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableClose:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableCloseSize:I

    iget v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableCloseMarginRight:I

    add-int/2addr v1, v2

    sub-int v1, p3, v1

    iget v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableCloseMarginTop:I

    iget v3, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableCloseMarginRight:I

    sub-int v3, p3, v3

    iget v4, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableCloseMarginTop:I

    iget v5, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableCloseSize:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void

    :catch_0
    move-exception v7

    :try_start_1
    invoke-virtual {v7}, Landroid/view/Surface$OutOfResourcesException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    const-string v0, "Magnifier.Border"

    const-string v1, "dismiss"

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurface:Landroid/view/Surface;

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurfaceControl:Landroid/view/SurfaceControl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public getPadding()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mPadding:Landroid/graphics/Rect;

    return-object v0
.end method

.method public hide()V
    .locals 3

    const-string v0, "Magnifier.Border"

    const-string/jumbo v1, "hide"

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mShowing:Z

    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->hide()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public setPosition(Landroid/graphics/Point;)V
    .locals 4

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurfaceControl:Landroid/view/SurfaceControl;

    iget v2, p1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/view/SurfaceControl;->setPosition(FF)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSize(II)V
    .locals 7

    const-string v0, "Magnifier.Border"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSize :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurfaceControl:Landroid/view/SurfaceControl;

    iget v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableHandlerSize:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p2

    invoke-virtual {v0, p1, v2}, Landroid/view/SurfaceControl;->setSize(II)V

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableClose:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableCloseSize:I

    iget v3, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableCloseMarginRight:I

    add-int/2addr v2, v3

    sub-int v2, p1, v2

    iget v3, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableCloseMarginTop:I

    iget v4, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableCloseMarginRight:I

    sub-int v4, p1, v4

    iget v5, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableCloseMarginTop:I

    iget v6, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableCloseSize:I

    add-int/2addr v5, v6

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-boolean v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mShowing:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->show()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public show()V
    .locals 5

    const/4 v4, 0x1

    const-string v1, "Magnifier.Border"

    const-string/jumbo v2, "show"

    invoke-static {v1, v2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mShowing:Z

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurface:Landroid/view/Surface;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->fingerMagnifierState:I

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableClose:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurface:Landroid/view/Surface;

    invoke-virtual {v1, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurfaceControl:Landroid/view/SurfaceControl;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v1

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

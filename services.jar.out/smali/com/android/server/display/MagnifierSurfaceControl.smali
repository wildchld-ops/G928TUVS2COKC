.class final Lcom/android/server/display/MagnifierSurfaceControl;
.super Ljava/lang/Object;
.source "MagnifierSurfaceControl.java"

# interfaces
.implements Lcom/android/internal/util/DumpUtils$Dump;
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/MagnifierSurfaceControl$Border;,
        Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;,
        Lcom/android/server/display/MagnifierSurfaceControl$Listener;
    }
.end annotation


# static fields
.field private static final CREATED:I = 0x1

.field private static final DEBUG:Z = true

.field private static final HIDDEN:I = 0x3

.field private static final IDLE:I = 0x0

.field private static final SHOWN:I = 0x2

.field private static final STABILIZER:I = 0x4

.field private static final TAG:Ljava/lang/String; = "MagnifierSurfaceControl"


# instance fields
.field private mBorder:Lcom/android/server/display/MagnifierSurfaceControl$Border;

.field private mContext:Landroid/content/Context;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mFxSession:Landroid/view/SurfaceSession;

.field private mHandler:Landroid/os/Handler;

.field private mLastOffsetX:F

.field private mLastOffsetY:F

.field private mListener:Lcom/android/server/display/MagnifierSurfaceControl$Listener;

.field private final mLock:Ljava/lang/Object;

.field private mPoint:Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;

.field private mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

.field private mSizeChangeListener:Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;

.field private mState:I

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceControl:Landroid/view/SurfaceControl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/display/MagnifierSurfaceControl$Listener;Landroid/os/Handler;Lcom/android/server/display/MagnifierDisplayPolicy;)V
    .locals 2

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mState:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mLock:Ljava/lang/Object;

    iput v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mLastOffsetX:F

    iput v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mLastOffsetY:F

    iput-object p1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    iput-object p2, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mListener:Lcom/android/server/display/MagnifierSurfaceControl$Listener;

    iput-object p3, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    new-instance v0, Lcom/android/server/display/MagnifierSurfaceControl$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/MagnifierSurfaceControl$1;-><init>(Lcom/android/server/display/MagnifierSurfaceControl;)V

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSizeChangeListener:Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSizeChangeListener:Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/server/display/MagnifierDisplayPolicy;->addOnSizeChanageListener(Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;)V

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/display/MagnifierDisplayPolicy;->checkUpdateDisplayInfo()Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/MagnifierSurfaceControl;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/display/MagnifierSurfaceControl;)Landroid/view/SurfaceControl;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/display/MagnifierSurfaceControl;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mState:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/display/MagnifierSurfaceControl;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mState:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/display/MagnifierSurfaceControl;)Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPoint:Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/display/MagnifierSurfaceControl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/MagnifierSurfaceControl;->hide()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/display/MagnifierSurfaceControl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/MagnifierSurfaceControl;->destroyMainSurface()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/display/MagnifierSurfaceControl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/MagnifierSurfaceControl;->createDefaultSurface()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/display/MagnifierSurfaceControl;)Lcom/android/server/display/MagnifierSurfaceControl$Listener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mListener:Lcom/android/server/display/MagnifierSurfaceControl$Listener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/display/MagnifierSurfaceControl;)Landroid/view/Surface;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/display/MagnifierSurfaceControl;)Lcom/android/server/display/MagnifierSurfaceControl$Border;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mBorder:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/display/MagnifierSurfaceControl;Lcom/android/server/display/MagnifierSurfaceControl$Border;)Lcom/android/server/display/MagnifierSurfaceControl$Border;
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mBorder:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/display/MagnifierSurfaceControl;)Lcom/android/server/display/MagnifierDisplayPolicy;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/display/MagnifierSurfaceControl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private createDefaultSurface()V
    .locals 11

    iget-object v10, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurface:Landroid/view/Surface;

    new-instance v0, Landroid/view/SurfaceSession;

    invoke-direct {v0}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mFxSession:Landroid/view/SurfaceSession;

    new-instance v0, Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mFxSession:Landroid/view/SurfaceSession;

    const-string v2, "OverlayMagnifier"

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, -0x1

    const v6, -0x7ffffffc

    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/display/MagnifierDisplayPolicy;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/display/MagnifierDisplayPolicy;->getDefaultDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v8

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, v8, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v2, v8, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setSize(II)V

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v7}, Landroid/view/Display;->getLayerStack()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurface:Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayer(I)V
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v10

    return-void

    :catch_0
    move-exception v9

    invoke-virtual {v9}, Landroid/view/Surface$OutOfResourcesException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private destroyMainSurface()V
    .locals 3

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "MagnifierSurfaceControl"

    const-string v2, "destroyMainSurface"

    invoke-static {v0, v2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->destroy()V

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mFxSession:Landroid/view/SurfaceSession;

    invoke-virtual {v0}, Landroid/view/SurfaceSession;->kill()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurface:Landroid/view/Surface;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mFxSession:Landroid/view/SurfaceSession;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private hide()V
    .locals 4

    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    const-string v1, "MagnifierSurfaceControl"

    const-string/jumbo v3, "hide"

    invoke-static {v1, v3}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v1, :cond_0

    const-string v1, "MagnifierSurfaceControl"

    const-string v3, "SurfaceControl is null, return"

    invoke-static {v1, v3}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    :goto_0
    return-void

    :cond_0
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mLastOffsetX:F

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mLastOffsetY:F

    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->hide()V

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mBorder:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    invoke-virtual {v1}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->hide()V

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPoint:Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPoint:Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;

    invoke-virtual {v1}, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->hide()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    const/4 v3, -0x1

    :try_start_1
    invoke-static {v1, v3}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_1
    :try_start_2
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    const/4 v1, 0x3

    iput v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mState:I

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "MagnifierSurfaceControl"

    const-string/jumbo v3, "failed to set hovering spen icon"

    invoke-static {v1, v3}, Landroid/util/secutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private show(Landroid/view/MagnificationSpec;)V
    .locals 11

    const/4 v10, 0x2

    iget-object v5, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget v4, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mState:I

    if-nez v4, :cond_0

    const-string v4, "MagnifierSurfaceControl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mState is wrong:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/secutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v4, :cond_1

    const-string v4, "MagnifierSurfaceControl"

    const-string v6, "SurfaceControl is null, return"

    invoke-static {v4, v6}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_1
    :try_start_1
    iget v4, p1, Landroid/view/MagnificationSpec;->offsetX:F

    iput v4, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mLastOffsetX:F

    iget v4, p1, Landroid/view/MagnificationSpec;->offsetY:F

    iput v4, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mLastOffsetY:F

    iget-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v4, p1}, Lcom/android/server/display/MagnifierDisplayPolicy;->getDisplayInfo(Landroid/view/MagnificationSpec;)Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->getSurfaceOffset()Landroid/graphics/Point;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->getSurfaceCropRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v6, v3, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    iget v7, v3, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    invoke-virtual {v4, v6, v7}, Landroid/view/SurfaceControl;->setPosition(FF)V

    iget-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v4, v0}, Landroid/view/SurfaceControl;->setWindowCrop(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v6, p1, Landroid/view/MagnificationSpec;->scale:F

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v9, p1, Landroid/view/MagnificationSpec;->scale:F

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    iget-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mBorder:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    invoke-virtual {v1}, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->getAbsOffset()Landroid/graphics/Point;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->setPosition(Landroid/graphics/Point;)V

    iget-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPoint:Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPoint:Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;

    invoke-virtual {v1}, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->getPointOffset()Landroid/graphics/Point;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->setPosition(Landroid/graphics/Point;)V

    :cond_2
    iget v4, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mState:I

    if-eq v4, v10, :cond_3

    const-string v4, "MagnifierSurfaceControl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "show:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x2

    iput v4, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mState:I

    iget-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v4, v6}, Landroid/view/SurfaceControl;->setAlpha(F)V

    iget-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v4}, Landroid/view/SurfaceControl;->show()V

    iget-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mBorder:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    invoke-virtual {v4}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->show()V

    iget-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPoint:Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPoint:Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;

    invoke-virtual {v4}, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->show()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/16 v4, 0x13

    const/4 v6, -0x1

    :try_start_3
    invoke-static {v4, v6}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_3
    :goto_1
    :try_start_4
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    :try_start_5
    const-string v4, "MagnifierSurfaceControl"

    const-string/jumbo v6, "failed to set hovering spen icon"

    invoke-static {v4, v6}, Landroid/util/secutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    :try_start_6
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method


# virtual methods
.method public create()V
    .locals 7

    const-string v2, "MagnifierSurfaceControl"

    const-string v3, "create"

    invoke-static {v2, v3}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/display/MagnifierSurfaceControl;->createDefaultSurface()V

    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v3, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p0, v3}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v2}, Lcom/android/server/display/MagnifierDisplayPolicy;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v2}, Lcom/android/server/display/MagnifierDisplayPolicy;->getDefaultDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    new-instance v2, Lcom/android/server/display/MagnifierSurfaceControl$Border;

    iget-object v3, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/view/Display;->getLayerStack()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v5}, Lcom/android/server/display/MagnifierDisplayPolicy;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v6}, Lcom/android/server/display/MagnifierDisplayPolicy;->getHeight()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/server/display/MagnifierSurfaceControl$Border;-><init>(Landroid/content/Context;III)V

    iput-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mBorder:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v2}, Lcom/android/server/display/MagnifierDisplayPolicy;->isHoverZoom()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;

    iget-object v3, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/view/Display;->getLayerStack()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v5}, Lcom/android/server/display/MagnifierDisplayPolicy;->getPointerSize()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;-><init>(Landroid/content/Context;II)V

    iput-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPoint:Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;

    :cond_0
    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    iget-object v3, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mBorder:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    invoke-virtual {v3}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->getPadding()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/display/MagnifierDisplayPolicy;->setPadding(Landroid/graphics/Rect;)V

    const/4 v2, 0x1

    iput v2, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mState:I

    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mListener:Lcom/android/server/display/MagnifierSurfaceControl$Listener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mListener:Lcom/android/server/display/MagnifierSurfaceControl$Listener;

    iget-object v3, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurface:Landroid/view/Surface;

    iget v4, v1, Landroid/view/DisplayInfo;->refreshRate:F

    invoke-interface {v2, v3, v4}, Lcom/android/server/display/MagnifierSurfaceControl$Listener;->onCreateSurface(Landroid/view/Surface;F)V

    :cond_1
    return-void
.end method

.method public dismiss()V
    .locals 4

    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    invoke-direct {p0}, Lcom/android/server/display/MagnifierSurfaceControl;->destroyMainSurface()V

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mState:I

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mBorder:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    invoke-virtual {v1}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->dismiss()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mBorder:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPoint:Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPoint:Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;

    invoke-virtual {v1}, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->dismiss()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPoint:Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    const/4 v3, -0x1

    :try_start_1
    invoke-static {v1, v3}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    iget-object v3, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSizeChangeListener:Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;

    invoke-virtual {v1, v3}, Lcom/android/server/display/MagnifierDisplayPolicy;->removeOnSizeChanageListener(Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSizeChangeListener:Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;

    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    const-string v1, "MagnifierSurfaceControl"

    const-string/jumbo v3, "failed to set hovering spen icon"

    invoke-static {v1, v3}, Landroid/util/secutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/display/MagnifierDisplayPolicy;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public onDisplayAdded(I)V
    .locals 4

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/display/MagnifierDisplayPolicy;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    if-ne p1, v1, :cond_0

    const-string v1, "MagnifierSurfaceControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDisplayAdded:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 0

    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 4

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/display/MagnifierDisplayPolicy;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    if-ne p1, v1, :cond_0

    const-string v1, "MagnifierSurfaceControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDisplayRemoved:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/display/MagnifierSurfaceControl;->dismiss()V

    :cond_0
    return-void
.end method

.method public updateMagnificationSpec(Landroid/view/MagnificationSpec;)V
    .locals 3

    const/high16 v2, 0x40800000    # 4.0f

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/display/MagnifierDisplayPolicy;->isHoverZoom()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mLastOffsetX:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mLastOffsetY:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p1, Landroid/view/MagnificationSpec;->offsetX:F

    iget v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mLastOffsetX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_0

    iget v0, p1, Landroid/view/MagnificationSpec;->offsetY:F

    iget v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mLastOffsetY:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/display/MagnifierSurfaceControl;->show(Landroid/view/MagnificationSpec;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/android/server/display/MagnifierSurfaceControl;->hide()V

    goto :goto_0
.end method

.class public Lcom/android/systemui/recents/views/DualScreenViewControl;
.super Ljava/lang/Object;
.source "DualScreenViewControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/views/DualScreenViewControl$AnimationStartedListener;,
        Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final DEBUG_VIEW_MOVEMENT:Z = false

.field public static final DIM_AMOUNT:I = 0x4c

.field public static final DIM_DURATION:I = 0x14a

.field public static final DIM_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/systemui/recents/views/TaskView;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAIN_RECENTS_DISPLAY:I = 0x0

.field public static final SUB_RECENTS_DISPLAY:I = 0x1

.field public static final TAG:Ljava/lang/String; = "DualScreenViewControl"

.field private static mLaunchRunnable:Ljava/lang/Runnable;

.field private static final mLock:Ljava/lang/Object;

.field private static sInstance:Lcom/android/systemui/recents/views/DualScreenViewControl;


# instance fields
.field private mInfos:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/systemui/recents/views/DualScreenViewControl;->DEBUG:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/views/DualScreenViewControl;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/recents/views/DualScreenViewControl;->mLaunchRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/recents/views/DualScreenViewControl$1;

    const-string v1, "dim"

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/views/DualScreenViewControl$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/recents/views/DualScreenViewControl;->DIM_PROPERTY:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/DualScreenViewControl;->mInfos:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/android/systemui/recents/views/DualScreenViewControl;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/recents/views/DualScreenViewControl;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/DualScreenViewControl;->mInfos:Landroid/util/SparseArray;

    return-object v0
.end method

.method public static getInstance()Lcom/android/systemui/recents/views/DualScreenViewControl;
    .locals 2

    sget-object v1, Lcom/android/systemui/recents/views/DualScreenViewControl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/systemui/recents/views/DualScreenViewControl;->sInstance:Lcom/android/systemui/recents/views/DualScreenViewControl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/recents/views/DualScreenViewControl;

    invoke-direct {v0}, Lcom/android/systemui/recents/views/DualScreenViewControl;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/views/DualScreenViewControl;->sInstance:Lcom/android/systemui/recents/views/DualScreenViewControl;

    :cond_0
    sget-object v0, Lcom/android/systemui/recents/views/DualScreenViewControl;->sInstance:Lcom/android/systemui/recents/views/DualScreenViewControl;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static launchTask()V
    .locals 2

    sget-object v1, Lcom/android/systemui/recents/views/DualScreenViewControl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/systemui/recents/views/DualScreenViewControl;->mLaunchRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/recents/views/DualScreenViewControl;->mLaunchRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/recents/views/DualScreenViewControl;->mLaunchRunnable:Ljava/lang/Runnable;

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public addRootView(ILandroid/view/ViewGroup;)V
    .locals 6

    sget-object v3, Lcom/android/systemui/recents/views/DualScreenViewControl;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    new-instance v0, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;-><init>(Lcom/android/systemui/recents/views/DualScreenViewControl;)V

    iput-object p2, v0, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->rootView:Landroid/view/ViewGroup;

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v0, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-object v1, v0, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->animationView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/recents/views/DualScreenViewControl;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public canTaskBeMoved(Lcom/samsung/android/dualscreen/TaskInfo;)Z
    .locals 3

    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/dualscreen/TaskInfo;->isCoupled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p1, Lcom/samsung/android/dualscreen/TaskInfo;->canMoveTaskToScreen:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/dualscreen/TaskInfo;->getScreen()Lcom/samsung/android/dualscreen/DualScreen;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/dualscreen/DualScreen;->FULL:Lcom/samsung/android/dualscreen/DualScreen;

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getMultipleScreenState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSetLauchTask()Z
    .locals 2

    sget-object v1, Lcom/android/systemui/recents/views/DualScreenViewControl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/systemui/recents/views/DualScreenViewControl;->mLaunchRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public moveAnimationView(Landroid/view/View;IZ)V
    .locals 10

    const/4 v4, 0x1

    const/4 v6, 0x0

    sget-object v7, Lcom/android/systemui/recents/views/DualScreenViewControl;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    if-nez v1, :cond_4

    :goto_0
    iget-object v6, p0, Lcom/android/systemui/recents/views/DualScreenViewControl;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;

    if-eqz v2, :cond_3

    iget-object v6, v2, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->rootView:Landroid/view/ViewGroup;

    if-eqz v6, :cond_3

    iget-object v6, v2, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->animationView:Landroid/widget/ImageView;

    if-eqz v6, :cond_3

    iget-object v6, v2, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->animationView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, v2, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->animationView:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    const/4 v5, 0x0

    if-nez p2, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v5

    iget-object v6, v2, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->animationView:Landroid/widget/ImageView;

    iget v8, v2, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->startX:F

    add-float/2addr v8, v5

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setTranslationX(F)V

    :goto_1
    sget-boolean v6, Lcom/android/systemui/recents/views/DualScreenViewControl;->DEBUG:Z

    if-eqz v6, :cond_1

    :cond_1
    if-eqz p3, :cond_6

    iget-object v6, v2, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->taskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    if-eqz v6, :cond_2

    iget-object v8, v2, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->taskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/recents/views/TaskView;

    move-object v6, v0

    const/4 v9, 0x1

    invoke-virtual {v8, v6, v9}, Lcom/android/systemui/recents/views/TaskStackView;->setDimAllTask(Lcom/android/systemui/recents/views/TaskView;Z)V

    :cond_2
    iget-object v6, p0, Lcom/android/systemui/recents/views/DualScreenViewControl;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;

    if-eqz v3, :cond_3

    iget-object v6, v3, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->taskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    if-eqz v6, :cond_3

    iget-object v6, v3, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->taskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    check-cast p1, Lcom/android/systemui/recents/views/TaskView;

    const/4 v8, 0x1

    invoke-virtual {v6, p1, v8}, Lcom/android/systemui/recents/views/TaskStackView;->setDimAllTask(Lcom/android/systemui/recents/views/TaskView;Z)V

    :cond_3
    :goto_2
    monitor-exit v7

    return-void

    :cond_4
    move v4, v6

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v5

    iget-object v6, v2, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->animationView:Landroid/widget/ImageView;

    iget v8, v2, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->startY:F

    add-float/2addr v8, v5

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setTranslationY(F)V

    goto :goto_1

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    :cond_6
    :try_start_1
    iget-object v6, v2, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->taskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    if-eqz v6, :cond_7

    iget-object v6, v2, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->taskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Lcom/android/systemui/recents/views/TaskStackView;->setDimAllTask(Lcom/android/systemui/recents/views/TaskView;Z)V

    :cond_7
    iget-object v6, p0, Lcom/android/systemui/recents/views/DualScreenViewControl;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;

    if-eqz v3, :cond_3

    iget-object v6, v3, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->taskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    if-eqz v6, :cond_3

    iget-object v6, v3, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->taskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Lcom/android/systemui/recents/views/TaskStackView;->setDimAllTask(Lcom/android/systemui/recents/views/TaskView;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public resetAllAnimationView()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/DualScreenViewControl;->resetAnimationView(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/DualScreenViewControl;->resetAnimationView(I)V

    return-void
.end method

.method public resetAnimationView(I)V
    .locals 8

    const/4 v3, 0x0

    sget-object v5, Lcom/android/systemui/recents/views/DualScreenViewControl;->mLock:Ljava/lang/Object;

    monitor-enter v5

    if-nez p1, :cond_0

    const/4 v3, 0x1

    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/recents/views/DualScreenViewControl;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;

    sget-boolean v4, Lcom/android/systemui/recents/views/DualScreenViewControl;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "DualScreenViewControl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "resetAnimationView - fromScreen : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  info : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v1, :cond_6

    iget-object v4, v1, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->rootView:Landroid/view/ViewGroup;

    if-eqz v4, :cond_6

    iget-object v4, v1, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->animationView:Landroid/widget/ImageView;

    if-eqz v4, :cond_6

    iget v4, v1, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->semaphore:I

    if-lez v4, :cond_6

    iget v4, v1, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->semaphore:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v1, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->semaphore:I

    if-nez v4, :cond_6

    iget-object v4, v1, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->animationView:Landroid/widget/ImageView;

    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, v1, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->animationView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    const/high16 v4, -0x40800000    # -1.0f

    iput v4, v1, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->startX:F

    const/high16 v4, -0x40800000    # -1.0f

    iput v4, v1, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->startY:F

    iget-object v4, v1, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->transform:Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskViewTransform;->reset()V

    iget-object v4, v1, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->headerBM:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_3

    iget-object v4, v1, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->headerBM:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v4, 0x0

    iput-object v4, v1, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->headerBM:Landroid/graphics/Bitmap;

    :cond_3
    iget-object v4, v1, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->taskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    if-eqz v4, :cond_4

    iget-object v4, v1, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->taskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Lcom/android/systemui/recents/views/TaskStackView;->setDimAllTask(Lcom/android/systemui/recents/views/TaskView;Z)V

    :cond_4
    iget-object v4, p0, Lcom/android/systemui/recents/views/DualScreenViewControl;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;

    if-eqz v2, :cond_5

    iget-object v4, v2, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->taskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    if-eqz v4, :cond_5

    iget-object v4, v2, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->taskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Lcom/android/systemui/recents/views/TaskStackView;->setDimAllTask(Lcom/android/systemui/recents/views/TaskView;Z)V

    :cond_5
    iget-object v4, v1, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->animationView:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_6
    monitor-exit v5

    return-void

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public setLaunchTask(IIZLjava/lang/String;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V
    .locals 7

    new-instance v0, Lcom/android/systemui/recents/views/DualScreenViewControl$2;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/recents/views/DualScreenViewControl$2;-><init>(Lcom/android/systemui/recents/views/DualScreenViewControl;IIZLjava/lang/String;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    sput-object v0, Lcom/android/systemui/recents/views/DualScreenViewControl;->mLaunchRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public setLaunchTask(Ljava/lang/Runnable;)V
    .locals 2

    sget-object v1, Lcom/android/systemui/recents/views/DualScreenViewControl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sput-object p1, Lcom/android/systemui/recents/views/DualScreenViewControl;->mLaunchRunnable:Ljava/lang/Runnable;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setTaskStackView(ILcom/android/systemui/recents/views/TaskStackView;)V
    .locals 3

    sget-object v2, Lcom/android/systemui/recents/views/DualScreenViewControl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/DualScreenViewControl;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;

    if-eqz v0, :cond_0

    iput-object p2, v0, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->taskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public showAnimationView(ILcom/android/systemui/recents/views/TaskView;II)V
    .locals 17

    sget-object v14, Lcom/android/systemui/recents/views/DualScreenViewControl;->mLock:Ljava/lang/Object;

    monitor-enter v14

    :try_start_0
    sget-boolean v13, Lcom/android/systemui/recents/views/DualScreenViewControl;->DEBUG:Z

    if-eqz v13, :cond_0

    const-string v13, "DualScreenViewControl"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "showAnimationView - fromScreen : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "  Task : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_3

    const/4 v11, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recents/views/DualScreenViewControl;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v13, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;

    if-eqz v6, :cond_2

    iget-object v13, v6, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->rootView:Landroid/view/ViewGroup;

    if-eqz v13, :cond_2

    iget v13, v6, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->semaphore:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v6, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->semaphore:I

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget-object v13, v6, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->animationView:Landroid/widget/ImageView;

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskView;->captureView()Landroid/graphics/Bitmap;

    move-result-object v15

    invoke-virtual {v13, v15}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    if-nez p3, :cond_5

    iget v12, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v13, v6, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->animationView:Landroid/widget/ImageView;

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskView;->getX()F

    move-result v15

    if-nez p1, :cond_4

    :goto_1
    int-to-float v0, v12

    move/from16 v16, v0

    add-float v15, v15, v16

    invoke-virtual {v13, v15}, Landroid/widget/ImageView;->setX(F)V

    iget-object v13, v6, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->animationView:Landroid/widget/ImageView;

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskView;->getY()F

    move-result v15

    invoke-virtual {v13, v15}, Landroid/widget/ImageView;->setY(F)V

    :goto_2
    iget-object v13, v6, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->animationView:Landroid/widget/ImageView;

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskView;->getScaleX()F

    move-result v15

    invoke-virtual {v13, v15}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v13, v6, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->animationView:Landroid/widget/ImageView;

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskView;->getScaleY()F

    move-result v15

    invoke-virtual {v13, v15}, Landroid/widget/ImageView;->setScaleY(F)V

    iget-object v13, v6, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->animationView:Landroid/widget/ImageView;

    invoke-virtual {v13}, Landroid/widget/ImageView;->getX()F

    move-result v13

    iput v13, v6, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->startX:F

    iget-object v13, v6, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->animationView:Landroid/widget/ImageView;

    invoke-virtual {v13}, Landroid/widget/ImageView;->getY()F

    move-result v13

    iput v13, v6, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->startY:F

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskView;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v9}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v8

    invoke-virtual {v9}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    move-result-object v13

    iget-object v15, v6, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->transform:Lcom/android/systemui/recents/views/TaskViewTransform;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v13, v10, v8, v15, v0}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v13

    iput-object v13, v6, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->transform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget-object v13, v10, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v13, :cond_1

    iget-object v13, v10, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    if-lez v13, :cond_1

    iget-object v13, v10, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    if-lez v13, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskView;->getScaleX()F

    move-result v7

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v13}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredWidth()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v7

    float-to-int v4, v13

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v13}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredHeight()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v7

    float-to-int v3, v13

    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    iput-object v13, v6, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->headerBM:Landroid/graphics/Bitmap;

    new-instance v1, Landroid/graphics/Canvas;

    iget-object v13, v6, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->headerBM:Landroid/graphics/Bitmap;

    invoke-direct {v1, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskView;->getScaleX()F

    move-result v13

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskView;->getScaleY()F

    move-result v15

    invoke-virtual {v1, v13, v15}, Landroid/graphics/Canvas;->scale(FF)V

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v13, v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->draw(Landroid/graphics/Canvas;)V

    const/4 v13, 0x0

    invoke-virtual {v1, v13}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    sget-boolean v13, Lcom/android/systemui/recents/views/DualScreenViewControl;->DEBUG:Z

    if-eqz v13, :cond_2

    const-string v13, "DualScreenViewControl"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "showAnimationView - update : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    monitor-exit v14

    return-void

    :cond_3
    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_4
    neg-int v12, v12

    goto/16 :goto_1

    :cond_5
    iget v5, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v13, v6, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->animationView:Landroid/widget/ImageView;

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskView;->getX()F

    move-result v15

    invoke-virtual {v13, v15}, Landroid/widget/ImageView;->setX(F)V

    const/4 v13, 0x1

    move/from16 v0, p4

    if-ne v0, v13, :cond_7

    iget-object v13, v6, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->animationView:Landroid/widget/ImageView;

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskView;->getY()F

    move-result v15

    if-nez p1, :cond_6

    neg-int v5, v5

    :cond_6
    int-to-float v0, v5

    move/from16 v16, v0

    add-float v15, v15, v16

    invoke-virtual {v13, v15}, Landroid/widget/ImageView;->setY(F)V

    goto/16 :goto_2

    :catchall_0
    move-exception v13

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v13

    :cond_7
    :try_start_1
    iget-object v13, v6, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->animationView:Landroid/widget/ImageView;

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskView;->getY()F

    move-result v15

    if-nez p1, :cond_8

    :goto_3
    int-to-float v0, v5

    move/from16 v16, v0

    add-float v15, v15, v16

    invoke-virtual {v13, v15}, Landroid/widget/ImageView;->setY(F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    :cond_8
    neg-int v5, v5

    goto :goto_3
.end method

.class public Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;
.super Lcom/sec/daliviews/views/DrawableView;
.source "AppWidgetDrawableView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$ResizeRequest;,
        Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$ResizeResult;,
        Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AppWidgetDrawableView"

.field private static final mCaptureRatio:F = 3.0f


# instance fields
.field private mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

.field private mCaptureTested:Z

.field public mChangeGrid:Z

.field private mDownX:F

.field private mDownY:F

.field private mHandler:Landroid/os/Handler;

.field private mHostView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;

.field private mHostViewSizeChanged:Z

.field private mIsInGesture:Z

.field public mIsOnScreen:Z

.field public mIsRotating:Z

.field private mLastRequestedHeight:I

.field private mLastRequestedWidth:I

.field private mMultiTouchDetected:Z

.field private mOldHostView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;

.field private mOrientation:I

.field private mPaused:Z

.field private mResizeRequests:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$ResizeRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mResizingContent:Z

.field private mScrollTaken:Z

.field private mScrollableState:Z

.field private mSetRedrawDirtyForHWCanvas:Ljava/lang/Runnable;

.field public mStopped:Z

.field private mUseNonDaliTWLauncherLogicToDetermineScroll:Z

.field private mWidgetHeight:I

.field private mWidgetWidth:I

.field private mbUseHWCanvas:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/sec/daliviews/views/DrawableView;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mHostView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mOldHostView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mHandler:Landroid/os/Handler;

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mMultiTouchDetected:Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mResizeRequests:Ljava/util/LinkedList;

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mResizingContent:Z

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mHostViewSizeChanged:Z

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mUseNonDaliTWLauncherLogicToDetermineScroll:Z

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mIsInGesture:Z

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mChangeGrid:Z

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mIsRotating:Z

    iput v3, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mOrientation:I

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mbUseHWCanvas:Z

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mScrollableState:Z

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mScrollTaken:Z

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mCaptureTested:Z

    iput v4, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mDownX:F

    iput v4, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mDownY:F

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mPaused:Z

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mIsOnScreen:Z

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mStopped:Z

    new-instance v0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$3;-><init>(Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mSetRedrawDirtyForHWCanvas:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->setLongClickable(Z)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->setClickable(Z)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->setFocusable(Z)V

    invoke-virtual {p0, v3}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0, v3}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->setSensitive(Z)V

    invoke-virtual {p0, v3}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->setEventTransformToLocal(Z)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getOrientation()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mOrientation:I

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mWidgetHeight:I

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->resizeHostView(II)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->updateAppWidgetSize(II)V

    return-void
.end method

.method static synthetic access$1402(Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mResizingContent:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->render()V

    return-void
.end method

.method static synthetic access$302(Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mHostViewSizeChanged:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;)Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mHostView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;)Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mHostView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->detachOldHostView()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mScrollTaken:Z

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mResizeRequests:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;IIII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->updateWidgetSize(IIII)V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mWidgetWidth:I

    return v0
.end method

.method private calculateWidgetSize(IIII)Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$ResizeResult;
    .locals 20

    new-instance v11, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$ResizeResult;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$ResizeResult;-><init>(Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$1;)V

    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v11, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$ResizeResult;->forceToResize:Z

    const/high16 v17, 0x3f800000    # 1.0f

    move/from16 v0, v17

    iput v0, v11, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$ResizeResult;->scaleToResize:F

    move/from16 v0, p1

    iput v0, v11, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$ResizeResult;->width:I

    move/from16 v0, p2

    iput v0, v11, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$ResizeResult;->height:I

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->getTag()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/sec/android/app/launcher/data/AppWidgetItem;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mLastRequestedWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    move/from16 v1, p1

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mLastRequestedHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    move/from16 v1, p2

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mWidgetWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v11, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$ResizeResult;->width:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mWidgetHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v11, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$ResizeResult;->height:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mHostView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mHostView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->isForceToResize()Z

    move-result v17

    move/from16 v0, v17

    iput-boolean v0, v11, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$ResizeResult;->forceToResize:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mHostView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->getForceScaleToResize()F

    move-result v17

    move/from16 v0, v17

    iput v0, v11, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$ResizeResult;->scaleToResize:F

    :cond_0
    if-eqz v16, :cond_1

    const-string v17, "AppWidgetDrawableView"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "calculateWidgetSize[skip] samesize with lastReq  : using w/h "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " (widgetid "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/launcher/data/AppWidgetItem;->getWidgetId()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-object v11

    :cond_2
    if-eqz v16, :cond_3

    const-string v17, "AppWidgetDrawableView"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "calculateWidgetSize: using w/h "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " span "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " (widgetid "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/launcher/data/AppWidgetItem;->getWidgetId()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isDynamicGridChangeEnabled()Z

    move-result v17

    if-eqz v17, :cond_1

    if-eqz v16, :cond_1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHomeFragment()Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v7

    const/16 v17, 0x1

    move/from16 v0, p3

    move/from16 v1, v17

    if-ne v0, v1, :cond_4

    const/16 v17, 0x1

    move/from16 v0, p4

    move/from16 v1, v17

    if-ne v0, v1, :cond_4

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/launcher/data/AppWidgetItem;->getWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v15

    iget v0, v15, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    move/from16 v1, p1

    if-ge v0, v1, :cond_4

    iget v0, v15, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    move/from16 v1, p2

    if-lt v0, v1, :cond_1

    :cond_4
    invoke-virtual {v7}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPagePresenters()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_5

    const-string v17, "AppWidgetDrawableView"

    const-string v18, "calculateWidgetSize HomePresenter-mPagePresenters is empty"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v7}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getCurrentPagePresenter()Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-result-object v8

    if-nez v8, :cond_6

    :try_start_0
    invoke-virtual {v7}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPagePresenters()Ljava/util/List;

    move-result-object v17

    const/16 v18, 0x0

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-object v8, v0

    instance-of v0, v8, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    move/from16 v17, v0

    if-eqz v17, :cond_6

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPagePresenters()Ljava/util/List;

    move-result-object v17

    const/16 v18, 0x1

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-object v8, v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    invoke-virtual {v8}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageItem()Lcom/sec/android/app/launcher/data/PageItem;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/launcher/data/PageItem;->getCellSpacingHorizontal()I

    move-result v3

    invoke-virtual {v8}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageItem()Lcom/sec/android/app/launcher/data/PageItem;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/launcher/data/PageItem;->getCellSpacingVertical()I

    move-result v2

    invoke-virtual {v8}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageItem()Lcom/sec/android/app/launcher/data/PageItem;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/launcher/data/PageItem;->getDefaultCellWidth()I

    move-result v5

    invoke-virtual {v8}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageItem()Lcom/sec/android/app/launcher/data/PageItem;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/launcher/data/PageItem;->getDefaultCellHeight()I

    move-result v4

    mul-int v18, p3, v5

    const/16 v17, 0x2

    move/from16 v0, p3

    move/from16 v1, v17

    if-lt v0, v1, :cond_b

    add-int/lit8 v17, p3, -0x1

    mul-int v17, v17, v3

    :goto_1
    add-int v10, v18, v17

    move/from16 v9, p2

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {}, Lcom/sec/android/app/launcher/utils/Utils;->isMobileKeyboardMode()Z

    move-result v17

    if-eqz v17, :cond_7

    const v12, 0x3f333333    # 0.7f

    :cond_7
    mul-int v18, p4, v4

    const/16 v17, 0x2

    move/from16 v0, p4

    move/from16 v1, v17

    if-lt v0, v1, :cond_c

    add-int/lit8 v17, p4, -0x1

    mul-int v17, v17, v2

    :goto_2
    add-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v17, v17, v12

    move/from16 v0, v17

    float-to-int v9, v0

    move/from16 v0, p1

    if-ge v0, v10, :cond_8

    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v11, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$ResizeResult;->forceToResize:Z

    iput v10, v11, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$ResizeResult;->width:I

    :cond_8
    move/from16 v0, p2

    if-ge v0, v9, :cond_9

    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v11, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$ResizeResult;->forceToResize:Z

    iput v9, v11, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$ResizeResult;->height:I

    :cond_9
    iget-boolean v0, v11, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$ResizeResult;->forceToResize:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v17, v0

    iget v0, v11, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$ResizeResult;->width:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v13, v17, v18

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v17, v0

    iget v0, v11, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$ResizeResult;->height:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v14, v17, v18

    const/high16 v17, 0x3f800000    # 1.0f

    cmpl-float v17, v13, v17

    if-nez v17, :cond_a

    const/high16 v17, 0x3f800000    # 1.0f

    cmpl-float v17, v14, v17

    if-eqz v17, :cond_1

    :cond_a
    cmpg-float v17, v13, v14

    if-gez v17, :cond_d

    iput v13, v11, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$ResizeResult;->scaleToResize:F

    :goto_3
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x3f800000    # 1.0f

    mul-float v17, v17, v18

    iget v0, v11, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$ResizeResult;->scaleToResize:F

    move/from16 v18, v0

    div-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v11, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$ResizeResult;->width:I

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x3f800000    # 1.0f

    mul-float v17, v17, v18

    iget v0, v11, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$ResizeResult;->scaleToResize:F

    move/from16 v18, v0

    div-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v11, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$ResizeResult;->height:I

    goto/16 :goto_0

    :catch_0
    move-exception v6

    const-string v17, "AppWidgetDrawableView"

    const-string v18, "calculateWidgetSize ArrayIndexOutOfBoundsException"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_b
    const/16 v17, 0x0

    goto/16 :goto_1

    :cond_c
    const/16 v17, 0x0

    goto/16 :goto_2

    :cond_d
    iput v14, v11, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$ResizeResult;->scaleToResize:F

    goto :goto_3
.end method

.method private detachHostView()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mHostView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$9;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$9;-><init>(Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private detachOldHostView()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mOldHostView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mOldHostView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->detach()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mOldHostView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;

    goto :goto_0
.end method

.method private disablePageLayoutScrolling()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->getPageLayout()Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/daliviews/layouts/PageLayout;->getScrollableState()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mScrollableState:Z

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/layouts/PageLayout;->setScrolling(Z)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mScrollTaken:Z

    :cond_0
    return-void
.end method

.method private getCaptureDistance()F
    .locals 1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getCaptureDistance()F

    move-result v0

    return v0
.end method

.method private getPageLayout()Lcom/sec/daliviews/layouts/PageLayout;
    .locals 3

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getCurrentPresenter()Lcom/sec/android/app/launcher/activities/PresenterBase;

    move-result-object v1

    instance-of v2, v1, Lcom/sec/android/app/launcher/activities/HomePresenter;

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getHomePageLayout()Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getShadowEffect()Lcom/sec/daliviews/effects/ShadowEffect;
    .locals 2

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getShadowEffect(I)Lcom/sec/daliviews/effects/ShadowEffect;

    move-result-object v0

    return-object v0
.end method

.method private invokeDraw()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$10;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$10;-><init>(Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private releaseScrollOwnership()V
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->restorePageLayoutScrolling()V

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mbUseHWCanvas:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mSetRedrawDirtyForHWCanvas:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mSetRedrawDirtyForHWCanvas:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->setRedrawOnlyWhenDirty(Z)V

    goto :goto_0
.end method

.method private render()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->setVisible()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mHostView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mHostView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->dispatchDraw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method private resizeHostView(II)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mHostView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mHostView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mHostView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private restorePageLayoutScrolling()V
    .locals 2

    iget-boolean v1, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mScrollTaken:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->getPageLayout()Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mScrollableState:Z

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/layouts/PageLayout;->setScrolling(Z)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mScrollTaken:Z

    goto :goto_0
.end method

.method private stopRendering()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mHostView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mHostView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->setWidgetView(Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;)V

    :cond_0
    return-void
.end method

.method private takeScrollOwnership()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->disablePageLayoutScrolling()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->setRedrawOnlyWhenDirty(Z)V

    return-void
.end method

.method private updateAppWidgetSize(II)V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mHostView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mHostView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v6, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v0, p1

    div-float/2addr v0, v6

    float-to-int v2, v0

    int-to-float v0, p2

    div-float/2addr v0, v6

    float-to-int v3, v0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mHostView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;

    const/4 v1, 0x0

    move v4, v2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->updateAppWidgetSize(Landroid/os/Bundle;IIII)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->applyShadow()V

    :cond_0
    return-void
.end method

.method private updateHostView()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mHostView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mHostView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->setInitRender(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->invokeDraw()V

    goto :goto_0
.end method

.method private updateWidgetSize(IIII)V
    .locals 4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->calculateWidgetSize(IIII)Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$ResizeResult;

    move-result-object v0

    iput p2, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mLastRequestedHeight:I

    iput p1, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mLastRequestedWidth:I

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isDynamicGridChangeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$ResizeResult;->width:I

    iput v1, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mWidgetWidth:I

    iget v1, v0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$ResizeResult;->height:I

    iput v1, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mWidgetHeight:I

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mHostView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mHostView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;

    iget-boolean v2, v0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$ResizeResult;->forceToResize:Z

    iget v3, v0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$ResizeResult;->scaleToResize:F

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->forceToResizeViewByScale(ZF)V

    :cond_0
    return-void
.end method

.method private withinDistance(FFF)Z
    .locals 2

    mul-float v0, p1, p1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    mul-float v1, p3, p3

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected applyShadow()V
    .locals 6

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->getShadowEffect()Lcom/sec/daliviews/effects/ShadowEffect;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v4}, Lcom/sec/daliviews/effects/ShadowEffect;->getUseGenericShadow()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4, p0}, Lcom/sec/daliviews/effects/ShadowEffect;->remove(Lcom/sec/daliviews/views/NativeViewBase;)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHomeFragment()Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getNewScrollEffectMode()I

    move-result v2

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getSavedScrollEffect()I

    move-result v0

    sget-object v5, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;->SCROLLEFFECT_SHADOW:Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

    invoke-virtual {v5}, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;->ordinal()I

    move-result v3

    if-eq v2, v3, :cond_2

    if-gez v2, :cond_0

    if-ne v0, v3, :cond_0

    :cond_2
    invoke-virtual {v4, p0, p0}, Lcom/sec/daliviews/effects/ShadowEffect;->apply(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V

    goto :goto_0
.end method

.method public destroy()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->stopRendering()V

    invoke-super {p0}, Lcom/sec/daliviews/views/DrawableView;->destroy()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->detachHostView()V

    return-void
.end method

.method public getCachedSpanX()I
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/data/AppWidgetItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/AppWidgetItem;->getCachedSpanX()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCachedSpanY()I
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/data/AppWidgetItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/AppWidgetItem;->getCachedSpanY()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getHostView()Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mHostView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;

    return-object v0
.end method

.method public getItemSpanX()I
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/data/AppWidgetItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/AppWidgetItem;->getSpanX()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getItemSpanY()I
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/data/AppWidgetItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/AppWidgetItem;->getSpanY()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNodeInfo(Landroid/util/SparseIntArray;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    .locals 6

    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/daliviews/views/DrawableView;->getNodeInfo(Landroid/util/SparseIntArray;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    iget-object v5, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mHostView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/appwidget/AppWidgetHostView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_0

    invoke-static {v5, p3, p4, p1, p2}, Lcom/sec/android/app/launcher/activities/Accessibility$AccessibilityNodeInfoList;->addItemToNodeInfo(Ljava/lang/Object;Landroid/view/accessibility/AccessibilityNodeInfo;ILandroid/util/SparseIntArray;Landroid/view/View;)V

    new-instance v0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$7;

    move-object v1, p0

    move-object v3, p2

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$7;-><init>(Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;Landroid/view/View;Landroid/view/View;ILandroid/appwidget/AppWidgetHostView;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_0
    return-void
.end method

.method public hideFocusHighlight()V
    .locals 2

    const-string v0, "AppWidgetDrawableView"

    const-string v1, "hideFocusHighlight"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAccessibility()Lcom/sec/android/app/launcher/activities/Accessibility;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/Accessibility;->getFocusedView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    if-eq v0, p0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mHostView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/GridLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/GridLayout;->setImportantForAccessibility(I)V

    :cond_0
    invoke-super {p0}, Lcom/sec/daliviews/views/DrawableView;->hideFocusHighlight()V

    return-void
.end method

.method public isRecyclable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isResumedState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onDragEnd()V
    .locals 3

    invoke-super {p0}, Lcom/sec/daliviews/views/DrawableView;->onDragEnd()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mResizeRequests:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AppWidgetDrawableView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDragEnd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mResizeRequests:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resize requests left over. Clearing backlog"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mResizeRequests:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    :cond_0
    return-void
.end method

.method protected onLongPressEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-super {p0, p1}, Lcom/sec/daliviews/views/DrawableView;->onLongPressEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public onPause()V
    .locals 2

    const-string v0, "AppWidgetDrawableView"

    const-string v1, "onPause new"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mPaused:Z

    return-void
.end method

.method public onRendererResumed()V
    .locals 2

    const-string v0, "Canvas"

    const-string v1, "onRendererResumed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mHostView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->invalidate()V

    return-void
.end method

.method public onResume()V
    .locals 2

    const-string v0, "AppWidgetDrawableView"

    const-string v1, "onResume new"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->invokeDraw()V

    return-void
.end method

.method protected onScreenChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/sec/daliviews/views/DrawableView;->onScreenChanged(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->isOnScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->invokeDraw()V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->applyShadow()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mHostView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAccessibility()Lcom/sec/android/app/launcher/activities/Accessibility;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$6;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$6;-><init>(Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public onShadowUpdated()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->applyShadow()V

    return-void
.end method

.method protected onSizeChanged(II)V
    .locals 4

    iget-boolean v1, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mResizingContent:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mResizeRequests:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const-string v1, "AppWidgetDrawableView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSizeChanged: skipping: mResizingContent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mResizingContent:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mResizeRequests.size() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mResizeRequests:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/data/AppWidgetItem;

    if-eqz v0, :cond_1

    const-string v1, "AppWidgetDrawableView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSizeChanged : skipping (widgetid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/AppWidgetItem;->getWidgetId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isRotationEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mOrientation:I

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getOrientation()I

    move-result v2

    if-eq v1, v2, :cond_3

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mIsRotating:Z

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getOrientation()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mOrientation:I

    :cond_3
    invoke-super {p0, p1, p2}, Lcom/sec/daliviews/views/DrawableView;->onSizeChanged(II)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$4;

    invoke-direct {v2, p0, p1, p2}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$4;-><init>(Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;II)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v5, 0x0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAccessibility()Lcom/sec/android/app/launcher/activities/Accessibility;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/activities/Accessibility;->getFocusedView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAccessibilityEnabled()Z

    move-result v9

    if-eqz v9, :cond_0

    if-eq v1, p0, :cond_0

    if-eqz v1, :cond_9

    instance-of v9, v1, Lcom/sec/android/app/launcher/views/AppWidgetView;

    if-eqz v9, :cond_8

    invoke-virtual {v1}, Lcom/sec/daliviews/views/NativeViewBase;->getScreenBoundingRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v9

    iget v10, v4, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    invoke-virtual {v4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v10

    iget v11, v4, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    invoke-virtual {p1, v9, v10}, Landroid/view/MotionEvent;->setLocation(FF)V

    :cond_0
    const/4 v1, 0x0

    if-nez v0, :cond_a

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mMultiTouchDetected:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iput v9, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iput v9, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mDownY:F

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mScrollTaken:Z

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mCaptureTested:Z

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mIsInGesture:Z

    :cond_1
    :goto_0
    iget-boolean v9, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mUseNonDaliTWLauncherLogicToDetermineScroll:Z

    if-nez v9, :cond_10

    const/4 v9, 0x1

    if-eq v0, v9, :cond_2

    const/4 v9, 0x3

    if-ne v0, v9, :cond_b

    :cond_2
    iget-boolean v9, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mScrollTaken:Z

    if-eqz v9, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->getPageLayout()Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-boolean v9, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mScrollableState:Z

    invoke-virtual {v3, v9}, Lcom/sec/daliviews/layouts/PageLayout;->setScrolling(Z)V

    :cond_3
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->setRedrawOnlyWhenDirty(Z)V

    :cond_4
    :goto_1
    iget-boolean v9, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mMultiTouchDetected:Z

    if-eqz v9, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_12

    :cond_5
    iget-object v9, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mHostView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mHostView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;

    invoke-virtual {v9, p1}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    :cond_6
    :goto_2
    invoke-super {p0, p1}, Lcom/sec/daliviews/views/DrawableView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    if-nez v9, :cond_7

    if-eqz v5, :cond_13

    :cond_7
    const/4 v9, 0x1

    :goto_3
    return v9

    :cond_8
    const/4 v9, 0x0

    goto :goto_3

    :cond_9
    const/4 v9, 0x0

    goto :goto_3

    :cond_a
    const/4 v9, 0x5

    if-ne v0, v9, :cond_1

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mMultiTouchDetected:Z

    goto :goto_0

    :cond_b
    const/4 v9, 0x2

    if-ne v0, v9, :cond_4

    iget-boolean v9, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mCaptureTested:Z

    if-nez v9, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iget v9, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mDownX:F

    sub-float v9, v7, v9

    iget v10, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mDownY:F

    sub-float v10, v8, v10

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->getCaptureDistance()F

    move-result v11

    invoke-direct {p0, v9, v10, v11}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->withinDistance(FFF)Z

    move-result v9

    if-nez v9, :cond_c

    const/high16 v9, 0x40400000    # 3.0f

    iget v10, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mDownY:F

    sub-float v10, v8, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    mul-float/2addr v9, v10

    iget v10, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mDownX:F

    sub-float v10, v7, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_d

    const/4 v9, 0x1

    :goto_4
    iput-boolean v9, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mScrollTaken:Z

    const/high16 v9, 0x40000000    # 2.0f

    iget v10, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mDownY:F

    sub-float v10, v8, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    mul-float/2addr v9, v10

    iget v10, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mDownX:F

    sub-float v10, v7, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_e

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mScrollTaken:Z

    :goto_5
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mCaptureTested:Z

    :cond_c
    iget-boolean v9, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mScrollTaken:Z

    if-eqz v9, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->getPageLayout()Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v3

    if-eqz v3, :cond_f

    invoke-virtual {v3}, Lcom/sec/daliviews/layouts/PageLayout;->getScrollableState()Z

    move-result v9

    iput-boolean v9, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mScrollableState:Z

    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Lcom/sec/daliviews/layouts/PageLayout;->setScrolling(Z)V

    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->setRedrawOnlyWhenDirty(Z)V

    goto/16 :goto_1

    :cond_d
    const/4 v9, 0x0

    goto :goto_4

    :cond_e
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mScrollTaken:Z

    goto :goto_5

    :cond_f
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mScrollTaken:Z

    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->setRedrawOnlyWhenDirty(Z)V

    goto/16 :goto_1

    :cond_10
    iget-boolean v9, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mMultiTouchDetected:Z

    if-nez v9, :cond_11

    const/4 v9, 0x1

    if-eq v0, v9, :cond_11

    const/4 v9, 0x3

    if-ne v0, v9, :cond_4

    :cond_11
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mIsInGesture:Z

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->releaseScrollOwnership()V

    goto/16 :goto_1

    :cond_12
    iget-boolean v9, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mMultiTouchDetected:Z

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mHostView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;

    if-eqz v9, :cond_6

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v6

    const/4 v9, 0x3

    invoke-virtual {v6, v9}, Landroid/view/MotionEvent;->setAction(I)V

    iget-object v9, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mHostView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;

    invoke-virtual {v9, v6}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    invoke-virtual {v6}, Landroid/view/MotionEvent;->recycle()V

    goto/16 :goto_2

    :cond_13
    const/4 v9, 0x0

    goto/16 :goto_3
.end method

.method protected onVisibilityChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/daliviews/views/DrawableView;->onVisibilityChanged(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->isOnScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->setVisible()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->setInVisible()V

    goto :goto_0
.end method

.method public removeAccessibilityFocus()V
    .locals 6

    const-string v3, "AppWidgetDrawableView"

    const-string v4, "RemoveAccessibilityFocus"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mHostView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mHostView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/widget/GridLayout;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/GridLayout;->setImportantForAccessibility(I)V

    :cond_0
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "clearAccessibilityFocus"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    const/4 v3, 0x0

    :try_start_1
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_0
    return-void

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

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mUseNonDaliTWLauncherLogicToDetermineScroll:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mIsInGesture:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->takeScrollOwnership()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->releaseScrollOwnership()V

    goto :goto_0
.end method

.method protected resetPeer()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->stopRendering()V

    invoke-super {p0}, Lcom/sec/daliviews/views/DrawableView;->resetPeer()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->detachHostView()V

    return-void
.end method

.method protected resizeContent(IIIIII)Z
    .locals 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/launcher/data/AppWidgetItem;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p5, p6}, Lcom/sec/android/app/launcher/data/AppWidgetItem;->isAvailableSize(II)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "AppWidgetDrawableView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resizeContent : not available size spanX: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " spanY: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (widgetid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/data/AppWidgetItem;->getWidgetId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    :goto_0
    return v3

    :cond_0
    invoke-direct {p0, p1, p2, p5, p6}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->calculateWidgetSize(IIII)Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$ResizeResult;

    move-result-object v1

    new-instance v0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$ResizeRequest;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$ResizeRequest;-><init>(Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$1;)V

    iput p1, v0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$ResizeRequest;->requestedWidth:I

    iput p2, v0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$ResizeRequest;->requestedHeight:I

    iget v3, v1, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$ResizeResult;->width:I

    iput v3, v0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$ResizeRequest;->widgetWidth:I

    iget v3, v1, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$ResizeResult;->height:I

    iput v3, v0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$ResizeRequest;->widgetHeight:I

    iput p3, v0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$ResizeRequest;->cellX:I

    iput p4, v0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$ResizeRequest;->cellY:I

    iput p5, v0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$ResizeRequest;->spanX:I

    iput p6, v0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$ResizeRequest;->spanY:I

    if-eqz v2, :cond_1

    const-string v3, "AppWidgetDrawableView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "resizeContent : request: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (widgetid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/data/AppWidgetItem;->getWidgetId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mResizeRequests:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-nez v3, :cond_2

    iget v3, v1, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$ResizeResult;->width:I

    iget-object v6, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mHostView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->getWidth()I

    move-result v6

    if-ne v3, v6, :cond_2

    iget v3, v1, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$ResizeResult;->height:I

    iget-object v6, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mHostView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->getHeight()I

    move-result v6

    if-ne v3, v6, :cond_2

    const-string v3, "AppWidgetDrawableView"

    const-string v5, "resizeContent: Widget is already at the requested w/h"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mResizeRequests:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mResizeRequests:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$ResizeRequest;

    iget v3, v3, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$ResizeRequest;->widgetWidth:I

    iget v6, v1, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$ResizeResult;->width:I

    if-ne v3, v6, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mResizeRequests:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$ResizeRequest;

    iget v3, v3, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$ResizeRequest;->widgetHeight:I

    iget v6, v1, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$ResizeResult;->height:I

    if-ne v3, v6, :cond_3

    const-string v3, "AppWidgetDrawableView"

    const-string v5, "resizeContent: requested w/h already queued"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    goto/16 :goto_0

    :cond_3
    iput-boolean v5, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mResizingContent:Z

    iget-object v3, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$5;

    invoke-direct {v4, p0, v0, p1, p2}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$5;-><init>(Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$ResizeRequest;II)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move v3, v5

    goto/16 :goto_0
.end method

.method public setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mHostView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mHostView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_0
    return-void
.end method

.method public setHostView(Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;)V
    .locals 7

    const/4 v6, 0x0

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mHostView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;

    iget-object v3, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mHostView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f08000c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mUseNonDaliTWLauncherLogicToDetermineScroll:Z

    const v3, 0x7f0d00d0

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->setContentDescription(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mHostView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;

    invoke-virtual {v3, p0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->setWidgetView(Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$1;

    invoke-direct {v4, p0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$1;-><init>(Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v3, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mHostView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->setLayerType(ILandroid/graphics/Paint;)V

    iget-boolean v3, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mIsRotating:Z

    if-eqz v3, :cond_2

    const-string v3, "AppWidgetDrawableView"

    const-string v4, "setHostView. init last requested size"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v6, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mLastRequestedHeight:I

    iput v6, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mLastRequestedWidth:I

    iget v3, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mWidgetWidth:I

    iget v4, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mWidgetHeight:I

    invoke-direct {p0, v3, v4}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->resizeHostView(II)V

    iget v3, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mWidgetWidth:I

    iget v4, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mWidgetHeight:I

    invoke-direct {p0, v3, v4}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->updateAppWidgetSize(II)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mHostView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;

    invoke-virtual {v3, v6}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->setIgnoreDraw(Z)V

    iput-boolean v6, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mIsRotating:Z

    iget-object v3, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mOldHostView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$2;

    invoke-direct {v4, p0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$2;-><init>(Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mHostView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mHostView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;

    iget-object v4, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->invokeDraw()V

    goto :goto_0
.end method

.method public setIgnoreDraw(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mHostView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mHostView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->setIgnoreDraw(Z)V

    :cond_0
    return-void
.end method

.method public setInVisible()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mPaused:Z

    invoke-super {p0}, Lcom/sec/daliviews/views/DrawableView;->onPause()V

    return-void
.end method

.method public setPause()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mHostView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->setWidgetView(Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;)V

    invoke-super {p0}, Lcom/sec/daliviews/views/DrawableView;->onPause()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mPaused:Z

    return-void
.end method

.method public setRedrawOnlyWhenDirty(Z)V
    .locals 0

    return-void
.end method

.method public setUseHWCanvas(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mbUseHWCanvas:Z

    return-void
.end method

.method public setVisible()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mPaused:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/sec/daliviews/views/DrawableView;->onResume()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mHostView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mHostView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->setWidgetView(Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mHostView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->postInvalidate()V

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mPaused:Z

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$8;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$8;-><init>(Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public showFocusHighlight(Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 2

    const-string v0, "AppWidgetDrawableView"

    const-string v1, "showFocusHighlight"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mHostView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mHostView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mHostView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/GridLayout;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/GridLayout;->setImportantForAccessibility(I)V

    :cond_0
    invoke-super {p0, p1}, Lcom/sec/daliviews/views/DrawableView;->showFocusHighlight(Lcom/sec/daliviews/views/NativeViewBase;)V

    return-void
.end method

.method public updateForChangeGrid()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mChangeGrid:Z

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->invokeDraw()V

    return-void
.end method

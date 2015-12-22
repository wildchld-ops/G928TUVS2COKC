.class public Lcom/sec/android/app/launcher/views/SurfaceWidgetView;
.super Lcom/sec/daliviews/views/TextureView;
.source "SurfaceWidgetView.java"

# interfaces
.implements Lcom/sec/daliviews/views/IModedView;


# static fields
.field private static final TAG:Ljava/lang/String; = "SurfaceWidgetView"

.field private static final mCaptureRatio:F = 3.0f


# instance fields
.field private mCaptureTested:Z

.field private mContext:Landroid/content/Context;

.field private mDownX:F

.field private mDownY:F

.field mForceToResize:Z

.field private mIsRecycled:Z

.field private mMode:I

.field private mMultiTouchDetected:Z

.field mScaleToResize:F

.field private mScrollTaken:Z

.field private mScrollableState:Z

.field private mShouldProcessWidgetMotion:Z

.field private mUseNonDaliTWLauncherLogicToDetermineScroll:Z

.field mWidgetHeight:I

.field mWidgetWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/daliviews/views/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->mMultiTouchDetected:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->mMode:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->mShouldProcessWidgetMotion:Z

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->mScrollableState:Z

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->mScrollTaken:Z

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->mCaptureTested:Z

    iput v3, p0, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->mDownX:F

    iput v3, p0, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->mDownY:F

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->mUseNonDaliTWLauncherLogicToDetermineScroll:Z

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->mIsRecycled:Z

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->mForceToResize:Z

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->mScaleToResize:F

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->mUseNonDaliTWLauncherLogicToDetermineScroll:Z

    return-void
.end method

.method private doDestroy()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->mIsRecycled:Z

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->stopUpdateTexture()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->mSurface:Landroid/view/Surface;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->onSurfaceDestroyed(Landroid/view/Surface;)V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->onWidgetViewDestroyed()V

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

.method private onWidgetViewDestroyed()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;->INST:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->destroyWidget(Landroid/content/Context;Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;Z)V

    :cond_0
    return-void
.end method

.method private restartWidget(Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;Landroid/view/ViewGroup$LayoutParams;Lcom/sec/android/app/launcher/views/SurfaceWidgetView;)V
    .locals 3

    const-string v0, "SurfaceWidgetFlow"

    const-string v1, "making surface widget for restart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->getWidgetInfo()Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, p3, v2}, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->makeSurfaceWidget(Landroid/content/Context;Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;Lcom/sec/android/app/launcher/views/SurfaceWidgetView;Z)V

    sget-object v0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;->RUNNING:Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->setState(Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->applyShadow()V

    return-void
.end method

.method private updateWidgetSize(IIII)V
    .locals 23

    const/4 v6, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    move/from16 v20, p1

    move/from16 v17, p1

    move/from16 v18, p2

    move/from16 v16, p2

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isDynamicGridChangeEnabled()Z

    move-result v21

    if-eqz v21, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;

    invoke-virtual {v8}, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->getWidgetInfo()Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    move-result-object v19

    if-eqz v19, :cond_6

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHomeFragment()Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v7

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0a009d

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0a00a1

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPagePresenters()Ljava/util/List;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v7}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getCurrentPagePresenter()Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-result-object v9

    if-nez v9, :cond_1

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPagePresenters()Ljava/util/List;

    move-result-object v21

    const/16 v22, 0x0

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/launcher/activities/PagePresenter;

    instance-of v0, v9, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    move/from16 v21, v0

    if-eqz v21, :cond_1

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPagePresenters()Ljava/util/List;

    move-result-object v21

    const/16 v22, 0x1

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/launcher/activities/PagePresenter;

    :cond_1
    invoke-virtual {v9}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageItem()Lcom/sec/android/app/launcher/data/PageItem;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/launcher/data/PageItem;->getDefaultCellWidth()I

    move-result v5

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageItem()Lcom/sec/android/app/launcher/data/PageItem;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/launcher/data/PageItem;->getDefaultCellHeight()I

    move-result v4

    mul-int v22, p3, v5

    const/16 v21, 0x2

    move/from16 v0, p3

    move/from16 v1, v21

    if-lt v0, v1, :cond_7

    add-int/lit8 v21, p3, -0x1

    mul-int v21, v21, v3

    :goto_1
    add-int v11, v22, v21

    move/from16 v10, v16

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {}, Lcom/sec/android/app/launcher/utils/Utils;->isMobileKeyboardMode()Z

    move-result v21

    if-eqz v21, :cond_2

    const v12, 0x3f333333    # 0.7f

    :cond_2
    mul-int v22, p4, v4

    const/16 v21, 0x2

    move/from16 v0, p4

    move/from16 v1, v21

    if-lt v0, v1, :cond_8

    add-int/lit8 v21, p4, -0x1

    mul-int v21, v21, v2

    :goto_2
    add-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v21, v21, v12

    move/from16 v0, v21

    float-to-int v10, v0

    move/from16 v0, v17

    if-ge v0, v11, :cond_3

    const/4 v6, 0x1

    move/from16 v20, v11

    :cond_3
    move/from16 v0, v16

    if-ge v0, v10, :cond_4

    const/4 v6, 0x1

    move/from16 v18, v10

    :cond_4
    if-eqz v6, :cond_5

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v14, v21, v22

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v15, v21, v22

    cmpg-float v21, v14, v15

    if-gez v21, :cond_9

    move v13, v14

    :goto_3
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x3f800000    # 1.0f

    mul-float v21, v21, v22

    div-float v21, v21, v13

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x3f800000    # 1.0f

    mul-float v21, v21, v22

    div-float v21, v21, v13

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v18, v0

    :cond_5
    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->mForceToResize:Z

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->mScaleToResize:F

    move/from16 p1, v20

    move/from16 p2, v18

    :cond_6
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->mWidgetWidth:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->mWidgetHeight:I

    goto/16 :goto_0

    :cond_7
    const/16 v21, 0x0

    goto/16 :goto_1

    :cond_8
    const/16 v21, 0x0

    goto :goto_2

    :cond_9
    move v13, v15

    goto :goto_3
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
    .locals 0

    return-void
.end method

.method public changeMode(I)V
    .locals 3

    iput p1, p0, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->mMode:I

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->mMode:I

    const v2, 0x7f0b00db

    if-ne v1, v2, :cond_1

    check-cast v0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->onPause()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    check-cast v0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->onResume()V

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    const-string v0, "SurfaceWidgetView"

    const-string v1, "Destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->doDestroy()V

    invoke-super {p0}, Lcom/sec/daliviews/views/TextureView;->destroy()V

    return-void
.end method

.method public getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;

    if-nez v1, :cond_0

    const-string v1, "SurfaceWidgetView"

    const-string v2, "SurfaceWidget didn\'t provide AppWidgetProviderInfo"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    check-cast v0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->getWidgetInfo()Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    move-result-object v1

    goto :goto_0
.end method

.method public getCachedSpanX()I
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->getCachedSpanX()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCachedSpanY()I
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->getCachedSpanY()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDefaultMode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getItemSpanX()I
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->getSpanX()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getItemSpanY()I
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->getSpanY()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isRecyclable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isRecycled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->mIsRecycled:Z

    return v0
.end method

.method public isResumedState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onScreenChanged(Z)V
    .locals 4

    const-string v1, "SurfaceWidgetView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onScreenChanged:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", onScreen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->mIsRecycled:Z

    check-cast v0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->onResume()V

    :goto_1
    invoke-super {p0, p1}, Lcom/sec/daliviews/views/TextureView;->onScreenChanged(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->applyShadow()V

    goto :goto_0

    :cond_2
    check-cast v0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->onPause()V

    goto :goto_1
.end method

.method public onShadowUpdated()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->applyShadow()V

    return-void
.end method

.method protected onSurfaceCreated(Landroid/view/Surface;II)V
    .locals 2

    const-string v0, "SurfaceWidgetView"

    const-string v1, "onSurfaceCreated event"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->applyShadow()V

    return-void
.end method

.method protected onSurfaceDestroyed(Landroid/view/Surface;)V
    .locals 4

    const-string v2, "SurfaceWidgetView"

    const-string v3, "onSurfaceDestroyed event"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    check-cast v1, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->getConnection()Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;->onPause()Z

    goto :goto_0
.end method

.method protected onSurfaceSizeChanged(Landroid/view/Surface;II)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->applyShadow()V

    return-void
.end method

.method protected onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->mWidgetWidth:I

    iget v1, p0, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->mWidgetHeight:I

    invoke-super {p0, p1, v0, v1}, Lcom/sec/daliviews/views/TextureView;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    return-void
.end method

.method protected onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->mWidgetWidth:I

    iget v1, p0, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->mWidgetHeight:I

    invoke-super {p0, p1, v0, v1}, Lcom/sec/daliviews/views/TextureView;->onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 16

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAccessibility()Lcom/sec/android/app/launcher/activities/Accessibility;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/launcher/activities/Accessibility;->getFocusedView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v2

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAccessibilityEnabled()Z

    move-result v12

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    if-eq v2, v0, :cond_1

    if-eqz v2, :cond_b

    instance-of v12, v2, Lcom/sec/android/app/launcher/views/AppWidgetView;

    if-nez v12, :cond_0

    instance-of v12, v2, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;

    if-eqz v12, :cond_a

    :cond_0
    invoke-virtual {v2}, Lcom/sec/daliviews/views/NativeViewBase;->getScreenBoundingRect()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v12

    iget v13, v6, Landroid/graphics/Rect;->left:I

    int-to-float v13, v13

    sub-float/2addr v12, v13

    invoke-virtual {v6}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v13

    iget v14, v6, Landroid/graphics/Rect;->top:I

    int-to-float v14, v14

    sub-float/2addr v13, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/view/MotionEvent;->setLocation(FF)V

    :cond_1
    const/4 v2, 0x0

    if-nez v1, :cond_c

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->mShouldProcessWidgetMotion:Z

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->mMultiTouchDetected:Z

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->mDownX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->mDownY:F

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->mScrollTaken:Z

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->mCaptureTested:Z

    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->mUseNonDaliTWLauncherLogicToDetermineScroll:Z

    if-nez v12, :cond_4

    const/4 v12, 0x1

    if-eq v1, v12, :cond_3

    const/4 v12, 0x3

    if-ne v1, v12, :cond_d

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->mScrollTaken:Z

    if-eqz v12, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->getPageLayout()Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v5

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->mScrollableState:Z

    invoke-virtual {v5, v12}, Lcom/sec/daliviews/layouts/PageLayout;->setScrolling(Z)V

    :cond_4
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->hasPerfomedLongPress()Z

    move-result v4

    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v9

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->mMultiTouchDetected:Z

    if-nez v12, :cond_5

    if-nez v4, :cond_5

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->mMode:I

    const v13, 0x7f0b00db

    if-ne v12, v13, :cond_6

    :cond_5
    const/4 v12, 0x3

    invoke-virtual {v9, v12}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_6
    invoke-super/range {p0 .. p1}, Lcom/sec/daliviews/views/TextureView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->mShouldProcessWidgetMotion:Z

    if-eqz v12, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->getTag()Ljava/lang/Object;

    move-result-object v8

    instance-of v12, v8, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;

    if-eqz v12, :cond_8

    move-object v12, v8

    check-cast v12, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;

    invoke-virtual {v12}, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->getConnection()Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;

    move-result-object v12

    if-eqz v12, :cond_8

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->mForceToResize:Z

    if-eqz v12, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->mScaleToResize:F

    div-float/2addr v13, v14

    mul-float/2addr v12, v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    const/high16 v14, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->mScaleToResize:F

    div-float/2addr v14, v15

    mul-float/2addr v13, v14

    invoke-virtual {v9, v12, v13}, Landroid/view/MotionEvent;->setLocation(FF)V

    :cond_7
    const-string v13, "SurfaceWidgetView"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Touch: Action:"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getAction()I

    move-result v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, "/"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getY()F

    move-result v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->mMultiTouchDetected:Z

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, "/"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, "/"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->mForceToResize:Z

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " dragMode:"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->mMode:I

    const v15, 0x7f0b00db

    if-ne v12, v15, :cond_11

    const/4 v12, 0x1

    :goto_2
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast v8, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;

    invoke-virtual {v8}, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->getConnection()Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;

    move-result-object v12

    invoke-virtual {v12, v9}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;->onVerticalTouch(Landroid/view/MotionEvent;)V

    :cond_8
    invoke-virtual {v9}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    const/4 v13, 0x3

    if-ne v12, v13, :cond_9

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->mShouldProcessWidgetMotion:Z

    :cond_9
    invoke-virtual {v9}, Landroid/view/MotionEvent;->recycle()V

    :goto_3
    return v7

    :cond_a
    const/4 v7, 0x0

    goto :goto_3

    :cond_b
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v9

    const/4 v12, 0x3

    invoke-virtual {v9, v12}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;

    invoke-virtual {v8}, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->getConnection()Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;

    move-result-object v12

    invoke-virtual {v12, v9}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;->onVerticalTouch(Landroid/view/MotionEvent;)V

    const/4 v7, 0x0

    goto :goto_3

    :cond_c
    const/4 v12, 0x5

    if-ne v1, v12, :cond_2

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->mMultiTouchDetected:Z

    goto/16 :goto_0

    :cond_d
    const/4 v12, 0x2

    if-ne v1, v12, :cond_4

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->mCaptureTested:Z

    if-nez v12, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->mDownX:F

    sub-float v12, v10, v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->mDownY:F

    sub-float v13, v11, v13

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->getCaptureDistance()F

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14}, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->withinDistance(FFF)Z

    move-result v12

    if-nez v12, :cond_e

    const/high16 v12, 0x40400000    # 3.0f

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->mDownY:F

    sub-float v13, v11, v13

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    mul-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->mDownX:F

    sub-float v13, v10, v13

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    cmpl-float v12, v12, v13

    if-lez v12, :cond_f

    const/4 v12, 0x1

    :goto_4
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->mScrollTaken:Z

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->mCaptureTested:Z

    :cond_e
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->mScrollTaken:Z

    if-eqz v12, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->getPageLayout()Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v5

    if-eqz v5, :cond_10

    invoke-virtual {v5}, Lcom/sec/daliviews/layouts/PageLayout;->getScrollableState()Z

    move-result v12

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->mScrollableState:Z

    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Lcom/sec/daliviews/layouts/PageLayout;->setScrolling(Z)V

    goto/16 :goto_1

    :cond_f
    const/4 v12, 0x0

    goto :goto_4

    :cond_10
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->mScrollTaken:Z

    goto/16 :goto_1

    :cond_11
    const/4 v12, 0x0

    goto/16 :goto_2
.end method

.method protected onVisibilityChanged(I)V
    .locals 5

    invoke-super {p0, p1}, Lcom/sec/daliviews/views/TextureView;->onVisibilityChanged(I)V

    const-string v2, "SurfaceWidgetView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Visibility changed to:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v2, v1

    check-cast v2, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->getConnection()Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;

    move-result-object v0

    instance-of v2, v1, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    if-nez p1, :cond_3

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v0, v2}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;->onVisibilityChanged(Z)V

    :cond_2
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->applyShadow()V

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public requestContentDescription()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->getConnection()Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->getConnection()Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;->updateContentDescription()V

    :cond_0
    return-void
.end method

.method public resetPeer()V
    .locals 2

    const-string v0, "SurfaceWidgetView"

    const-string v1, "resetPeer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->doDestroy()V

    invoke-super {p0}, Lcom/sec/daliviews/views/TextureView;->resetPeer()V

    return-void
.end method

.method public resizeSurfaceWidgetView(II)V
    .locals 3

    const-string v0, "SurfaceWidgetView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resizing surface widget view w = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->applyShadow()V

    return-void
.end method

.method public setScreenShot()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isZeroPageFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isFingeSwipeFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter$PreferecesUtil;->getSavedHomeZeroPageEnableState(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHomeFragment()Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHomeFragment()Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPageLayout()Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHomeFragment()Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPageLayout()Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v0

    sget v1, Lcom/sec/android/app/launcher/activities/LauncherApp;->ZERO_PAGENUM:I

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHomeFragment()Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setTakescreenshot()V

    :cond_0
    return-void
.end method

.method protected setSurfaceTextureDefaultSize(Landroid/graphics/SurfaceTexture;IIII)V
    .locals 8

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->updateWidgetSize(IIII)V

    iget v0, p0, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->mWidgetWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->mScaleToResize:F

    mul-float/2addr v0, v1

    int-to-float v1, p2

    div-float v6, v0, v1

    iget v0, p0, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->mWidgetHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->mScaleToResize:F

    mul-float/2addr v0, v1

    int-to-float v1, p3

    div-float v7, v0, v1

    invoke-virtual {p0, v6, v7}, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->setScaleSurfaceActor(FF)V

    iget v2, p0, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->mWidgetWidth:I

    iget v3, p0, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->mWidgetHeight:I

    move-object v0, p0

    move-object v1, p1

    move v4, p4

    move v5, p5

    invoke-super/range {v0 .. v5}, Lcom/sec/daliviews/views/TextureView;->setSurfaceTextureDefaultSize(Landroid/graphics/SurfaceTexture;IIII)V

    return-void
.end method

.method public surfaceWidgetRestart()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->getState()Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;->DESTROYED:Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;->DESTROYED:Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->setState(Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p0}, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->restartWidget(Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;Landroid/view/ViewGroup$LayoutParams;Lcom/sec/android/app/launcher/views/SurfaceWidgetView;)V

    goto :goto_0
.end method

.method public updateContentDescription(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->setContentDescription(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->announce(Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_0
    return-void
.end method

.class Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;
.super Ljava/lang/Object;
.source "FolderItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FolderAnimator"
.end annotation


# instance fields
.field private mAnimHandler:Landroid/os/Handler;

.field private mCloseAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

.field private mCloseFolderRect:Landroid/graphics/Rect;

.field private mOpenAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

.field private mOpenFadeBgAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

.field private mOpenFolderHeight:I

.field private mOpenFolderWidth:I

.field private mOpenViewPos:Landroid/graphics/Point;

.field private mPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

.field final synthetic this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    iput-object v1, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mOpenAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    iput-object v1, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mOpenFadeBgAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    iput-object v1, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mCloseAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mOpenViewPos:Landroid/graphics/Point;

    iput-object v1, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mCloseFolderRect:Landroid/graphics/Rect;

    iput v2, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mOpenFolderWidth:I

    iput v2, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mOpenFolderHeight:I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mAnimHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$1800(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->onFolderOpenCompleted(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mAnimHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->onFolderCloseCompleted(Z)V

    return-void
.end method

.method private closeFolderWithAnimation(Z)V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    iget-object v4, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    # setter for: Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mClosing:Z
    invoke-static {v4, v10}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->access$2402(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;Z)Z

    iget-object v4, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mAdapterView:Lcom/sec/android/app/launcher/views/FolderAdapterView;
    invoke-static {v4}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->access$1600(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;)Lcom/sec/android/app/launcher/views/FolderAdapterView;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mAdapterView:Lcom/sec/android/app/launcher/views/FolderAdapterView;
    invoke-static {v4}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->access$1600(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;)Lcom/sec/android/app/launcher/views/FolderAdapterView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/views/FolderAdapterView;->stopLoadingViews()V

    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    iget-object v4, v4, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->this$0:Lcom/sec/android/app/launcher/data/FolderItem;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem;->mAddIcon:Lcom/sec/android/app/launcher/data/HomeItem;
    invoke-static {v4}, Lcom/sec/android/app/launcher/data/FolderItem;->access$400(Lcom/sec/android/app/launcher/data/FolderItem;)Lcom/sec/android/app/launcher/data/HomeItem;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mAdapter:Lcom/sec/android/app/launcher/data/FolderItem$FolderListAdapter;
    invoke-static {v4}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->access$2500(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;)Lcom/sec/android/app/launcher/data/FolderItem$FolderListAdapter;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mAdapter:Lcom/sec/android/app/launcher/data/FolderItem$FolderListAdapter;
    invoke-static {v4}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->access$2500(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;)Lcom/sec/android/app/launcher/data/FolderItem$FolderListAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    iget-object v5, v5, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->this$0:Lcom/sec/android/app/launcher/data/FolderItem;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem;->mAddIcon:Lcom/sec/android/app/launcher/data/HomeItem;
    invoke-static {v5}, Lcom/sec/android/app/launcher/data/FolderItem;->access$400(Lcom/sec/android/app/launcher/data/FolderItem;)Lcom/sec/android/app/launcher/data/HomeItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/launcher/data/FolderItem$FolderListAdapter;->removeItem(Lcom/sec/daliviews/views/Item;)Z

    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mCloseFolderView:Lcom/sec/android/app/launcher/views/HomeFolderView;
    invoke-static {v4}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->access$1300(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;)Lcom/sec/android/app/launcher/views/HomeFolderView;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mAdapterView:Lcom/sec/android/app/launcher/views/FolderAdapterView;
    invoke-static {v4}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->access$1600(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;)Lcom/sec/android/app/launcher/views/FolderAdapterView;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mSnapshotView:Lcom/sec/android/app/launcher/views/FolderAdapterView;
    invoke-static {v5}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->access$1400(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;)Lcom/sec/android/app/launcher/views/FolderAdapterView;

    move-result-object v5

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem;->snapshotIds:[I
    invoke-static {}, Lcom/sec/android/app/launcher/data/FolderItem;->access$1500()[I

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/app/launcher/views/FolderAdapterView;->showSnapshot(Lcom/sec/daliviews/views/AdapterView;[II)V

    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mOpenFolderView:Lcom/sec/android/app/launcher/views/HomeOpenFolderView;
    invoke-static {v4}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->access$1000(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;)Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mOpenFolderView:Lcom/sec/android/app/launcher/views/HomeOpenFolderView;
    invoke-static {v4}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->access$1000(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;)Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->setSensitive(Z)V

    iget-object v4, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mOpenFolderView:Lcom/sec/android/app/launcher/views/HomeOpenFolderView;
    invoke-static {v4}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->access$1000(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;)Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->onBackpressed()V

    :cond_3
    invoke-direct {p0, v10}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->setScrolling(Z)V

    iget-object v4, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    iget-object v5, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mCloseFolderView:Lcom/sec/android/app/launcher/views/HomeFolderView;
    invoke-static {v5}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->access$1300(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;)Lcom/sec/android/app/launcher/views/HomeFolderView;

    move-result-object v5

    # invokes: Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->populateCloseFolderView(Lcom/sec/android/app/launcher/views/HomeFolderView;)V
    invoke-static {v4, v5}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->access$100(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;Lcom/sec/android/app/launcher/views/HomeFolderView;)V

    iget-object v4, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    iget-object v4, v4, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->this$0:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-direct {p0, v4, p1}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->notifyFolderClosing(Lcom/sec/android/app/launcher/data/FolderItem;Z)V

    if-eqz p1, :cond_5

    iget-object v4, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mCloseFolderView:Lcom/sec/android/app/launcher/views/HomeFolderView;
    invoke-static {v4}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->access$1300(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;)Lcom/sec/android/app/launcher/views/HomeFolderView;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-direct {p0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->getRootView()Lcom/sec/daliviews/views/ContainerView;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    iget-object v4, v4, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->this$0:Lcom/sec/android/app/launcher/data/FolderItem;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem;->mCloseTransitionTime:F
    invoke-static {v4}, Lcom/sec/android/app/launcher/data/FolderItem;->access$2600(Lcom/sec/android/app/launcher/data/FolderItem;)F

    move-result v4

    invoke-virtual {v2, v8, v4}, Lcom/sec/daliviews/views/ContainerView;->setOpacityAnimated(FF)V

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->getCloseOpenScale()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mCloseFolderView:Lcom/sec/android/app/launcher/views/HomeFolderView;
    invoke-static {v4}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->access$1300(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;)Lcom/sec/android/app/launcher/views/HomeFolderView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/views/HomeFolderView;->getImageContainerView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/daliviews/views/ContainerViewBase;->getScreenBoundingRect()Landroid/graphics/Rect;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mCloseFolderRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mCloseFolderRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mCloseFolderRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-static {}, Lcom/sec/android/app/launcher/data/FolderItem;->getCloseFolderWidth()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v0, v4

    iget-object v4, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mCloseFolderRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mCloseFolderRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mOpenFolderHeight:I

    int-to-float v6, v6

    mul-float/2addr v6, v3

    sub-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float v1, v4, v5

    invoke-direct {p0, v0, v1, v3}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->setupClosingAnimations(FFF)V

    iget-object v4, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    new-instance v5, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator$2;

    invoke-direct {v5, p0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator$2;-><init>(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;)V

    invoke-virtual {v4, v5}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->connectToUIAnimationSignal(Lcom/sec/daliviews/uiAnimations/IUIAnimationPlayerListener;)V

    iget-object v4, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    invoke-virtual {v4}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->start()V

    :goto_0
    return-void

    :cond_5
    iget-object v4, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    invoke-virtual {v4}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->stop()V

    iget-object v4, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    invoke-virtual {v4}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->destroy()V

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    :cond_6
    invoke-direct {p0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->getRootView()Lcom/sec/daliviews/views/ContainerView;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2, v8}, Lcom/sec/daliviews/views/ContainerView;->setOpacity(F)V

    :cond_7
    invoke-direct {p0, v9}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->onFolderCloseCompleted(Z)V

    goto :goto_0
.end method

.method private getCloseOpenScale()F
    .locals 2

    invoke-static {}, Lcom/sec/android/app/launcher/data/FolderItem;->getCloseFolderWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mOpenFolderWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method private getClosingAnimationSet(FFF)Lcom/sec/daliviews/uiAnimations/UIAnimationSet;
    .locals 9

    const v8, 0x3d4ccccd    # 0.05f

    const/16 v7, 0x8

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mCloseAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mCloseAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v3}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->destroy()V

    :cond_0
    new-instance v3, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-direct {v3}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mCloseAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    new-instance v1, Lcom/sec/daliviews/uiAnimations/ScaleUIAnimation;

    new-instance v3, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;

    invoke-direct {v3, p3, p3, v6}, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;-><init>(FFF)V

    iget-object v4, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    iget-object v4, v4, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->this$0:Lcom/sec/android/app/launcher/data/FolderItem;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem;->mCloseTransitionTime:F
    invoke-static {v4}, Lcom/sec/android/app/launcher/data/FolderItem;->access$2600(Lcom/sec/android/app/launcher/data/FolderItem;)F

    move-result v4

    invoke-direct {v1, v3, v5, v4, v7}, Lcom/sec/daliviews/uiAnimations/ScaleUIAnimation;-><init>(Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;FFI)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mCloseAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v3, v1}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->add(Lcom/sec/daliviews/uiAnimations/ScaleUIAnimation;)V

    new-instance v2, Lcom/sec/daliviews/uiAnimations/SlideUIAnimation;

    new-instance v3, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;

    invoke-direct {v3, p1, p2, v5}, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;-><init>(FFF)V

    iget-object v4, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    iget-object v4, v4, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->this$0:Lcom/sec/android/app/launcher/data/FolderItem;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem;->mCloseTransitionTime:F
    invoke-static {v4}, Lcom/sec/android/app/launcher/data/FolderItem;->access$2600(Lcom/sec/android/app/launcher/data/FolderItem;)F

    move-result v4

    invoke-direct {v2, v3, v5, v4, v7}, Lcom/sec/daliviews/uiAnimations/SlideUIAnimation;-><init>(Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;FFI)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mCloseAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v3, v2}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->add(Lcom/sec/daliviews/uiAnimations/SlideUIAnimation;)V

    new-instance v0, Lcom/sec/daliviews/uiAnimations/ColourUIAnimation;

    new-instance v3, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Colour;

    invoke-direct {v3, v6, v6, v6, v5}, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Colour;-><init>(FFFF)V

    iget-object v4, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    iget-object v4, v4, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->this$0:Lcom/sec/android/app/launcher/data/FolderItem;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem;->mCloseTransitionTime:F
    invoke-static {v4}, Lcom/sec/android/app/launcher/data/FolderItem;->access$2600(Lcom/sec/android/app/launcher/data/FolderItem;)F

    move-result v4

    sub-float/2addr v4, v8

    invoke-direct {v0, v3, v4, v8, v7}, Lcom/sec/daliviews/uiAnimations/ColourUIAnimation;-><init>(Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Colour;FFI)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mCloseAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v3, v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->add(Lcom/sec/daliviews/uiAnimations/ColourUIAnimation;)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mCloseAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    return-object v3
.end method

.method private getOpenFolderSize()V
    .locals 6

    iget-object v4, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    # invokes: Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->getOpenLayout()Lcom/sec/daliviews/layouts/GridLayout;
    invoke-static {v4}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->access$2200(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;)Lcom/sec/daliviews/layouts/GridLayout;

    move-result-object v0

    iget-object v4, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->getAdapter()Lcom/sec/android/app/launcher/data/FolderItem$FolderListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/FolderItem$FolderListAdapter;->getCount()I

    move-result v1

    iget-object v4, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    iget-object v4, v4, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->this$0:Lcom/sec/android/app/launcher/data/FolderItem;

    # invokes: Lcom/sec/android/app/launcher/data/FolderItem;->getOpenFolderLayoutMaxColumns()I
    invoke-static {v4}, Lcom/sec/android/app/launcher/data/FolderItem;->access$2300(Lcom/sec/android/app/launcher/data/FolderItem;)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->getRowCount(II)I

    move-result v3

    invoke-static {}, Lcom/sec/android/app/launcher/views/OpenFolderView;->getFolderWidth()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mOpenFolderWidth:I

    sput v2, Lcom/sec/android/app/launcher/data/FolderItem;->mOpenFolderLayoutColumns:I

    if-lez v1, :cond_1

    const/4 v4, 0x2

    if-gt v3, v4, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getOrientation()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    const/4 v3, 0x2

    :cond_0
    invoke-virtual {v0, v3, v2}, Lcom/sec/daliviews/layouts/GridLayout;->setGridSize(II)V

    invoke-virtual {v0}, Lcom/sec/daliviews/layouts/GridLayout;->layoutViews()V

    :cond_1
    invoke-static {}, Lcom/sec/android/app/launcher/data/FolderItem;->getOpenCellHeight()I

    move-result v4

    invoke-static {v3, v4}, Lcom/sec/android/app/launcher/views/OpenFolderView;->getFolderHeight(II)I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mOpenFolderHeight:I

    return-void
.end method

.method private getOpenFolderX(III)I
    .locals 1

    sub-int v0, p2, p1

    sub-int/2addr v0, p3

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private getOpeningAnimationSet()Lcom/sec/daliviews/uiAnimations/UIAnimationSet;
    .locals 7

    const/4 v6, 0x4

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mOpenAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mOpenAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v2}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->destroy()V

    :cond_0
    new-instance v2, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-direct {v2}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mOpenAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    new-instance v0, Lcom/sec/daliviews/uiAnimations/ScaleUIAnimation;

    new-instance v2, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;

    invoke-direct {v2, v3, v3, v3}, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;-><init>(FFF)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    iget-object v3, v3, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->this$0:Lcom/sec/android/app/launcher/data/FolderItem;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem;->mOpenTransitionTime:F
    invoke-static {v3}, Lcom/sec/android/app/launcher/data/FolderItem;->access$2900(Lcom/sec/android/app/launcher/data/FolderItem;)F

    move-result v3

    invoke-direct {v0, v2, v5, v3, v6}, Lcom/sec/daliviews/uiAnimations/ScaleUIAnimation;-><init>(Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;FFI)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mOpenAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v2, v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->add(Lcom/sec/daliviews/uiAnimations/ScaleUIAnimation;)V

    new-instance v1, Lcom/sec/daliviews/uiAnimations/SlideUIAnimation;

    new-instance v2, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;

    iget-object v3, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mOpenViewPos:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mOpenViewPos:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;-><init>(FFF)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    iget-object v3, v3, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->this$0:Lcom/sec/android/app/launcher/data/FolderItem;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem;->mOpenTransitionTime:F
    invoke-static {v3}, Lcom/sec/android/app/launcher/data/FolderItem;->access$2900(Lcom/sec/android/app/launcher/data/FolderItem;)F

    move-result v3

    invoke-direct {v1, v2, v5, v3, v6}, Lcom/sec/daliviews/uiAnimations/SlideUIAnimation;-><init>(Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;FFI)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mOpenAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v2, v1}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->add(Lcom/sec/daliviews/uiAnimations/SlideUIAnimation;)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mOpenAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    return-object v2
.end method

.method private getOpeningFadeAnimationSet()Lcom/sec/daliviews/uiAnimations/UIAnimationSet;
    .locals 5

    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mOpenFadeBgAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-direct {v1}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mOpenFadeBgAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    new-instance v0, Lcom/sec/daliviews/uiAnimations/ColourUIAnimation;

    new-instance v1, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Colour;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem;->mRootViewAlphaInOpenFolderMode:F
    invoke-static {}, Lcom/sec/android/app/launcher/data/FolderItem;->access$3000()F

    move-result v2

    invoke-direct {v1, v3, v3, v3, v2}, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Colour;-><init>(FFFF)V

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    iget-object v3, v3, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->this$0:Lcom/sec/android/app/launcher/data/FolderItem;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem;->mOpenTransitionTime:F
    invoke-static {v3}, Lcom/sec/android/app/launcher/data/FolderItem;->access$2900(Lcom/sec/android/app/launcher/data/FolderItem;)F

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/daliviews/uiAnimations/ColourUIAnimation;-><init>(Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Colour;FFI)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mOpenFadeBgAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v1, v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->add(Lcom/sec/daliviews/uiAnimations/ColourUIAnimation;)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mOpenFadeBgAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    return-object v1
.end method

.method private getRootView()Lcom/sec/daliviews/views/ContainerView;
    .locals 5

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getCurrentPresenter()Lcom/sec/android/app/launcher/activities/PresenterBase;

    move-result-object v3

    const/4 v1, 0x0

    instance-of v4, v3, Lcom/sec/android/app/launcher/activities/AppsPresenter;

    if-eqz v4, :cond_0

    move-object v0, v3

    check-cast v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getRootView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/ContainerView;

    :goto_0
    return-object v1

    :cond_0
    instance-of v4, v3, Lcom/sec/android/app/launcher/activities/HomePresenter;

    if-eqz v4, :cond_1

    move-object v2, v3

    check-cast v2, Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getRootView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/ContainerView;

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getRootView()Lcom/sec/daliviews/views/ContainerView;

    move-result-object v1

    goto :goto_0
.end method

.method private getRowCount(II)I
    .locals 4

    if-nez p1, :cond_2

    const/4 v1, 0x0

    :goto_0
    sget v2, Lcom/sec/android/app/launcher/data/FolderItem;->mOpenFolderLayoutMaxRows:I

    if-le v1, v2, :cond_0

    sget v1, Lcom/sec/android/app/launcher/data/FolderItem;->mOpenFolderLayoutMaxRows:I

    :cond_0
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c002a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-le v1, v0, :cond_1

    move v1, v0

    :cond_1
    return v1

    :cond_2
    add-int/lit8 v2, p1, -0x1

    div-int/2addr v2, p2

    add-int/lit8 v1, v2, 0x1

    goto :goto_0
.end method

.method private layoutOpenFolderView(Lcom/sec/daliviews/views/ContainerView;Landroid/graphics/Rect;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, p2}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->measureOpenFolderView(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mOpenFolderView:Lcom/sec/android/app/launcher/views/HomeOpenFolderView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->access$1000(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;)Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/daliviews/views/ContainerView;->addView(Lcom/sec/daliviews/views/NativeViewBase;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mAdapterView:Lcom/sec/android/app/launcher/views/FolderAdapterView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->access$1600(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;)Lcom/sec/android/app/launcher/views/FolderAdapterView;

    move-result-object v2

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->hasItems()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v9

    :goto_0
    invoke-virtual {v2, v0}, Lcom/sec/android/app/launcher/views/FolderAdapterView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mOpenAdapterViewLayout:Lcom/sec/daliviews/layouts/GridLayout;
    invoke-static {v0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->access$2000(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;)Lcom/sec/daliviews/layouts/GridLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/layouts/GridLayout;->getClippedContainerView()Lcom/sec/daliviews/views/ClippedContainerView;

    move-result-object v7

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem;->mOpenFolderLayerPos:I
    invoke-static {}, Lcom/sec/android/app/launcher/data/FolderItem;->access$2100()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/sec/daliviews/views/ClippedContainerView;->setLayerLocation(I)V

    invoke-static {}, Lcom/sec/daliviews/utils/LayerManager;->instance()Lcom/sec/daliviews/utils/LayerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/utils/LayerManager;->updateLayers()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mCloseFolderView:Lcom/sec/android/app/launcher/views/HomeFolderView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->access$1300(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;)Lcom/sec/android/app/launcher/views/HomeFolderView;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v8, 0x1

    :goto_1
    if-eqz v8, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->getCloseOpenScale()F

    move-result v1

    :goto_2
    if-eqz v8, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mCloseFolderRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mCloseFolderRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mCloseFolderRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-static {}, Lcom/sec/android/app/launcher/data/FolderItem;->getCloseFolderWidth()I

    move-result v5

    sub-int/2addr v2, v5

    div-int/lit8 v2, v2, 0x2

    add-int v3, v0, v2

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mCloseFolderRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mCloseFolderRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v5, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mOpenFolderHeight:I

    int-to-float v5, v5

    mul-float/2addr v5, v1

    sub-float/2addr v2, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    add-float/2addr v0, v2

    float-to-int v4, v0

    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mOpenFolderView:Lcom/sec/android/app/launcher/views/HomeOpenFolderView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->access$1000(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;)Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v0

    iget v5, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mOpenFolderWidth:I

    iget v6, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mOpenFolderHeight:I

    move v2, v1

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->setScalePosAndSize(FFIIII)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mOpenFolderView:Lcom/sec/android/app/launcher/views/HomeOpenFolderView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->access$1000(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;)Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    move v8, v9

    goto :goto_1

    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mOpenViewPos:Landroid/graphics/Point;

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mOpenViewPos:Landroid/graphics/Point;

    iget v4, v0, Landroid/graphics/Point;->y:I

    goto :goto_3
.end method

.method private measureOpenFolderView(Landroid/graphics/Rect;)V
    .locals 7

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->getOpenFolderSize()V

    iget-object v3, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mCloseFolderView:Lcom/sec/android/app/launcher/views/HomeFolderView;
    invoke-static {v3}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->access$1300(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;)Lcom/sec/android/app/launcher/views/HomeFolderView;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mCloseFolderView:Lcom/sec/android/app/launcher/views/HomeFolderView;
    invoke-static {v3}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->access$1300(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;)Lcom/sec/android/app/launcher/views/HomeFolderView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/views/HomeFolderView;->getImageContainerView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mOpenViewPos:Landroid/graphics/Point;

    iget v4, p1, Landroid/graphics/Rect;->left:I

    iput v4, v3, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mOpenViewPos:Landroid/graphics/Point;

    iget v4, p1, Landroid/graphics/Rect;->top:I

    iput v4, v3, Landroid/graphics/Point;->y:I

    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mCloseFolderView:Lcom/sec/android/app/launcher/views/HomeFolderView;
    invoke-static {v3}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->access$1300(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;)Lcom/sec/android/app/launcher/views/HomeFolderView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/views/HomeFolderView;->getImageContainerView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/daliviews/views/ContainerViewBase;->getScreenBoundingRect()Landroid/graphics/Rect;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mCloseFolderRect:Landroid/graphics/Rect;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mOpenViewPos:Landroid/graphics/Point;

    const/4 v4, 0x0

    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {}, Lcom/sec/android/app/launcher/views/OpenFolderView;->getFolderWidth()I

    move-result v6

    invoke-direct {p0, v4, v5, v6}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->getOpenFolderX(III)I

    move-result v4

    iput v4, v3, Landroid/graphics/Point;->x:I

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/launcher/utils/Utils;->getScreenDimensions(Landroid/app/Activity;)Landroid/graphics/Point;

    move-result-object v2

    sget-boolean v3, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mSupportFolderItemMove:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mOpenViewPos:Landroid/graphics/Point;

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v5, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mOpenFolderHeight:I

    sub-int/2addr v4, v5

    const v5, 0x7f0a0092

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sub-int/2addr v4, v5

    const v5, 0x7f0a0094

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Point;->y:I

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mOpenViewPos:Landroid/graphics/Point;

    iget v4, v2, Landroid/graphics/Point;->y:I

    iget v5, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mOpenFolderHeight:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iput v4, v3, Landroid/graphics/Point;->y:I

    goto :goto_0
.end method

.method private notifyFolderCloseCompleted(Lcom/sec/android/app/launcher/data/FolderItem;Z)V
    .locals 4

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    iget-object v3, v3, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->this$0:Lcom/sec/android/app/launcher/data/FolderItem;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem;->mOpenListeners:Ljava/util/Set;
    invoke-static {v3}, Lcom/sec/android/app/launcher/data/FolderItem;->access$3100(Lcom/sec/android/app/launcher/data/FolderItem;)Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/data/FolderItem$IFolderOpenListener;

    invoke-interface {v1, p1, p2}, Lcom/sec/android/app/launcher/data/FolderItem$IFolderOpenListener;->onFolderCloseCompleted(Lcom/sec/android/app/launcher/data/FolderItem;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyFolderClosed(Lcom/sec/android/app/launcher/data/FolderItem;Z)V
    .locals 4

    iget-object v3, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mOpenFolderView:Lcom/sec/android/app/launcher/views/HomeOpenFolderView;
    invoke-static {v3}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->access$1000(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;)Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mOpenFolderView:Lcom/sec/android/app/launcher/views/HomeOpenFolderView;
    invoke-static {v3}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->access$1000(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;)Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->onFolderClosed(Lcom/sec/android/app/launcher/data/FolderItem;Z)V

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    iget-object v3, v3, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->this$0:Lcom/sec/android/app/launcher/data/FolderItem;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem;->mOpenListeners:Ljava/util/Set;
    invoke-static {v3}, Lcom/sec/android/app/launcher/data/FolderItem;->access$3100(Lcom/sec/android/app/launcher/data/FolderItem;)Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/data/FolderItem$IFolderOpenListener;

    invoke-interface {v1, p1, p2}, Lcom/sec/android/app/launcher/data/FolderItem$IFolderOpenListener;->onFolderClosed(Lcom/sec/android/app/launcher/data/FolderItem;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private notifyFolderClosing(Lcom/sec/android/app/launcher/data/FolderItem;Z)V
    .locals 4

    iget-object v3, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mOpenFolderView:Lcom/sec/android/app/launcher/views/HomeOpenFolderView;
    invoke-static {v3}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->access$1000(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;)Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mOpenFolderView:Lcom/sec/android/app/launcher/views/HomeOpenFolderView;
    invoke-static {v3}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->access$1000(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;)Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->onFolderClosing(Lcom/sec/android/app/launcher/data/FolderItem;Z)V

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    iget-object v3, v3, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->this$0:Lcom/sec/android/app/launcher/data/FolderItem;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem;->mOpenListeners:Ljava/util/Set;
    invoke-static {v3}, Lcom/sec/android/app/launcher/data/FolderItem;->access$3100(Lcom/sec/android/app/launcher/data/FolderItem;)Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/data/FolderItem$IFolderOpenListener;

    invoke-interface {v1, p1, p2}, Lcom/sec/android/app/launcher/data/FolderItem$IFolderOpenListener;->onFolderClosing(Lcom/sec/android/app/launcher/data/FolderItem;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private notifyFolderOpened(Lcom/sec/android/app/launcher/data/FolderItem;Z)V
    .locals 4

    iget-object v3, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mOpenFolderView:Lcom/sec/android/app/launcher/views/HomeOpenFolderView;
    invoke-static {v3}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->access$1000(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;)Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mOpenFolderView:Lcom/sec/android/app/launcher/views/HomeOpenFolderView;
    invoke-static {v3}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->access$1000(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;)Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->onFolderOpened(Lcom/sec/android/app/launcher/data/FolderItem;Z)V

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    iget-object v3, v3, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->this$0:Lcom/sec/android/app/launcher/data/FolderItem;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem;->mOpenListeners:Ljava/util/Set;
    invoke-static {v3}, Lcom/sec/android/app/launcher/data/FolderItem;->access$3100(Lcom/sec/android/app/launcher/data/FolderItem;)Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/data/FolderItem$IFolderOpenListener;

    invoke-interface {v1, p1, p2}, Lcom/sec/android/app/launcher/data/FolderItem$IFolderOpenListener;->onFolderOpened(Lcom/sec/android/app/launcher/data/FolderItem;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private notifyFolderOpening(Lcom/sec/android/app/launcher/data/FolderItem;Z)V
    .locals 4

    iget-object v3, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mOpenFolderView:Lcom/sec/android/app/launcher/views/HomeOpenFolderView;
    invoke-static {v3}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->access$1000(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;)Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mOpenFolderView:Lcom/sec/android/app/launcher/views/HomeOpenFolderView;
    invoke-static {v3}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->access$1000(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;)Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->onFolderOpening(Lcom/sec/android/app/launcher/data/FolderItem;Z)V

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    iget-object v3, v3, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->this$0:Lcom/sec/android/app/launcher/data/FolderItem;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem;->mOpenListeners:Ljava/util/Set;
    invoke-static {v3}, Lcom/sec/android/app/launcher/data/FolderItem;->access$3100(Lcom/sec/android/app/launcher/data/FolderItem;)Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/data/FolderItem$IFolderOpenListener;

    invoke-interface {v1, p1, p2}, Lcom/sec/android/app/launcher/data/FolderItem$IFolderOpenListener;->onFolderOpening(Lcom/sec/android/app/launcher/data/FolderItem;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private onFolderCloseCompleted(Z)V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    # setter for: Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mIsOpen:Z
    invoke-static {v0, v2}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->access$1202(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;Z)Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    # setter for: Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mClosing:Z
    invoke-static {v0, v2}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->access$2402(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;Z)Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mCloseFolderView:Lcom/sec/android/app/launcher/views/HomeFolderView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->access$1300(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;)Lcom/sec/android/app/launcher/views/HomeFolderView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mOpenFolderView:Lcom/sec/android/app/launcher/views/HomeOpenFolderView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->access$1000(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;)Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mAdapterView:Lcom/sec/android/app/launcher/views/FolderAdapterView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->access$1600(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;)Lcom/sec/android/app/launcher/views/FolderAdapterView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/FolderAdapterView;->destroyGradationMask()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mOpenFolderView:Lcom/sec/android/app/launcher/views/HomeOpenFolderView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->access$1000(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;)Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mAdapterView:Lcom/sec/android/app/launcher/views/FolderAdapterView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->access$1600(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;)Lcom/sec/android/app/launcher/views/FolderAdapterView;

    move-result-object v0

    const v1, 0x7f0b00e0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/views/FolderAdapterView;->setDefaultMode(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mAdapterView:Lcom/sec/android/app/launcher/views/FolderAdapterView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->access$1600(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;)Lcom/sec/android/app/launcher/views/FolderAdapterView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    # invokes: Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->getCloseLayout()Lcom/sec/daliviews/layouts/GridLayout;
    invoke-static {v1}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->access$2800(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;)Lcom/sec/daliviews/layouts/GridLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/views/FolderAdapterView;->setLayout(Lcom/sec/daliviews/layouts/LayoutBase;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mCloseFolderView:Lcom/sec/android/app/launcher/views/HomeFolderView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->access$1300(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;)Lcom/sec/android/app/launcher/views/HomeFolderView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/launcher/views/HomeFolderView;->updateBadge(Z)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mOpenFolderView:Lcom/sec/android/app/launcher/views/HomeOpenFolderView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->access$1000(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;)Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->detachAdapterView()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mCloseFolderView:Lcom/sec/android/app/launcher/views/HomeFolderView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->access$1300(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;)Lcom/sec/android/app/launcher/views/HomeFolderView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mAdapterView:Lcom/sec/android/app/launcher/views/FolderAdapterView;
    invoke-static {v1}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->access$1600(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;)Lcom/sec/android/app/launcher/views/FolderAdapterView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/views/HomeFolderView;->attachAdapterView(Lcom/sec/daliviews/views/AdapterView;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mAnimHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator$3;-><init>(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    iget-object v0, v0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->this$0:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->notifyFolderClosed(Lcom/sec/android/app/launcher/data/FolderItem;Z)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mCloseFolderView:Lcom/sec/android/app/launcher/views/HomeFolderView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->access$1300(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;)Lcom/sec/android/app/launcher/views/HomeFolderView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mSnapshotView:Lcom/sec/android/app/launcher/views/FolderAdapterView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->access$1400(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;)Lcom/sec/android/app/launcher/views/FolderAdapterView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/views/FolderAdapterView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    iget-object v0, v0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->this$0:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->notifyFolderCloseCompleted(Lcom/sec/android/app/launcher/data/FolderItem;Z)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mAdapterView:Lcom/sec/android/app/launcher/views/FolderAdapterView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->access$1600(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;)Lcom/sec/android/app/launcher/views/FolderAdapterView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mAdapterView:Lcom/sec/android/app/launcher/views/FolderAdapterView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->access$1600(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;)Lcom/sec/android/app/launcher/views/FolderAdapterView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/FolderAdapterView;->clearAdapter()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mAdapterView:Lcom/sec/android/app/launcher/views/FolderAdapterView;
    invoke-static {v0, v1}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->access$1602(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;Lcom/sec/android/app/launcher/views/FolderAdapterView;)Lcom/sec/android/app/launcher/views/FolderAdapterView;

    goto :goto_0
.end method

.method private onFolderOpenCompleted(Z)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v4, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    # invokes: Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->getAdapterView()Lcom/sec/daliviews/views/AdapterView;
    invoke-static {v4}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->access$200(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;)Lcom/sec/daliviews/views/AdapterView;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/views/FolderAdapterView;

    iget-object v4, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mOpenFolderView:Lcom/sec/android/app/launcher/views/HomeOpenFolderView;
    invoke-static {v4}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->access$1000(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;)Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->setSensitive(Z)V

    invoke-virtual {v0, v5}, Lcom/sec/android/app/launcher/views/FolderAdapterView;->setSensitive(Z)V

    iget-object v4, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    iget-object v4, v4, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->this$0:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-direct {p0, v4, p1}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->notifyFolderOpened(Lcom/sec/android/app/launcher/data/FolderItem;Z)V

    iget-object v4, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    # invokes: Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->getOpenLayout()Lcom/sec/daliviews/layouts/GridLayout;
    invoke-static {v4}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->access$2200(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;)Lcom/sec/daliviews/layouts/GridLayout;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/daliviews/layouts/GridLayout;->setAnimatePositioning(Z)V

    invoke-virtual {v2, v6}, Lcom/sec/daliviews/layouts/GridLayout;->setDancingIcons(Z)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a01f3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/views/FolderAdapterView;->setGradationThreshold(I)V

    invoke-direct {p0, v6}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->setScrolling(Z)V

    return-void
.end method

.method private openFolderWithAnimation(ZLcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;Landroid/graphics/Rect;)V
    .locals 11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v5, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    # invokes: Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->getDarkenView()Lcom/sec/daliviews/views/ClippedContainerView;
    invoke-static {v5}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->access$1100(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;)Lcom/sec/daliviews/views/ClippedContainerView;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    const/4 v8, 0x1

    # setter for: Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mIsOpen:Z
    invoke-static {v5, v8}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->access$1202(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;Z)Z

    iget-object v5, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mCloseFolderView:Lcom/sec/android/app/launcher/views/HomeFolderView;
    invoke-static {v5}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->access$1300(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;)Lcom/sec/android/app/launcher/views/HomeFolderView;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mAdapterView:Lcom/sec/android/app/launcher/views/FolderAdapterView;
    invoke-static {v5}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->access$1600(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;)Lcom/sec/android/app/launcher/views/FolderAdapterView;

    move-result-object v5

    iget-object v8, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mSnapshotView:Lcom/sec/android/app/launcher/views/FolderAdapterView;
    invoke-static {v8}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->access$1400(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;)Lcom/sec/android/app/launcher/views/FolderAdapterView;

    move-result-object v8

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem;->snapshotIds:[I
    invoke-static {}, Lcom/sec/android/app/launcher/data/FolderItem;->access$1500()[I

    move-result-object v9

    const/4 v10, 0x3

    invoke-virtual {v5, v8, v9, v10}, Lcom/sec/android/app/launcher/views/FolderAdapterView;->showSnapshot(Lcom/sec/daliviews/views/AdapterView;[II)V

    iget-object v5, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mCloseFolderView:Lcom/sec/android/app/launcher/views/HomeFolderView;
    invoke-static {v5}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->access$1300(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;)Lcom/sec/android/app/launcher/views/HomeFolderView;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/app/launcher/views/HomeFolderView;->updateBadge(Z)V

    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    # invokes: Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->createOpenFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;
    invoke-static {v5}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->access$300(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;)Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v1

    iget-object v5, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    # invokes: Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->populateOpenFolderView(Lcom/sec/android/app/launcher/views/HomeOpenFolderView;Lcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;)V
    invoke-static {v5, v1, p2}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->access$1700(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;Lcom/sec/android/app/launcher/views/HomeOpenFolderView;Lcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;)V

    iget-object v5, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    iget-object v5, v5, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->this$0:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-direct {p0, v5, p1}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->notifyFolderOpening(Lcom/sec/android/app/launcher/data/FolderItem;Z)V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->getRootView()Lcom/sec/daliviews/views/ContainerView;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sec/daliviews/views/ContainerView;->matchSize(Lcom/sec/daliviews/views/NativeViewBase;)V

    invoke-direct {p0, v0, p3}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->layoutOpenFolderView(Lcom/sec/daliviews/views/ContainerView;Landroid/graphics/Rect;)V

    if-eqz p1, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mCloseFolderView:Lcom/sec/android/app/launcher/views/HomeFolderView;
    invoke-static {v5}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->access$1300(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;)Lcom/sec/android/app/launcher/views/HomeFolderView;

    move-result-object v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    :goto_1
    invoke-direct {p0, v5}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->setupOpeningAnimations(Z)V

    iget-object v5, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    new-instance v8, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator$1;

    invoke-direct {v8, p0, v1}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator$1;-><init>(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;Lcom/sec/android/app/launcher/views/HomeOpenFolderView;)V

    invoke-virtual {v5, v8}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->connectToUIAnimationSignal(Lcom/sec/daliviews/uiAnimations/IUIAnimationPlayerListener;)V

    iget-object v5, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    invoke-virtual {v5}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->start()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v2, v8, v6

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/launcher/data/FolderItem;->access$600()Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "openFolderWithAnimation() duration: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ms"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private setScrolling(Z)V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getCurrentPresenter()Lcom/sec/android/app/launcher/activities/PresenterBase;

    move-result-object v1

    instance-of v2, v1, Lcom/sec/android/app/launcher/activities/HomePresenter;

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setScrolling(Z)V

    :cond_0
    return-void
.end method

.method private setupClosingAnimations(FFF)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    invoke-virtual {v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->stop()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    invoke-virtual {v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->destroy()V

    :cond_0
    new-instance v0, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    iget-object v1, v1, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->this$0:Lcom/sec/android/app/launcher/data/FolderItem;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem;->mCloseTransitionTime:F
    invoke-static {v1}, Lcom/sec/android/app/launcher/data/FolderItem;->access$2600(Lcom/sec/android/app/launcher/data/FolderItem;)F

    move-result v1

    invoke-direct {v0, v1}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;-><init>(F)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->getOpenFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v1

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->getClosingAnimationSet(FFF)Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->add(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/uiAnimations/UIAnimationSet;)V

    return-void
.end method

.method private setupOpeningAnimations(Z)V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    invoke-virtual {v1}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->stop()V

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    invoke-virtual {v1}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->destroy()V

    :cond_0
    new-instance v1, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    iget-object v2, v2, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->this$0:Lcom/sec/android/app/launcher/data/FolderItem;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem;->mOpenTransitionTime:F
    invoke-static {v2}, Lcom/sec/android/app/launcher/data/FolderItem;->access$2900(Lcom/sec/android/app/launcher/data/FolderItem;)F

    move-result v2

    invoke-direct {v1, v2}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;-><init>(F)V

    iput-object v1, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    invoke-direct {p0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->getRootView()Lcom/sec/daliviews/views/ContainerView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    invoke-direct {p0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->getOpeningFadeAnimationSet()Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->add(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/uiAnimations/UIAnimationSet;)V

    :cond_1
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->getOpenFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v2

    invoke-direct {p0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->getOpeningAnimationSet()Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->add(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/uiAnimations/UIAnimationSet;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public closeFolder(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mAnimHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->closeFolderWithAnimation(Z)V

    return-void
.end method

.method public destroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mAnimHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    invoke-virtual {v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    invoke-static {v0}, Lcom/sec/android/app/launcher/utils/Utils;->destroyPeer(Lcom/sec/daliviews/views/PeerBase;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mOpenAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-static {v0}, Lcom/sec/android/app/launcher/utils/Utils;->destroyPeer(Lcom/sec/daliviews/views/PeerBase;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mOpenFadeBgAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-static {v0}, Lcom/sec/android/app/launcher/utils/Utils;->destroyPeer(Lcom/sec/daliviews/views/PeerBase;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mCloseAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-static {v0}, Lcom/sec/android/app/launcher/utils/Utils;->destroyPeer(Lcom/sec/daliviews/views/PeerBase;)V

    iput-object v1, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    return-void
.end method

.method public getOpenViewPosition()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mOpenViewPos:Landroid/graphics/Point;

    return-object v0
.end method

.method public openFolder(ZLcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;Landroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mAnimHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->openFolderWithAnimation(ZLcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;Landroid/graphics/Rect;)V

    return-void
.end method

.method public updateOpenViewPosition()V
    .locals 9

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-direct {p0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->getOpenFolderSize()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mOpenViewPos:Landroid/graphics/Point;

    const/4 v2, 0x0

    iget v3, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mOpenFolderWidth:I

    invoke-direct {p0, v2, v3, v4}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->getOpenFolderX(III)I

    move-result v2

    iput v2, v0, Landroid/graphics/Point;->x:I

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/launcher/utils/Utils;->getScreenDimensions(Landroid/app/Activity;)Landroid/graphics/Point;

    move-result-object v8

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mOpenViewPos:Landroid/graphics/Point;

    iget v2, v8, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mOpenFolderHeight:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/graphics/Point;->y:I

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mOpenFolderView:Lcom/sec/android/app/launcher/views/HomeOpenFolderView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->access$1000(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;)Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mOpenViewPos:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mOpenViewPos:Landroid/graphics/Point;

    iget v4, v2, Landroid/graphics/Point;->y:I

    iget v5, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mOpenFolderWidth:I

    iget v6, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mOpenFolderHeight:I

    move v2, v1

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->setScalePosAndSize(FFIIII)V

    return-void
.end method

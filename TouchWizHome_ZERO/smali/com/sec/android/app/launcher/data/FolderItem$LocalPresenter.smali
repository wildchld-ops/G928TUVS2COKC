.class Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;
.super Ljava/lang/Object;
.source "FolderItem.java"

# interfaces
.implements Lcom/sec/daliviews/views/PeerBase$OnPeerDestroyedListener;
.implements Lcom/sec/android/app/launcher/activities/LauncherActivity$OnActivityDestroyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/data/FolderItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalPresenter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/sec/android/app/launcher/data/FolderItem$FolderListAdapter;

.field private mAdapterView:Lcom/sec/android/app/launcher/views/FolderAdapterView;

.field private mAnimator:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;

.field private mCloseAdapterViewLayout:Lcom/sec/daliviews/layouts/GridLayout;

.field private mCloseFolderView:Lcom/sec/android/app/launcher/views/HomeFolderView;

.field private mClosing:Z

.field private mDragEventInterest:I

.field private mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

.field private mIsOpen:Z

.field private mOpenAdapterViewLayout:Lcom/sec/daliviews/layouts/GridLayout;

.field private mOpenFolderView:Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

.field private mPresenterHandler:Landroid/os/Handler;

.field private mRegisteredWithActivity:Z

.field private mSnapshotView:Lcom/sec/android/app/launcher/views/FolderAdapterView;

.field private mSnapshotViewLayout:Lcom/sec/daliviews/layouts/GridLayout;

.field final synthetic this$0:Lcom/sec/android/app/launcher/data/FolderItem;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/launcher/data/FolderItem;Lcom/sec/android/app/launcher/data/FolderItem;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->this$0:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mIsOpen:Z

    iput-boolean v3, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mClosing:Z

    iput-object v2, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mAdapter:Lcom/sec/android/app/launcher/data/FolderItem$FolderListAdapter;

    iput-object v2, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mAdapterView:Lcom/sec/android/app/launcher/views/FolderAdapterView;

    iput-object v2, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mCloseFolderView:Lcom/sec/android/app/launcher/views/HomeFolderView;

    iput-object v2, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mOpenFolderView:Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    iput-object v2, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mCloseAdapterViewLayout:Lcom/sec/daliviews/layouts/GridLayout;

    iput-object v2, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mOpenAdapterViewLayout:Lcom/sec/daliviews/layouts/GridLayout;

    iput-object v2, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mAnimator:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mPresenterHandler:Landroid/os/Handler;

    iput-object v2, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    iput-object v2, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mSnapshotView:Lcom/sec/android/app/launcher/views/FolderAdapterView;

    iput-object v2, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mSnapshotViewLayout:Lcom/sec/daliviews/layouts/GridLayout;

    iput v3, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mDragEventInterest:I

    iput-boolean v3, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mRegisteredWithActivity:Z

    iput-object p2, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;)Lcom/sec/android/app/launcher/views/HomeFolderView;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->createCloseFolderView()Lcom/sec/android/app/launcher/views/HomeFolderView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;Lcom/sec/android/app/launcher/views/HomeFolderView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->populateCloseFolderView(Lcom/sec/android/app/launcher/views/HomeFolderView;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;)Lcom/sec/android/app/launcher/views/HomeOpenFolderView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mOpenFolderView:Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;)Lcom/sec/daliviews/views/ClippedContainerView;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->getDarkenView()Lcom/sec/daliviews/views/ClippedContainerView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1202(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mIsOpen:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;)Lcom/sec/android/app/launcher/views/HomeFolderView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mCloseFolderView:Lcom/sec/android/app/launcher/views/HomeFolderView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;)Lcom/sec/android/app/launcher/views/FolderAdapterView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mSnapshotView:Lcom/sec/android/app/launcher/views/FolderAdapterView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;)Lcom/sec/android/app/launcher/views/FolderAdapterView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mAdapterView:Lcom/sec/android/app/launcher/views/FolderAdapterView;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;Lcom/sec/android/app/launcher/views/FolderAdapterView;)Lcom/sec/android/app/launcher/views/FolderAdapterView;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mAdapterView:Lcom/sec/android/app/launcher/views/FolderAdapterView;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;Lcom/sec/android/app/launcher/views/HomeOpenFolderView;Lcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->populateOpenFolderView(Lcom/sec/android/app/launcher/views/HomeOpenFolderView;Lcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;)Lcom/sec/daliviews/views/AdapterView;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->getAdapterView()Lcom/sec/daliviews/views/AdapterView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;)Lcom/sec/daliviews/layouts/GridLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mOpenAdapterViewLayout:Lcom/sec/daliviews/layouts/GridLayout;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;)Lcom/sec/daliviews/layouts/GridLayout;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->getOpenLayout()Lcom/sec/daliviews/layouts/GridLayout;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2402(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mClosing:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;)Lcom/sec/android/app/launcher/data/FolderItem$FolderListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mAdapter:Lcom/sec/android/app/launcher/data/FolderItem$FolderListAdapter;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;)Lcom/sec/daliviews/layouts/GridLayout;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->getCloseLayout()Lcom/sec/daliviews/layouts/GridLayout;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;)Lcom/sec/android/app/launcher/views/HomeOpenFolderView;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->createOpenFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v0

    return-object v0
.end method

.method private createAdapterView()Lcom/sec/daliviews/views/AdapterView;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mAdapterView:Lcom/sec/android/app/launcher/views/FolderAdapterView;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->getViewInflater()Lcom/sec/daliviews/views/ViewInflater;

    move-result-object v0

    const v1, 0x7f030024

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ViewInflater;->inflate(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/views/FolderAdapterView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mAdapterView:Lcom/sec/android/app/launcher/views/FolderAdapterView;

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mAdapterView:Lcom/sec/android/app/launcher/views/FolderAdapterView;

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->this$0:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/FolderItem;->getItemType()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->this$0:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/data/FolderItem;->getDbId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/launcher/views/FolderAdapterView;->setContainerTypeAndId(II)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mAdapterView:Lcom/sec/android/app/launcher/views/FolderAdapterView;

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->getAdapter()Lcom/sec/android/app/launcher/data/FolderItem$FolderListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/views/FolderAdapterView;->setAdapter(Lcom/sec/daliviews/views/Adapter;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mAdapterView:Lcom/sec/android/app/launcher/views/FolderAdapterView;

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/views/FolderAdapterView;->setFolderItem(Lcom/sec/android/app/launcher/data/FolderItem;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mAdapterView:Lcom/sec/android/app/launcher/views/FolderAdapterView;

    iget v1, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mDragEventInterest:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/views/FolderAdapterView;->setDragEventInterest(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mAdapterView:Lcom/sec/android/app/launcher/views/FolderAdapterView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/launcher/views/FolderAdapterView;->registerDestroyListener(Lcom/sec/daliviews/views/PeerBase$OnPeerDestroyedListener;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mAdapterView:Lcom/sec/android/app/launcher/views/FolderAdapterView;

    return-object v0
.end method

.method private createAnimator()Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mAnimator:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;

    invoke-direct {v0, p0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;-><init>(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mAnimator:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mAnimator:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;

    return-object v0
.end method

.method private createCloseFolderView()Lcom/sec/android/app/launcher/views/HomeFolderView;
    .locals 5

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mCloseFolderView:Lcom/sec/android/app/launcher/views/HomeFolderView;

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->getViewInflater()Lcom/sec/daliviews/views/ViewInflater;

    move-result-object v2

    const v3, 0x7f030020

    invoke-virtual {v2, v3}, Lcom/sec/daliviews/views/ViewInflater;->inflate(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/views/HomeFolderView;

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mCloseFolderView:Lcom/sec/android/app/launcher/views/HomeFolderView;

    if-nez v2, :cond_1

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mCloseFolderView:Lcom/sec/android/app/launcher/views/HomeFolderView;

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mCloseFolderView:Lcom/sec/android/app/launcher/views/HomeFolderView;

    iget-object v3, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->this$0:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/FolderItem;->getItemType()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->this$0:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/FolderItem;->getDbId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/launcher/views/HomeFolderView;->setContainerTypeAndId(II)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mCloseFolderView:Lcom/sec/android/app/launcher/views/HomeFolderView;

    iget-object v3, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->this$0:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/launcher/views/HomeFolderView;->setFolderItem(Lcom/sec/android/app/launcher/data/FolderItem;)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mCloseFolderView:Lcom/sec/android/app/launcher/views/HomeFolderView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/launcher/views/HomeFolderView;->setHasModes(Z)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mCloseFolderView:Lcom/sec/android/app/launcher/views/HomeFolderView;

    const v3, 0x7f0b006f

    invoke-virtual {v2, v3}, Lcom/sec/android/app/launcher/views/HomeFolderView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/launcher/views/FolderAdapterView;

    iput-object v2, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mSnapshotView:Lcom/sec/android/app/launcher/views/FolderAdapterView;

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mCloseFolderView:Lcom/sec/android/app/launcher/views/HomeFolderView;

    const v3, 0x7f0b0070

    invoke-virtual {v2, v3}, Lcom/sec/android/app/launcher/views/HomeFolderView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/ContainerViewBase;

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->this$0:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/data/FolderItem;->getItemType()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->this$0:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/FolderItem;->getDbId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/daliviews/views/ContainerViewBase;->setContainerTypeAndId(II)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mCloseFolderView:Lcom/sec/android/app/launcher/views/HomeFolderView;

    invoke-virtual {v2, p0}, Lcom/sec/android/app/launcher/views/HomeFolderView;->registerDestroyListener(Lcom/sec/daliviews/views/PeerBase$OnPeerDestroyedListener;)V

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mCloseFolderView:Lcom/sec/android/app/launcher/views/HomeFolderView;

    :goto_0
    return-object v2

    :cond_1
    # getter for: Lcom/sec/android/app/launcher/data/FolderItem;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/launcher/data/FolderItem;->access$600()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HomeFolderView alreay exist : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->this$0:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/FolderItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/HomeFolderView;->destroy()V

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mCloseFolderView:Lcom/sec/android/app/launcher/views/HomeFolderView;

    goto :goto_0
.end method

.method private createOpenFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;
    .locals 4

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mOpenFolderView:Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->getViewInflater()Lcom/sec/daliviews/views/ViewInflater;

    move-result-object v1

    const v2, 0x7f030030

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/ViewInflater;->inflate(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mOpenFolderView:Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    if-nez v1, :cond_1

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mOpenFolderView:Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mOpenFolderView:Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->this$0:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/data/FolderItem;->getItemType()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->this$0:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/FolderItem;->getDbId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->setContainerTypeAndId(II)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mOpenFolderView:Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->this$0:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->setFolderItem(Lcom/sec/android/app/launcher/data/FolderItem;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mOpenFolderView:Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->setDefaultBlendModeInheritedly()V

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mOpenFolderView:Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->registerDestroyListener(Lcom/sec/daliviews/views/PeerBase$OnPeerDestroyedListener;)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mOpenFolderView:Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    :goto_0
    return-object v1

    :cond_1
    # getter for: Lcom/sec/android/app/launcher/data/FolderItem;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/launcher/data/FolderItem;->access$600()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mOpenFolderView alreay exist : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->this$0:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/FolderItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->destroy()V

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mOpenFolderView:Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    goto :goto_0
.end method

.method private getAdapterView()Lcom/sec/daliviews/views/AdapterView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mAdapterView:Lcom/sec/android/app/launcher/views/FolderAdapterView;

    return-object v0
.end method

.method private getBadgeCount()I
    .locals 5

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->this$0:Lcom/sec/android/app/launcher/data/FolderItem;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem;->mPresenter:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;
    invoke-static {v4}, Lcom/sec/android/app/launcher/data/FolderItem;->access$700(Lcom/sec/android/app/launcher/data/FolderItem;)Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->hasItems()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->this$0:Lcom/sec/android/app/launcher/data/FolderItem;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem;->mPresenter:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;
    invoke-static {v4}, Lcom/sec/android/app/launcher/data/FolderItem;->access$700(Lcom/sec/android/app/launcher/data/FolderItem;)Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/daliviews/views/Item;

    check-cast v2, Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/data/HomeItem;->getBadgeCount()I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    :cond_0
    return v0
.end method

.method private getCloseLayout()Lcom/sec/daliviews/layouts/GridLayout;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mCloseAdapterViewLayout:Lcom/sec/daliviews/layouts/GridLayout;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->getLayoutInflater()Lcom/sec/daliviews/layouts/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03000d

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/layouts/LayoutInflater;->inflate(I)Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/layouts/GridLayout;

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mCloseAdapterViewLayout:Lcom/sec/daliviews/layouts/GridLayout;

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mCloseAdapterViewLayout:Lcom/sec/daliviews/layouts/GridLayout;

    invoke-virtual {v0, p0}, Lcom/sec/daliviews/layouts/GridLayout;->registerDestroyListener(Lcom/sec/daliviews/views/PeerBase$OnPeerDestroyedListener;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mCloseAdapterViewLayout:Lcom/sec/daliviews/layouts/GridLayout;

    return-object v0
.end method

.method private getDarkenView()Lcom/sec/daliviews/views/ClippedContainerView;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getDarkenView()Lcom/sec/daliviews/views/ClippedContainerView;

    move-result-object v0

    return-object v0
.end method

.method private getLayoutInflater()Lcom/sec/daliviews/layouts/LayoutInflater;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/daliviews/layouts/LayoutInflater;->instance(Landroid/content/Context;)Lcom/sec/daliviews/layouts/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method private getOpenLayout()Lcom/sec/daliviews/layouts/GridLayout;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mOpenAdapterViewLayout:Lcom/sec/daliviews/layouts/GridLayout;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->getLayoutInflater()Lcom/sec/daliviews/layouts/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030049

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/layouts/LayoutInflater;->inflate(I)Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/layouts/GridLayout;

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mOpenAdapterViewLayout:Lcom/sec/daliviews/layouts/GridLayout;

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mOpenAdapterViewLayout:Lcom/sec/daliviews/layouts/GridLayout;

    invoke-virtual {v0, p0}, Lcom/sec/daliviews/layouts/GridLayout;->registerDestroyListener(Lcom/sec/daliviews/views/PeerBase$OnPeerDestroyedListener;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mOpenAdapterViewLayout:Lcom/sec/daliviews/layouts/GridLayout;

    return-object v0
.end method

.method private getViewInflater()Lcom/sec/daliviews/views/ViewInflater;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getViewInflater()Lcom/sec/daliviews/views/ViewInflater;

    move-result-object v0

    return-object v0
.end method

.method private populateCloseFolderView(Lcom/sec/android/app/launcher/views/HomeFolderView;)V
    .locals 11

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    const/4 v8, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mSnapshotView:Lcom/sec/android/app/launcher/views/FolderAdapterView;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->getSnapshotLayout()Lcom/sec/daliviews/layouts/GridLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mSnapshotViewLayout:Lcom/sec/daliviews/layouts/GridLayout;

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->createAdapterView()Lcom/sec/daliviews/views/AdapterView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/views/AdapterView;->isValidPeer()Z

    move-result v1

    if-eqz v1, :cond_2

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/launcher/data/FolderItem;->access$600()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSensitive,setScale "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "0x%x"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/AdapterView;->getPeer()J

    move-result-wide v6

    long-to-int v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v0, v8}, Lcom/sec/daliviews/views/AdapterView;->setSensitive(Z)V

    invoke-virtual {v0, v10, v10}, Lcom/sec/daliviews/views/AdapterView;->setScale(FF)V

    invoke-virtual {v0, v8}, Lcom/sec/daliviews/views/AdapterView;->setVisibility(I)V

    iget-boolean v1, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mIsOpen:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mClosing:Z

    if-nez v1, :cond_3

    invoke-virtual {p1, v0}, Lcom/sec/android/app/launcher/views/HomeFolderView;->attachAdapterView(Lcom/sec/daliviews/views/AdapterView;)V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->getCloseLayout()Lcom/sec/daliviews/layouts/GridLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/AdapterView;->setLayout(Lcom/sec/daliviews/layouts/LayoutBase;)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->getAdapter()Lcom/sec/android/app/launcher/data/FolderItem$FolderListAdapter;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/sec/android/app/launcher/data/FolderItem$FolderListAdapter;->changeGridSize(I)V

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->this$0:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {p1, v1}, Lcom/sec/android/app/launcher/views/HomeFolderView;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->this$0:Lcom/sec/android/app/launcher/data/FolderItem;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem;->mTitle:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/launcher/data/FolderItem;->access$800(Lcom/sec/android/app/launcher/data/FolderItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sec/android/app/launcher/views/HomeFolderView;->setTitle(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->this$0:Lcom/sec/android/app/launcher/data/FolderItem;

    iget v1, v1, Lcom/sec/android/app/launcher/data/FolderItem;->mBadgeCount:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->setBadgeCount(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->this$0:Lcom/sec/android/app/launcher/data/FolderItem;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem;->mFolderColorIndex:I
    invoke-static {v1}, Lcom/sec/android/app/launcher/data/FolderItem;->access$900(Lcom/sec/android/app/launcher/data/FolderItem;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/sec/android/app/launcher/views/HomeFolderView;->applyFolderColor(I)V

    invoke-virtual {p1, v9}, Lcom/sec/android/app/launcher/views/HomeFolderView;->setLongClickable(Z)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->this$0:Lcom/sec/android/app/launcher/data/FolderItem;

    iput-boolean v9, v1, Lcom/sec/android/app/launcher/data/FolderItem;->mIsPopulated:Z

    goto/16 :goto_0
.end method

.method private populateOpenFolderView(Lcom/sec/android/app/launcher/views/HomeOpenFolderView;Lcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->this$0:Lcom/sec/android/app/launcher/data/FolderItem;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem;->mFolderColorIndex:I
    invoke-static {v4}, Lcom/sec/android/app/launcher/data/FolderItem;->access$900(Lcom/sec/android/app/launcher/data/FolderItem;)I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->applyFolderColor(I)V

    invoke-virtual {p1, v6}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->setVisibilityFolderTitle(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->createAdapterView()Lcom/sec/daliviews/views/AdapterView;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sec/daliviews/views/AdapterView;->setSensitive(Z)V

    iget-object v4, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mCloseFolderView:Lcom/sec/android/app/launcher/views/HomeFolderView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mCloseFolderView:Lcom/sec/android/app/launcher/views/HomeFolderView;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/views/HomeFolderView;->detachAdapterView()V

    :cond_0
    invoke-virtual {p1, v0}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->attachAdapterView(Lcom/sec/daliviews/views/AdapterView;)V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->getOpenLayout()Lcom/sec/daliviews/layouts/GridLayout;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/sec/daliviews/layouts/GridLayout;->setAnimatePositioning(Z)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    const v4, 0x7f0a008d

    invoke-virtual {v2, v4, v3, v6}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v3}, Landroid/util/TypedValue;->getFloat()F

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/daliviews/layouts/GridLayout;->setFlickDuration(F)V

    invoke-virtual {p1, p2}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->setMode(Lcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;)V

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/AdapterView;->setLayout(Lcom/sec/daliviews/layouts/LayoutBase;)V

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->setDefaultBlendModeInheritedly()V

    return-void
.end method


# virtual methods
.method public addItem(Lcom/sec/daliviews/views/Item;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->addItem(Lcom/sec/daliviews/views/Item;Z)Z

    move-result v0

    return v0
.end method

.method public addItem(Lcom/sec/daliviews/views/Item;Z)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mAdapter:Lcom/sec/android/app/launcher/data/FolderItem$FolderListAdapter;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->this$0:Lcom/sec/android/app/launcher/data/FolderItem;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem;->mPreLoadedItems:Ljava/util/Set;
    invoke-static {v0}, Lcom/sec/android/app/launcher/data/FolderItem;->access$500(Lcom/sec/android/app/launcher/data/FolderItem;)Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->this$0:Lcom/sec/android/app/launcher/data/FolderItem;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    # setter for: Lcom/sec/android/app/launcher/data/FolderItem;->mPreLoadedItems:Ljava/util/Set;
    invoke-static {v0, v1}, Lcom/sec/android/app/launcher/data/FolderItem;->access$502(Lcom/sec/android/app/launcher/data/FolderItem;Ljava/util/Set;)Ljava/util/Set;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->this$0:Lcom/sec/android/app/launcher/data/FolderItem;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem;->mPreLoadedItems:Ljava/util/Set;
    invoke-static {v0}, Lcom/sec/android/app/launcher/data/FolderItem;->access$500(Lcom/sec/android/app/launcher/data/FolderItem;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->containItem(Lcom/sec/daliviews/views/Item;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mAdapter:Lcom/sec/android/app/launcher/data/FolderItem$FolderListAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/launcher/data/FolderItem$FolderListAdapter;->addItem(Lcom/sec/daliviews/views/Item;Z)V

    goto :goto_0
.end method

.method public addItems(Ljava/util/List;Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mAdapter:Lcom/sec/android/app/launcher/data/FolderItem$FolderListAdapter;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->this$0:Lcom/sec/android/app/launcher/data/FolderItem;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem;->mPreLoadedItems:Ljava/util/Set;
    invoke-static {v1}, Lcom/sec/android/app/launcher/data/FolderItem;->access$500(Lcom/sec/android/app/launcher/data/FolderItem;)Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->this$0:Lcom/sec/android/app/launcher/data/FolderItem;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    # setter for: Lcom/sec/android/app/launcher/data/FolderItem;->mPreLoadedItems:Ljava/util/Set;
    invoke-static {v1, v2}, Lcom/sec/android/app/launcher/data/FolderItem;->access$502(Lcom/sec/android/app/launcher/data/FolderItem;Ljava/util/Set;)Ljava/util/Set;

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->this$0:Lcom/sec/android/app/launcher/data/FolderItem;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem;->mPreLoadedItems:Ljava/util/Set;
    invoke-static {v1}, Lcom/sec/android/app/launcher/data/FolderItem;->access$500(Lcom/sec/android/app/launcher/data/FolderItem;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-object v0, p1

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->hasItems()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mAdapter:Lcom/sec/android/app/launcher/data/FolderItem$FolderListAdapter;

    invoke-virtual {v1, v0, p2}, Lcom/sec/android/app/launcher/data/FolderItem$FolderListAdapter;->addItems(Ljava/util/List;Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mAdapter:Lcom/sec/android/app/launcher/data/FolderItem$FolderListAdapter;

    invoke-virtual {v1, v0, p2}, Lcom/sec/android/app/launcher/data/FolderItem$FolderListAdapter;->addItems(Ljava/util/List;Z)V

    goto :goto_0
.end method

.method public cancelClosingFolder()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mPresenterHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public cloneItems(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    new-array v3, v8, [Lcom/sec/daliviews/views/Item;

    const/4 v5, 0x0

    :goto_1
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_2

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/daliviews/views/Item;

    invoke-virtual {v6}, Lcom/sec/daliviews/views/Item;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/daliviews/views/Item;

    invoke-virtual {v6}, Lcom/sec/daliviews/views/Item;->getCellX()I

    move-result v0

    invoke-virtual {v6}, Lcom/sec/daliviews/views/Item;->getCellY()I

    move-result v1

    invoke-virtual {v6}, Lcom/sec/daliviews/views/Item;->getPos()I

    move-result v7

    invoke-virtual {v2, v0, v1, v7}, Lcom/sec/daliviews/views/Item;->setPosition(III)V

    const/4 v8, -0x1

    invoke-virtual {v2, v8}, Lcom/sec/daliviews/views/Item;->setDbId(I)V

    aput-object v2, v3, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :catch_0
    move-exception v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->getAdapter()Lcom/sec/android/app/launcher/data/FolderItem$FolderListAdapter;

    move-result-object v8

    new-instance v9, Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/app/launcher/data/FolderItem$FolderListAdapter;->addItems(Ljava/util/List;Z)V

    goto :goto_0
.end method

.method public closeFolder(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mIsOpen:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mClosing:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->createAnimator()Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->closeFolder(Z)V

    :cond_0
    return-void
.end method

.method public closeFolderDelayed(Z)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mPresenterHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$1;-><init>(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;Z)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public closeFolderSnapRefresh()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mCloseFolderView:Lcom/sec/android/app/launcher/views/HomeFolderView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mAdapterView:Lcom/sec/android/app/launcher/views/FolderAdapterView;

    const v1, 0x7f0b00e0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/views/FolderAdapterView;->setDefaultMode(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mAdapterView:Lcom/sec/android/app/launcher/views/FolderAdapterView;

    invoke-direct {p0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->getCloseLayout()Lcom/sec/daliviews/layouts/GridLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/views/FolderAdapterView;->setLayout(Lcom/sec/daliviews/layouts/LayoutBase;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mCloseFolderView:Lcom/sec/android/app/launcher/views/HomeFolderView;

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mAdapterView:Lcom/sec/android/app/launcher/views/FolderAdapterView;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/views/HomeFolderView;->attachAdapterView(Lcom/sec/daliviews/views/AdapterView;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mSnapshotView:Lcom/sec/android/app/launcher/views/FolderAdapterView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/views/FolderAdapterView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public containItem(Lcom/sec/daliviews/views/Item;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->hasItems()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mAdapter:Lcom/sec/android/app/launcher/data/FolderItem$FolderListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/FolderItem$FolderListAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public destroy()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mRegisteredWithActivity:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->unregisterDestroyListener(Lcom/sec/android/app/launcher/activities/LauncherActivity$OnActivityDestroyListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mRegisteredWithActivity:Z

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mAdapterView:Lcom/sec/android/app/launcher/views/FolderAdapterView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mAdapterView:Lcom/sec/android/app/launcher/views/FolderAdapterView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/launcher/views/FolderAdapterView;->unregisterDestroyListener(Lcom/sec/daliviews/views/PeerBase$OnPeerDestroyedListener;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mCloseFolderView:Lcom/sec/android/app/launcher/views/HomeFolderView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mCloseFolderView:Lcom/sec/android/app/launcher/views/HomeFolderView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/launcher/views/HomeFolderView;->unregisterDestroyListener(Lcom/sec/daliviews/views/PeerBase$OnPeerDestroyedListener;)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mOpenFolderView:Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mOpenFolderView:Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->unregisterDestroyListener(Lcom/sec/daliviews/views/PeerBase$OnPeerDestroyedListener;)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->destroyOpenFolderView()V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mAnimator:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mAnimator:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->destroy()V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->this$0:Lcom/sec/android/app/launcher/data/FolderItem;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem;->mAddIcon:Lcom/sec/android/app/launcher/data/HomeItem;
    invoke-static {v0}, Lcom/sec/android/app/launcher/data/FolderItem;->access$400(Lcom/sec/android/app/launcher/data/FolderItem;)Lcom/sec/android/app/launcher/data/HomeItem;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->this$0:Lcom/sec/android/app/launcher/data/FolderItem;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem;->mAddIcon:Lcom/sec/android/app/launcher/data/HomeItem;
    invoke-static {v0}, Lcom/sec/android/app/launcher/data/FolderItem;->access$400(Lcom/sec/android/app/launcher/data/FolderItem;)Lcom/sec/android/app/launcher/data/HomeItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/HomeItem;->destroy()V

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mAdapter:Lcom/sec/android/app/launcher/data/FolderItem$FolderListAdapter;

    invoke-static {v0}, Lcom/sec/android/app/launcher/utils/Utils;->destroyPeer(Lcom/sec/daliviews/views/PeerBase;)V

    return-void
.end method

.method public destroyOpenFolderView()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mOpenFolderView:Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mOpenFolderView:Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->unparentAndDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mOpenFolderView:Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    :cond_0
    return-void
.end method

.method public detachAllItems(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mAdapter:Lcom/sec/android/app/launcher/data/FolderItem$FolderListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mAdapter:Lcom/sec/android/app/launcher/data/FolderItem$FolderListAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/data/FolderItem$FolderListAdapter;->detachAllItems(Z)V

    :cond_0
    return-void
.end method

.method public detachItem(Lcom/sec/daliviews/views/Item;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mAdapter:Lcom/sec/android/app/launcher/data/FolderItem$FolderListAdapter;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->this$0:Lcom/sec/android/app/launcher/data/FolderItem;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem;->mPreLoadedItems:Ljava/util/Set;
    invoke-static {v0}, Lcom/sec/android/app/launcher/data/FolderItem;->access$500(Lcom/sec/android/app/launcher/data/FolderItem;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->this$0:Lcom/sec/android/app/launcher/data/FolderItem;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem;->mPreLoadedItems:Ljava/util/Set;
    invoke-static {v0}, Lcom/sec/android/app/launcher/data/FolderItem;->access$500(Lcom/sec/android/app/launcher/data/FolderItem;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mAdapter:Lcom/sec/android/app/launcher/data/FolderItem$FolderListAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/data/FolderItem$FolderListAdapter;->detachItem(Lcom/sec/daliviews/views/Item;)Z

    goto :goto_0
.end method

.method public detachItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mAdapter:Lcom/sec/android/app/launcher/data/FolderItem$FolderListAdapter;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->this$0:Lcom/sec/android/app/launcher/data/FolderItem;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem;->mPreLoadedItems:Ljava/util/Set;
    invoke-static {v0}, Lcom/sec/android/app/launcher/data/FolderItem;->access$500(Lcom/sec/android/app/launcher/data/FolderItem;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->this$0:Lcom/sec/android/app/launcher/data/FolderItem;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem;->mPreLoadedItems:Ljava/util/Set;
    invoke-static {v0}, Lcom/sec/android/app/launcher/data/FolderItem;->access$500(Lcom/sec/android/app/launcher/data/FolderItem;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mAdapter:Lcom/sec/android/app/launcher/data/FolderItem$FolderListAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/data/FolderItem$FolderListAdapter;->detachItems(Ljava/util/List;)Z

    goto :goto_0
.end method

.method public getAdapter()Lcom/sec/android/app/launcher/data/FolderItem$FolderListAdapter;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mAdapter:Lcom/sec/android/app/launcher/data/FolderItem$FolderListAdapter;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sec/android/app/launcher/data/FolderItem$FolderListAdapter;

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->this$0:Lcom/sec/android/app/launcher/data/FolderItem;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/launcher/data/FolderItem$FolderListAdapter;-><init>(Lcom/sec/android/app/launcher/data/FolderItem;Z)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mAdapter:Lcom/sec/android/app/launcher/data/FolderItem$FolderListAdapter;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->registerDestroyListener(Lcom/sec/android/app/launcher/activities/LauncherActivity$OnActivityDestroyListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mRegisteredWithActivity:Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->this$0:Lcom/sec/android/app/launcher/data/FolderItem;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem;->mPreLoadedItems:Ljava/util/Set;
    invoke-static {v0}, Lcom/sec/android/app/launcher/data/FolderItem;->access$500(Lcom/sec/android/app/launcher/data/FolderItem;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->this$0:Lcom/sec/android/app/launcher/data/FolderItem;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem;->mPreLoadedItems:Ljava/util/Set;
    invoke-static {v0}, Lcom/sec/android/app/launcher/data/FolderItem;->access$500(Lcom/sec/android/app/launcher/data/FolderItem;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mAdapter:Lcom/sec/android/app/launcher/data/FolderItem$FolderListAdapter;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->this$0:Lcom/sec/android/app/launcher/data/FolderItem;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem;->mPreLoadedItems:Ljava/util/Set;
    invoke-static {v2}, Lcom/sec/android/app/launcher/data/FolderItem;->access$500(Lcom/sec/android/app/launcher/data/FolderItem;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/data/FolderItem$FolderListAdapter;->addItems(Ljava/util/List;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->this$0:Lcom/sec/android/app/launcher/data/FolderItem;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/app/launcher/data/FolderItem;->mPreLoadedItems:Ljava/util/Set;
    invoke-static {v0, v1}, Lcom/sec/android/app/launcher/data/FolderItem;->access$502(Lcom/sec/android/app/launcher/data/FolderItem;Ljava/util/Set;)Ljava/util/Set;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mAdapter:Lcom/sec/android/app/launcher/data/FolderItem$FolderListAdapter;

    return-object v0
.end method

.method public getCloseFolderView()Lcom/sec/android/app/launcher/views/FolderView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mCloseFolderView:Lcom/sec/android/app/launcher/views/HomeFolderView;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mAdapter:Lcom/sec/android/app/launcher/data/FolderItem$FolderListAdapter;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->this$0:Lcom/sec/android/app/launcher/data/FolderItem;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem;->mPreLoadedItems:Ljava/util/Set;
    invoke-static {v0}, Lcom/sec/android/app/launcher/data/FolderItem;->access$500(Lcom/sec/android/app/launcher/data/FolderItem;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->this$0:Lcom/sec/android/app/launcher/data/FolderItem;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem;->mPreLoadedItems:Ljava/util/Set;
    invoke-static {v0}, Lcom/sec/android/app/launcher/data/FolderItem;->access$500(Lcom/sec/android/app/launcher/data/FolderItem;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mAdapter:Lcom/sec/android/app/launcher/data/FolderItem$FolderListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/FolderItem$FolderListAdapter;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getItems()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->hasItems()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mAdapter:Lcom/sec/android/app/launcher/data/FolderItem$FolderListAdapter;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->this$0:Lcom/sec/android/app/launcher/data/FolderItem;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem;->mPreLoadedItems:Ljava/util/Set;
    invoke-static {v1}, Lcom/sec/android/app/launcher/data/FolderItem;->access$500(Lcom/sec/android/app/launcher/data/FolderItem;)Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->this$0:Lcom/sec/android/app/launcher/data/FolderItem;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem;->mPreLoadedItems:Ljava/util/Set;
    invoke-static {v1}, Lcom/sec/android/app/launcher/data/FolderItem;->access$500(Lcom/sec/android/app/launcher/data/FolderItem;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->this$0:Lcom/sec/android/app/launcher/data/FolderItem;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem;->mAddIcon:Lcom/sec/android/app/launcher/data/HomeItem;
    invoke-static {v1}, Lcom/sec/android/app/launcher/data/FolderItem;->access$400(Lcom/sec/android/app/launcher/data/FolderItem;)Lcom/sec/android/app/launcher/data/HomeItem;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->this$0:Lcom/sec/android/app/launcher/data/FolderItem;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem;->mAddIcon:Lcom/sec/android/app/launcher/data/HomeItem;
    invoke-static {v1}, Lcom/sec/android/app/launcher/data/FolderItem;->access$400(Lcom/sec/android/app/launcher/data/FolderItem;)Lcom/sec/android/app/launcher/data/HomeItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mAdapter:Lcom/sec/android/app/launcher/data/FolderItem$FolderListAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/FolderItem$FolderListAdapter;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public getOpenFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mOpenFolderView:Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    return-object v0
.end method

.method public getOpenViewPosition()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mAnimator:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mAnimator:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->getOpenViewPosition()Landroid/graphics/Point;

    move-result-object v0

    goto :goto_0
.end method

.method public getSnapshotLayout()Lcom/sec/daliviews/layouts/GridLayout;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mSnapshotViewLayout:Lcom/sec/daliviews/layouts/GridLayout;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->getLayoutInflater()Lcom/sec/daliviews/layouts/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03000d

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/layouts/LayoutInflater;->inflate(I)Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/layouts/GridLayout;

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mSnapshotViewLayout:Lcom/sec/daliviews/layouts/GridLayout;

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mSnapshotView:Lcom/sec/android/app/launcher/views/FolderAdapterView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mSnapshotView:Lcom/sec/android/app/launcher/views/FolderAdapterView;

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mSnapshotViewLayout:Lcom/sec/daliviews/layouts/GridLayout;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/views/FolderAdapterView;->setLayout(Lcom/sec/daliviews/layouts/LayoutBase;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mSnapshotViewLayout:Lcom/sec/daliviews/layouts/GridLayout;

    return-object v0
.end method

.method public hasItems()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFolderOpen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mIsOpen:Z

    return v0
.end method

.method public onActivityDestroyed()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mRegisteredWithActivity:Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mAdapter:Lcom/sec/android/app/launcher/data/FolderItem$FolderListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mAdapter:Lcom/sec/android/app/launcher/data/FolderItem$FolderListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/FolderItem$FolderListAdapter;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mAdapter:Lcom/sec/android/app/launcher/data/FolderItem$FolderListAdapter;

    :cond_0
    return-void
.end method

.method public onPeerDestroyed(Lcom/sec/daliviews/views/PeerBase;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mAdapterView:Lcom/sec/android/app/launcher/views/FolderAdapterView;

    invoke-static {p1, v0}, Lcom/sec/android/app/launcher/utils/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mAdapterView:Lcom/sec/android/app/launcher/views/FolderAdapterView;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mCloseFolderView:Lcom/sec/android/app/launcher/views/HomeFolderView;

    invoke-static {p1, v0}, Lcom/sec/android/app/launcher/utils/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object v1, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mCloseFolderView:Lcom/sec/android/app/launcher/views/HomeFolderView;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mOpenFolderView:Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    invoke-static {p1, v0}, Lcom/sec/android/app/launcher/utils/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object v1, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mOpenFolderView:Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mOpenAdapterViewLayout:Lcom/sec/daliviews/layouts/GridLayout;

    invoke-static {p1, v0}, Lcom/sec/android/app/launcher/utils/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-object v1, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mOpenAdapterViewLayout:Lcom/sec/daliviews/layouts/GridLayout;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mCloseAdapterViewLayout:Lcom/sec/daliviews/layouts/GridLayout;

    invoke-static {p1, v0}, Lcom/sec/android/app/launcher/utils/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mCloseAdapterViewLayout:Lcom/sec/daliviews/layouts/GridLayout;

    goto :goto_0
.end method

.method public openFolder(ZLcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;Landroid/graphics/Rect;)Lcom/sec/android/app/launcher/views/HomeOpenFolderView;
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mIsOpen:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->createAnimator()Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->openFolder(ZLcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;Landroid/graphics/Rect;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mOpenFolderView:Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    return-object v0
.end method

.method public refresh()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->getAdapter()Lcom/sec/android/app/launcher/data/FolderItem$FolderListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/FolderItem$FolderListAdapter;->refresh()V

    return-void
.end method

.method public removeItem(Lcom/sec/daliviews/views/Item;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mAdapter:Lcom/sec/android/app/launcher/data/FolderItem$FolderListAdapter;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->this$0:Lcom/sec/android/app/launcher/data/FolderItem;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem;->mPreLoadedItems:Ljava/util/Set;
    invoke-static {v0}, Lcom/sec/android/app/launcher/data/FolderItem;->access$500(Lcom/sec/android/app/launcher/data/FolderItem;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->this$0:Lcom/sec/android/app/launcher/data/FolderItem;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem;->mPreLoadedItems:Ljava/util/Set;
    invoke-static {v0}, Lcom/sec/android/app/launcher/data/FolderItem;->access$500(Lcom/sec/android/app/launcher/data/FolderItem;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mAdapter:Lcom/sec/android/app/launcher/data/FolderItem$FolderListAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/data/FolderItem$FolderListAdapter;->removeItem(Lcom/sec/daliviews/views/Item;)Z

    goto :goto_0
.end method

.method public removeItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mAdapter:Lcom/sec/android/app/launcher/data/FolderItem$FolderListAdapter;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->this$0:Lcom/sec/android/app/launcher/data/FolderItem;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem;->mPreLoadedItems:Ljava/util/Set;
    invoke-static {v0}, Lcom/sec/android/app/launcher/data/FolderItem;->access$500(Lcom/sec/android/app/launcher/data/FolderItem;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->this$0:Lcom/sec/android/app/launcher/data/FolderItem;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem;->mPreLoadedItems:Ljava/util/Set;
    invoke-static {v0}, Lcom/sec/android/app/launcher/data/FolderItem;->access$500(Lcom/sec/android/app/launcher/data/FolderItem;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mAdapter:Lcom/sec/android/app/launcher/data/FolderItem$FolderListAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/data/FolderItem$FolderListAdapter;->removeItems(Ljava/util/List;)Z

    goto :goto_0
.end method

.method public setBadgeCount(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mCloseFolderView:Lcom/sec/android/app/launcher/views/HomeFolderView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mCloseFolderView:Lcom/sec/android/app/launcher/views/HomeFolderView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/views/HomeFolderView;->setBadge(I)V

    :goto_0
    return-void

    :cond_0
    # getter for: Lcom/sec/android/app/launcher/data/FolderItem;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/launcher/data/FolderItem;->access$600()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->this$0:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/data/FolderItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", CloseFolderItemView is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setDragEventInterest(I)V
    .locals 1

    iput p1, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mDragEventInterest:I

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mAdapterView:Lcom/sec/android/app/launcher/views/FolderAdapterView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mAdapterView:Lcom/sec/android/app/launcher/views/FolderAdapterView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/views/FolderAdapterView;->setDragEventInterest(I)V

    :cond_0
    return-void
.end method

.method public setFolderColor(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x5

    if-lt p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mOpenFolderView:Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mOpenFolderView:Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->applyFolderColor(I)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mCloseFolderView:Lcom/sec/android/app/launcher/views/HomeFolderView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mCloseFolderView:Lcom/sec/android/app/launcher/views/HomeFolderView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/views/HomeFolderView;->applyFolderColor(I)V

    goto :goto_0
.end method

.method public setFolderTitle(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mOpenFolderView:Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mOpenFolderView:Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->setTitle(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mCloseFolderView:Lcom/sec/android/app/launcher/views/HomeFolderView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mCloseFolderView:Lcom/sec/android/app/launcher/views/HomeFolderView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/views/HomeFolderView;->setTitle(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public sortItemsInAlphabeticOrder()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->hasItems()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->getItems()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$3;-><init>(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method public sortItemsInCustomPosOrder()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->hasItems()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->getItems()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$2;-><init>(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method public updateItem(Lcom/sec/daliviews/views/Item;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mAdapter:Lcom/sec/android/app/launcher/data/FolderItem$FolderListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mAdapter:Lcom/sec/android/app/launcher/data/FolderItem$FolderListAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/data/FolderItem$FolderListAdapter;->updateItem(Lcom/sec/daliviews/views/Item;)V

    :cond_0
    return-void
.end method

.method public updateItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mAdapter:Lcom/sec/android/app/launcher/data/FolderItem$FolderListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mAdapter:Lcom/sec/android/app/launcher/data/FolderItem$FolderListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/FolderItem$FolderListAdapter;->refresh()V

    :cond_0
    return-void
.end method

.method public updateOpenViewPosition()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mAnimator:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mAnimator:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->updateOpenViewPosition()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mOpenFolderView:Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->mOpenFolderView:Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->updateEditTextViewPosition()V

    :cond_1
    return-void
.end method

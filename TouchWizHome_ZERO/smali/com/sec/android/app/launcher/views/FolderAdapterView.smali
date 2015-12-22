.class public Lcom/sec/android/app/launcher/views/FolderAdapterView;
.super Lcom/sec/daliviews/views/AdapterView;
.source "FolderAdapterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/launcher/views/FolderAdapterView$OnAddIconClickListener;
    }
.end annotation


# static fields
.field private static mOverlayAnimation:Lcom/sec/daliviews/animation/NativeAnimation;


# instance fields
.field private mAddIcon:Lcom/sec/daliviews/views/Item;

.field private mAddIconClickListener:Lcom/sec/android/app/launcher/views/FolderAdapterView$OnAddIconClickListener;

.field private mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

.field private mHomeOpenFolderView:Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

.field private mSwapTopFive:Z

.field private mSwappedOverlay:Lcom/sec/daliviews/views/NativeViewBase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/launcher/views/FolderAdapterView;->mOverlayAnimation:Lcom/sec/daliviews/animation/NativeAnimation;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sec/daliviews/views/AdapterView;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/launcher/views/FolderAdapterView;->mAddIcon:Lcom/sec/daliviews/views/Item;

    iput-object v1, p0, Lcom/sec/android/app/launcher/views/FolderAdapterView;->mAddIconClickListener:Lcom/sec/android/app/launcher/views/FolderAdapterView$OnAddIconClickListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/views/FolderAdapterView;->mSwapTopFive:Z

    iput-object v1, p0, Lcom/sec/android/app/launcher/views/FolderAdapterView;->mSwappedOverlay:Lcom/sec/daliviews/views/NativeViewBase;

    iput-object v1, p0, Lcom/sec/android/app/launcher/views/FolderAdapterView;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/daliviews/views/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/sec/android/app/launcher/views/FolderAdapterView;->mAddIcon:Lcom/sec/daliviews/views/Item;

    iput-object v1, p0, Lcom/sec/android/app/launcher/views/FolderAdapterView;->mAddIconClickListener:Lcom/sec/android/app/launcher/views/FolderAdapterView$OnAddIconClickListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/views/FolderAdapterView;->mSwapTopFive:Z

    iput-object v1, p0, Lcom/sec/android/app/launcher/views/FolderAdapterView;->mSwappedOverlay:Lcom/sec/daliviews/views/NativeViewBase;

    iput-object v1, p0, Lcom/sec/android/app/launcher/views/FolderAdapterView;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    return-void
.end method

.method private removeSwappedOverlay()V
    .locals 2

    sget-object v0, Lcom/sec/android/app/launcher/views/FolderAdapterView;->mOverlayAnimation:Lcom/sec/daliviews/animation/NativeAnimation;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/launcher/views/FolderAdapterView;->mOverlayAnimation:Lcom/sec/daliviews/animation/NativeAnimation;

    invoke-virtual {v0}, Lcom/sec/daliviews/animation/NativeAnimation;->stop()V

    sget-object v0, Lcom/sec/android/app/launcher/views/FolderAdapterView;->mOverlayAnimation:Lcom/sec/daliviews/animation/NativeAnimation;

    invoke-virtual {v0}, Lcom/sec/daliviews/animation/NativeAnimation;->reset()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/FolderAdapterView;->mSwappedOverlay:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/FolderAdapterView;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/FolderItem;->getCloseFolderView()Lcom/sec/android/app/launcher/views/FolderView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/FolderAdapterView;->mSwappedOverlay:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/views/FolderView;->deleteView(Lcom/sec/daliviews/views/NativeViewBase;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/FolderAdapterView;->mSwappedOverlay:Lcom/sec/daliviews/views/NativeViewBase;

    :cond_1
    return-void
.end method


# virtual methods
.method public canAcceptDrop(Lcom/sec/daliviews/views/NativeViewBase;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/views/FolderAdapterView;->canAddViewType(Lcom/sec/daliviews/views/NativeViewBase;)Z

    move-result v0

    return v0
.end method

.method public getFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/FolderAdapterView;->mHomeOpenFolderView:Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    return-object v0
.end method

.method public isCloneable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onItemClick(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/FolderAdapterView;->mAddIcon:Lcom/sec/daliviews/views/Item;

    invoke-static {v0, p2}, Lcom/sec/android/app/launcher/utils/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/FolderAdapterView;->mAddIconClickListener:Lcom/sec/android/app/launcher/views/FolderAdapterView$OnAddIconClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/FolderAdapterView;->mAddIconClickListener:Lcom/sec/android/app/launcher/views/FolderAdapterView$OnAddIconClickListener;

    invoke-interface {v0, p0, p1, p2}, Lcom/sec/android/app/launcher/views/FolderAdapterView$OnAddIconClickListener;->onAddIconClick(Lcom/sec/daliviews/views/AdapterView;Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/sec/daliviews/views/AdapterView;->onItemClick(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)Z

    move-result v0

    goto :goto_0
.end method

.method public onViewAttached(Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/views/FolderAdapterView;->mSwapTopFive:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/views/FolderAdapterView;->swapTopFiveView(Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/FolderAdapterView;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/data/FolderItem;->UpdateGridSize(I)V

    return-void
.end method

.method public onViewDetached(Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/views/FolderAdapterView;->mSwapTopFive:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/FolderAdapterView;->removeSwappedOverlay()V

    :cond_0
    return-void
.end method

.method public setAddIcon(Lcom/sec/daliviews/views/Item;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/FolderAdapterView;->mAddIcon:Lcom/sec/daliviews/views/Item;

    return-void
.end method

.method public setFolderItem(Lcom/sec/android/app/launcher/data/FolderItem;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/FolderAdapterView;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    return-void
.end method

.method public setFolderView(Lcom/sec/android/app/launcher/views/HomeOpenFolderView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/FolderAdapterView;->mHomeOpenFolderView:Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    return-void
.end method

.method public setOnAddIconClickListener(Lcom/sec/android/app/launcher/views/FolderAdapterView$OnAddIconClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/FolderAdapterView;->mAddIconClickListener:Lcom/sec/android/app/launcher/views/FolderAdapterView$OnAddIconClickListener;

    return-void
.end method

.method public swapTopFive(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/views/FolderAdapterView;->mSwapTopFive:Z

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/views/FolderAdapterView;->mSwapTopFive:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/FolderAdapterView;->removeSwappedOverlay()V

    :cond_0
    return-void
.end method

.method public swapTopFiveView(Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 7

    iget-boolean v2, p0, Lcom/sec/android/app/launcher/views/FolderAdapterView;->mSwapTopFive:Z

    if-eqz v2, :cond_1

    instance-of v2, p1, Lcom/sec/android/app/launcher/views/HomeItemView;

    if-eqz v2, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/sec/android/app/launcher/views/HomeItemView;

    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/FolderAdapterView;->removeSwappedOverlay()V

    sget-object v2, Lcom/sec/android/app/launcher/views/FolderAdapterView;->mOverlayAnimation:Lcom/sec/daliviews/animation/NativeAnimation;

    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040026

    invoke-static {v2, v3}, Lcom/sec/daliviews/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Lcom/sec/daliviews/animation/NativeAnimation;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/launcher/views/FolderAdapterView;->mOverlayAnimation:Lcom/sec/daliviews/animation/NativeAnimation;

    :cond_0
    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/HomeItemView;->getImageView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/daliviews/views/NativeViewBase;->clone()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/launcher/views/FolderAdapterView;->mSwappedOverlay:Lcom/sec/daliviews/views/NativeViewBase;

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/FolderAdapterView;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/data/FolderItem;->getCloseFolderView()Lcom/sec/android/app/launcher/views/FolderView;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/launcher/views/FolderAdapterView;->mSwappedOverlay:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/launcher/views/FolderView;->addView(Lcom/sec/daliviews/views/NativeViewBase;)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/FolderAdapterView;->mSwappedOverlay:Lcom/sec/daliviews/views/NativeViewBase;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/daliviews/views/NativeViewBase;->setPosition(FFFZ)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/FolderAdapterView;->mSwappedOverlay:Lcom/sec/daliviews/views/NativeViewBase;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/daliviews/views/NativeViewBase;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/FolderAdapterView;->mSwappedOverlay:Lcom/sec/daliviews/views/NativeViewBase;

    const/16 v3, 0x90

    const/16 v4, 0x90

    invoke-virtual {v2, v3, v4}, Lcom/sec/daliviews/views/NativeViewBase;->setSize(II)V

    sget-object v2, Lcom/sec/android/app/launcher/views/FolderAdapterView;->mOverlayAnimation:Lcom/sec/daliviews/animation/NativeAnimation;

    iget-object v3, p0, Lcom/sec/android/app/launcher/views/FolderAdapterView;->mSwappedOverlay:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v2, v3}, Lcom/sec/daliviews/animation/NativeAnimation;->start(Lcom/sec/daliviews/views/NativeViewBase;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_0
.end method
